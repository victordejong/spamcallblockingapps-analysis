package p255u7;

import java.nio.ByteBuffer;
import p148k7.C3358l;
/* renamed from: u7.a */
/* loaded from: classes2-dex2jar.jar:u7/a.class */
public class C4534a {

    /* renamed from: b */
    public int f13941b = 0;

    /* renamed from: c */
    public int f13942c = 4096;

    /* renamed from: a */
    public final int f13940a = C3358l.f11375f;

    /* renamed from: a */
    public ByteBuffer m863a() {
        return C3358l.m2342k(Math.min(Math.max(this.f13941b, this.f13942c), this.f13940a));
    }

    /* renamed from: b */
    public C4534a m862b(int i) {
        this.f13942c = Math.max(0, i);
        return this;
    }

    /* renamed from: c */
    public void m861c(long j) {
        this.f13941b = ((int) j) * 2;
    }
}
