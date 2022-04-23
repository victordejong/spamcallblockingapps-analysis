package com.zendesk.service;

import com.zendesk.util.StringUtils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Headers;
import retrofit2.Response;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/RetrofitErrorResponse.class */
public class RetrofitErrorResponse implements ErrorResponse {
    private static final String LOG_TAG = "RetrofitErrorResponse";
    private Response mResponse;
    private Throwable mThrowable;

    private RetrofitErrorResponse(Throwable th) {
        this.mThrowable = th;
    }

    private RetrofitErrorResponse(Response response) {
        this.mResponse = response;
    }

    public static RetrofitErrorResponse response(Response response) {
        return new RetrofitErrorResponse(response);
    }

    public static RetrofitErrorResponse throwable(Throwable th) {
        return new RetrofitErrorResponse(th);
    }

    @Override // com.zendesk.service.ErrorResponse
    public String getReason() {
        if (this.mThrowable != null) {
            return this.mThrowable.getMessage();
        }
        StringBuilder sb = new StringBuilder();
        if (this.mResponse != null) {
            if (StringUtils.hasLength(this.mResponse.message())) {
                sb.append(this.mResponse.message());
            } else {
                sb.append(this.mResponse.code());
            }
        }
        return sb.toString();
    }

    @Override // com.zendesk.service.ErrorResponse
    public String getResponseBody() {
        String str = "";
        if (this.mResponse != null) {
            str = "";
            if (this.mResponse.errorBody() != null) {
                try {
                    str = new String(this.mResponse.errorBody().bytes(), "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    throw new AssertionError("UTF-8 must be supported");
                } catch (IOException e2) {
                    str = "";
                }
            }
        }
        return str;
    }

    @Override // com.zendesk.service.ErrorResponse
    public String getResponseBodyType() {
        return (this.mResponse == null || this.mResponse.errorBody() == null) ? "" : this.mResponse.errorBody().contentType().toString();
    }

    @Override // com.zendesk.service.ErrorResponse
    public List<Header> getResponseHeaders() {
        if (this.mThrowable != null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        if (!(this.mResponse == null || this.mResponse.headers() == null || this.mResponse.headers().size() <= 0)) {
            Headers headers = this.mResponse.headers();
            for (String str : headers.names()) {
                arrayList.add(new Header(str, headers.get(str)));
            }
        }
        return arrayList;
    }

    @Override // com.zendesk.service.ErrorResponse
    public int getStatus() {
        if (this.mResponse != null) {
            return this.mResponse.code();
        }
        return -1;
    }

    @Override // com.zendesk.service.ErrorResponse
    public String getUrl() {
        return (this.mResponse == null || this.mResponse.raw().request() == null || this.mResponse.raw().request().url() == null) ? "" : this.mResponse.raw().request().url().toString();
    }

    @Override // com.zendesk.service.ErrorResponse
    public boolean isConversionError() {
        return isNetworkError();
    }

    @Override // com.zendesk.service.ErrorResponse
    public boolean isHTTPError() {
        return this.mThrowable == null && this.mResponse != null && !this.mResponse.isSuccessful();
    }

    @Override // com.zendesk.service.ErrorResponse
    public boolean isNetworkError() {
        return this.mThrowable != null && (this.mThrowable instanceof IOException);
    }
}
