package com.apptentive.android.sdk.module.engagement.logic;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.util.IndentPrinter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/logic/ConditionalClause.class */
public class ConditionalClause implements Clause {
    private final List<ConditionalTest> conditionalTests;
    private final String fieldName;

    public ConditionalClause(String str, Object obj) {
        String trim = str.trim();
        this.fieldName = trim;
        ApptentiveLog.m15638v(ApptentiveLogTag.INTERACTIONS, "    + ConditionalClause for query: \"%s\"", trim);
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            if (!isComplexType(jSONObject)) {
                this.conditionalTests = getConditions(jSONObject);
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        this.conditionalTests = arrayList;
        arrayList.add(new ConditionalTest(ConditionalOperator.$eq, ClauseParser.parseValue(obj)));
    }

    private List<ConditionalTest> getConditions(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = null;
            if (!jSONObject.isNull(next)) {
                obj = ClauseParser.parseValue(jSONObject.opt(next));
            }
            arrayList.add(new ConditionalTest(ConditionalOperator.parse(next), obj));
        }
        return arrayList;
    }

    private boolean isComplexType(JSONObject jSONObject) {
        return jSONObject != null && !jSONObject.isNull("_type");
    }

    @Override // com.apptentive.android.sdk.module.engagement.logic.Clause
    public boolean evaluate(FieldManager fieldManager, IndentPrinter indentPrinter) {
        Comparable value = fieldManager.getValue(this.fieldName);
        for (ConditionalTest conditionalTest : this.conditionalTests) {
            boolean apply = conditionalTest.operator.apply(value, conditionalTest.parameter);
            indentPrinter.print("- %s => %b", conditionalTest.operator.description(fieldManager.getDescription(this.fieldName), value, conditionalTest.parameter), Boolean.valueOf(apply));
            if (!apply) {
                return false;
            }
        }
        return true;
    }
}
