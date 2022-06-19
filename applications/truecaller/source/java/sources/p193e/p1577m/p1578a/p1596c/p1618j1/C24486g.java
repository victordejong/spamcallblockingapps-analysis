package p193e.p1577m.p1578a.p1596c.p1618j1;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.scheduler.Requirements;
import com.mopub.mobileads.AdData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1599d1.AbstractC24250b;
import p193e.p1577m.p1578a.p1596c.p1618j1.AbstractC24494j;
import p193e.p1577m.p1578a.p1596c.p1618j1.C24486g;
import p193e.p1577m.p1578a.p1596c.p1619k1.C24504b;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24789n;
/* renamed from: e.m.a.c.j1.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/j1/g.class */
public final class C24486g {

    /* renamed from: n */
    public static final Requirements f68363n = new Requirements(1);

    /* renamed from: a */
    public final Context f68364a;

    /* renamed from: b */
    public final HandlerC24489c f68365b;

    /* renamed from: c */
    public final C24504b.AbstractC24507c f68366c;

    /* renamed from: f */
    public int f68369f;

    /* renamed from: j */
    public int f68373j;

    /* renamed from: k */
    public boolean f68374k;

    /* renamed from: m */
    public C24504b f68376m;

    /* renamed from: h */
    public int f68371h = 3;

    /* renamed from: i */
    public int f68372i = 5;

    /* renamed from: g */
    public boolean f68370g = true;

    /* renamed from: l */
    public List<C24485f> f68375l = Collections.emptyList();

    /* renamed from: d */
    public final CopyOnWriteArraySet<AbstractC24490d> f68367d = new CopyOnWriteArraySet<>();

    /* renamed from: e */
    public int f68368e = 1;

    /* renamed from: e.m.a.c.j1.g$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/j1/g$b.class */
    public static final class C24488b {

        /* renamed from: a */
        public final C24485f f68377a;

        /* renamed from: b */
        public final boolean f68378b;

        /* renamed from: c */
        public final List<C24485f> f68379c;

        public C24488b(C24485f c24485f, boolean z, List<C24485f> list) {
            this.f68377a = c24485f;
            this.f68378b = z;
            this.f68379c = list;
        }
    }

    /* renamed from: e.m.a.c.j1.g$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/j1/g$c.class */
    public static final class HandlerC24489c extends Handler {

        /* renamed from: l */
        public static final /* synthetic */ int f68380l = 0;

        /* renamed from: a */
        public final HandlerThread f68381a;

        /* renamed from: b */
        public final AbstractC24500n f68382b;

        /* renamed from: c */
        public final AbstractC24497l f68383c;

        /* renamed from: d */
        public final Handler f68384d;

        /* renamed from: e */
        public final ArrayList<C24485f> f68385e = new ArrayList<>();

        /* renamed from: f */
        public final HashMap<String, C24491e> f68386f = new HashMap<>();

        /* renamed from: g */
        public int f68387g;

        /* renamed from: h */
        public boolean f68388h;

        /* renamed from: i */
        public int f68389i;

        /* renamed from: j */
        public int f68390j;

        /* renamed from: k */
        public int f68391k;

        public HandlerC24489c(HandlerThread handlerThread, AbstractC24500n abstractC24500n, AbstractC24497l abstractC24497l, Handler handler, int i, int i2, boolean z) {
            super(handlerThread.getLooper());
            this.f68381a = handlerThread;
            this.f68382b = abstractC24500n;
            this.f68383c = abstractC24497l;
            this.f68384d = handler;
            this.f68389i = i;
            this.f68390j = i2;
            this.f68388h = z;
        }

        /* renamed from: a */
        public static C24485f m5020a(C24485f c24485f, int i) {
            return new C24485f(c24485f.f68355a, i, c24485f.f68357c, System.currentTimeMillis(), c24485f.f68359e, 0, 0, c24485f.f68362h);
        }

