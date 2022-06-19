package p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0;

import com.google.android.exoplayer2.Format;
import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.d0.h */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/h.class */
public abstract class AbstractC24347h {

    /* renamed from: a */
    public final C24343d f67699a = new C24343d();

    /* renamed from: b */
    public AbstractC24422s f67700b;

    /* renamed from: c */
    public AbstractC24409i f67701c;

    /* renamed from: d */
    public AbstractC24345f f67702d;

    /* renamed from: e */
    public long f67703e;

    /* renamed from: f */
    public long f67704f;

    /* renamed from: g */
    public long f67705g;

    /* renamed from: h */
    public int f67706h;

    /* renamed from: i */
    public int f67707i;

    /* renamed from: j */
    public C24349b f67708j;

    /* renamed from: k */
    public long f67709k;

    /* renamed from: l */
    public boolean f67710l;

    /* renamed from: m */
    public boolean f67711m;

    /* renamed from: e.m.a.c.g1.d0.h$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/h$b.class */
    public static class C24349b {

        /* renamed from: a */
        public Format f67712a;

        /* renamed from: b */
        public AbstractC24345f f67713b;
    }

    /* renamed from: e.m.a.c.g1.d0.h$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/h$c.class */
    public static final class C24350c implements AbstractC24345f {
        public C24350c(C24348a c24348a) {
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24345f
        /* renamed from: a */
        public AbstractC24418q mo5221a() {
            return new AbstractC24418q.C24420b(-9223372036854775807L, 0L);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24345f
        /* renamed from: b */
        public long mo5220b(C24353e c24353e) {
            return -1L;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24345f
        /* renamed from: d */
        public void mo5219d(long j) {
        }
    }

    /* renamed from: a */
    public long m5222a(long j) {
        return (this.f67707i * j) / 1000000;
    }

    /* renamed from: b */
    public void mo5218b(long j) {
        this.f67705g = j;
    }

    /* renamed from: c */
    public abstract long mo5217c(C24798t c24798t);

    /* renamed from: d */
    public abstract boolean mo5216d(C24798t c24798t, long j, C24349b c24349b) throws IOException, InterruptedException;

    /* renamed from: e */
    public void mo5215e(boolean z) {
        if (z) {
            this.f67708j = new C24349b();
            this.f67704f = 0L;
            this.f67706h = 0;
        } else {
            this.f67706h = 1;
        }
        this.f67703e = -1L;
        this.f67705g = 0L;
    }
}
