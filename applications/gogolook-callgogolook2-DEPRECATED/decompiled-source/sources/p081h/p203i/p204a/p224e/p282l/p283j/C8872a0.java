package p081h.p203i.p204a.p224e.p282l.p283j;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamite.DynamiteModule;
import p081h.p203i.p204a.p224e.p235d.C6795e;
import p081h.p203i.p204a.p224e.p235d.C6799g;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p282l.p284k.C8909d;
/* renamed from: h.i.a.e.l.j.a0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/a0.class */
public class C8872a0 {

    /* renamed from: a */
    public static final String f20179a = "a0";
    @Nullable
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b */
    public static Context f20180b;

    /* renamed from: c */
    public static AbstractC8874b0 f20181c;

    /* renamed from: a */
    public static AbstractC8874b0 m16850a(Context context) throws C6795e {
        AbstractC8874b0 b0Var;
        C7021t.m21290a(context);
        AbstractC8874b0 b0Var2 = f20181c;
        if (b0Var2 != null) {
            return b0Var2;
        }
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context, C6799g.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        if (isGooglePlayServicesAvailable == 0) {
            IBinder iBinder = (IBinder) m16848a(m16847b(context).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl");
            if (iBinder == null) {
                b0Var = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
                b0Var = queryLocalInterface instanceof AbstractC8874b0 ? (AbstractC8874b0) queryLocalInterface : new C8876c0(iBinder);
            }
            f20181c = b0Var;
            try {
                f20181c.mo16843a(BinderC7110d.m21058a(m16847b(context).getResources()), GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                return f20181c;
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        } else {
            throw new C6795e(isGooglePlayServicesAvailable);
        }
    }

    /* renamed from: a */
    public static <T> T m16849a(Class<?> cls) {
        try {
            return (T) cls.newInstance();
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to call the default constructor of ".concat(valueOf) : new String("Unable to call the default constructor of "));
        } catch (InstantiationException e2) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf2.length() != 0 ? "Unable to instantiate the dynamic class ".concat(valueOf2) : new String("Unable to instantiate the dynamic class "));
        }
    }

    /* renamed from: a */
    public static <T> T m16848a(ClassLoader classLoader, String str) {
        try {
            C7021t.m21290a(classLoader);
            return (T) m16849a(classLoader.loadClass(str));
        } catch (ClassNotFoundException e) {
            String valueOf = String.valueOf(str);
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to find dynamic class ".concat(valueOf) : new String("Unable to find dynamic class "));
        }
    }

    @Nullable
    /* renamed from: b */
    public static Context m16847b(Context context) {
        Context context2 = f20180b;
        if (context2 != null) {
            return context2;
        }
        Context c = m16846c(context);
        f20180b = c;
        return c;
    }

    @Nullable
    /* renamed from: c */
    public static Context m16846c(Context context) {
        try {
            return DynamiteModule.m31896a(context, DynamiteModule.f6680i, "com.google.android.gms.maps_dynamite").m31898a();
        } catch (Throwable th) {
            Log.e(f20179a, "Failed to load maps module, use legacy", th);
            return GooglePlayServicesUtil.getRemoteContext(context);
        }
    }
}
