package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.ListTagsForResourceResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/ListTagsForResourceResultJsonUnmarshaller.class */
public class ListTagsForResourceResultJsonUnmarshaller implements Unmarshaller<ListTagsForResourceResult, JsonUnmarshallerContext> {
    private static ListTagsForResourceResultJsonUnmarshaller instance;

    public static ListTagsForResourceResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new ListTagsForResourceResultJsonUnmarshaller();
        }
        return instance;
    }

    public ListTagsForResourceResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        ListTagsForResourceResult listTagsForResourceResult = new ListTagsForResourceResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            if (reader.nextName().equals("Tags")) {
                listTagsForResourceResult.setTags(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance()).unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return listTagsForResourceResult;
    }
}
