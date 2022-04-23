package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.DeleteIdentitiesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/DeleteIdentitiesResultJsonUnmarshaller.class */
public class DeleteIdentitiesResultJsonUnmarshaller implements Unmarshaller<DeleteIdentitiesResult, JsonUnmarshallerContext> {
    private static DeleteIdentitiesResultJsonUnmarshaller instance;

    public static DeleteIdentitiesResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new DeleteIdentitiesResultJsonUnmarshaller();
        }
        return instance;
    }

    public DeleteIdentitiesResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        DeleteIdentitiesResult deleteIdentitiesResult = new DeleteIdentitiesResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            if (reader.nextName().equals("UnprocessedIdentityIds")) {
                deleteIdentitiesResult.setUnprocessedIdentityIds(new ListUnmarshaller(UnprocessedIdentityIdJsonUnmarshaller.getInstance()).unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return deleteIdentitiesResult;
    }
}
