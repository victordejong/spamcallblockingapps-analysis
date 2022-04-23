package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import java.util.Map;
import p131c.p161d.p162a.p163b.AbstractC2457b;
import p131c.p161d.p162a.p163b.AbstractC2460e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanc.class */
public final class zzanc extends zzane {

    /* renamed from: a */
    public Map<Class<? extends NetworkExtras>, NetworkExtras> f24202a;

    static {
        new zzapn();
    }

    /* renamed from: C */
    public final <NetworkExtrasT extends AbstractC2460e, ServerParametersT extends MediationServerParameters> zzang m16643C(String str) throws RemoteException {
        try {
            Class<?> cls = Class.forName(str, false, zzanc.class.getClassLoader());
            if (AbstractC2457b.class.isAssignableFrom(cls)) {
                AbstractC2457b bVar = (AbstractC2457b) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                return new zzaof(bVar, (AbstractC2460e) this.f24202a.get(bVar.getAdditionalParametersType()));
            } else if (MediationAdapter.class.isAssignableFrom(cls)) {
                return new zzanx((MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } else {
                if (Adapter.class.isAssignableFrom(cls)) {
                    return new zzanx((Adapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 64);
                sb.append("Could not instantiate mediation adapter: ");
                sb.append(str);
                sb.append(" (not a valid adapter).");
                zzbbq.m15852d(sb.toString());
                throw new RemoteException();
            }
        } catch (Throwable th) {
            return m16642D(str);
        }
    }

    /* renamed from: D */
    public final zzang m16642D(String str) throws RemoteException {
        try {
            zzbbq.m15858a("Reflection failed, retrying using direct instantiation");
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 43);
            sb.append("Could not instantiate mediation adapter: ");
            sb.append(str);
            sb.append(". ");
            zzbbq.m15853c(sb.toString(), th);
        }
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
            return new zzanx(new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
            return new zzanx(new AdUrlAdapter());
        }
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            return new zzanx(new CustomEventAdapter());
        }
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
            return new zzaof(customEventAdapter, (CustomEventExtras) this.f24202a.get(customEventAdapter.getAdditionalParametersType()));
        }
        throw new RemoteException();
    }

    /* renamed from: a */
    public final void m16641a(Map<Class<? extends NetworkExtras>, NetworkExtras> map) {
        this.f24202a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzanb
    /* renamed from: n */
    public final zzaph mo16640n(String str) throws RemoteException {
        return zzapn.m16485a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzanb
    /* renamed from: r */
    public final zzang mo16639r(String str) throws RemoteException {
        return m16643C(str);
    }

    @Override // com.google.android.gms.internal.ads.zzanb
    /* renamed from: w */
    public final boolean mo16638w(String str) throws RemoteException {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, zzanc.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 80);
            sb.append("Could not load custom event implementation class: ");
            sb.append(str);
            sb.append(", assuming old implementation.");
            zzbbq.m15852d(sb.toString());
            return false;
        }
    }
}
