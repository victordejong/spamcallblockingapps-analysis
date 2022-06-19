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

    private C1497q(AbstractC1794j1 abstractC1794j1) {
        this.f5704a = abstractC1794j1;
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7339U4)).booleanValue() || abstractC1794j1 == null) {
            return;
        }
        try {
            List<zzzb> m7053g = abstractC1794j1.m7053g();
            if (m7053g == null) {
                return;
            }
            for (zzzb zzzbVar : m7053g) {
                C1374h m8963a = C1374h.m8963a(zzzbVar);
                if (m8963a != null) {
                    this.f5705b.add(m8963a);
                }
            }
        } catch (RemoteException e) {
            C1894po.m6182d("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
        }
    }

    /* renamed from: d */
    public static C1497q m8576d(AbstractC1794j1 abstractC1794j1) {
        if (abstractC1794j1 != null) {
            return new C1497q(abstractC1794j1);
        }
        return null;
    }

    @RecentlyNullable
    /* renamed from: a */
    public String m8579a() {
        try {
            AbstractC1794j1 abstractC1794j1 = this.f5704a;
            if (abstractC1794j1 == null) {
                return null;
            }
            return abstractC1794j1.m7055a();
        } catch (RemoteException e) {
            C1894po.m6182d("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    @RecentlyNullable
    /* renamed from: b */
    public String m8578b() {
        try {
            AbstractC1794j1 abstractC1794j1 = this.f5704a;
            if (abstractC1794j1 == null) {
                return null;
            }
            return abstractC1794j1.m7054d();
        } catch (RemoteException e) {
            C1894po.m6182d("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    @RecentlyNonNull
    /* renamed from: c */
    public final JSONObject m8577c() {
        JSONObject jSONObject = new JSONObject();
        String m8578b = m8578b();
        if (m8578b == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", m8578b);
        }
        String m8579a = m8579a();
        if (m8579a == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", m8579a);
        }
        JSONArray jSONArray = new JSONArray();
        for (C1374h c1374h : this.f5705b) {
            jSONArray.put(c1374h.m8962b());
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
