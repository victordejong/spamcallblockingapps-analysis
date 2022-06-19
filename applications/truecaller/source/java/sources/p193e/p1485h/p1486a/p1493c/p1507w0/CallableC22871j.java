package p193e.p1485h.p1486a.p1493c.p1507w0;

import android.text.TextUtils;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.util.Objects;
import java.util.concurrent.Callable;
import p1727n3.p1789g0.C26232y;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
/* renamed from: e.h.a.c.w0.j */
/* loaded from: classes-dex2jar.jar:e/h/a/c/w0/j.class */
public class CallableC22871j implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f63506a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC22865g.EnumC22866a f63507b;

    /* renamed from: c */
    public final /* synthetic */ C22867i f63508c;

    public CallableC22871j(C22867i c22867i, String str, AbstractC22865g.EnumC22866a enumC22866a) {
        this.f63508c = c22867i;
        this.f63506a = str;
        this.f63507b = enumC22866a;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        C22867i c22867i = this.f63508c;
        String str = this.f63506a;
        AbstractC22865g.EnumC22866a enumC22866a = this.f63507b;
        Objects.requireNonNull(c22867i);
        boolean z = !TextUtils.isEmpty(str) && enumC22866a != null && str.equalsIgnoreCase(c22867i.m7652i(enumC22866a));
        if (enumC22866a != null) {
            CleverTapInstanceConfig cleverTapInstanceConfig = c22867i.f63492f;
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("PushProvider"), enumC22866a + "Token Already available value: " + z);
        }
        if (z) {
            return null;
        }
        String str2 = this.f63507b.f63484c;
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        C22867i c22867i2 = this.f63508c;
        try {
            C26232y.m2297u0(c22867i2.f63493g).edit().putString(C26232y.m2398W1(c22867i2.f63492f, str2), this.f63506a).commit();
        } catch (Throwable th) {
        }
        CleverTapInstanceConfig cleverTapInstanceConfig2 = this.f63508c.f63492f;
        cleverTapInstanceConfig2.f2253n.m7855b(cleverTapInstanceConfig2.m42082a("PushProvider"), this.f63507b + "Cached New Token successfully " + this.f63506a);
        return null;
    }
}
