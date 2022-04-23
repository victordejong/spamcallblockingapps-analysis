package com.amazonaws.auth.policy.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.policy.Action;
import com.amazonaws.auth.policy.Condition;
import com.amazonaws.auth.policy.Policy;
import com.amazonaws.auth.policy.Principal;
import com.amazonaws.auth.policy.Resource;
import com.amazonaws.auth.policy.Statement;
import com.amazonaws.util.json.AwsJsonReader;
import com.amazonaws.util.json.JsonUtils;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/internal/JsonPolicyReader.class */
public class JsonPolicyReader {
    private static final String PRINCIPAL_SCHEMA_SERVICE = "Service";
    private static final String PRINCIPAL_SCHEMA_USER = "AWS";
    private static final String PRINICIPAL_SCHEMA_FEDERATED = "Federated";
    private AwsJsonReader reader;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction.class */
    public static class NamedAction implements Action {
        private final String actionName;

        public NamedAction(String str) {
            this.actionName = str;
        }

        @Override // com.amazonaws.auth.policy.Action
        public String getActionName() {
            return this.actionName;
        }
    }

    private List<Action> actionsOf(AwsJsonReader awsJsonReader) throws IOException {
        LinkedList linkedList = new LinkedList();
        if (awsJsonReader.isContainer()) {
            awsJsonReader.beginArray();
            while (awsJsonReader.hasNext()) {
                linkedList.add(new NamedAction(awsJsonReader.nextString()));
            }
            awsJsonReader.endArray();
        } else {
            linkedList.add(new NamedAction(awsJsonReader.nextString()));
        }
        return linkedList;
    }

    private List<Condition> conditionsOf(AwsJsonReader awsJsonReader) throws IOException {
        LinkedList linkedList = new LinkedList();
        awsJsonReader.beginObject();
        while (awsJsonReader.hasNext()) {
            convertConditionRecord(linkedList, awsJsonReader.nextName(), awsJsonReader);
        }
        awsJsonReader.endObject();
        return linkedList;
    }

    private void convertConditionRecord(List<Condition> list, String str, AwsJsonReader awsJsonReader) throws IOException {
        awsJsonReader.beginObject();
        while (awsJsonReader.hasNext()) {
            String nextName = awsJsonReader.nextName();
            LinkedList linkedList = new LinkedList();
            if (awsJsonReader.isContainer()) {
                awsJsonReader.beginArray();
                while (awsJsonReader.hasNext()) {
                    linkedList.add(awsJsonReader.nextString());
                }
                awsJsonReader.endArray();
            } else {
                linkedList.add(awsJsonReader.nextString());
            }
            list.add(new Condition().a(str).b(nextName).a(linkedList));
        }
        awsJsonReader.endObject();
    }

    private Principal createPrincipal(String str, String str2) {
        if (str.equalsIgnoreCase(PRINCIPAL_SCHEMA_USER)) {
            return new Principal(str2);
        }
        if (str.equalsIgnoreCase(PRINCIPAL_SCHEMA_SERVICE)) {
            return new Principal(str, str2);
        }
        if (str.equalsIgnoreCase(PRINICIPAL_SCHEMA_FEDERATED)) {
            return Principal.WebIdentityProviders.fromString(str2) != null ? new Principal(Principal.WebIdentityProviders.fromString(str2)) : new Principal(PRINICIPAL_SCHEMA_FEDERATED, str2);
        }
        throw new AmazonClientException("Schema " + str + " is not a valid value for the principal.");
    }

