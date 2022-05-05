package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import android.os.Build;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import n.d0;
import n.h;
import n.r;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.squareup.picasso.c */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c.class */
public class RunnableC0175c implements Runnable {

    /* renamed from: f */
    final int f326f = f322A.incrementAndGet();

    /* renamed from: g */
    final Picasso f327g;

    /* renamed from: h */
    final C0190i f328h;

    /* renamed from: i */
    final AbstractC0182d f329i;

    /* renamed from: j */
    final C0171a0 f330j;

    /* renamed from: k */
    final String f331k;

    /* renamed from: l */
    final C0204w f332l;

    /* renamed from: m */
    final int f333m;

    /* renamed from: n */
    int f334n;

    /* renamed from: o */
    final AbstractC0208y f335o;

    /* renamed from: p */
    AbstractC0169a f336p;

    /* renamed from: q */
    List<AbstractC0169a> f337q;

    /* renamed from: r */
    Bitmap f338r;

    /* renamed from: s */
    Future<?> f339s;

    /* renamed from: t */
    Picasso.EnumC0166e f340t;

    /* renamed from: u */
    Exception f341u;

    /* renamed from: v */
    int f342v;

    /* renamed from: w */
    int f343w;

    /* renamed from: x */
    Picasso.EnumC0167f f344x;

    /* renamed from: y */
    private static final Object f324y = new Object();

    /* renamed from: z */
    private static final ThreadLocal<StringBuilder> f325z = new C0176a();

    /* renamed from: A */
    private static final AtomicInteger f322A = new AtomicInteger();

    /* renamed from: B */
    private static final AbstractC0208y f323B = new b();

    /* renamed from: com.squareup.picasso.c$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$a.class */
    static final class C0176a extends ThreadLocal<StringBuilder> {
        C0176a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    }

    /* renamed from: com.squareup.picasso.c$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$c.class */
    static final class RunnableC0177c implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC0184e0 f345f;

        /* renamed from: g */
        final /* synthetic */ RuntimeException f346g;

