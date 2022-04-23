package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.RoleMapping;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/cognitoidentity/model/transform/RoleMappingJsonUnmarshaller.class */
class RoleMappingJsonUnmarshaller implements Unmarshaller<RoleMapping, JsonUnmarshallerContext> {
    private static RoleMappingJsonUnmarshaller instance;

    RoleMappingJsonUnmarshaller() {
    }

    public static RoleMappingJsonUnmarshaller getInstance() {
        if (instance == null) {
            instance = new RoleMappingJsonUnmarshaller();
        }
        return instance;
    }

    public RoleMapping unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        if (!reader.isContainer()) {
            reader.skipValue();
            return null;
        }
        RoleMapping roleMapping = new RoleMapping();
        reader.beginObject();
        while (reader.hasNext()) {
            String nextName = reader.nextName();
            if (nextName.equals("Type")) {
                roleMapping.setType(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("AmbiguousRoleResolution")) {
                roleMapping.setAmbiguousRoleResolution(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else if (nextName.equals("RulesConfiguration")) {
                roleMapping.setRulesConfiguration(RulesConfigurationTypeJsonUnmarshaller.getInstance().unmarshall(jsonUnmarshallerContext));
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return roleMapping;
    }
}
