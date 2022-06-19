package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.common.internal.C6155o;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.measurement.internal.z3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/z3.class */
public final class C7934z3 {

    /* renamed from: a */
    private final String f35839a = "default_event_parameters";

    /* renamed from: b */
    private final Bundle f35840b = new Bundle();

    /* renamed from: c */
    private Bundle f35841c;

    /* renamed from: d */
    final /* synthetic */ C7697e4 f35842d;

    public C7934z3(C7697e4 c7697e4, String str, Bundle bundle) {
        this.f35842d = c7697e4;
        C6155o.m17022f("default_event_parameters");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f8 A[Catch: NumberFormatException | JSONException -> 0x0107, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NumberFormatException | JSONException -> 0x0107, blocks: (B:11:0x0041, B:34:0x00bd, B:35:0x00d4, B:36:0x00e6, B:37:0x00f8), top: B:49:0x0041, outer: #1 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m5880a() {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7934z3.m5880a():android.os.Bundle");
    }

    /* renamed from: b */
    public final void m5879b(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        SharedPreferences.Editor edit = this.f35842d.m6464n().edit();
        if (bundle2.size() == 0) {
            edit.remove(this.f35839a);
        } else {
            String str = this.f35839a;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj = bundle2.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        jSONObject.put("v", String.valueOf(obj));
                        if (obj instanceof String) {
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", "d");
                        } else {
                            this.f35842d.f35460a.mo6047C().m6195m().m6215b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        this.f35842d.f35460a.mo6047C().m6195m().m6215b("Cannot serialize bundle value to SharedPreferences", e);
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.f35841c = bundle2;
    }
}
