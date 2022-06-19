package p193e.p1485h.p1486a.p1493c.p1507w0;

import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Callable;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
/* renamed from: e.h.a.c.w0.l */
/* loaded from: classes-dex2jar.jar:e/h/a/c/w0/l.class */
public class CallableC22873l implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ C22867i f63510a;

    public CallableC22873l(C22867i c22867i) {
        this.f63510a = c22867i;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        C22867i c22867i = this.f63510a;
        Iterator<AbstractC22859a> it = c22867i.f63488b.iterator();
        while (it.hasNext()) {
            AbstractC22859a next = it.next();
            try {
                next.requestToken();
            } catch (Throwable th) {
                CleverTapInstanceConfig cleverTapInstanceConfig = c22867i.f63492f;
                String str = "Token Refresh error " + next;
                C22735g0 c22735g0 = cleverTapInstanceConfig.f2253n;
                cleverTapInstanceConfig.m42082a("PushProvider");
                Objects.requireNonNull(c22735g0);
            }
        }
        C22867i c22867i2 = this.f63510a;
        Iterator<AbstractC22865g.EnumC22866a> it2 = c22867i2.f63489c.iterator();
        while (it2.hasNext()) {
            AbstractC22865g.EnumC22866a next2 = it2.next();
            try {
                c22867i2.m7648m(c22867i2.m7652i(next2), true, next2);
            } catch (Throwable th2) {
                CleverTapInstanceConfig cleverTapInstanceConfig2 = c22867i2.f63492f;
                String str2 = "Token Refresh error " + next2;
                C22735g0 c22735g02 = cleverTapInstanceConfig2.f2253n;
                cleverTapInstanceConfig2.m42082a("PushProvider");
                Objects.requireNonNull(c22735g02);
            }
        }
        return null;
    }
}
