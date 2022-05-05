package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import java.util.Map;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.da */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/da.class */
public final class BinderC7213da extends AbstractBinderC7239fa {

    /* renamed from: a */
    public Map<Class<? extends NetworkExtras>, NetworkExtras> f17319a;

    static {
        new C7378r();
    }

    /* renamed from: a */
    public final void m20943a(Map<Class<? extends NetworkExtras>, NetworkExtras> map) {
        this.f17319a = map;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7226ea
    /* renamed from: c */
    public final AbstractC7265ha mo20933c(String str) throws RemoteException {
        return m20942p(str);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7226ea
    /* renamed from: d */
    public final AbstractC7329n mo20932d(String str) throws RemoteException {
        return C7378r.m20712a(str);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7226ea
    /* renamed from: k */
    public final boolean mo20931k(String str) throws RemoteException {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, BinderC7213da.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 80);
            sb.append("Could not load custom event implementation class: ");
            sb.append(str);
            sb.append(", assuming old implementation.");
            C7452x1.m20568d(sb.toString());
            return false;
        }
    }

    /* renamed from: p */
    public final <NetworkExtrasT extends com.google.ads.mediation.NetworkExtras, ServerParametersT extends MediationServerParameters> AbstractC7265ha m20942p(String str) throws RemoteException {
        try {
            Class<?> cls = Class.forName(str, false, BinderC7213da.class.getClassLoader());
            if (MediationAdapter.class.isAssignableFrom(cls)) {
                MediationAdapter mediationAdapter = (MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                return new BinderC7485za(mediationAdapter, (com.google.ads.mediation.NetworkExtras) this.f17319a.get(mediationAdapter.getAdditionalParametersType()));
            } else if (com.google.android.gms.ads.mediation.MediationAdapter.class.isAssignableFrom(cls)) {
                return new BinderC7425ua((com.google.android.gms.ads.mediation.MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 64);
                sb.append("Could not instantiate mediation adapter: ");
                sb.append(str);
                sb.append(" (not a valid adapter).");
                C7452x1.m20568d(sb.toString());
                throw new RemoteException();
            }
        } catch (Throwable th) {
            return m20941q(str);
        }
    }

    /* renamed from: q */
    public final AbstractC7265ha m20941q(String str) throws RemoteException {
        try {
            C7452x1.m20572b("Reflection failed, retrying using direct instantiation");
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 43);
            sb.append("Could not instantiate mediation adapter: ");
            sb.append(str);
            sb.append(". ");
            C7452x1.m20569c(sb.toString(), th);
        }
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
            return new BinderC7425ua(new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
            return new BinderC7425ua(new AdUrlAdapter());
        }
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            return new BinderC7425ua(new CustomEventAdapter());
        }
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
            return new BinderC7485za(customEventAdapter, (CustomEventExtras) this.f17319a.get(customEventAdapter.getAdditionalParametersType()));
        }
        throw new RemoteException();
    }
}
