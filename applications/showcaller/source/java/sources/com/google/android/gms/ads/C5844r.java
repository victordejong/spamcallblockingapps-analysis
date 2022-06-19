package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.internal.ads.AbstractC6491fu;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.zzbdp;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/r.class */
public final class C5844r {

    /* renamed from: a */
    private final AbstractC6491fu f18789a;

    /* renamed from: b */
    private final List<C5620h> f18790b = new ArrayList();

    private C5844r(AbstractC6491fu abstractC6491fu) {
        this.f18789a = abstractC6491fu;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25625X5)).booleanValue() || abstractC6491fu == null) {
            return;
        }
        try {
            List<zzbdp> zzg = abstractC6491fu.zzg();
            if (zzg == null) {
                return;
            }
            for (zzbdp zzbdpVar : zzg) {
                C5620h m18231a = C5620h.m18231a(zzbdpVar);
                if (m18231a != null) {
                    this.f18790b.add(m18231a);
                }
            }
        } catch (RemoteException e) {
            ei0.m15466d("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
        }
    }

    /* renamed from: d */
    public static C5844r m17769d(AbstractC6491fu abstractC6491fu) {
        if (abstractC6491fu != null) {
            return new C5844r(abstractC6491fu);
        }
        return null;
    }

    @RecentlyNullable
    /* renamed from: a */
    public String m17772a() {
        try {
            AbstractC6491fu abstractC6491fu = this.f18789a;
            if (abstractC6491fu == null) {
                return null;
            }
            return abstractC6491fu.mo12041a();
        } catch (RemoteException e) {
            ei0.m15466d("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    @RecentlyNullable
    /* renamed from: b */
    public String m17771b() {
        try {
            AbstractC6491fu abstractC6491fu = this.f18789a;
            if (abstractC6491fu == null) {
                return null;
            }
            return abstractC6491fu.mo12040d();
        } catch (RemoteException e) {
            ei0.m15466d("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    @RecentlyNonNull
    /* renamed from: c */
    public final JSONObject m17770c() {
        JSONObject jSONObject = new JSONObject();
        String m17771b = m17771b();
        if (m17771b == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", m17771b);
        }
        String m17772a = m17772a();
        if (m17772a == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", m17772a);
        }
        JSONArray jSONArray = new JSONArray();
        for (C5620h c5620h : this.f18790b) {
            jSONArray.put(c5620h.m18230b());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        return jSONObject;
    }

    @RecentlyNonNull
    public String toString() {
        String str;
        try {
            str = m17770c().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }
}
