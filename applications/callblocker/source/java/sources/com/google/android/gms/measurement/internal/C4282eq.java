package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.common.internal.C2662s;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.measurement.internal.eq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/eq.class */
public final class C4282eq {

    /* renamed from: a */
    private final String f18796a;

    /* renamed from: b */
    private final Bundle f18797b = new Bundle();

    /* renamed from: c */
    private boolean f18798c;

    /* renamed from: d */
    private Bundle f18799d;

    /* renamed from: e */
    private final /* synthetic */ C4277el f18800e;

    public C4282eq(C4277el c4277el, String str, Bundle bundle) {
        this.f18800e = c4277el;
        C2662s.m13979a(str);
        this.f18796a = str;
    }

    /* renamed from: b */
    private final String m4620b(Bundle bundle) {
        JSONArray jSONArray = new JSONArray();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("n", str);
                    jSONObject.put("v", String.valueOf(obj));
                    if (obj instanceof String) {
                        jSONObject.put("t", "s");
                    } else if (obj instanceof Long) {
                        jSONObject.put("t", "l");
                    } else if (obj instanceof Double) {
                        jSONObject.put("t", "d");
                    } else {
                        this.f18800e.mo4030v().m4655x_().m4653a("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                    }
                    jSONArray.put(jSONObject);
                } catch (JSONException e) {
                    this.f18800e.mo4030v().m4655x_().m4653a("Cannot serialize bundle value to SharedPreferences", e);
                }
            }
        }
        return jSONArray.toString();
    }

    /* renamed from: a */
    public final Bundle m4622a() {
        if (!this.f18798c) {
            this.f18798c = true;
            String string = this.f18800e.m4637c().getString(this.f18796a, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    int i = 0;
                    while (true) {
                        if (i < jSONArray.length()) {
                            try {
                                JSONObject jSONObject = jSONArray.getJSONObject(i);
                                String string2 = jSONObject.getString("n");
                                String string3 = jSONObject.getString("t");
                                boolean z = true;
                                switch (string3.hashCode()) {
                                    case 100:
                                        if (string3.equals("d")) {
                                            z = true;
                                            break;
                                        }
                                        break;
                                    case 108:
                                        if (string3.equals("l")) {
                                            z = true;
                                            break;
                                        }
                                        break;
                                    case 115:
                                        if (string3.equals("s")) {
                                            z = false;
                                            break;
                                        }
                                        break;
                                }
                                switch (z) {
                                    case false:
                                        bundle.putString(string2, jSONObject.getString("v"));
                                        continue;
                                    case true:
                                        bundle.putDouble(string2, Double.parseDouble(jSONObject.getString("v")));
                                        continue;
                                    case true:
                                        bundle.putLong(string2, Long.parseLong(jSONObject.getString("v")));
                                        continue;
                                    default:
                                        this.f18800e.mo4030v().m4655x_().m4653a("Unrecognized persisted bundle type. Type", string3);
                                        continue;
                                }
                            } catch (NumberFormatException | JSONException e) {
                                this.f18800e.mo4030v().m4655x_().m4654a("Error reading value from SharedPreferences. Value dropped");
                            }
                            i++;
                        } else {
                            this.f18799d = bundle;
                        }
                    }
                } catch (JSONException e2) {
                    this.f18800e.mo4030v().m4655x_().m4654a("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (this.f18799d == null) {
                this.f18799d = this.f18797b;
            }
        }
        return this.f18799d;
    }

    /* renamed from: a */
    public final void m4621a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        SharedPreferences.Editor edit = this.f18800e.m4637c().edit();
        if (bundle2.size() == 0) {
            edit.remove(this.f18796a);
        } else {
            edit.putString(this.f18796a, m4620b(bundle2));
        }
        edit.apply();
        this.f18799d = bundle2;
    }
}
