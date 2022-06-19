package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.appsflyer.share.Constants;
import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.beb;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwo.class */
public final class cwo implements cvf {

    /* renamed from: a */
    final cwn f46671a;

    /* renamed from: b */
    private final Object f46672b;

    /* renamed from: c */
    private final cww f46673c;

    /* renamed from: d */
    private final cuy f46674d;

    public cwo(Object obj, cwn cwnVar, cww cwwVar, cuy cuyVar) {
        this.f46672b = obj;
        this.f46671a = cwnVar;
        this.f46673c = cwwVar;
        this.f46674d = cuyVar;
    }

    /* renamed from: a */
    private static String m17120a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(beb.C12236f.m17938a().m17933a(blg.DG).m17932a(dlw.m16475a(bArr)).mo16259f().mo16256g(), 11);
    }

    /* renamed from: a */
    private final byte[] m17121a(Map<String, Object> map) {
        byte[] bArr;
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                bArr = (byte[]) this.f46672b.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.f46672b, null, map);
            } catch (Exception e) {
                this.f46674d.m17192a(2007, System.currentTimeMillis() - currentTimeMillis, e);
                return null;
            }
        }
        return bArr;
    }

    @Override // com.google.android.gms.internal.ads.cvf
    /* renamed from: a */
    public final String mo17125a(Context context) {
        String m17120a;
        synchronized (this) {
            Map<String, Object> mo15747a = this.f46673c.mo15747a();
            mo15747a.put("f", "q");
            mo15747a.put("ctx", context);
            mo15747a.put("aid", null);
            m17120a = m17120a(m17121a(mo15747a));
        }
        return m17120a;
    }

    @Override // com.google.android.gms.internal.ads.cvf
    /* renamed from: a */
    public final String mo17124a(Context context, View view, Activity activity) {
        String m17120a;
        synchronized (this) {
            Map<String, Object> mo15746b = this.f46673c.mo15746b();
            mo15746b.put("f", "v");
            mo15746b.put("ctx", context);
            mo15746b.put("aid", null);
            mo15746b.put("view", view);
            mo15746b.put("act", activity);
            m17120a = m17120a(m17121a(mo15746b));
        }
        return m17120a;
    }

    @Override // com.google.android.gms.internal.ads.cvf
    /* renamed from: a */
    public final String mo17123a(Context context, String str, View view, Activity activity) {
        String m17120a;
        synchronized (this) {
            Map<String, Object> mo15745c = this.f46673c.mo15745c();
            mo15745c.put("f", Constants.URL_CAMPAIGN);
            mo15745c.put("ctx", context);
            mo15745c.put("cs", str);
            mo15745c.put("aid", null);
            mo15745c.put("view", view);
            mo15745c.put("act", activity);
            m17120a = m17120a(m17121a(mo15745c));
        }
        return m17120a;
    }

    @Override // com.google.android.gms.internal.ads.cvf
    /* renamed from: a */
    public final void mo17122a(MotionEvent motionEvent) throws zzdww {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("aid", null);
                hashMap.put("evt", motionEvent);
                this.f46672b.getClass().getDeclaredMethod("he", Map.class).invoke(this.f46672b, hashMap);
                this.f46674d.m17193a(3003, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzdww(2005, e);
            }
        }
    }

    /* renamed from: a */
    public final boolean m17126a() throws zzdww {
        boolean booleanValue;
        synchronized (this) {
            try {
                booleanValue = ((Boolean) this.f46672b.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.f46672b, new Object[0])).booleanValue();
            } catch (Exception e) {
                throw new zzdww((int) AdError.INTERNAL_ERROR_CODE, e);
            }
        }
        return booleanValue;
    }

    /* renamed from: b */
    public final void m17119b() throws zzdww {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.f46672b.getClass().getDeclaredMethod(EventConstants.CLOSE, new Class[0]).invoke(this.f46672b, new Object[0]);
                this.f46674d.m17193a(AdError.MEDIATION_ERROR_CODE, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzdww((int) AdError.INTERNAL_ERROR_2003, e);
            }
        }
    }

    /* renamed from: c */
    public final int m17118c() throws zzdww {
        int intValue;
        synchronized (this) {
            try {
                intValue = ((Integer) this.f46672b.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.f46672b, new Object[0])).intValue();
            } catch (Exception e) {
                throw new zzdww((int) AdError.INTERNAL_ERROR_2006, e);
            }
        }
        return intValue;
    }
}
