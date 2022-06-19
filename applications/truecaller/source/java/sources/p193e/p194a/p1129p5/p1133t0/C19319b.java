package p193e.p194a.p1129p5.p1133t0;

import android.content.SharedPreferences;
import java.io.Closeable;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.p5.t0.b */
/* loaded from: classes15-dex2jar.jar:e/a/p5/t0/b.class */
public final class C19319b implements Closeable {

    /* renamed from: a */
    public final g f53762a;

    /* renamed from: e.a.p5.t0.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/t0/b$a.class */
    public static final class C19320a extends m implements a<SharedPreferences.Editor> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC19316a f53763b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19320a(AbstractC19316a abstractC19316a) {
            super(0);
            this.f53763b = abstractC19316a;
        }

        public Object invoke() {
            return this.f53763b.f53758a.edit();
        }
    }

    public C19319b(AbstractC19316a abstractC19316a) {
        l.e(abstractC19316a, "baseSettings");
        this.f53762a = C25225a.m3978P1(new C19320a(abstractC19316a));
    }

    /* renamed from: b */
    public final SharedPreferences.Editor m13460b() {
        return (SharedPreferences.Editor) this.f53762a.getValue();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m13460b().commit();
    }
}
