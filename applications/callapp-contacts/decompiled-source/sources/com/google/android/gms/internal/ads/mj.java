package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.ads.mediation.b;
import com.google.ads.mediation.e;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mj.class */
public final class mj extends ml {

    /* renamed from: b  reason: collision with root package name */
    private static final oy f28205b = new oy();

    /* renamed from: a  reason: collision with root package name */
    Map<Class<? extends NetworkExtras>, NetworkExtras> f28206a;

    private final <NetworkExtrasT extends e, ServerParametersT extends MediationServerParameters> mn e(String str) throws RemoteException {
        try {
            Class<?> cls = Class.forName(str, false, mj.class.getClassLoader());
            if (b.class.isAssignableFrom(cls)) {
                b bVar = (b) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                return new ny(bVar, (e) this.f28206a.get(bVar.getAdditionalParametersType()));
            } else if (MediationAdapter.class.isAssignableFrom(cls)) {
                return new nn((MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } else {
                if (Adapter.class.isAssignableFrom(cls)) {
                    return new nn((Adapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 64);
                sb.append("Could not instantiate mediation adapter: ");
                sb.append(str);
                sb.append(" (not a valid adapter).");
                za.zzez(sb.toString());
                throw new RemoteException();
            }
        } catch (Throwable th) {
            return f(str);
        }
    }

    private final mn f(String str) throws RemoteException {
        try {
            za.zzdz("Reflection failed, retrying using direct instantiation");
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 43);
            sb.append("Could not instantiate mediation adapter: ");
            sb.append(str);
            sb.append(". ");
            za.zzd(sb.toString(), th);
        }
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
            return new nn(new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
            return new nn(new AdUrlAdapter());
        }
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            return new nn(new CustomEventAdapter());
        }
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
            return new ny(customEventAdapter, (CustomEventExtras) this.f28206a.get(customEventAdapter.getAdditionalParametersType()));
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.mm
    public final mn a(String str) throws RemoteException {
        return e(str);
    }

    @Override // com.google.android.gms.internal.ads.mm
    public final boolean b(String str) throws RemoteException {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, mj.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 88);
            sb.append("Could not load custom event implementation class: ");
            sb.append(str);
            sb.append(", trying Adapter implementation class.");
            za.zzez(sb.toString());
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.mm
    public final boolean c(String str) throws RemoteException {
        try {
            return Adapter.class.isAssignableFrom(Class.forName(str, false, mj.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104);
            sb.append("Could not load custom event implementation class as Adapter: ");
            sb.append(str);
            sb.append(", assuming old custom event implementation.");
            za.zzez(sb.toString());
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.mm
    public final os d(String str) throws RemoteException {
        return oy.a(str);
    }
}
