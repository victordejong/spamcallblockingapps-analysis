package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.JsonUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/JsonErrorResponseHandler.class */
public class JsonErrorResponseHandler implements HttpResponseHandler<AmazonServiceException> {
    private static final int HTTP_STATUS_INTERNAL_SERVER_ERROR = 500;
    private static final String X_AMZN_ERROR_TYPE = "x-amzn-ErrorType";
    private final List<? extends JsonErrorUnmarshaller> unmarshallerList;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse.class */
    public static final class JsonErrorResponse {
        private final String errorCode;
        private final Map<String, String> map;
        private final String message = get("message");
        private final int statusCode;

        private JsonErrorResponse(int i, String str, Map<String, String> map) {
            this.statusCode = i;
            this.errorCode = str;
            this.map = map;
        }

        public static JsonErrorResponse fromResponse(HttpResponse httpResponse) throws IOException {
            String str;
            int i = httpResponse.f12067b;
            Map<String, String> jsonToStringMapWithList = JsonUtils.jsonToStringMapWithList(new BufferedReader(new InputStreamReader(httpResponse.m38617a(), StringUtils.f12513a)));
            String str2 = httpResponse.f12069d.get(JsonErrorResponseHandler.X_AMZN_ERROR_TYPE);
            if (str2 != null) {
                int indexOf = str2.indexOf(58);
                str = str2;
                if (indexOf != -1) {
                    str = str2.substring(0, indexOf);
                }
            } else {
                str = str2;
                if (jsonToStringMapWithList.containsKey("__type")) {
                    String str3 = jsonToStringMapWithList.get("__type");
                    str = str3.substring(str3.lastIndexOf("#") + 1);
                }
            }
            return new JsonErrorResponse(i, str, jsonToStringMapWithList);
        }

        public final String get(String str) {
            if (str == null || str.length() == 0) {
                return null;
            }
            String str2 = StringUtils.m38227b(str.substring(0, 1)) + str.substring(1);
            String str3 = StringUtils.m38226c(str.substring(0, 1)) + str.substring(1);
            return this.map.containsKey(str3) ? this.map.get(str3) : this.map.containsKey(str2) ? this.map.get(str2) : "";
        }

        public final String getErrorCode() {
            return this.errorCode;
        }

        public final String getMessage() {
            return this.message;
        }

        public final int getStatusCode() {
            return this.statusCode;
        }
    }

    public JsonErrorResponseHandler(List<? extends JsonErrorUnmarshaller> list) {
        this.unmarshallerList = list;
    }

    private AmazonServiceException runErrorUnmarshallers(JsonErrorResponse jsonErrorResponse) throws Exception {
        for (JsonErrorUnmarshaller jsonErrorUnmarshaller : this.unmarshallerList) {
            if (jsonErrorUnmarshaller.match(jsonErrorResponse)) {
                return jsonErrorUnmarshaller.unmarshall(jsonErrorResponse);
            }
        }
        return null;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public AmazonServiceException handle(HttpResponse httpResponse) throws Exception {
        try {
            JsonErrorResponse fromResponse = JsonErrorResponse.fromResponse(httpResponse);
            AmazonServiceException runErrorUnmarshallers = runErrorUnmarshallers(fromResponse);
            if (runErrorUnmarshallers == null) {
                return null;
            }
            runErrorUnmarshallers.setStatusCode(httpResponse.f12067b);
            if (httpResponse.f12067b < 500) {
                runErrorUnmarshallers.setErrorType(AmazonServiceException.ErrorType.Client);
            } else {
                runErrorUnmarshallers.setErrorType(AmazonServiceException.ErrorType.Service);
            }
            runErrorUnmarshallers.setErrorCode(fromResponse.getErrorCode());
            for (Map.Entry<String, String> entry : httpResponse.f12069d.entrySet()) {
                if ("X-Amzn-RequestId".equalsIgnoreCase(entry.getKey())) {
                    runErrorUnmarshallers.setRequestId(entry.getValue());
                }
            }
            return runErrorUnmarshallers;
        } catch (IOException e) {
            throw new AmazonClientException("Unable to parse error response", e);
        }
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean needsConnectionLeftOpen() {
        return false;
    }
}
