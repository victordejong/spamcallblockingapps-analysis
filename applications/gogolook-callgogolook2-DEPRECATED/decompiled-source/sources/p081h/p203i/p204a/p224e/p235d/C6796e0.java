package p081h.p203i.p204a.p224e.p235d;

import android.util.Log;
import androidx.annotation.NonNull;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p249s.C7069a;
import p081h.p203i.p204a.p224e.p235d.p249s.C7079k;
@CheckReturnValue
/* renamed from: h.i.a.e.d.e0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/e0.class */
public class C6796e0 {

    /* renamed from: d */
    public static final C6796e0 f16691d = new C6796e0(true, null, null);

    /* renamed from: a */
    public final boolean f16692a;

    /* renamed from: b */
    public final String f16693b;

    /* renamed from: c */
    public final Throwable f16694c;

    public C6796e0(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.f16692a = z;
        this.f16693b = str;
        this.f16694c = th;
    }

    /* renamed from: a */
    public static C6796e0 m21882a(@NonNull String str) {
        return new C6796e0(false, str, null);
    }

    /* renamed from: a */
    public static C6796e0 m21880a(@NonNull String str, @NonNull Throwable th) {
        return new C6796e0(false, str, th);
    }

    /* renamed from: a */
    public static C6796e0 m21879a(Callable<String> callable) {
        return new C6800g0(callable);
    }

    /* renamed from: a */
    public static String m21881a(String str, AbstractBinderC7101x xVar, boolean z, boolean z2) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", z2 ? "debug cert rejected" : "not whitelisted", str, C7079k.m21140a(C7069a.m21171a("SHA-1").digest(xVar.mo21077G0())), Boolean.valueOf(z), "12451009.false");
    }

    /* renamed from: c */
    public static C6796e0 m21877c() {
        return f16691d;
    }

    @Nullable
    /* renamed from: a */
    public String mo21875a() {
        return this.f16693b;
    }

    /* renamed from: b */
    public final void m21878b() {
        if (!this.f16692a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (this.f16694c != null) {
                mo21875a();
            } else {
                mo21875a();
            }
        }
    }
}
