package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfe.class */
public final class zzfe {

    /* renamed from: a */
    private final String f9208a;

    /* renamed from: b */
    private final Bundle f9209b = new Bundle();

    /* renamed from: c */
    private boolean f9210c;

    /* renamed from: d */
    private Bundle f9211d;

    /* renamed from: e */
    private final /* synthetic */ zzfd f9212e;

    public zzfe(zzfd zzfdVar, String str, Bundle bundle) {
        this.f9212e = zzfdVar;
        Preconditions.m14527g(str);
        this.f9208a = str;
    }

    /* renamed from: c */
    private final String m11440c(Bundle bundle) {
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
                        this.f9212e.mo11081c().m11560D().m11539b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                    }
                    jSONArray.put(jSONObject);
                } catch (JSONException e) {
                    this.f9212e.mo11081c().m11560D().m11539b("Cannot serialize bundle value to SharedPreferences", e);
                }
            }
        }
        return jSONArray.toString();
    }

    @WorkerThread
    /* renamed from: a */
    public final Bundle m11442a() {
        if (!this.f9210c) {
            this.f9210c = true;
            String string = this.f9212e.m11460C().getString(this.f9208a, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            String string2 = jSONObject.getString("n");
                            String string3 = jSONObject.getString("t");
                            char c = 65535;
                            int hashCode = string3.hashCode();
                            if (hashCode != 100) {
                                if (hashCode != 108) {
                                    if (hashCode == 115 && string3.equals("s")) {
                                        c = 0;
                                    }
                                } else if (string3.equals("l")) {
                                    c = 2;
                                }
                            } else if (string3.equals("d")) {
                                c = 1;
                            }
                            if (c == 0) {
                                bundle.putString(string2, jSONObject.getString("v"));
                            } else if (c == 1) {
                                bundle.putDouble(string2, Double.parseDouble(jSONObject.getString("v")));
                            } else if (c != 2) {
                                this.f9212e.mo11081c().m11560D().m11539b("Unrecognized persisted bundle type. Type", string3);
                            } else {
                                bundle.putLong(string2, Long.parseLong(jSONObject.getString("v")));
                            }
                        } catch (NumberFormatException | JSONException e) {
                            this.f9212e.mo11081c().m11560D().m11540a("Error reading value from SharedPreferences. Value dropped");
                        }
                    }
                    this.f9211d = bundle;
                } catch (JSONException e2) {
                    this.f9212e.mo11081c().m11560D().m11540a("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (this.f9211d == null) {
                this.f9211d = this.f9209b;
            }
        }
        return this.f9211d;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m11441b(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        SharedPreferences.Editor edit = this.f9212e.m11460C().edit();
        if (bundle2.size() == 0) {
            edit.remove(this.f9208a);
        } else {
            edit.putString(this.f9208a, m11440c(bundle2));
        }
        edit.apply();
        this.f9211d = bundle2;
    }
}
