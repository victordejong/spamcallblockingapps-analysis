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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwo.class */
public final class cwo implements cvf {

    /* renamed from: a  reason: collision with root package name */
    final cwn f26501a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f26502b;

    /* renamed from: c  reason: collision with root package name */
    private final cww f26503c;

    /* renamed from: d  reason: collision with root package name */
    private final cuy f26504d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cwo(Object obj, cwn cwnVar, cww cwwVar, cuy cuyVar) {
        this.f26502b = obj;
        this.f26501a = cwnVar;
        this.f26503c = cwwVar;
        this.f26504d = cuyVar;
    }

    private static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(beb.f.a().a(blg.DG).a(dlw.a(bArr)).f().g(), 11);
    }

    private final byte[] a(Map<String, Object> map) {
        byte[] bArr;
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                bArr = (byte[]) this.f26502b.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.f26502b, null, map);
            } catch (Exception e) {
                this.f26504d.a(2007, System.currentTimeMillis() - currentTimeMillis, e);
                return null;
            }
        }
        return bArr;
    }

    @Override // com.google.android.gms.internal.ads.cvf
    public final String a(Context context) {
        String a2;
        synchronized (this) {
            Map<String, Object> a3 = this.f26503c.a();
            a3.put("f", "q");
            a3.put("ctx", context);
            a3.put("aid", null);
            a2 = a(a(a3));
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.cvf
    public final String a(Context context, View view, Activity activity) {
        String a2;
        synchronized (this) {
            Map<String, Object> b2 = this.f26503c.b();
            b2.put("f", "v");
            b2.put("ctx", context);
            b2.put("aid", null);
            b2.put("view", view);
            b2.put("act", activity);
            a2 = a(a(b2));
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.cvf
    public final String a(Context context, String str, View view, Activity activity) {
        String a2;
        synchronized (this) {
            Map<String, Object> c2 = this.f26503c.c();
            c2.put("f", Constants.URL_CAMPAIGN);
            c2.put("ctx", context);
            c2.put("cs", str);
            c2.put("aid", null);
            c2.put("view", view);
            c2.put("act", activity);
            a2 = a(a(c2));
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.cvf
    public final void a(MotionEvent motionEvent) throws zzdww {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("aid", null);
                hashMap.put("evt", motionEvent);
                this.f26502b.getClass().getDeclaredMethod("he", Map.class).invoke(this.f26502b, hashMap);
                this.f26504d.a(3003, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzdww(2005, e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() throws zzdww {
        boolean booleanValue;
        synchronized (this) {
            try {
                booleanValue = ((Boolean) this.f26502b.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.f26502b, new Object[0])).booleanValue();
            } catch (Exception e) {
                throw new zzdww((int) AdError.INTERNAL_ERROR_CODE, e);
            }
        }
        return booleanValue;
    }

    public final void b() throws zzdww {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.f26502b.getClass().getDeclaredMethod(EventConstants.CLOSE, new Class[0]).invoke(this.f26502b, new Object[0]);
                this.f26504d.a(AdError.MEDIATION_ERROR_CODE, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzdww((int) AdError.INTERNAL_ERROR_2003, e);
            }
        }
    }

    public final int c() throws zzdww {
        int intValue;
        synchronized (this) {
            try {
                intValue = ((Integer) this.f26502b.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.f26502b, new Object[0])).intValue();
            } catch (Exception e) {
                throw new zzdww((int) AdError.INTERNAL_ERROR_2006, e);
            }
        }
        return intValue;
    }
}