    private List<Principal> principalOf(AwsJsonReader awsJsonReader) throws IOException {
        LinkedList linkedList = new LinkedList();
        if (awsJsonReader.isContainer()) {
            awsJsonReader.beginObject();
            while (awsJsonReader.hasNext()) {
                String nextName = awsJsonReader.nextName();
                if (awsJsonReader.isContainer()) {
                    awsJsonReader.beginArray();
                    while (awsJsonReader.hasNext()) {
                        linkedList.add(createPrincipal(nextName, awsJsonReader.nextString()));
                    }
                    awsJsonReader.endArray();
                } else {
                    linkedList.add(createPrincipal(nextName, awsJsonReader.nextString()));
                }
            }
            awsJsonReader.endObject();
        } else {
            String nextString = awsJsonReader.nextString();
            if ("*".equals(nextString)) {
                linkedList.add(Principal.f6591d);
            } else {
                throw new IllegalArgumentException("Invalid principals: ".concat(String.valueOf(nextString)));
            }
        }
        return linkedList;
    }

    private List<Resource> resourcesOf(AwsJsonReader awsJsonReader) throws IOException {
        LinkedList linkedList = new LinkedList();
        if (awsJsonReader.isContainer()) {
            awsJsonReader.beginArray();
            while (awsJsonReader.hasNext()) {
                linkedList.add(new Resource(awsJsonReader.nextString()));
            }
            awsJsonReader.endArray();
        } else {
            linkedList.add(new Resource(awsJsonReader.nextString()));
        }
        return linkedList;
    }

    private Statement statementOf(AwsJsonReader awsJsonReader) throws IOException {
        Statement statement = new Statement(null);
        awsJsonReader.beginObject();
        while (awsJsonReader.hasNext()) {
            String nextName = awsJsonReader.nextName();
            if (JsonDocumentFields.STATEMENT_EFFECT.equals(nextName)) {
                statement.f6594b = Statement.Effect.valueOf(awsJsonReader.nextString());
            } else if (JsonDocumentFields.STATEMENT_ID.equals(nextName)) {
                statement.f6593a = awsJsonReader.nextString();
            } else if (JsonDocumentFields.ACTION.equals(nextName)) {
                statement.f6596d = new ArrayList(actionsOf(awsJsonReader));
            } else if (JsonDocumentFields.RESOURCE.equals(nextName)) {
                statement.e = new ArrayList(resourcesOf(awsJsonReader));
            } else if (JsonDocumentFields.PRINCIPAL.equals(nextName)) {
                statement.f6595c = new ArrayList(principalOf(awsJsonReader));
            } else if (JsonDocumentFields.CONDITION.equals(nextName)) {
                statement.f = conditionsOf(awsJsonReader);
            } else {
                awsJsonReader.skipValue();
            }
        }
        awsJsonReader.endObject();
        if (statement.f6594b == null) {
            return null;
        }
        return statement;
    }

    public Policy createPolicyFromJsonString(String str) {
        if (str != null) {
            this.reader = JsonUtils.getJsonReader(new StringReader(str));
            Policy policy = new Policy();
            LinkedList linkedList = new LinkedList();
            try {
                try {
                    this.reader.beginObject();
                    while (this.reader.hasNext()) {
                        String nextName = this.reader.nextName();
                        if (JsonDocumentFields.POLICY_ID.equals(nextName)) {
                            policy.f6585a = this.reader.nextString();
                        } else if (JsonDocumentFields.STATEMENT.equals(nextName)) {
                            this.reader.beginArray();
                            while (this.reader.hasNext()) {
                                linkedList.add(statementOf(this.reader));
                            }
                            this.reader.endArray();
                        } else {
                            this.reader.skipValue();
                        }
                    }
                    this.reader.endObject();
                    try {
                        this.reader.close();
                    } catch (IOException e) {
                    }
                    policy.a(linkedList);
                    return policy;
                } catch (Exception e2) {
                    throw new IllegalArgumentException("Unable to generate policy object fron JSON string " + e2.getMessage(), e2);
                }
            } catch (Throwable th) {
                try {
                    this.reader.close();
                } catch (IOException e3) {
                }
                throw th;
            }
        } else {
            throw new IllegalArgumentException("JSON string cannot be null");
        }
    }
}
