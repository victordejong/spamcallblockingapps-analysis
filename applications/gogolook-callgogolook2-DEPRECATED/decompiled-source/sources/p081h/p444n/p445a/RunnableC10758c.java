package p081h.p444n.p445a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import android.os.Build;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import p081h.p444n.p445a.AbstractC10815z;
import p081h.p444n.p445a.C10794s;
import p081h.p444n.p445a.C10798u;
import p645m.AbstractC15174e;
import p645m.AbstractC15193s;
import p645m.C15181l;
/* renamed from: h.n.a.c */
/* loaded from: classes2-dex2jar.jar:h/n/a/c.class */
public class RunnableC10758c implements Runnable {

    /* renamed from: t */
    public static final Object f24548t = new Object();

    /* renamed from: u */
    public static final ThreadLocal<StringBuilder> f24549u = new C10759a();

    /* renamed from: v */
    public static final AtomicInteger f24550v = new AtomicInteger();

    /* renamed from: w */
    public static final AbstractC10815z f24551w = new C10760b();

    /* renamed from: a */
    public final int f24552a = f24550v.incrementAndGet();

    /* renamed from: b */
    public final C10798u f24553b;

    /* renamed from: c */
    public final C10777i f24554c;

    /* renamed from: d */
    public final AbstractC10766d f24555d;

    /* renamed from: e */
    public final C10755b0 f24556e;

    /* renamed from: f */
    public final String f24557f;

    /* renamed from: g */
    public final C10811x f24558g;

    /* renamed from: h */
    public final int f24559h;

    /* renamed from: i */
    public int f24560i;

    /* renamed from: j */
    public final AbstractC10815z f24561j;

    /* renamed from: k */
    public AbstractC10751a f24562k;

    /* renamed from: l */
    public List<AbstractC10751a> f24563l;

    /* renamed from: m */
    public Bitmap f24564m;

    /* renamed from: n */
    public Future<?> f24565n;

    /* renamed from: o */
    public C10798u.EnumC10804e f24566o;

    /* renamed from: p */
    public Exception f24567p;

    /* renamed from: q */
    public int f24568q;

    /* renamed from: r */
    public int f24569r;

    /* renamed from: s */
    public C10798u.EnumC10805f f24570s;

    /* renamed from: h.n.a.c$a */
    /* loaded from: classes2-dex2jar.jar:h/n/a/c$a.class */
    public static final class C10759a extends ThreadLocal<StringBuilder> {
        @Override // java.lang.ThreadLocal
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    }

