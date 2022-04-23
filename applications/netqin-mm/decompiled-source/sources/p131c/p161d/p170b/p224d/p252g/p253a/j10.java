package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwd;
import com.google.android.gms.internal.ads.zzdya;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzdze;
import java.lang.Throwable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* renamed from: c.d.b.d.g.a.j10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/j10.class */
public abstract class j10<V, X extends Throwable, F, T> extends x10<V> implements Runnable {

    /* renamed from: h */
    public zzdzc<? extends V> f13573h;

    /* renamed from: i */
    public Class<X> f13574i;

    /* renamed from: j */
    public F f13575j;

    public j10(zzdzc<? extends V> zzdzcVar, Class<X> cls, F f) {
        zzdwd.m13096a(zzdzcVar);
        this.f13573h = zzdzcVar;
        zzdwd.m13096a(cls);
        this.f13574i = cls;
        zzdwd.m13096a(f);
        this.f13575j = f;
    }

    /* renamed from: a */
    public static <X extends Throwable, V> zzdzc<V> m26800a(zzdzc<? extends V> zzdzcVar, Class<X> cls, zzdya<? super X, ? extends V> zzdyaVar, Executor executor) {
        l10 l10Var = new l10(zzdzcVar, cls, zzdyaVar);
        zzdzcVar.mo12976a(l10Var, zzdze.m12974a(executor, l10Var));
        return l10Var;
    }

    /* renamed from: a */
    public abstract T mo26706a(F f, X x) throws Exception;

    @Override // com.google.android.gms.internal.ads.zzdxq
    /* renamed from: b */
    public final void mo13033b() {
        m13061a((Future<?>) this.f13573h);
        this.f13573h = null;
        this.f13574i = null;
        this.f13575j = null;
    }

    /* renamed from: c */
    public abstract void mo26705c(T t);

    @Override // com.google.android.gms.internal.ads.zzdxq
    /* renamed from: d */
    public final String mo13029d() {
        String str;
        zzdzc<? extends V> zzdzcVar = this.f13573h;
        Class<X> cls = this.f13574i;
        F f = this.f13575j;
        String d = super.mo13029d();
        if (zzdzcVar != null) {
            String valueOf = String.valueOf(zzdzcVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("inputFuture=[");
            sb.append(valueOf);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (cls != null && f != null) {
            String valueOf2 = String.valueOf(cls);
            String valueOf3 = String.valueOf(f);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length());
            sb2.append(str);
            sb2.append("exceptionType=[");
            sb2.append(valueOf2);
            sb2.append("], fallback=[");
            sb2.append(valueOf3);
            sb2.append("]");
            return sb2.toString();
        } else if (d == null) {
            return null;
        } else {
            String valueOf4 = String.valueOf(str);
            String valueOf5 = String.valueOf(d);
            return valueOf5.length() != 0 ? valueOf4.concat(valueOf5) : new String(valueOf4);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0110  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.j10.run():void");
    }
}
