package com.amazonaws.services.kms.model.transform;

import com.amazonaws.services.kms.model.ListResourceTagsResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/transform/ListResourceTagsResultJsonUnmarshaller.class */
public class ListResourceTagsResultJsonUnmarshaller implements Unmarshaller<ListResourceTagsResult, JsonUnmarshallerContext> {
    private static ListResourceTagsResultJsonUnmarshaller instance;

    public static ListResourceTagsResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new ListResourceTagsResultJsonUnmarshaller();
        }
        return instance;
    }

    public ListResourceTagsResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        ListResourceTagsResult listResourceTagsResult = new ListResourceTagsResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("Tags")) {
                listResourceTagsResult.setTags(new ListUnmarshaller(TagJsonUnmarshaller.getInstance()).unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("NextMarker")) {
                listResourceTagsResult.setNextMarker(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("Truncated")) {
                listResourceTagsResult.setTruncated(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return listResourceTagsResult;
    }
}