    /* renamed from: h.n.a.c$b */
    /* loaded from: classes2-dex2jar.jar:h/n/a/c$b.class */
    public static final class C10760b extends AbstractC10815z {
        @Override // p081h.p444n.p445a.AbstractC10815z
        /* renamed from: a */
        public AbstractC10815z.C10816a mo10561a(C10811x xVar, int i) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + xVar);
        }

        @Override // p081h.p444n.p445a.AbstractC10815z
        /* renamed from: a */
        public boolean mo10562a(C10811x xVar) {
            return true;
        }
    }

    /* renamed from: h.n.a.c$c */
    /* loaded from: classes2-dex2jar.jar:h/n/a/c$c.class */
    public static final class RunnableC10761c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC10768d0 f24571a;

        /* renamed from: b */
        public final /* synthetic */ RuntimeException f24572b;

        public RunnableC10761c(AbstractC10768d0 d0Var, RuntimeException runtimeException) {
            this.f24571a = d0Var;
            this.f24572b = runtimeException;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new RuntimeException("Transformation " + this.f24571a.m10684a() + " crashed with exception.", this.f24572b);
        }
    }

    /* renamed from: h.n.a.c$d */
    /* loaded from: classes2-dex2jar.jar:h/n/a/c$d.class */
    public static final class RunnableC10762d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ StringBuilder f24573a;

        public RunnableC10762d(StringBuilder sb) {
            this.f24573a = sb;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new NullPointerException(this.f24573a.toString());
        }
    }

    /* renamed from: h.n.a.c$e */
    /* loaded from: classes2-dex2jar.jar:h/n/a/c$e.class */
    public static final class RunnableC10763e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC10768d0 f24574a;

        public RunnableC10763e(AbstractC10768d0 d0Var) {
            this.f24574a = d0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f24574a.m10684a() + " returned input Bitmap but recycled it.");
        }
    }

    /* renamed from: h.n.a.c$f */
    /* loaded from: classes2-dex2jar.jar:h/n/a/c$f.class */
    public static final class RunnableC10764f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC10768d0 f24575a;

        public RunnableC10764f(AbstractC10768d0 d0Var) {
            this.f24575a = d0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f24575a.m10684a() + " mutated input Bitmap but failed to recycle the original.");
        }
    }

    public RunnableC10758c(C10798u uVar, C10777i iVar, AbstractC10766d dVar, C10755b0 b0Var, AbstractC10751a aVar, AbstractC10815z zVar) {
        this.f24553b = uVar;
        this.f24554c = iVar;
        this.f24555d = dVar;
        this.f24556e = b0Var;
        this.f24562k = aVar;
        this.f24557f = aVar.m10735b();
        this.f24558g = aVar.m10730g();
        this.f24570s = aVar.m10731f();
        this.f24559h = aVar.m10734c();
        this.f24560i = aVar.m10733d();
        this.f24561j = zVar;
        this.f24569r = zVar.mo10566a();
    }

    /* renamed from: a */
    public static int m10710a(int i) {
        int i2;
        switch (i) {
            case 3:
            case 4:
                i2 = 180;
                break;
            case 5:
            case 6:
                i2 = 90;
                break;
            case 7:
            case 8:
                i2 = 270;
                break;
            default:
                i2 = 0;
                break;
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x026d, code lost:
        if (r0 == 270) goto L_0x0270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x044c, code lost:
        if (r40 != 0) goto L_0x044f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x045f, code lost:
        if (r40 != r0) goto L_0x0462;
     */
    /* JADX WARN: Removed duplicated region for block: B:97:0x04f1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap m10706a(p081h.p444n.p445a.C10811x r9, android.graphics.Bitmap r10, int r11) {
        /*
            Method dump skipped, instructions count: 1276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p444n.p445a.RunnableC10758c.m10706a(h.n.a.x, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    /* renamed from: a */
    public static Bitmap m10705a(List<AbstractC10768d0> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            AbstractC10768d0 d0Var = list.get(i);
            try {
                Bitmap a = d0Var.m10683a(bitmap);
                if (a == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Transformation ");
                    sb.append(d0Var.m10684a());
                    sb.append(" returned null after ");
                    sb.append(i);
                    sb.append(" previous transformation(s).\n\nTransformation list:\n");
                    for (AbstractC10768d0 d0Var2 : list) {
                        sb.append(d0Var2.m10684a());
                        sb.append('\n');
                    }
                    C10798u.f24653p.post(new RunnableC10762d(sb));
                    return null;
                } else if (a == bitmap && bitmap.isRecycled()) {
                    C10798u.f24653p.post(new RunnableC10763e(d0Var));
                    return null;
                } else if (a == bitmap || bitmap.isRecycled()) {
                    i++;
                    bitmap = a;
                } else {
                    C10798u.f24653p.post(new RunnableC10764f(d0Var));
                    return null;
                }
            } catch (RuntimeException e) {
                C10798u.f24653p.post(new RunnableC10761c(d0Var, e));
                return null;
            }
        }
        return bitmap;
    }

    /* renamed from: a */
    public static Bitmap m10704a(AbstractC15193s sVar, C10811x xVar) throws IOException {
        AbstractC15174e a = C15181l.m318a(sVar);
        boolean a2 = C10770e0.m10666a(a);
        boolean z = xVar.f24719r && Build.VERSION.SDK_INT < 21;
        BitmapFactory.Options b = AbstractC10815z.m10558b(xVar);
        boolean a3 = AbstractC10815z.m10563a(b);
        if (a2 || z) {
            byte[] u = a.mo293u();
            if (a3) {
                BitmapFactory.decodeByteArray(u, 0, u.length, b);
                AbstractC10815z.m10564a(xVar.f24709h, xVar.f24710i, b, xVar);
            }
            return BitmapFactory.decodeByteArray(u, 0, u.length, b);
        }
        InputStream A = a.mo307A();
        C10789o oVar = A;
        if (a3) {
            C10789o oVar2 = new C10789o(A);
            oVar2.m10624a(false);
            long a4 = oVar2.m10626a(1024);
            BitmapFactory.decodeStream(oVar2, null, b);
            AbstractC10815z.m10564a(xVar.f24709h, xVar.f24710i, b, xVar);
            oVar2.m10623g(a4);
            oVar2.m10624a(true);
            oVar = oVar2;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(oVar, null, b);
        if (decodeStream != null) {
            return decodeStream;
        }
        throw new IOException("Failed to decode stream.");
    }

    /* renamed from: a */
    public static RunnableC10758c m10708a(C10798u uVar, C10777i iVar, AbstractC10766d dVar, C10755b0 b0Var, AbstractC10751a aVar) {
        C10811x g = aVar.m10730g();
        List<AbstractC10815z> a = uVar.m10612a();
        int size = a.size();
        for (int i = 0; i < size; i++) {
            AbstractC10815z zVar = a.get(i);
            if (zVar.mo10562a(g)) {
                return new RunnableC10758c(uVar, iVar, dVar, b0Var, aVar, zVar);
            }
        }
        return new RunnableC10758c(uVar, iVar, dVar, b0Var, aVar, f24551w);
    }

    /* renamed from: a */
    public static void m10707a(C10811x xVar) {
        String a = xVar.m10589a();
        StringBuilder sb = f24549u.get();
        sb.ensureCapacity(a.length() + 8);
        sb.replace(8, sb.length(), a);
        Thread.currentThread().setName(sb.toString());
    }

    /* renamed from: a */
    public static boolean m10703a(boolean z, int i, int i2, int i3, int i4) {
        return !z || (i3 != 0 && i > i3) || (i4 != 0 && i2 > i4);
    }

    /* renamed from: b */
    public static int m10700b(int i) {
        return (i == 2 || i == 7 || i == 4 || i == 5) ? -1 : 1;
    }

    /* renamed from: a */
    public void m10709a(AbstractC10751a aVar) {
        boolean z = this.f24553b.f24667n;
        C10811x xVar = aVar.f24515b;
        if (this.f24562k == null) {
            this.f24562k = aVar;
            if (z) {
                List<AbstractC10751a> list = this.f24563l;
                if (list == null || list.isEmpty()) {
                    C10770e0.m10667a("Hunter", "joined", xVar.m10586d(), "to empty hunter");
                } else {
                    C10770e0.m10667a("Hunter", "joined", xVar.m10586d(), C10770e0.m10673a(this, "to "));
                }
            }
        } else {
            if (this.f24563l == null) {
                this.f24563l = new ArrayList(3);
            }
            this.f24563l.add(aVar);
            if (z) {
                C10770e0.m10667a("Hunter", "joined", xVar.m10586d(), C10770e0.m10673a(this, "to "));
            }
            C10798u.EnumC10805f f = aVar.m10731f();
            if (f.ordinal() > this.f24570s.ordinal()) {
                this.f24570s = f;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r0.isEmpty() != false) goto L_0x0021;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m10711a() {
        /*
            r3 = this;
            r0 = r3
            h.n.a.a r0 = r0.f24562k
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L_0x003a
            r0 = r3
            java.util.List<h.n.a.a> r0 = r0.f24563l
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0021
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x003a
        L_0x0021:
            r0 = r3
            java.util.concurrent.Future<?> r0 = r0.f24565n
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x003a
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 0
            boolean r0 = r0.cancel(r1)
            if (r0 == 0) goto L_0x003a
            r0 = 1
            r6 = r0
        L_0x003a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p444n.p445a.RunnableC10758c.m10711a():boolean");
    }

    /* renamed from: a */
    public boolean m10702a(boolean z, NetworkInfo networkInfo) {
        if (!(this.f24569r > 0)) {
            return false;
        }
        this.f24569r--;
        return this.f24561j.mo10560a(z, networkInfo);
    }

    /* renamed from: b */
    public final C10798u.EnumC10805f m10701b() {
        C10798u.EnumC10805f fVar = C10798u.EnumC10805f.LOW;
        List<AbstractC10751a> list = this.f24563l;
        int i = 0;
        boolean z = list != null && !list.isEmpty();
        boolean z2 = true;
        if (this.f24562k == null) {
            z2 = z;
        }
        if (!z2) {
            return fVar;
        }
        AbstractC10751a aVar = this.f24562k;
        if (aVar != null) {
            fVar = aVar.m10731f();
        }
        C10798u.EnumC10805f fVar2 = fVar;
        if (z) {
            int size = this.f24563l.size();
            while (true) {
                fVar2 = fVar;
                if (i >= size) {
                    break;
                }
                C10798u.EnumC10805f f = this.f24563l.get(i).m10731f();
                fVar = fVar;
                if (f.ordinal() > fVar.ordinal()) {
                    fVar = f;
                }
                i++;
            }
        }
        return fVar2;
    }

    /* renamed from: b */
    public void m10699b(AbstractC10751a aVar) {
        boolean z;
        if (this.f24562k == aVar) {
            this.f24562k = null;
            z = true;
        } else {
            List<AbstractC10751a> list = this.f24563l;
            z = list != null ? list.remove(aVar) : false;
        }
        if (z && aVar.m10731f() == this.f24570s) {
            this.f24570s = m10701b();
        }
        if (this.f24553b.f24667n) {
            C10770e0.m10667a("Hunter", "removed", aVar.f24515b.m10586d(), C10770e0.m10673a(this, "from "));
        }
    }

    /* renamed from: c */
    public AbstractC10751a m10698c() {
        return this.f24562k;
    }

    /* renamed from: d */
    public List<AbstractC10751a> m10697d() {
        return this.f24563l;
    }

    /* renamed from: e */
    public C10811x m10696e() {
        return this.f24558g;
    }

    /* renamed from: f */
    public Exception m10695f() {
        return this.f24567p;
    }

    /* renamed from: g */
    public String m10694g() {
        return this.f24557f;
    }

    /* renamed from: h */
    public C10798u.EnumC10804e m10693h() {
        return this.f24566o;
    }

    /* renamed from: i */
    public int m10692i() {
        return this.f24559h;
    }

    /* renamed from: j */
    public C10798u m10691j() {
        return this.f24553b;
    }

    /* renamed from: k */
    public C10798u.EnumC10805f m10690k() {
        return this.f24570s;
    }

    /* renamed from: l */
    public Bitmap m10689l() {
        return this.f24564m;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f5, code lost:
        if (r5.f24568q != 0) goto L_0x00f8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0110, code lost:
        if (r5.f24568q != 0) goto L_0x0113;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap m10688m() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p444n.p445a.RunnableC10758c.m10688m():android.graphics.Bitmap");
    }

    /* renamed from: n */
    public boolean m10687n() {
        Future<?> future = this.f24565n;
        return future != null && future.isCancelled();
    }

    /* renamed from: o */
    public boolean m10686o() {
        return this.f24561j.mo10559b();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        m10707a(this.f24558g);
                        if (this.f24553b.f24667n) {
                            C10770e0.m10668a("Hunter", "executing", C10770e0.m10674a(this));
                        }
                        this.f24564m = m10688m();
                        if (this.f24564m == null) {
                            this.f24554c.m10642c(this);
                        } else {
                            this.f24554c.m10646b(this);
                        }
                    } catch (Exception e) {
                        this.f24567p = e;
                        this.f24554c.m10642c(this);
                    }
                } catch (C10794s.C10796b e2) {
                    if (!EnumC10793r.m10617a(e2.f24651b) || e2.f24650a != 504) {
                        this.f24567p = e2;
                    }
                    this.f24554c.m10642c(this);
                }
            } catch (IOException e3) {
                this.f24567p = e3;
                this.f24554c.m10640d(this);
            } catch (OutOfMemoryError e4) {
                StringWriter stringWriter = new StringWriter();
                this.f24556e.m10724a().m10685a(new PrintWriter(stringWriter));
                this.f24567p = new RuntimeException(stringWriter.toString(), e4);
                this.f24554c.m10642c(this);
            }
            Thread.currentThread().setName("Picasso-Idle");
        } catch (Throwable th) {
            Thread.currentThread().setName("Picasso-Idle");
            throw th;
        }
    }
}
