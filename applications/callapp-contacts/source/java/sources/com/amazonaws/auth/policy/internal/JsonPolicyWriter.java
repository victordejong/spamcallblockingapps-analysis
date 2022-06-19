package com.amazonaws.auth.policy.internal;

import com.amazonaws.auth.policy.Action;
import com.amazonaws.auth.policy.Condition;
import com.amazonaws.auth.policy.Policy;
import com.amazonaws.auth.policy.Principal;
import com.amazonaws.auth.policy.Resource;
import com.amazonaws.auth.policy.Statement;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/internal/JsonPolicyWriter.class */
public class JsonPolicyWriter {
    private static final Log log = LogFactory.m38583a("com.amazonaws.auth.policy");
    private AwsJsonWriter jsonWriter;
    private final Writer writer;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey.class */
    public static class ConditionsByKey {
        private Map<String, List<String>> conditionsByKey = new HashMap();

        public void addValuesToKey(String str, List<String> list) {
            List<String> conditionsByKey = getConditionsByKey(str);
            if (conditionsByKey == null) {
                this.conditionsByKey.put(str, new ArrayList(list));
            } else {
                conditionsByKey.addAll(list);
            }
        }

        public boolean containsKey(String str) {
            return this.conditionsByKey.containsKey(str);
        }

        public List<String> getConditionsByKey(String str) {
            return this.conditionsByKey.get(str);
        }

        public Map<String, List<String>> getConditionsByKey() {
            return this.conditionsByKey;
        }

        public Set<String> keySet() {
            return this.conditionsByKey.keySet();
        }

        public void setConditionsByKey(Map<String, List<String>> map) {
            this.conditionsByKey = map;
        }
    }

    public JsonPolicyWriter() {
        this.jsonWriter = null;
        StringWriter stringWriter = new StringWriter();
        this.writer = stringWriter;
        this.jsonWriter = JsonUtils.getJsonWriter(stringWriter);
    }

    private Map<String, ConditionsByKey> groupConditionsByTypeAndKey(List<Condition> list) {
        HashMap hashMap = new HashMap();
        for (Condition condition : list) {
            String m38650a = condition.m38650a();
            String m38647b = condition.m38647b();
            if (!hashMap.containsKey(m38650a)) {
                hashMap.put(m38650a, new ConditionsByKey());
            }
            ((ConditionsByKey) hashMap.get(m38650a)).addValuesToKey(m38647b, condition.m38645c());
        }
        return hashMap;
    }

