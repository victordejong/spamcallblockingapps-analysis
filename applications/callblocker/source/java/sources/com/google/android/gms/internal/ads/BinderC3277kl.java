package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AbstractC2225b;
import com.google.ads.mediation.AbstractC2234e;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.AbstractC2348a;
import com.google.android.gms.ads.mediation.AbstractC2361f;
import com.google.android.gms.ads.mediation.customevent.AbstractC2354a;
import com.google.android.gms.ads.mediation.customevent.C2356c;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.kl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kl.class */
public final class BinderC3277kl extends AbstractBinderC3279kn {

    /* renamed from: b */
    private static final C3340mu f16897b = new C3340mu();

    /* renamed from: a */
    private Map<Class<? extends Object>, Object> f16898a;

    /* renamed from: d */
    private final <NetworkExtrasT extends AbstractC2234e, ServerParametersT extends MediationServerParameters> AbstractC3281kp m7667d(String str) {
        BinderC3312lt m7666e;
        try {
            Class<?> cls = Class.forName(str, false, BinderC3277kl.class.getClassLoader());
            if (AbstractC2225b.class.isAssignableFrom(cls)) {
                AbstractC2225b abstractC2225b = (AbstractC2225b) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                m7666e = new BinderC3312lt(abstractC2225b, (AbstractC2234e) this.f16898a.get(abstractC2225b.getAdditionalParametersType()));
            } else if (AbstractC2361f.class.isAssignableFrom(cls)) {
                m7666e = new BinderC3304ll((AbstractC2361f) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } else if (!AbstractC2348a.class.isAssignableFrom(cls)) {
                C3645yb.m6745e(new StringBuilder(String.valueOf(str).length() + 64).append("Could not instantiate mediation adapter: ").append(str).append(" (not a valid adapter).").toString());
                throw new RemoteException();
            } else {
                m7666e = new BinderC3304ll((AbstractC2348a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            }
        } catch (Throwable th) {
            m7666e = m7666e(str);
        }
        return m7666e;
    }

    /* renamed from: e */
    private final AbstractC3281kp m7666e(String str) {
        AbstractBinderC3284ks binderC3312lt;
        try {
            C3645yb.m6751b("Reflection failed, retrying using direct instantiation");
        } catch (Throwable th) {
            C3645yb.m6746d(new StringBuilder(String.valueOf(str).length() + 43).append("Could not instantiate mediation adapter: ").append(str).append(". ").toString(), th);
        }
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
            binderC3312lt = new BinderC3304ll(new AdMobAdapter());
        } else if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
            binderC3312lt = new BinderC3304ll(new AdUrlAdapter());
        } else if (!"com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                CustomEventAdapter customEventAdapter = new CustomEventAdapter();
                binderC3312lt = new BinderC3312lt(customEventAdapter, (C2356c) this.f16898a.get(customEventAdapter.getAdditionalParametersType()));
            }
            throw new RemoteException();
        } else {
            binderC3312lt = new BinderC3304ll(new com.google.android.gms.ads.mediation.customevent.CustomEventAdapter());
        }
        return binderC3312lt;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3280ko
    /* renamed from: a */
    public final AbstractC3281kp mo7663a(String str) {
        return m7667d(str);
    }

    /* renamed from: a */
    public final void m7668a(Map<Class<? extends Object>, Object> map) {
        this.f16898a = map;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3280ko
    /* renamed from: b */
    public final boolean mo7662b(String str) {
        boolean z = false;
        try {
            z = AbstractC2354a.class.isAssignableFrom(Class.forName(str, false, BinderC3277kl.class.getClassLoader()));
        } catch (Throwable th) {
            C3645yb.m6745e(new StringBuilder(String.valueOf(str).length() + 80).append("Could not load custom event implementation class: ").append(str).append(", assuming old implementation.").toString());
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3280ko
    /* renamed from: c */
    public final AbstractC3333mn mo7661c(String str) {
        return C3340mu.m7438a(str);
    }
}
