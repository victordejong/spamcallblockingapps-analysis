package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import e.m.a.f.l.a.u;
import e.m.a.f.l.a.v0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzer.class */
public final class zzer {

    /* renamed from: a */
    public final String f6375a = "default_event_parameters";

    /* renamed from: b */
    public final Bundle f6376b = new Bundle();

    /* renamed from: c */
    public Bundle f6377c;

    /* renamed from: d */
    public final /* synthetic */ u f6378d;

    public zzer(u uVar) {
        this.f6378d = uVar;
        Preconditions.m38901g("default_event_parameters");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f6 A[Catch: NumberFormatException | JSONException -> 0x0105, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NumberFormatException | JSONException -> 0x0105, blocks: (B:11:0x0041, B:34:0x00bb, B:35:0x00d2, B:36:0x00e4, B:37:0x00f6), top: B:49:0x0041, outer: #1 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m38582a() {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzer.m38582a():android.os.Bundle");
    }

    /* renamed from: b */
    public final void m38581b(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        SharedPreferences.Editor edit = this.f6378d.k().edit();
        if (bundle2.size() == 0) {
            edit.remove(this.f6375a);
        } else {
            String str = this.f6375a;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj = bundle2.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        jSONObject.put("v", obj.toString());
                        if (obj instanceof String) {
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", "d");
                        } else {
                            ((v0) this.f6378d).a.zzay().f.m38589b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        ((v0) this.f6378d).a.zzay().f.m38589b("Cannot serialize bundle value to SharedPreferences", e);
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.f6377c = bundle2;
    }
}
