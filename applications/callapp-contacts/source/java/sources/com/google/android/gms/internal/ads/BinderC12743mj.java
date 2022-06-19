package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AbstractC10594b;
import com.google.ads.mediation.AbstractC10602e;
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
/* renamed from: com.google.android.gms.internal.ads.mj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mj.class */
public final class BinderC12743mj extends AbstractBinderC12745ml {

    /* renamed from: b */
    private static final C12813oy f49558b = new C12813oy();

    /* renamed from: a */
    Map<Class<? extends NetworkExtras>, NetworkExtras> f49559a;

    /* renamed from: e */
    private final <NetworkExtrasT extends AbstractC10602e, ServerParametersT extends MediationServerParameters> AbstractC12747mn m14491e(String str) throws RemoteException {
        try {
            Class<?> cls = Class.forName(str, false, BinderC12743mj.class.getClassLoader());
            if (AbstractC10594b.class.isAssignableFrom(cls)) {
                AbstractC10594b abstractC10594b = (AbstractC10594b) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                return new BinderC12786ny(abstractC10594b, (AbstractC10602e) this.f49559a.get(abstractC10594b.getAdditionalParametersType()));
            } else if (MediationAdapter.class.isAssignableFrom(cls)) {
                return new BinderC12775nn((MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } else {
                if (Adapter.class.isAssignableFrom(cls)) {
                    return new BinderC12775nn((Adapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 64);
                sb.append("Could not instantiate mediation adapter: ");
                sb.append(str);
                sb.append(" (not a valid adapter).");
                C13088za.zzez(sb.toString());
                throw new RemoteException();
            }
        } catch (Throwable th) {
            return m14490f(str);
        }
    }

    /* renamed from: f */
    private final AbstractC12747mn m14490f(String str) throws RemoteException {
        try {
            C13088za.zzdz("Reflection failed, retrying using direct instantiation");
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 43);
            sb.append("Could not instantiate mediation adapter: ");
            sb.append(str);
            sb.append(". ");
            C13088za.zzd(sb.toString(), th);
        }
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
            return new BinderC12775nn(new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
            return new BinderC12775nn(new AdUrlAdapter());
        }
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            return new BinderC12775nn(new CustomEventAdapter());
        }
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
            return new BinderC12786ny(customEventAdapter, (CustomEventExtras) this.f49559a.get(customEventAdapter.getAdditionalParametersType()));
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12746mm
    /* renamed from: a */
    public final AbstractC12747mn mo14487a(String str) throws RemoteException {
        return m14491e(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12746mm
    /* renamed from: b */
    public final boolean mo14486b(String str) throws RemoteException {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, BinderC12743mj.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 88);
            sb.append("Could not load custom event implementation class: ");
            sb.append(str);
            sb.append(", trying Adapter implementation class.");
            C13088za.zzez(sb.toString());
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12746mm
    /* renamed from: c */
    public final boolean mo14485c(String str) throws RemoteException {
        try {
            return Adapter.class.isAssignableFrom(Class.forName(str, false, BinderC12743mj.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104);
            sb.append("Could not load custom event implementation class as Adapter: ");
            sb.append(str);
            sb.append(", assuming old custom event implementation.");
            C13088za.zzez(sb.toString());
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12746mm
    /* renamed from: d */
    public final AbstractC12807os mo14484d(String str) throws RemoteException {
        return C12813oy.m14290a(str);
    }
}
