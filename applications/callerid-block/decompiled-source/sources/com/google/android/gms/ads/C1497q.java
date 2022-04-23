package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.internal.ads.AbstractC1794j1;
import com.google.android.gms.internal.ads.C1674c;
import com.google.android.gms.internal.ads.C1842m3;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.zzzb;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/q.class */
public final class C1497q {

    /* renamed from: a */
    private final AbstractC1794j1 f5704a;

    /* renamed from: b */
    private final List<C1374h> f5705b = new ArrayList();

    private C1497q(AbstractC1794j1 j1Var) {
        this.f5704a = j1Var;
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7339U4)).booleanValue() && j1Var != null) {
            try {
                List<zzzb> g = j1Var.m7053g();
                if (g != null) {
                    for (zzzb zzzbVar : g) {
                        C1374h a = C1374h.m8963a(zzzbVar);
                        if (a != null) {
                            this.f5705b.add(a);
                        }
                    }
                }
            } catch (RemoteException e) {
                C1894po.m6182d("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
            }
        }
    }

    /* renamed from: d */
    public static C1497q m8576d(AbstractC1794j1 j1Var) {
        if (j1Var != null) {
            return new C1497q(j1Var);
        }
        return null;
    }

    @RecentlyNullable
    /* renamed from: a */
    public String m8579a() {
        try {
            AbstractC1794j1 j1Var = this.f5704a;
            if (j1Var != null) {
                return j1Var.m7055a();
            }
            return null;
        } catch (RemoteException e) {
            C1894po.m6182d("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    @RecentlyNullable
    /* renamed from: b */
    public String m8578b() {
        try {
            AbstractC1794j1 j1Var = this.f5704a;
            if (j1Var != null) {
                return j1Var.m7054d();
            }
            return null;
        } catch (RemoteException e) {
            C1894po.m6182d("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    @RecentlyNonNull
    /* renamed from: c */
    public final JSONObject m8577c() {
        JSONObject jSONObject = new JSONObject();
        String b = m8578b();
        if (b == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", b);
        }
        String a = m8579a();
        if (a == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", a);
        }
        JSONArray jSONArray = new JSONArray();
        for (C1374h hVar : this.f5705b) {
            jSONArray.put(hVar.m8962b());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        return jSONObject;
    }

    @RecentlyNonNull
    public String toString() {
        String str;
        try {
            str = m8577c().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }
}
