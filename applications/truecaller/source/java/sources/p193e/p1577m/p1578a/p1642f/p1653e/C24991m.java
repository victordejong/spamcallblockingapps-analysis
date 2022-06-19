package p193e.p1577m.p1578a.p1642f.p1653e;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzae;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.common.zzs;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.security.MessageDigest;
import java.util.Objects;
import java.util.concurrent.Callable;
import p193e.p1577m.p1578a.p1642f.p1653e.AbstractBinderC24987i;
import p193e.p1577m.p1578a.p1642f.p1653e.AbstractBinderC24989k;
import p193e.p1577m.p1578a.p1642f.p1653e.C24991m;
/* renamed from: e.m.a.f.e.m */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/m.class */
public final class C24991m {

    /* renamed from: e */
    public static volatile zzaf f69953e;

    /* renamed from: g */
    public static Context f69955g;

    /* renamed from: a */
    public static final AbstractBinderC24989k f69949a = new BinderC24983e(AbstractBinderC24987i.m4245m1("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));

    /* renamed from: b */
    public static final AbstractBinderC24989k f69950b = new BinderC24984f(AbstractBinderC24987i.m4245m1("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));

    /* renamed from: c */
    public static final AbstractBinderC24989k f69951c = new BinderC24985g(AbstractBinderC24987i.m4245m1("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t��Âà\u0087FdJ0\u008d0"));

    /* renamed from: d */
    public static final AbstractBinderC24989k f69952d = new BinderC24986h(AbstractBinderC24987i.m4245m1("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t��Õ\u0085¸l}ÓNõ0"));

    /* renamed from: f */
    public static final Object f69954f = new Object();

    /* renamed from: a */
    public static C24993o m4242a(final String str, final AbstractBinderC24987i abstractBinderC24987i, final boolean z, boolean z2) {
        try {
            m4241b();
            Objects.requireNonNull(f69955g, "null reference");
            try {
                return f69953e.mo38821i1(new zzs(str, abstractBinderC24987i, z, z2), new ObjectWrapper(f69955g.getPackageManager())) ? C24993o.f69957d : new C24992n(new Callable() { // from class: com.google.android.gms.common.zzd
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        boolean z3 = z;
                        String str2 = str;
                        AbstractBinderC24987i abstractBinderC24987i2 = abstractBinderC24987i;
                        AbstractBinderC24989k abstractBinderC24989k = C24991m.f69949a;
                        String str3 = true != (!z3 && C24991m.m4242a(str2, abstractBinderC24987i2, true, false).f69958a) ? "not allowed" : "debug cert rejected";
                        MessageDigest m38797b = AndroidUtilsLight.m38797b("SHA-1");
                        Objects.requireNonNull(m38797b, "null reference");
                        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", str3, str2, Hex.m38782a(m38797b.digest(abstractBinderC24987i2.mo4244B1())), Boolean.valueOf(z3), "12451000.false");
                    }
                });
            } catch (RemoteException e) {
                return C24993o.m4238c("module call", e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            String valueOf = String.valueOf(e2.getMessage());
            return C24993o.m4238c(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }

    /* renamed from: b */
    public static void m4241b() throws DynamiteModule.LoadingException {
        zzad zzadVar;
        if (f69953e != null) {
            return;
        }
        Objects.requireNonNull(f69955g, "null reference");
        synchronized (f69954f) {
            if (f69953e == null) {
                IBinder m38738c = DynamiteModule.m38737d(f69955g, DynamiteModule.f6178d, "com.google.android.gms.googlecertificates").m38738c("com.google.android.gms.common.GoogleCertificatesImpl");
                int i = zzae.f6040a;
                if (m38738c == null) {
                    zzadVar = null;
                } else {
                    IInterface queryLocalInterface = m38738c.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    zzadVar = queryLocalInterface instanceof zzaf ? (zzaf) queryLocalInterface : new zzad(m38738c);
                }
                f69953e = zzadVar;
            }
        }
    }
}
