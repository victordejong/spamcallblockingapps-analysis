package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.IdentityPoolShortDescription;
import com.amazonaws.util.json.AwsJsonWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/IdentityPoolShortDescriptionJsonMarshaller.class */
class IdentityPoolShortDescriptionJsonMarshaller {
    private static IdentityPoolShortDescriptionJsonMarshaller instance;

    IdentityPoolShortDescriptionJsonMarshaller() {
    }

    public static IdentityPoolShortDescriptionJsonMarshaller getInstance() {
        if (instance == null) {
            instance = new IdentityPoolShortDescriptionJsonMarshaller();
        }
        return instance;
    }

    public void marshall(IdentityPoolShortDescription identityPoolShortDescription, AwsJsonWriter awsJsonWriter) throws Exception {
        awsJsonWriter.beginObject();
        if (identityPoolShortDescription.getIdentityPoolId() != null) {
            String identityPoolId = identityPoolShortDescription.getIdentityPoolId();
            awsJsonWriter.name("IdentityPoolId");
            awsJsonWriter.value(identityPoolId);
        }
        if (identityPoolShortDescription.getIdentityPoolName() != null) {
            String identityPoolName = identityPoolShortDescription.getIdentityPoolName();
            awsJsonWriter.name("IdentityPoolName");
            awsJsonWriter.value(identityPoolName);
        }
        awsJsonWriter.endObject();
    }
}