        RunnableC0177c(AbstractC0184e0 e0Var, RuntimeException runtimeException) {
            this.f345f = e0Var;
            this.f346g = runtimeException;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new RuntimeException("Transformation " + this.f345f.key() + " crashed with exception.", this.f346g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.c$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$d.class */
    public static final class RunnableC0178d implements Runnable {

        /* renamed from: f */
        final /* synthetic */ StringBuilder f347f;

        RunnableC0178d(StringBuilder sb) {
            this.f347f = sb;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new NullPointerException(this.f347f.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.c$e */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$e.class */
    public static final class RunnableC0179e implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC0184e0 f348f;

        RunnableC0179e(AbstractC0184e0 e0Var) {
            this.f348f = e0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f348f.key() + " returned input Bitmap but recycled it.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.c$f */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$f.class */
    public static final class RunnableC0180f implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC0184e0 f349f;

        RunnableC0180f(AbstractC0184e0 e0Var) {
            this.f349f = e0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f349f.key() + " mutated input Bitmap but failed to recycle the original.");
        }
    }

    RunnableC0175c(Picasso picasso, C0190i iVar, AbstractC0182d dVar, C0171a0 a0Var, AbstractC0169a aVar, AbstractC0208y yVar) {
        this.f327g = picasso;
        this.f328h = iVar;
        this.f329i = dVar;
        this.f330j = a0Var;
        this.f336p = aVar;
        this.f331k = aVar.m851d();
        this.f332l = aVar.m846i();
        this.f344x = aVar.m847h();
        this.f333m = aVar.m850e();
        this.f334n = aVar.m849f();
        this.f335o = yVar;
        this.f343w = yVar.m696e();
    }

    /* renamed from: a */
    static Bitmap m826a(List<AbstractC0184e0> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            AbstractC0184e0 e0Var = list.get(i);
            Bitmap transform = e0Var.transform(bitmap);
            if (transform == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Transformation ");
                sb.append(e0Var.key());
                sb.append(" returned null after ");
                sb.append(i);
                sb.append(" previous transformation(s).\n\nTransformation list:\n");
                for (AbstractC0184e0 e0Var2 : list) {
                    sb.append(e0Var2.key());
                    sb.append('\n');
                }
                Picasso.HANDLER.post(new RunnableC0178d(sb));
                return null;
            } else if (transform == bitmap && bitmap.isRecycled()) {
                Picasso.HANDLER.post(new RunnableC0179e(e0Var));
                return null;
            } else if (transform == bitmap || bitmap.isRecycled()) {
                i++;
                bitmap = transform;
            } else {
                Picasso.HANDLER.post(new RunnableC0180f(e0Var));
                return null;
            }
        }
        return bitmap;
    }

    /* renamed from: d */
    private Picasso.EnumC0167f m823d() {
        Picasso.EnumC0167f fVar = Picasso.EnumC0167f.LOW;
        List<AbstractC0169a> list = this.f337q;
        int i = 0;
        boolean z = list != null && !list.isEmpty();
        AbstractC0169a aVar = this.f336p;
        boolean z2 = true;
        if (aVar == null) {
            z2 = z;
        }
        if (!z2) {
            return fVar;
        }
        if (aVar != null) {
            fVar = aVar.m847h();
        }
        Picasso.EnumC0167f fVar2 = fVar;
        if (z) {
            int size = this.f337q.size();
            while (true) {
                fVar2 = fVar;
                if (i >= size) {
                    break;
                }
                Picasso.EnumC0167f h = this.f337q.get(i).m847h();
                fVar = fVar;
                if (h.ordinal() > fVar.ordinal()) {
                    fVar = h;
                }
                i++;
            }
        }
        return fVar2;
    }

    /* renamed from: e */
    static Bitmap m822e(d0 d0Var, C0204w wVar) throws IOException {
        h d = r.d(d0Var);
        boolean r = C0185f0.m776r(d);
        boolean z = wVar.f416r && Build.VERSION.SDK_INT < 21;
        BitmapFactory.Options d2 = AbstractC0208y.m697d(wVar);
        boolean g = AbstractC0208y.m694g(d2);
        if (r || z) {
            byte[] O = d.O();
            if (g) {
                BitmapFactory.decodeByteArray(O, 0, O.length, d2);
                AbstractC0208y.m699b(wVar.f406h, wVar.f407i, d2, wVar);
            }
            return BitmapFactory.decodeByteArray(O, 0, O.length, d2);
        }
        InputStream p1 = d.p1();
        C0197n nVar = p1;
        if (g) {
            C0197n nVar2 = new C0197n(p1);
            nVar2.m741a(false);
            long c = nVar2.m739c(1024);
            BitmapFactory.decodeStream(nVar2, null, d2);
            AbstractC0208y.m699b(wVar.f406h, wVar.f407i, d2, wVar);
            nVar2.m740b(c);
            nVar2.m741a(true);
            nVar = nVar2;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(nVar, null, d2);
        if (decodeStream != null) {
            return decodeStream;
        }
        throw new IOException("Failed to decode stream.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static RunnableC0175c m820g(Picasso picasso, C0190i iVar, AbstractC0182d dVar, C0171a0 a0Var, AbstractC0169a aVar) {
        C0204w i = aVar.m846i();
        List<AbstractC0208y> requestHandlers = picasso.getRequestHandlers();
        int size = requestHandlers.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC0208y yVar = requestHandlers.get(i2);
            if (yVar.m698c(i)) {
                return new RunnableC0175c(picasso, iVar, dVar, a0Var, aVar, yVar);
            }
        }
        return new RunnableC0175c(picasso, iVar, dVar, a0Var, aVar, f323B);
    }

    /* renamed from: l */
    static int m815l(int i) {
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

    /* renamed from: m */
    static int m814m(int i) {
        return (i == 2 || i == 7 || i == 4 || i == 5) ? -1 : 1;
    }

    /* renamed from: v */
    private static boolean m805v(boolean z, int i, int i2, int i3, int i4) {
        return !z || (i3 != 0 && i > i3) || (i4 != 0 && i2 > i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x026d, code lost:
        if (r0 == 270) goto L_0x0270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0446, code lost:
        if (r40 != 0) goto L_0x0449;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0459, code lost:
        if (r40 != r0) goto L_0x045c;
     */
    /* JADX WARN: Removed duplicated region for block: B:97:0x04df  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x04e6  */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.graphics.Bitmap m802y(com.squareup.picasso.C0204w r9, android.graphics.Bitmap r10, int r11) {
        /*
            Method dump skipped, instructions count: 1258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.RunnableC0175c.m802y(com.squareup.picasso.w, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    /* renamed from: z */
    static void m801z(C0204w wVar) {
        String a = wVar.m729a();
        StringBuilder sb = f325z.get();
        sb.ensureCapacity(a.length() + 8);
        sb.replace(8, sb.length(), a);
        Thread.currentThread().setName(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m825b(AbstractC0169a aVar) {
        boolean z = this.f327g.loggingEnabled;
        C0204w wVar = aVar.f280b;
        if (this.f336p == null) {
            this.f336p = aVar;
            if (z) {
                List<AbstractC0169a> list = this.f337q;
                if (list == null || list.isEmpty()) {
                    C0185f0.m774t("Hunter", "joined", wVar.m726d(), "to empty hunter");
                } else {
                    C0185f0.m774t("Hunter", "joined", wVar.m726d(), C0185f0.m783k(this, "to "));
                }
            }
        } else {
            if (this.f337q == null) {
                this.f337q = new ArrayList(3);
            }
            this.f337q.add(aVar);
            if (z) {
                C0185f0.m774t("Hunter", "joined", wVar.m726d(), C0185f0.m783k(this, "to "));
            }
            Picasso.EnumC0167f h = aVar.m847h();
            if (h.ordinal() > this.f344x.ordinal()) {
                this.f344x = h;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r0.isEmpty() != false) goto L_0x0021;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m824c() {
        /*
            r3 = this;
            r0 = r3
            com.squareup.picasso.a r0 = r0.f336p
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L_0x003a
            r0 = r3
            java.util.List<com.squareup.picasso.a> r0 = r0.f337q
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
            java.util.concurrent.Future<?> r0 = r0.f339s
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
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.RunnableC0175c.m824c():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m821f(AbstractC0169a aVar) {
        boolean z;
        if (this.f336p == aVar) {
            this.f336p = null;
            z = true;
        } else {
            List<AbstractC0169a> list = this.f337q;
            z = list != null ? list.remove(aVar) : false;
        }
        if (z && aVar.m847h() == this.f344x) {
            this.f344x = m823d();
        }
        if (this.f327g.loggingEnabled) {
            C0185f0.m774t("Hunter", "removed", aVar.f280b.m726d(), C0185f0.m783k(this, "from "));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public AbstractC0169a m819h() {
        return this.f336p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public List<AbstractC0169a> m818i() {
        return this.f337q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public C0204w m817j() {
        return this.f332l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public Exception m816k() {
        return this.f341u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public String m813n() {
        return this.f331k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public Picasso.EnumC0166e m812o() {
        return this.f340t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public int m811p() {
        return this.f333m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public Picasso m810q() {
        return this.f327g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public Picasso.EnumC0167f m809r() {
        return this.f344x;
    }

    @Override // java.lang.Runnable
    public void run() {
        m801z(this.f332l);
        if (this.f327g.loggingEnabled) {
            C0185f0.m775s("Hunter", "executing", C0185f0.m784j(this));
        }
        Bitmap t = m807t();
        this.f338r = t;
        if (t == null) {
            this.f328h.m767e(this);
        } else {
            this.f328h.m768d(this);
        }
        Thread.currentThread().setName("Picasso-Idle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public Bitmap m808s() {
        return this.f338r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e9, code lost:
        if (r5.f342v != 0) goto L_0x00ec;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0104, code lost:
        if (r5.f342v != 0) goto L_0x0107;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.graphics.Bitmap m807t() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.RunnableC0175c.m807t():android.graphics.Bitmap");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public boolean m806u() {
        Future<?> future = this.f339s;
        return future != null && future.isCancelled();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public boolean m804w(boolean z, NetworkInfo networkInfo) {
        int i = this.f343w;
        if (!(i > 0)) {
            return false;
        }
        this.f343w = i - 1;
        return this.f335o.m693h(z, networkInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public boolean m803x() {
        return this.f335o.m692i();
    }
}
