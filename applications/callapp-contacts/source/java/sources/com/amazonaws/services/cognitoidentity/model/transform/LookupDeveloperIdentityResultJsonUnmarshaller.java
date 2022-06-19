package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.LookupDeveloperIdentityResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/LookupDeveloperIdentityResultJsonUnmarshaller.class */
public class LookupDeveloperIdentityResultJsonUnmarshaller implements Unmarshaller<LookupDeveloperIdentityResult, JsonUnmarshallerContext> {
    private static LookupDeveloperIdentityResultJsonUnmarshaller instance;

    public static LookupDeveloperIdentityResultJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new LookupDeveloperIdentityResultJsonUnmarshaller();
        }
        return instance;
    }

    public LookupDeveloperIdentityResult unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        LookupDeveloperIdentityResult lookupDeveloperIdentityResult = new LookupDeveloperIdentityResult();
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("IdentityId")) {
                lookupDeveloperIdentityResult.setIdentityId(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("DeveloperUserIdentifierList")) {
                lookupDeveloperIdentityResult.setDeveloperUserIdentifierList(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance()).unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("NextToken")) {
                lookupDeveloperIdentityResult.setNextToken(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return lookupDeveloperIdentityResult;
    }
}
