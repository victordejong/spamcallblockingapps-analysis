package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.yanzhenjie.nohttp.Headers;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ws2.class */
public final class ws2 implements pr2 {

    /* renamed from: a */
    private final Object f31772a;

    /* renamed from: b */
    private final xs2 f31773b;

    /* renamed from: c */
    private final gt2 f31774c;

    /* renamed from: d */
    private final mr2 f31775d;

    public ws2(Object obj, xs2 xs2Var, gt2 gt2Var, mr2 mr2Var) {
        this.f31772a = obj;
        this.f31773b = xs2Var;
        this.f31774c = gt2Var;
        this.f31775d = mr2Var;
    }

    /* renamed from: i */
    private static String m9468i(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        m24 m13015C = n24.m13015C();
        m13015C.m13368s(5);
        m13015C.m13370q(zzgex.zzt(bArr));
        return Base64.encodeToString(m13015C.m15512n().mo10723K(), 11);
    }

    /* renamed from: j */
    private final byte[] m9467j(Map<String, String> map, Map<String, Object> map2) {
        byte[] bArr;
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                bArr = (byte[]) this.f31772a.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.f31772a, null, map2);
            } catch (Exception e) {
                this.f31775d.m13100c(2007, System.currentTimeMillis() - currentTimeMillis, e);
                return null;
            }
        }
        return bArr;
    }

    @Override // com.google.android.gms.internal.ads.pr2
    /* renamed from: a */
    public final String mo9476a(Context context, String str, String str2, View view, Activity activity) {
        String m9468i;
        synchronized (this) {
            Map<String, Object> mo14004e = this.f31774c.mo14004e();
            mo14004e.put("f", "c");
            mo14004e.put("ctx", context);
            mo14004e.put("cs", str2);
            mo14004e.put("aid", null);
            mo14004e.put("view", view);
            mo14004e.put("act", activity);
            m9468i = m9468i(m9467j(null, mo14004e));
        }
        return m9468i;
    }

    @Override // com.google.android.gms.internal.ads.pr2
    /* renamed from: b */
    public final void mo9475b(String str, MotionEvent motionEvent) {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("t", new Throwable());
                hashMap.put("aid", null);
                hashMap.put("evt", motionEvent);
                this.f31772a.getClass().getDeclaredMethod("he", Map.class).invoke(this.f31772a, hashMap);
                this.f31775d.m13101b(3003, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzfkf(2005, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.pr2
    /* renamed from: c */
    public final String mo9474c(Context context, String str) {
        String m9468i;
        synchronized (this) {
            Map<String, Object> mo14007b = this.f31774c.mo14007b();
            mo14007b.put("f", "q");
            mo14007b.put("ctx", context);
            mo14007b.put("aid", null);
            m9468i = m9468i(m9467j(null, mo14007b));
        }
        return m9468i;
    }

    @Override // com.google.android.gms.internal.ads.pr2
    /* renamed from: d */
    public final String mo9473d(Context context, String str, View view, Activity activity) {
        String m9468i;
        synchronized (this) {
            Map<String, Object> mo14006c = this.f31774c.mo14006c();
            mo14006c.put("f", "v");
            mo14006c.put("ctx", context);
            mo14006c.put("aid", null);
            mo14006c.put("view", view);
            mo14006c.put("act", null);
            m9468i = m9468i(m9467j(null, mo14006c));
        }
        return m9468i;
    }

    /* renamed from: e */
    public final xs2 m9472e() {
        return this.f31773b;
    }

    /* renamed from: f */
    public final boolean m9471f() {
        boolean booleanValue;
        synchronized (this) {
            try {
                booleanValue = ((Boolean) this.f31772a.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.f31772a, new Object[0])).booleanValue();
            } catch (Exception e) {
                throw new zzfkf(2001, e);
            }
        }
        return booleanValue;
    }

    /* renamed from: g */
    public final void m9470g() {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.f31772a.getClass().getDeclaredMethod(Headers.HEAD_VALUE_CONNECTION_CLOSE, new Class[0]).invoke(this.f31772a, new Object[0]);
                this.f31775d.m13101b(3001, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzfkf(2003, e);
            }
        }
    }

    /* renamed from: h */
    public final int m9469h() {
        int intValue;
        synchronized (this) {
            try {
                intValue = ((Integer) this.f31772a.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.f31772a, new Object[0])).intValue();
            } catch (Exception e) {
                throw new zzfkf(2006, e);
            }
        }
        return intValue;
    }
}
