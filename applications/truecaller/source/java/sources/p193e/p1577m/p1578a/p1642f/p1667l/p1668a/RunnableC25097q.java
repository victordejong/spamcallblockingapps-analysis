package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import java.util.Map;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.q */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/q.class */
public final class RunnableC25097q implements Runnable {

    /* renamed from: a */
    public final AbstractC25094p f70240a;

    /* renamed from: b */
    public final int f70241b;

    /* renamed from: c */
    public final Throwable f70242c;

    /* renamed from: d */
    public final byte[] f70243d;

    /* renamed from: e */
    public final String f70244e;

    /* renamed from: f */
    public final Map f70245f;

    public RunnableC25097q(String str, AbstractC25094p abstractC25094p, int i, Throwable th, byte[] bArr, Map map) {
        Objects.requireNonNull(abstractC25094p, "null reference");
        this.f70240a = abstractC25094p;
        this.f70241b = i;
        this.f70242c = th;
        this.f70243d = bArr;
        this.f70244e = str;
        this.f70245f = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70240a.m4163a(this.f70244e, this.f70241b, this.f70242c, this.f70243d, this.f70245f);
    }
}
