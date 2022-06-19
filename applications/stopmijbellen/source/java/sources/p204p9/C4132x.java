package p204p9;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import p011aa.C0049c;
import p136j6.C3283g;
import p204p9.C4123s;
import p214q9.AbstractRunnableC4170b;
import p214q9.C4171c;
import p225r9.C4239b;
import p236s9.C4333a;
import p236s9.C4335c;
import p236s9.C4338e;
import p246t9.AbstractC4433c;
import p246t9.C4430a;
import p246t9.C4431b;
import p246t9.C4437f;
import p246t9.C4440i;
import p290x9.C4945f;
/* renamed from: p9.x */
/* loaded from: classes2-dex2jar.jar:p9/x.class */
public final class C4132x implements AbstractC4097e {

    /* renamed from: a */
    public final C4128v f13031a;

    /* renamed from: b */
    public final C4440i f13032b;

    /* renamed from: c */
    public final C0049c f13033c;
    @Nullable

    /* renamed from: d */
    public AbstractC4116o f13034d;

    /* renamed from: e */
    public final C4135y f13035e;

    /* renamed from: f */
    public final boolean f13036f;

    /* renamed from: g */
    public boolean f13037g;

    /* renamed from: p9.x$a */
    /* loaded from: classes2-dex2jar.jar:p9/x$a.class */
    public class C4133a extends C0049c {
        public C4133a() {
            C4132x.this = r4;
        }

        @Override // p011aa.C0049c
        /* renamed from: m */
        public void mo607m() {
            AbstractC4433c abstractC4433c;
            C4335c c4335c;
            C4440i c4440i = C4132x.this.f13032b;
            c4440i.f13806d = true;
            C4338e c4338e = c4440i.f13804b;
            if (c4338e != null) {
                synchronized (c4338e.f13511d) {
                    c4338e.f13520m = true;
                    abstractC4433c = c4338e.f13521n;
                    c4335c = c4338e.f13517j;
                }
                if (abstractC4433c != null) {
                    abstractC4433c.cancel();
                } else if (c4335c == null) {
                } else {
                    C4171c.m1331e(c4335c.f13487d);
                }
            }
        }
    }

    /* renamed from: p9.x$b */
    /* loaded from: classes2-dex2jar.jar:p9/x$b.class */
    public final class C4134b extends AbstractRunnableC4170b {

        /* renamed from: b */
        public final AbstractC4100f f13039b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4134b(AbstractC4100f abstractC4100f) {
            super("OkHttp %s", r8.m1365c());
            C4132x.this = r8;
            this.f13039b = abstractC4100f;
        }

        @Override // p214q9.AbstractRunnableC4170b
        /* renamed from: b */
        public void mo635b() {
            boolean z;
            IOException e;
            C4132x.this.f13033c.m8866i();
            try {
                try {
                    C4084b0 m1366b = C4132x.this.m1366b();
                    try {
                        if (C4132x.this.f13032b.f13806d) {
                            ((C3283g) this.f13039b).m2431a(C4132x.this, new IOException("Canceled"));
                        } else {
                            ((C3283g) this.f13039b).m2430b(C4132x.this, m1366b);
                        }
                    } catch (IOException e2) {
                        e = e2;
                        z = true;
                        IOException m1364d = C4132x.this.m1364d(e);
                        if (z) {
                            C4945f.f15078a.mo210l(4, "Callback failure for " + C4132x.this.m1363e(), m1364d);
                        } else {
                            Objects.requireNonNull(C4132x.this.f13034d);
                            ((C3283g) this.f13039b).m2431a(C4132x.this, m1364d);
                        }
                        C4113m c4113m = C4132x.this.f13031a.f12977a;
                        c4113m.m1407a(c4113m.f12943c, this);
                    }
                } catch (Throwable th) {
                    C4113m c4113m2 = C4132x.this.f13031a.f12977a;
                    c4113m2.m1407a(c4113m2.f12943c, this);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                z = false;
            }
            C4113m c4113m3 = C4132x.this.f13031a.f12977a;
            c4113m3.m1407a(c4113m3.f12943c, this);
        }
    }

    public C4132x(C4128v c4128v, C4135y c4135y, boolean z) {
        this.f13031a = c4128v;
        this.f13035e = c4135y;
        this.f13036f = z;
        this.f13032b = new C4440i(c4128v, z);
        C4133a c4133a = new C4133a();
        this.f13033c = c4133a;
        Objects.requireNonNull(c4128v);
        c4133a.mo8771g(0, TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    public C4084b0 m1367a() throws IOException {
        synchronized (this) {
            if (this.f13037g) {
                throw new IllegalStateException("Already Executed");
            }
            this.f13037g = true;
        }
        this.f13032b.f13805c = C4945f.f15078a.mo212j("response.body().close()");
        this.f13033c.m8866i();
        Objects.requireNonNull(this.f13034d);
        try {
            try {
                C4113m c4113m = this.f13031a.f12977a;
                synchronized (c4113m) {
                    c4113m.f12944d.add(this);
                }
                C4084b0 m1366b = m1366b();
                C4113m c4113m2 = this.f13031a.f12977a;
                c4113m2.m1407a(c4113m2.f12944d, this);
                return m1366b;
            } catch (IOException e) {
                IOException m1364d = m1364d(e);
                Objects.requireNonNull(this.f13034d);
                throw m1364d;
            }
        } catch (Throwable th) {
            C4113m c4113m3 = this.f13031a.f12977a;
            c4113m3.m1407a(c4113m3.f12944d, this);
            throw th;
        }
    }

    /* renamed from: b */
    public C4084b0 m1366b() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f13031a.f12980d);
        arrayList.add(this.f13032b);
        arrayList.add(new C4430a(this.f13031a.f12984h));
        C4086c c4086c = this.f13031a.f12985i;
        arrayList.add(new C4239b(c4086c != null ? c4086c.f12822a : null));
        arrayList.add(new C4333a(this.f13031a));
        if (!this.f13036f) {
            arrayList.addAll(this.f13031a.f12981e);
        }
        arrayList.add(new C4431b(this.f13036f));
        C4135y c4135y = this.f13035e;
        AbstractC4116o abstractC4116o = this.f13034d;
        C4128v c4128v = this.f13031a;
        return new C4437f(arrayList, null, null, null, 0, c4135y, this, abstractC4116o, c4128v.f12998v, c4128v.f12999w, c4128v.f13000x).m927a(c4135y);
    }

    /* renamed from: c */
    public String m1365c() {
        C4123s.C4124a c4124a;
        C4123s c4123s = this.f13035e.f13041a;
        Objects.requireNonNull(c4123s);
        try {
            c4124a = new C4123s.C4124a();
            c4124a.m1372c(c4123s, "/...");
        } catch (IllegalArgumentException e) {
            c4124a = null;
        }
        c4124a.m1370e("");
        c4124a.m1371d("");
        return c4124a.m1374a().f12963i;
    }

    public Object clone() throws CloneNotSupportedException {
        C4128v c4128v = this.f13031a;
        C4132x c4132x = new C4132x(c4128v, this.f13035e, this.f13036f);
        c4132x.f13034d = ((C4119p) c4128v.f12982f).f12947a;
        return c4132x;
    }

    @Nullable
    /* renamed from: d */
    public IOException m1364d(@Nullable IOException iOException) {
        if (!this.f13033c.m8864k()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: e */
    public String m1363e() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f13032b.f13806d ? "canceled " : "");
        sb.append(this.f13036f ? "web socket" : "call");
        sb.append(" to ");
        sb.append(m1365c());
        return sb.toString();
    }
}
