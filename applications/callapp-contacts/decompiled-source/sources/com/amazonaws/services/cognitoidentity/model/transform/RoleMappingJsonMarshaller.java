package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.RoleMapping;
import com.amazonaws.services.cognitoidentity.model.RulesConfigurationType;
import com.amazonaws.util.json.AwsJsonWriter;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonMarshaller.class */
class RoleMappingJsonMarshaller {
    private static RoleMappingJsonMarshaller instance;

    RoleMappingJsonMarshaller() {
    }

    public static RoleMappingJsonMarshaller getInstance() {
        if (instance == null) {
            instance = new RoleMappingJsonMarshaller();
        }
        return instance;
    }

    public void marshall(RoleMapping roleMapping, AwsJsonWriter awsJsonWriter) throws Exception {
        awsJsonWriter.beginObject();
        if (roleMapping.getType() != null) {
            String type = roleMapping.getType();
            awsJsonWriter.name("Type");
            awsJsonWriter.value(type);
        }
        if (roleMapping.getAmbiguousRoleResolution() != null) {
            String ambiguousRoleResolution = roleMapping.getAmbiguousRoleResolution();
            awsJsonWriter.name("AmbiguousRoleResolution");
            awsJsonWriter.value(ambiguousRoleResolution);
        }
        if (roleMapping.getRulesConfiguration() != null) {
            RulesConfigurationType rulesConfiguration = roleMapping.getRulesConfiguration();
            awsJsonWriter.name("RulesConfiguration");
            RulesConfigurationTypeJsonMarshaller.getInstance().marshall(rulesConfiguration, awsJsonWriter);
        }
        awsJsonWriter.endObject();
    }
}