        /* renamed from: b */
        public final C24485f m5019b(String str, boolean z) {
            int m5018c = m5018c(str);
            if (m5018c != -1) {
                return this.f68385e.get(m5018c);
            }
            if (!z) {
                return null;
            }
            try {
                return ((C24481d) this.f68382b).m5033c(str);
            } catch (IOException e) {
                C24789n.m4576a("Failed to load download: " + str, e);
                return null;
            }
        }

        /* renamed from: c */
        public final int m5018c(String str) {
            for (int i = 0; i < this.f68385e.size(); i++) {
                if (this.f68385e.get(i).f68355a.f4989a.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        /* renamed from: d */
        public final C24485f m5017d(C24485f c24485f) {
            C24479b c24479b = C24479b.f68344a;
            int i = c24485f.f68356b;
            boolean z = true;
            C26232y.m2286x((i == 3 || i == 4) ? false : true);
            int m5018c = m5018c(c24485f.f68355a.f4989a);
            if (m5018c == -1) {
                this.f68385e.add(c24485f);
                Collections.sort(this.f68385e, c24479b);
            } else {
                if (c24485f.f68357c == this.f68385e.get(m5018c).f68357c) {
                    z = false;
                }
                this.f68385e.set(m5018c, c24485f);
                if (z) {
                    Collections.sort(this.f68385e, c24479b);
                }
            }
            try {
                ((C24481d) this.f68382b).m5030f(c24485f);
            } catch (IOException e) {
                C24789n.m4576a("Failed to update index.", e);
            }
            this.f68384d.obtainMessage(2, new C24488b(c24485f, false, new ArrayList(this.f68385e))).sendToTarget();
            return c24485f;
        }

        /* renamed from: e */
        public final C24485f m5016e(C24485f c24485f, int i) {
            boolean z = true;
            if (i == 3 || i == 4 || i == 1) {
                z = false;
            }
            C26232y.m2286x(z);
            C24485f m5020a = m5020a(c24485f, i);
            m5017d(m5020a);
            return m5020a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x002c, code lost:
            if (r0 == 2) goto L13;
         */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m5015f(p193e.p1577m.p1578a.p1596c.p1618j1.C24485f r16, int r17) {
            /*
                r15 = this;
                r0 = r17
                if (r0 != 0) goto L16
                r0 = r16
                int r0 = r0.f68356b
                r1 = 1
                if (r0 != r1) goto L55
                r0 = r15
                r1 = r16
                r2 = 0
                e.m.a.c.j1.f r0 = r0.m5016e(r1, r2)
                goto L55
            L16:
                r0 = r17
                r1 = r16
                int r1 = r1.f68360f
                if (r0 == r1) goto L55
                r0 = r16
                int r0 = r0.f68356b
                r18 = r0
                r0 = r18
                if (r0 == 0) goto L2f
                r0 = r18
                r19 = r0
                r0 = r18
                r1 = 2
                if (r0 != r1) goto L32
            L2f:
                r0 = 1
                r19 = r0
            L32:
                r0 = r15
                e.m.a.c.j1.f r1 = new e.m.a.c.j1.f
                r2 = r1
                r3 = r16
                com.google.android.exoplayer2.offline.DownloadRequest r3 = r3.f68355a
                r4 = r19
                r5 = r16
                long r5 = r5.f68357c
                long r6 = java.lang.System.currentTimeMillis()
                r7 = r16
                long r7 = r7.f68359e
                r8 = r17
                r9 = 0
                r10 = r16
                e.m.a.c.j1.i r10 = r10.f68362h
                r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)
                e.m.a.c.j1.f r0 = r0.m5017d(r1)
            L55:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1618j1.C24486g.HandlerC24489c.m5015f(e.m.a.c.j1.f, int):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x0102, code lost:
            if (r12 >= r10.f68389i) goto L32;
         */
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m5014g() {
            /*
                Method dump skipped, instructions count: 535
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1618j1.C24486g.HandlerC24489c.m5014g():void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:230:0x085d, code lost:
            if (r16 == null) goto L232;
         */
        /* JADX WARN: Type inference failed for: r0v128, types: [long] */
        /* JADX WARN: Type inference failed for: r0v177, types: [long] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:245:0x08bb -> B:232:0x0864). Please submit an issue!!! */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r16) {
            /*
                Method dump skipped, instructions count: 2243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1618j1.C24486g.HandlerC24489c.handleMessage(android.os.Message):void");
        }
    }

    /* renamed from: e.m.a.c.j1.g$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/j1/g$d.class */
    public interface AbstractC24490d {
        /* renamed from: a */
        void mo5013a(C24486g c24486g, boolean z);

        /* renamed from: b */
        void mo5012b(C24486g c24486g, Requirements requirements, int i);

        /* renamed from: c */
        void mo5011c(C24486g c24486g);

        /* renamed from: d */
        void mo5010d(C24486g c24486g);

        /* renamed from: e */
        void mo5009e(C24486g c24486g, C24485f c24485f);

        /* renamed from: f */
        void mo5008f(C24486g c24486g, boolean z);

        /* renamed from: g */
        void mo5007g(C24486g c24486g, C24485f c24485f);
    }

    /* renamed from: e.m.a.c.j1.g$e */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/j1/g$e.class */
    public static class C24491e extends Thread implements AbstractC24494j.AbstractC24495a {

        /* renamed from: a */
        public final DownloadRequest f68392a;

        /* renamed from: b */
        public final AbstractC24494j f68393b;

        /* renamed from: c */
        public final C24493i f68394c;

        /* renamed from: d */
        public final boolean f68395d;

        /* renamed from: e */
        public final int f68396e;

        /* renamed from: f */
        public volatile HandlerC24489c f68397f;

        /* renamed from: g */
        public volatile boolean f68398g;

        /* renamed from: h */
        public Throwable f68399h;

        /* renamed from: i */
        public long f68400i = -1;

        public C24491e(DownloadRequest downloadRequest, AbstractC24494j abstractC24494j, C24493i c24493i, boolean z, int i, HandlerC24489c handlerC24489c, C24487a c24487a) {
            this.f68392a = downloadRequest;
            this.f68393b = abstractC24494j;
            this.f68394c = c24493i;
            this.f68395d = z;
            this.f68396e = i;
            this.f68397f = handlerC24489c;
        }

        /* renamed from: a */
        public void m5006a(boolean z) {
            if (z) {
                this.f68397f = null;
            }
            if (!this.f68398g) {
                this.f68398g = true;
                this.f68393b.cancel();
                interrupt();
            }
        }

        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.f68395d) {
                    this.f68393b.remove();
                } else {
                    char c = 65535;
                    int i = 0;
                    while (!this.f68398g) {
                        try {
                            this.f68393b.mo5000a(this);
                            break;
                        } catch (IOException e) {
                            if (!this.f68398g) {
                                ?? r0 = this.f68394c.f68401a;
                                char c2 = c;
                                if (r0 != c) {
                                    i = 0;
                                    c2 = r0;
                                }
                                i++;
                                if (i > this.f68396e) {
                                    throw e;
                                }
                                Thread.sleep(Math.min((i - 1) * 1000, (int) AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS));
                                c = c2;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                this.f68399h = th;
            }
            HandlerC24489c handlerC24489c = this.f68397f;
            if (handlerC24489c != null) {
                handlerC24489c.obtainMessage(9, this).sendToTarget();
            }
        }
    }

    public C24486g(Context context, AbstractC24250b abstractC24250b, AbstractC24705c abstractC24705c, AbstractC24739l.AbstractC24740a abstractC24740a) {
        C24481d c24481d = new C24481d(abstractC24250b);
        C24484e c24484e = new C24484e(new C24496k(abstractC24705c, abstractC24740a));
        this.f68364a = context.getApplicationContext();
        Handler handler = new Handler(C24773d0.m4614j(), new Handler.Callback() { // from class: e.m.a.c.j1.c
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                C24486g c24486g = C24486g.this;
                Objects.requireNonNull(c24486g);
                int i = message.what;
                if (i == 0) {
                    c24486g.f68375l = Collections.unmodifiableList((List) message.obj);
                    boolean m5021c = c24486g.m5021c();
                    Iterator<C24486g.AbstractC24490d> it = c24486g.f68367d.iterator();
                    while (it.hasNext()) {
                        it.next().mo5010d(c24486g);
                    }
                    if (!m5021c) {
                        return true;
                    }
                    c24486g.m5023a();
                    return true;
                } else if (i == 1) {
                    int i2 = message.arg1;
                    int i3 = message.arg2;
                    int i4 = c24486g.f68368e - i2;
                    c24486g.f68368e = i4;
                    c24486g.f68369f = i3;
                    if (!(i3 == 0 && i4 == 0)) {
                        return true;
                    }
                    Iterator<C24486g.AbstractC24490d> it2 = c24486g.f68367d.iterator();
                    while (it2.hasNext()) {
                        it2.next().mo5011c(c24486g);
                    }
                    return true;
                } else if (i != 2) {
                    throw new IllegalStateException();
                } else {
                    C24486g.C24488b c24488b = (C24486g.C24488b) message.obj;
                    c24486g.f68375l = Collections.unmodifiableList(c24488b.f68379c);
                    C24485f c24485f = c24488b.f68377a;
                    boolean m5021c2 = c24486g.m5021c();
                    if (c24488b.f68378b) {
                        Iterator<C24486g.AbstractC24490d> it3 = c24486g.f68367d.iterator();
                        while (it3.hasNext()) {
                            it3.next().mo5007g(c24486g, c24485f);
                        }
                    } else {
                        Iterator<C24486g.AbstractC24490d> it4 = c24486g.f68367d.iterator();
                        while (it4.hasNext()) {
                            it4.next().mo5009e(c24486g, c24485f);
                        }
                    }
                    if (!m5021c2) {
                        return true;
                    }
                    c24486g.m5023a();
                    return true;
                }
            }
        });
        HandlerThread handlerThread = new HandlerThread("DownloadManager file i/o");
        handlerThread.start();
        HandlerC24489c handlerC24489c = new HandlerC24489c(handlerThread, c24481d, c24484e, handler, this.f68371h, this.f68372i, this.f68370g);
        this.f68365b = handlerC24489c;
        C24478a c24478a = new C24478a(this);
        this.f68366c = c24478a;
        C24504b c24504b = new C24504b(context, c24478a, f68363n);
        this.f68376m = c24504b;
        int m4997b = c24504b.m4997b();
        this.f68373j = m4997b;
        handlerC24489c.obtainMessage(0, m4997b, 0).sendToTarget();
    }

    /* renamed from: a */
    public final void m5023a() {
        Iterator<AbstractC24490d> it = this.f68367d.iterator();
        while (it.hasNext()) {
            it.next().mo5008f(this, this.f68374k);
        }
    }

    /* renamed from: b */
    public final void m5022b(C24504b c24504b, int i) {
        Requirements requirements = c24504b.f68425c;
        if (this.f68373j != i) {
            this.f68373j = i;
            this.f68368e++;
            this.f68365b.obtainMessage(2, i, 0).sendToTarget();
        }
        boolean m5021c = m5021c();
        Iterator<AbstractC24490d> it = this.f68367d.iterator();
        while (it.hasNext()) {
            it.next().mo5012b(this, requirements, i);
        }
        if (m5021c) {
            m5023a();
        }
    }

    /* renamed from: c */
    public final boolean m5021c() {
        boolean z;
        boolean z2 = true;
        if (!this.f68370g && this.f68373j != 0) {
            for (int i = 0; i < this.f68375l.size(); i++) {
                if (this.f68375l.get(i).f68356b == 0) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (this.f68374k == z) {
            z2 = false;
        }
        this.f68374k = z;
        return z2;
    }
}
