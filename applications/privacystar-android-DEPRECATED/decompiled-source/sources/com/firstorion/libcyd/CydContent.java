package com.firstorion.libcyd;

import com.apptentive.android.sdk.Apptentive;
import java.util.List;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CydContent.class */
public final class CydContent {
    final List<String> aNumbers;
    public final CYDContact contact;
    public final JSONObject content;
    public final CydContentMetadata metadata;
    public final JSONObject variables;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CydContent(CydContentMetadata cydContentMetadata, JSONObject jSONObject, JSONObject jSONObject2, List<String> list) {
        this(cydContentMetadata, jSONObject, jSONObject2, list, -1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CydContent(CydContentMetadata cydContentMetadata, JSONObject jSONObject, JSONObject jSONObject2, List<String> list, long j) {
        this.metadata = cydContentMetadata;
        this.content = jSONObject;
        this.variables = jSONObject2;
        this.aNumbers = list;
        this.contact = getContact(jSONObject, jSONObject2, j);
    }

    private CYDContact getContact(JSONObject jSONObject, JSONObject jSONObject2, long j) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        if (jSONObject == null || jSONObject.optString(Apptentive.Version.TYPE, null) == null || (optJSONObject = jSONObject.optJSONObject("contact")) == null || (optJSONObject2 = optJSONObject.optJSONObject("contactInfo")) == null) {
            return null;
        }
        String str = "";
        if (jSONObject2 != null) {
            str = jSONObject2.optString("$MY_VAR");
        }
        return new CYDContact(j, optJSONObject2.optString("imageData", null), optJSONObject2.optString("givenName", null), optJSONObject2.optString("note", null), str);
    }
}
