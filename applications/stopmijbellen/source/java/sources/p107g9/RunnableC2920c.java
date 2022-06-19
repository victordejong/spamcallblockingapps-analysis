package p107g9;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Logger;
import p011aa.AbstractC0074y;
import p011aa.C0062o;
import p011aa.C0068s;
import p011aa.C0069t;
import p107g9.AbstractC2968x;
import p107g9.C2949q;
import p107g9.C2953s;
import p237t.C4350g;
/* renamed from: g9.c */
/* loaded from: classes2-dex2jar.jar:g9/c.class */
public class RunnableC2920c implements Runnable {

    /* renamed from: t */
    public static final Object f9849t = new Object();

    /* renamed from: u */
    public static final ThreadLocal<StringBuilder> f9850u = new C2921a();

    /* renamed from: v */
    public static final AtomicInteger f9851v = new AtomicInteger();

    /* renamed from: w */
    public static final AbstractC2968x f9852w = new C2922b();

    /* renamed from: a */
    public final int f9853a = f9851v.incrementAndGet();

    /* renamed from: b */
    public final C2953s f9854b;

    /* renamed from: c */
    public final C2936i f9855c;

    /* renamed from: d */
    public final AbstractC2928d f9856d;

    /* renamed from: e */
    public final C2971z f9857e;

    /* renamed from: f */
    public final String f9858f;

    /* renamed from: g */
    public final C2964v f9859g;

    /* renamed from: h */
    public final int f9860h;

    /* renamed from: i */
    public int f9861i;

    /* renamed from: j */
    public final AbstractC2968x f9862j;

    /* renamed from: k */
    public AbstractC2915a f9863k;

    /* renamed from: l */
    public List<AbstractC2915a> f9864l;

    /* renamed from: m */
    public Bitmap f9865m;

    /* renamed from: n */
    public Future<?> f9866n;

    /* renamed from: o */
    public C2953s.EnumC2958d f9867o;

    /* renamed from: p */
    public Exception f9868p;

    /* renamed from: q */
    public int f9869q;

    /* renamed from: r */
    public int f9870r;

    /* renamed from: s */
    public int f9871s;

    /* renamed from: g9.c$a */
    /* loaded from: classes2-dex2jar.jar:g9/c$a.class */
    public static final class C2921a extends ThreadLocal<StringBuilder> {
        @Override // java.lang.ThreadLocal
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    }

    /* renamed from: g9.c$b */
    /* loaded from: classes2-dex2jar.jar:g9/c$b.class */
    public static final class C2922b extends AbstractC2968x {
        @Override // p107g9.AbstractC2968x
        /* renamed from: c */
        public boolean mo2800c(C2964v c2964v) {
            return true;
        }

