package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzadb;
import com.google.android.gms.internal.ads.zzbbg;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzwm;
import com.google.android.gms.internal.ads.zzxp;
import com.google.android.gms.internal.ads.zzxr;
/* renamed from: c.d.b.d.g.a.bi0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/bi0.class */
public abstract class bi0<T> {

    /* renamed from: a */
    public static final zzxp f12480a = m27114e();

    /* renamed from: e */
    public static zzxp m27114e() {
        try {
            Object newInstance = zzvx.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzbbq.m15852d("ClientApi class is not an instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
            return queryLocalInterface instanceof zzxp ? (zzxp) queryLocalInterface : new zzxr(iBinder);
        } catch (Exception e) {
            zzbbq.m15852d("Failed to instantiate ClientApi class.");
            return null;
        }
    }

    /* renamed from: a */
    public abstract T mo26004a();

    /* renamed from: a */
    public final T m27117a(Context context, boolean z) {
        T t;
        boolean z2 = false;
        boolean z3 = z;
        boolean z4 = z3;
        if (!z3) {
            zzwm.m11170a();
            z4 = z3;
            if (!zzbbg.m15892c(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                zzbbq.m15858a("Google Play Services is not available.");
                z4 = true;
            }
        }
        if (DynamiteModule.m16992a(context, ModuleDescriptor.MODULE_ID) > DynamiteModule.m16986b(context, ModuleDescriptor.MODULE_ID)) {
            z4 = true;
        }
        zzabb.m16916a(context);
        if (zzacs.f23977a.mo16862a().booleanValue()) {
            z4 = false;
        }
        if (z4) {
            T c = m27116c();
            t = c;
            if (c == null) {
                t = m27115d();
            }
        } else {
            T d = m27115d();
            int i = d == null ? 1 : 0;
            if (i != 0) {
                if (zzwm.m11163h().nextInt(zzadb.f24003a.mo16862a().intValue()) == 0) {
                    z2 = true;
                }
                if (z2) {
                    Bundle bundle = new Bundle();
                    bundle.putString("action", "dynamite_load");
                    bundle.putInt("is_missing", i);
                    zzwm.m11170a().m15909a(context, zzwm.m11164g().f24759a, "gmob-apps", bundle, true);
                }
            }
            t = d == null ? m27116c() : d;
        }
        T t2 = t;
        if (t == null) {
            t2 = mo26004a();
        }
        return t2;
    }

    /* renamed from: a */
    public abstract T mo26003a(zzxp zzxpVar) throws RemoteException;

    /* renamed from: b */
    public abstract T mo26002b() throws RemoteException;

    /* renamed from: c */
    public final T m27116c() {
        zzxp zzxpVar = f12480a;
        if (zzxpVar == null) {
            zzbbq.m15852d("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return mo26003a(zzxpVar);
        } catch (RemoteException e) {
            zzbbq.m15853c("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    /* renamed from: d */
    public final T m27115d() {
        try {
            return mo26002b();
        } catch (RemoteException e) {
            zzbbq.m15853c("Cannot invoke remote loader.", e);
            return null;
        }
    }
}
