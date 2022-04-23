package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.ListKeyPoliciesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/ListKeyPoliciesResultJsonUnmarshaller.class */
public class ListKeyPoliciesResultJsonUnmarshaller implements Unmarshaller<ListKeyPoliciesResult, JsonUnmarshallerContext> {
    private static ListKeyPoliciesResultJsonUnmarshaller instance;

    public static ListKeyPoliciesResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new ListKeyPoliciesResultJsonUnmarshaller();
        }
        return instance;
    }

    public ListKeyPoliciesResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        ListKeyPoliciesResult listKeyPoliciesResult = new ListKeyPoliciesResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("PolicyNames")) {
                listKeyPoliciesResult.setPolicyNames(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance()).unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("NextMarker")) {
                listKeyPoliciesResult.setNextMarker(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("Truncated")) {
                listKeyPoliciesResult.setTruncated(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return listKeyPoliciesResult;
    }
}
