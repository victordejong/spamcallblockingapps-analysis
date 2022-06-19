package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.common.internal.C1581h;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.measurement.internal.z3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/z3.class */
public final class C2381z3 {

    /* renamed from: a */
    private final String f10513a = "default_event_parameters";

    /* renamed from: b */
    private final Bundle f10514b = new Bundle();

    /* renamed from: c */
    private Bundle f10515c;

    /* renamed from: d */
    final /* synthetic */ e4 f10516d;

    public C2381z3(e4 e4Var, String str, Bundle bundle) {
        this.f10516d = e4Var;
        C1581h.m8351d("default_event_parameters");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f5 A[Catch: NumberFormatException | JSONException -> 0x0105, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NumberFormatException | JSONException -> 0x0105, blocks: (B:11:0x0041, B:34:0x00b9, B:35:0x00cf, B:36:0x00e2, B:37:0x00f5), top: B:49:0x0041, outer: #1 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m3800a() {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2381z3.m3800a():android.os.Bundle");
    }

    /* renamed from: b */
    public final void m3799b(Bundle bundle) {
        Object obj;
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        SharedPreferences.Editor edit = this.f10516d.n().edit();
        if (bundle2.size() == 0) {
            edit.remove(this.f10513a);
        } else {
            String str = this.f10513a;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj2 = bundle2.get(str2);
                if (obj2 != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        jSONObject.put("v", String.valueOf(obj2));
                        if (obj2 instanceof String) {
                            obj = "s";
                        } else if (obj2 instanceof Long) {
                            obj = "l";
                        } else if (obj2 instanceof Double) {
                            obj = "d";
                        } else {
                            ((m5) this.f10516d).a.t().m().m3875b("Cannot serialize bundle value to SharedPreferences. Type", obj2.getClass());
                        }
                        jSONObject.put("t", obj);
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        ((m5) this.f10516d).a.t().m().m3875b("Cannot serialize bundle value to SharedPreferences", e);
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.f10515c = bundle2;
    }
}
