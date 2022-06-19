package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.atw;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cni.class */
public final class cni implements clw {

    /* renamed from: a */
    private final Object f13394a;

    /* renamed from: b */
    private final cng f13395b;

    /* renamed from: c */
    private final cnt f13396c;

    /* renamed from: d */
    private final clq f13397d;

    public cni(Object obj, cng cngVar, cnt cntVar, clq clqVar) {
        this.f13394a = obj;
        this.f13395b = cngVar;
        this.f13396c = cntVar;
        this.f13397d = clqVar;
    }

    /* renamed from: a */
    private static String m10984a(byte[] bArr) {
        return bArr == null ? null : Base64.encodeToString(((atw.C2815f) ((dcw) atw.C2815f.m12443a().m12435a(bbd.DG).m12434a(dbi.m10219a(bArr)).mo9987g())).mo9984l(), 11);
    }

    /* renamed from: a */
    private final byte[] m10985a(Map<String, String> map, Map<String, Object> map2) {
        byte[] bArr;
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                bArr = (byte[]) this.f13394a.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.f13394a, null, map2);
            } catch (Exception e) {
                this.f13397d.m11085a(2007, System.currentTimeMillis() - currentTimeMillis, e);
                bArr = null;
            }
        }
        return bArr;
    }

    /* renamed from: a */
    public final cng m10990a() {
        return this.f13395b;
    }

    @Override // com.google.android.gms.internal.ads.clw
    /* renamed from: a */
    public final String mo10989a(Context context, String str) {
        String m10984a;
        synchronized (this) {
            Map<String, Object> mo9428a = this.f13396c.mo9428a();
            mo9428a.put("f", "q");
            mo9428a.put("ctx", context);
            mo9428a.put("aid", null);
            m10984a = m10984a(m10985a((Map<String, String>) null, mo9428a));
        }
        return m10984a;
    }

    @Override // com.google.android.gms.internal.ads.clw
    /* renamed from: a */
    public final String mo10988a(Context context, String str, View view, Activity activity) {
        String m10984a;
        synchronized (this) {
            Map<String, Object> mo9426b = this.f13396c.mo9426b();
            mo9426b.put("f", "v");
            mo9426b.put("ctx", context);
            mo9426b.put("aid", null);
            mo9426b.put("view", view);
            mo9426b.put("act", activity);
            m10984a = m10984a(m10985a((Map<String, String>) null, mo9426b));
        }
        return m10984a;
    }

    @Override // com.google.android.gms.internal.ads.clw
    /* renamed from: a */
    public final String mo10987a(Context context, String str, String str2, View view, Activity activity) {
        String m10984a;
        synchronized (this) {
            Map<String, Object> mo9425c = this.f13396c.mo9425c();
            mo9425c.put("f", "c");
            mo9425c.put("ctx", context);
            mo9425c.put("cs", str2);
            mo9425c.put("aid", null);
            mo9425c.put("view", view);
            mo9425c.put("act", activity);
            m10984a = m10984a(m10985a((Map<String, String>) null, mo9425c));
        }
        return m10984a;
    }

    @Override // com.google.android.gms.internal.ads.clw
    /* renamed from: a */
    public final void mo10986a(String str, MotionEvent motionEvent) {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("aid", null);
                hashMap.put("evt", motionEvent);
                this.f13394a.getClass().getDeclaredMethod("he", Map.class).invoke(this.f13394a, hashMap);
                this.f13397d.m11086a(3003, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzdnk(2005, e);
            }
        }
    }

    /* renamed from: b */
    public final boolean m10983b() {
        boolean booleanValue;
        synchronized (this) {
            try {
                booleanValue = ((Boolean) this.f13394a.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.f13394a, new Object[0])).booleanValue();
            } catch (Exception e) {
                throw new zzdnk(2001, e);
            }
        }
        return booleanValue;
    }

    /* renamed from: c */
    public final void m10982c() {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.f13394a.getClass().getDeclaredMethod("close", new Class[0]).invoke(this.f13394a, new Object[0]);
                this.f13397d.m11086a(3001, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzdnk(2003, e);
            }
        }
    }

    /* renamed from: d */
    public final int m10981d() {
        int intValue;
        synchronized (this) {
            try {
                intValue = ((Integer) this.f13394a.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.f13394a, new Object[0])).intValue();
            } catch (Exception e) {
                throw new zzdnk(2006, e);
            }
        }
        return intValue;
    }
}
