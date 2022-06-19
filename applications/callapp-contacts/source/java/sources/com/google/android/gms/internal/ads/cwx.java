package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.facebook.ads.AdError;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Constructor;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwx.class */
public final class cwx {

    /* renamed from: a */
    private static final HashMap<String, Class<?>> f46689a = new HashMap<>();

    /* renamed from: b */
    private final Context f46690b;

    /* renamed from: c */
    private final cww f46691c;

    /* renamed from: d */
    private final cuy f46692d;

    /* renamed from: e */
    private final cux f46693e;

    /* renamed from: f */
    private cwo f46694f;

    /* renamed from: g */
    private final Object f46695g = new Object();

    public cwx(Context context, cww cwwVar, cuy cuyVar, cux cuxVar) {
        this.f46690b = context;
        this.f46691c = cwwVar;
        this.f46692d = cuyVar;
        this.f46693e = cuxVar;
    }

    /* renamed from: a */
    private final Object m17091a(Class<?> cls, cwn cwnVar) throws zzdww {
        try {
            Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE);
            Context context = this.f46690b;
            if (cwnVar.f46670e == null) {
                cwnVar.f46670e = cwp.m17112b(cwnVar.f46669d);
            }
            return declaredConstructor.newInstance(context, "msa-r", cwnVar.f46670e == null ? null : Arrays.copyOf(cwnVar.f46670e, cwnVar.f46670e.length), null, new Bundle(), 2);
        } catch (Exception e) {
            throw new zzdww((int) AdError.INTERNAL_ERROR_2004, e);
        }
    }

    /* renamed from: b */
    private final Class<?> m17089b(cwn cwnVar) throws zzdww {
        synchronized (this) {
            if (cwnVar.f46666a != null) {
                String str = cwnVar.f46666a.zzaci;
                HashMap<String, Class<?>> hashMap = f46689a;
                Class<?> cls = hashMap.get(str);
                if (cls != null) {
                    return cls;
                }
                try {
                    if (!this.f46693e.m17195a(cwnVar.f46667b)) {
                        throw new zzdww(2026, "VM did not pass signature verification");
                    }
                    try {
                        File file = cwnVar.f46668c;
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        Class loadClass = new DexClassLoader(cwnVar.f46667b.getAbsolutePath(), file.getAbsolutePath(), null, this.f46690b.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                        hashMap.put(str, loadClass);
                        return loadClass;
                    } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                        throw new zzdww((int) AdError.REMOTE_ADS_SERVICE_ERROR, e);
                    }
                } catch (GeneralSecurityException e2) {
                    throw new zzdww(2026, e2);
                }
            }
            throw new zzdww(4010, "mc");
        }
    }

    /* renamed from: a */
    public final cvf m17093a() {
        cwo cwoVar;
        synchronized (this.f46695g) {
            cwoVar = this.f46694f;
        }
        return cwoVar;
    }

    /* renamed from: a */
    public final void m17092a(cwn cwnVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            cwo cwoVar = new cwo(m17091a(m17089b(cwnVar), cwnVar), cwnVar, this.f46691c, this.f46692d);
            if (!cwoVar.m17126a()) {
                throw new zzdww((int) ConferenceActivity.SNACK_BAR_DURATION, "init failed");
            }
            int m17118c = cwoVar.m17118c();
            if (m17118c != 0) {
                StringBuilder sb = new StringBuilder(15);
                sb.append("ci: ");
                sb.append(m17118c);
                throw new zzdww(4001, sb.toString());
            }
            synchronized (this.f46695g) {
                cwo cwoVar2 = this.f46694f;
                if (cwoVar2 != null) {
                    try {
                        cwoVar2.m17119b();
                    } catch (zzdww e) {
                        this.f46692d.m17192a(e.f50216a, -1L, e);
                    }
                }
                this.f46694f = cwoVar;
            }
            this.f46692d.m17193a(3000, System.currentTimeMillis() - currentTimeMillis);
        } catch (zzdww e2) {
            this.f46692d.m17192a(e2.f50216a, System.currentTimeMillis() - currentTimeMillis, e2);
        } catch (Exception e3) {
            this.f46692d.m17192a(4010, System.currentTimeMillis() - currentTimeMillis, e3);
        }
    }

    /* renamed from: b */
    public final cwn m17090b() {
        synchronized (this.f46695g) {
            cwo cwoVar = this.f46694f;
            if (cwoVar != null) {
                return cwoVar.f46671a;
            }
            return null;
        }
    }
}
