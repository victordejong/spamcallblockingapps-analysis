package com.google.firebase.crashlytics.p293d.p294e;

import android.os.Bundle;
import com.allinone.callerid.bean.ShortCut;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.p295f.AbstractC8909a;
import com.google.firebase.crashlytics.p293d.p295f.AbstractC8910b;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.crashlytics.d.e.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/e/d.class */
public class C8906d implements AbstractC8904b, AbstractC8910b {

    /* renamed from: a */
    private AbstractC8909a f38881a;

    /* renamed from: b */
    private static String m2375b(String str, Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put(ShortCut.NAME, str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override // com.google.firebase.crashlytics.p293d.p294e.AbstractC8904b
    /* renamed from: I0 */
    public void mo2376I0(String str, Bundle bundle) {
        AbstractC8909a abstractC8909a = this.f38881a;
        if (abstractC8909a != null) {
            try {
                abstractC8909a.mo1847a("$A$:" + m2375b(str, bundle));
            } catch (JSONException e) {
                C8898b.m2397f().m2392k("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }

    @Override // com.google.firebase.crashlytics.p293d.p295f.AbstractC8910b
    /* renamed from: a */
    public void mo2373a(AbstractC8909a abstractC8909a) {
        this.f38881a = abstractC8909a;
        C8898b.m2397f().m2401b("Registered Firebase Analytics event receiver for breadcrumbs");
    }
}
