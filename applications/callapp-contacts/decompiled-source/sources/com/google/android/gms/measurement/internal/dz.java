package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.common.internal.o;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dz.class */
public final class dz {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ee f29531a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29532b = "default_event_parameters";

    /* renamed from: c  reason: collision with root package name */
    private final Bundle f29533c = new Bundle();

    /* renamed from: d  reason: collision with root package name */
    private Bundle f29534d;

    public dz(ee eeVar, String str, Bundle bundle) {
        this.f29531a = eeVar;
        o.a("default_event_parameters");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f8 A[Catch: NumberFormatException | JSONException -> 0x0107, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NumberFormatException | JSONException -> 0x0107, blocks: (B:11:0x0041, B:34:0x00bd, B:35:0x00d4, B:36:0x00e6, B:37:0x00f8), top: B:49:0x0041, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle a() {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.dz.a():android.os.Bundle");
    }

    public final void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        SharedPreferences.Editor edit = this.f29531a.ah_().edit();
        if (bundle2.size() == 0) {
            edit.remove(this.f29532b);
        } else {
            String str = this.f29532b;
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
                            this.f29531a.t.c().f29506c.a("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        this.f29531a.t.c().f29506c.a("Cannot serialize bundle value to SharedPreferences", e);
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.f29534d = bundle2;
    }
}
