package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamite.DynamiteModule;
import javax.annotation.Nonnull;
import p081h.p203i.p204a.p224e.p235d.C6799g;
/* renamed from: h.i.a.e.j.a.u3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/u3.class */
public abstract class AbstractC7418u3<T> {
    @Nullable

    /* renamed from: a */
    public static final AbstractC7455x4 f17483a = m20647e();

    @Nullable
    /* renamed from: e */
    public static AbstractC7455x4 m20647e() {
        try {
            Object newInstance = C7297k3.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").newInstance();
            if (newInstance instanceof IBinder) {
                return AbstractBinderC7467y4.m20504a((IBinder) newInstance);
            }
            C7452x1.m20568d("ClientApi class is not an instance of IBinder.");
            return null;
        } catch (Exception e) {
            C7452x1.m20568d("Failed to instantiate ClientApi class.");
            return null;
        }
    }

    @Nonnull
    /* renamed from: a */
    public abstract T mo20653a();

    /* renamed from: a */
    public final T m20652a(Context context, boolean z) {
        T t;
        boolean z2 = true;
        boolean z3 = z;
        if (!z) {
            C7430v3.m20640a();
            z3 = z;
            if (!C7343o1.m20765b(context, C6799g.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                C7452x1.m20572b("Google Play Services is not available.");
                z3 = true;
            }
        }
        if (DynamiteModule.m31895a(context, "com.google.android.gms.ads.dynamite") > DynamiteModule.m31889b(context, "com.google.android.gms.ads.dynamite")) {
            z3 = true;
        }
        C7223e7.m20934a(context);
        if (((Boolean) C7430v3.m20636e().m20975a(C7223e7.f17327e)).booleanValue()) {
            z3 = false;
        }
        if (z3) {
            T c = m20649c();
            t = c;
            if (c == null) {
                t = m20648d();
            }
        } else {
            T d = m20648d();
            int i = d == null ? 1 : 0;
            if (i != 0) {
                if (C7430v3.m20633h().nextInt(((Integer) C7430v3.m20636e().m20975a(C7223e7.f17329g)).intValue()) != 0) {
                    z2 = false;
                }
                if (z2) {
                    Bundle bundle = new Bundle();
                    bundle.putString("action", "dynamite_load");
                    bundle.putInt("is_missing", i);
                    C7430v3.m20640a().m20777a(context, C7430v3.m20634g().f6743a, "gmob-apps", bundle, true);
                }
            }
            t = d == null ? m20649c() : d;
        }
        T t2 = t;
        if (t == null) {
            t2 = mo20653a();
        }
        return t2;
    }

    @Nullable
    /* renamed from: a */
    public abstract T mo20651a(AbstractC7455x4 x4Var) throws RemoteException;

    @Nullable
    /* renamed from: b */
    public abstract T mo20650b() throws RemoteException;

    @Nullable
    /* renamed from: c */
    public final T m20649c() {
        AbstractC7455x4 x4Var = f17483a;
        if (x4Var == null) {
            C7452x1.m20568d("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return mo20651a(x4Var);
        } catch (RemoteException e) {
            C7452x1.m20569c("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    @Nullable
    /* renamed from: d */
    public final T m20648d() {
        try {
            return mo20650b();
        } catch (RemoteException e) {
            C7452x1.m20569c("Cannot invoke remote loader.", e);
            return null;
        }
    }
}
