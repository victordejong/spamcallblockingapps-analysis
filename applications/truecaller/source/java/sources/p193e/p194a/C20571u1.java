package p193e.p194a;

import android.content.Context;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
/* renamed from: e.a.u1 */
/* loaded from: classes4-dex2jar.jar:e/a/u1.class */
public final class C20571u1 {

    /* renamed from: a */
    public final Context f57676a;

    /* renamed from: b */
    public final C20571u1 f57677b = this;

    /* renamed from: c */
    public Provider<AbstractC8438a> f57678c;

    /* renamed from: e.a.u1$b */
    /* loaded from: classes4-dex2jar.jar:e/a/u1$b.class */
    public static final class C20573b<T> implements Provider<T> {

        /* renamed from: a */
        public final C20571u1 f57679a;

        public C20573b(C20571u1 c20571u1, int i) {
            this.f57679a = c20571u1;
        }

        public T get() {
            return (T) C18334g0.m15218l0(this.f57679a.f57676a);
        }
    }

    public C20571u1(Context context, C20572a c20572a) {
        this.f57676a = context;
        Provider c20573b = new C20573b(this, 0);
        Object obj = b.c;
        this.f57678c = !(c20573b instanceof b) ? new b(c20573b) : c20573b;
    }
}