    private Map<String, List<String>> groupPrincipalByScheme(List<Principal> list) {
        HashMap hashMap = new HashMap();
        for (Principal principal : list) {
            String str = principal.f12032f;
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, new ArrayList());
            }
            ((List) hashMap.get(str)).add(principal.f12031e);
        }
        return hashMap;
    }

    private boolean isNotNull(Object obj) {
        return obj != null;
    }

    private String jsonStringOf(Policy policy) throws IOException {
        this.jsonWriter.beginObject();
        writeJsonKeyValue(JsonDocumentFields.VERSION, policy.f12025b);
        if (isNotNull(policy.f12024a)) {
            writeJsonKeyValue(JsonDocumentFields.POLICY_ID, policy.f12024a);
        }
        writeJsonArrayStart(JsonDocumentFields.STATEMENT);
        for (Statement statement : policy.f12026c) {
            this.jsonWriter.beginObject();
            if (isNotNull(statement.f12034a)) {
                writeJsonKeyValue(JsonDocumentFields.STATEMENT_ID, statement.f12034a);
            }
            writeJsonKeyValue(JsonDocumentFields.STATEMENT_EFFECT, statement.f12035b.toString());
            List<Principal> list = statement.f12036c;
            if (isNotNull(list) && !list.isEmpty()) {
                writePrincipals(list);
            }
            List<Action> list2 = statement.f12037d;
            if (isNotNull(list2) && !list2.isEmpty()) {
                writeActions(list2);
            }
            List<Resource> list3 = statement.f12038e;
            if (isNotNull(list3) && !list3.isEmpty()) {
                writeResources(list3);
            }
            List<Condition> list4 = statement.f12039f;
            if (isNotNull(list4) && !list4.isEmpty()) {
                writeConditions(list4);
            }
            this.jsonWriter.endObject();
        }
        writeJsonArrayEnd();
        this.jsonWriter.endObject();
        this.jsonWriter.flush();
        return this.writer.toString();
    }

    private void writeActions(List<Action> list) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (Action action : list) {
            arrayList.add(action.getActionName());
        }
        writeJsonArray(JsonDocumentFields.ACTION, arrayList);
    }

    private void writeConditions(List<Condition> list) throws IOException {
        Map<String, ConditionsByKey> groupConditionsByTypeAndKey = groupConditionsByTypeAndKey(list);
        writeJsonObjectStart(JsonDocumentFields.CONDITION);
        for (Map.Entry<String, ConditionsByKey> entry : groupConditionsByTypeAndKey.entrySet()) {
            ConditionsByKey conditionsByKey = groupConditionsByTypeAndKey.get(entry.getKey());
            writeJsonObjectStart(entry.getKey());
            for (String str : conditionsByKey.keySet()) {
                writeJsonArray(str, conditionsByKey.getConditionsByKey(str));
            }
            writeJsonObjectEnd();
        }
        writeJsonObjectEnd();
    }

    private void writeJsonArray(String str, List<String> list) throws IOException {
        writeJsonArrayStart(str);
        for (String str2 : list) {
            this.jsonWriter.value(str2);
        }
        writeJsonArrayEnd();
    }

    private void writeJsonArrayEnd() throws IOException {
        this.jsonWriter.endArray();
    }

    private void writeJsonArrayStart(String str) throws IOException {
        this.jsonWriter.name(str);
        this.jsonWriter.beginArray();
    }

    private void writeJsonKeyValue(String str, String str2) throws IOException {
        this.jsonWriter.name(str);
        this.jsonWriter.value(str2);
    }

    private void writeJsonObjectEnd() throws IOException {
        this.jsonWriter.endObject();
    }

    private void writeJsonObjectStart(String str) throws IOException {
        this.jsonWriter.name(str);
        this.jsonWriter.beginObject();
    }

    private void writePrincipals(List<Principal> list) throws IOException {
        if (list.size() == 1 && list.get(0).equals(Principal.f12030d)) {
            writeJsonKeyValue(JsonDocumentFields.PRINCIPAL, Principal.f12030d.f12031e);
            return;
        }
        writeJsonObjectStart(JsonDocumentFields.PRINCIPAL);
        Map<String, List<String>> groupPrincipalByScheme = groupPrincipalByScheme(list);
        for (Map.Entry<String, List<String>> entry : groupPrincipalByScheme.entrySet()) {
            List<String> list2 = groupPrincipalByScheme.get(entry.getKey());
            if (list2.size() == 1) {
                writeJsonKeyValue(entry.getKey(), list2.get(0));
            } else {
                writeJsonArray(entry.getKey(), list2);
            }
        }
        writeJsonObjectEnd();
    }

    private void writeResources(List<Resource> list) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (Resource resource : list) {
            arrayList.add(resource.f12033a);
        }
        writeJsonArray(JsonDocumentFields.RESOURCE, arrayList);
    }

    public String writePolicyToString(Policy policy) {
        if (isNotNull(policy)) {
            try {
                try {
                    String jsonStringOf = jsonStringOf(policy);
                    try {
                        this.writer.close();
                    } catch (Exception e) {
                    }
                    return jsonStringOf;
                } catch (Exception e2) {
                    throw new IllegalArgumentException("Unable to serialize policy to JSON string: " + e2.getMessage(), e2);
                }
            } catch (Throwable th) {
                try {
                    this.writer.close();
                } catch (Exception e3) {
                }
                throw th;
            }
        }
        throw new IllegalArgumentException("Policy cannot be null");
    }
}