        @Override // p107g9.AbstractC2968x
        /* renamed from: f */
        public AbstractC2968x.C2969a mo2799f(C2964v c2964v, int i) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + c2964v);
        }
    }

    /* renamed from: g9.c$c */
    /* loaded from: classes2-dex2jar.jar:g9/c$c.class */
    public static final class RunnableC2923c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2919b0 f9872a;

        /* renamed from: b */
        public final /* synthetic */ RuntimeException f9873b;

        public RunnableC2923c(AbstractC2919b0 abstractC2919b0, RuntimeException runtimeException) {
            this.f9872a = abstractC2919b0;
            this.f9873b = runtimeException;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder m8752j = C0082b.m8752j("Transformation ");
            m8752j.append(this.f9872a.mo1592b());
            m8752j.append(" crashed with exception.");
            throw new RuntimeException(m8752j.toString(), this.f9873b);
        }
    }

    /* renamed from: g9.c$d */
    /* loaded from: classes2-dex2jar.jar:g9/c$d.class */
    public static final class RunnableC2924d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ StringBuilder f9874a;

        public RunnableC2924d(StringBuilder sb) {
            this.f9874a = sb;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new NullPointerException(this.f9874a.toString());
        }
    }

    /* renamed from: g9.c$e */
    /* loaded from: classes2-dex2jar.jar:g9/c$e.class */
    public static final class RunnableC2925e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2919b0 f9875a;

        public RunnableC2925e(AbstractC2919b0 abstractC2919b0) {
            this.f9875a = abstractC2919b0;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder m8752j = C0082b.m8752j("Transformation ");
            m8752j.append(this.f9875a.mo1592b());
            m8752j.append(" returned input Bitmap but recycled it.");
            throw new IllegalStateException(m8752j.toString());
        }
    }

    /* renamed from: g9.c$f */
    /* loaded from: classes2-dex2jar.jar:g9/c$f.class */
    public static final class RunnableC2926f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2919b0 f9876a;

        public RunnableC2926f(AbstractC2919b0 abstractC2919b0) {
            this.f9876a = abstractC2919b0;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder m8752j = C0082b.m8752j("Transformation ");
            m8752j.append(this.f9876a.mo1592b());
            m8752j.append(" mutated input Bitmap but failed to recycle the original.");
            throw new IllegalStateException(m8752j.toString());
        }
    }

    public RunnableC2920c(C2953s c2953s, C2936i c2936i, AbstractC2928d abstractC2928d, C2971z c2971z, AbstractC2915a abstractC2915a, AbstractC2968x abstractC2968x) {
        this.f9854b = c2953s;
        this.f9855c = c2936i;
        this.f9856d = abstractC2928d;
        this.f9857e = c2971z;
        this.f9863k = abstractC2915a;
        this.f9858f = abstractC2915a.f9827i;
        C2964v c2964v = abstractC2915a.f9820b;
        this.f9859g = c2964v;
        this.f9871s = c2964v.f9971r;
        this.f9860h = abstractC2915a.f9823e;
        this.f9861i = abstractC2915a.f9824f;
        this.f9862j = abstractC2968x;
        this.f9870r = abstractC2968x.mo2802e();
    }

    /* renamed from: a */
    public static Bitmap m2850a(List<AbstractC2919b0> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            AbstractC2919b0 abstractC2919b0 = list.get(i);
            try {
                Bitmap mo1593a = abstractC2919b0.mo1593a(bitmap);
                if (mo1593a == null) {
                    StringBuilder m8752j = C0082b.m8752j("Transformation ");
                    m8752j.append(abstractC2919b0.mo1592b());
                    m8752j.append(" returned null after ");
                    m8752j.append(i);
                    m8752j.append(" previous transformation(s).\n\nTransformation list:\n");
                    for (AbstractC2919b0 abstractC2919b02 : list) {
                        m8752j.append(abstractC2919b02.mo1592b());
                        m8752j.append('\n');
                    }
                    C2953s.f9920n.post(new RunnableC2924d(m8752j));
                    return null;
                } else if (mo1593a == bitmap && bitmap.isRecycled()) {
                    C2953s.f9920n.post(new RunnableC2925e(abstractC2919b0));
                    return null;
                } else if (mo1593a != bitmap && !bitmap.isRecycled()) {
                    C2953s.f9920n.post(new RunnableC2926f(abstractC2919b0));
                    return null;
                } else {
                    i++;
                    bitmap = mo1593a;
                }
            } catch (RuntimeException e) {
                C2953s.f9920n.post(new RunnableC2923c(abstractC2919b0, e));
                return null;
            }
        }
        return bitmap;
    }

    /* renamed from: c */
    public static Bitmap m2848c(AbstractC0074y abstractC0074y, C2964v c2964v) throws IOException {
        Logger logger = C0062o.f138a;
        C0069t c0069t = new C0069t(abstractC0074y);
        boolean z = c0069t.m8803k(0L, C2929d0.f9878b) && c0069t.m8803k(8L, C2929d0.f9879c);
        boolean z2 = c2964v.f9969p;
        BitmapFactory.Options m2803d = AbstractC2968x.m2803d(c2964v);
        boolean z3 = m2803d != null && m2803d.inJustDecodeBounds;
        if (z) {
            c0069t.f148a.m8855W(c0069t.f149b);
            byte[] m8841r = c0069t.f148a.m8841r();
            if (z3) {
                BitmapFactory.decodeByteArray(m8841r, 0, m8841r.length, m2803d);
                AbstractC2968x.m2804b(c2964v.f9959f, c2964v.f9960g, m2803d, c2964v);
            }
            return BitmapFactory.decodeByteArray(m8841r, 0, m8841r.length, m2803d);
        }
        C0068s c0068s = new C0068s(c0069t);
        C2947o c2947o = c0068s;
        if (z3) {
            C2947o c2947o2 = new C2947o(c0068s);
            c2947o2.f9912f = false;
            long j = c2947o2.f9908b + 1024;
            if (c2947o2.f9910d < j) {
                c2947o2.m2826k(j);
            }
            long j2 = c2947o2.f9908b;
            BitmapFactory.decodeStream(c2947o2, null, m2803d);
            AbstractC2968x.m2804b(c2964v.f9959f, c2964v.f9960g, m2803d, c2964v);
            c2947o2.m2827d(j2);
            c2947o2.f9912f = true;
            c2947o = c2947o2;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(c2947o, null, m2803d);
        if (decodeStream == null) {
            throw new IOException("Failed to decode stream.");
        }
        return decodeStream;
    }

    /* renamed from: f */
    public static boolean m2845f(boolean z, int i, int i2, int i3, int i4) {
        return !z || (i3 != 0 && i > i3) || (i4 != 0 && i2 > i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x04a3, code lost:
        if (r41 != r0) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0289, code lost:
        if (r37 == 270) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x048d, code lost:
        if (r41 != 0) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0538  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03df  */
    /* JADX WARN: Type inference failed for: r0v274, types: [double] */
    /* JADX WARN: Type inference failed for: r0v328, types: [double] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap m2844g(p107g9.C2964v r9, android.graphics.Bitmap r10, int r11) {
        /*
            Method dump skipped, instructions count: 1347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p107g9.RunnableC2920c.m2844g(g9.v, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    /* renamed from: h */
    public static void m2843h(C2964v c2964v) {
        Uri uri = c2964v.f9956c;
        String valueOf = uri != null ? String.valueOf(uri.getPath()) : Integer.toHexString(c2964v.f9957d);
        StringBuilder sb = f9850u.get();
        sb.ensureCapacity(valueOf.length() + 8);
        sb.replace(8, sb.length(), valueOf);
        Thread.currentThread().setName(sb.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r0.isEmpty() != false) goto L8;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m2849b() {
        /*
            r3 = this;
            r0 = r3
            g9.a r0 = r0.f9863k
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L3a
            r0 = r3
            java.util.List<g9.a> r0 = r0.f9864l
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L21
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L3a
        L21:
            r0 = r3
            java.util.concurrent.Future<?> r0 = r0.f9866n
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L3a
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 0
            boolean r0 = r0.cancel(r1)
            if (r0 == 0) goto L3a
            r0 = 1
            r6 = r0
        L3a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p107g9.RunnableC2920c.m2849b():boolean");
    }

    /* renamed from: d */
    public void m2847d(AbstractC2915a abstractC2915a) {
        boolean z;
        int i;
        if (this.f9863k == abstractC2915a) {
            this.f9863k = null;
            z = true;
        } else {
            List<AbstractC2915a> list = this.f9864l;
            z = list != null ? list.remove(abstractC2915a) : false;
        }
        if (z && abstractC2915a.f9820b.f9971r == this.f9871s) {
            List<AbstractC2915a> list2 = this.f9864l;
            boolean z2 = list2 != null && !list2.isEmpty();
            AbstractC2915a abstractC2915a2 = this.f9863k;
            if (!(abstractC2915a2 != null || z2)) {
                i = 1;
            } else {
                int i2 = 1;
                if (abstractC2915a2 != null) {
                    i2 = abstractC2915a2.f9820b.f9971r;
                }
                i = i2;
                if (z2) {
                    int size = this.f9864l.size();
                    int i3 = 0;
                    while (true) {
                        i = i2;
                        if (i3 >= size) {
                            break;
                        }
                        int i4 = this.f9864l.get(i3).f9820b.f9971r;
                        int i5 = i2;
                        if (C4350g.m1021c(i4) > C4350g.m1021c(i2)) {
                            i5 = i4;
                        }
                        i3++;
                        i2 = i5;
                    }
                }
            }
            this.f9871s = i;
        }
        if (this.f9854b.f9934m) {
            C2929d0.m2838e("Hunter", "removed", abstractC2915a.f9820b.m2813b(), C2929d0.m2839d(this, "from "));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x015e, code lost:
        if (r6.f9869q != 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0179, code lost:
        if (r6.f9869q != 0) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0169 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap m2846e() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p107g9.RunnableC2920c.m2846e():android.graphics.Bitmap");
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        m2843h(this.f9859g);
                        if (this.f9854b.f9934m) {
                            C2929d0.m2838e("Hunter", "executing", C2929d0.m2840c(this), "");
                        }
                        Bitmap m2846e = m2846e();
                        this.f9865m = m2846e;
                        if (m2846e == null) {
                            this.f9855c.m2833c(this);
                        } else {
                            this.f9855c.m2834b(this);
                        }
                    } catch (IOException e) {
                        this.f9868p = e;
                        Handler handler = this.f9855c.f9893h;
                        handler.sendMessageDelayed(handler.obtainMessage(5, this), 500L);
                    }
                } catch (Exception e2) {
                    this.f9868p = e2;
                    Handler handler2 = this.f9855c.f9893h;
                    handler2.sendMessage(handler2.obtainMessage(6, this));
                }
            } catch (C2949q.C2951b e3) {
                if (!((e3.f9918b & 4) != 0) || e3.f9917a != 504) {
                    this.f9868p = e3;
                }
                Handler handler3 = this.f9855c.f9893h;
                handler3.sendMessage(handler3.obtainMessage(6, this));
            } catch (OutOfMemoryError e4) {
                StringWriter stringWriter = new StringWriter();
                this.f9857e.m2798a().m2851a(new PrintWriter(stringWriter));
                this.f9868p = new RuntimeException(stringWriter.toString(), e4);
                Handler handler4 = this.f9855c.f9893h;
                handler4.sendMessage(handler4.obtainMessage(6, this));
            }
            Thread.currentThread().setName("Picasso-Idle");
        } catch (Throwable th) {
            Thread.currentThread().setName("Picasso-Idle");
            throw th;
        }
    }
}
