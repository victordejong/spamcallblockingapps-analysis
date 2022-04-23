package p081h.p203i.p392f.p393a.p394b.p396e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.util.SparseArray;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.maps.android.R$id;
import com.google.maps.android.R$style;
import com.google.maps.android.p054ui.SquareTextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import p081h.p203i.p204a.p224e.p282l.C8856c;
import p081h.p203i.p204a.p224e.p282l.C8868g;
import p081h.p203i.p204a.p224e.p282l.p284k.C8906a;
import p081h.p203i.p204a.p224e.p282l.p284k.C8907b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8908c;
import p081h.p203i.p392f.p393a.C10179a;
import p081h.p203i.p392f.p393a.p394b.AbstractC10181a;
import p081h.p203i.p392f.p393a.p394b.AbstractC10182b;
import p081h.p203i.p392f.p393a.p394b.C10183c;
import p081h.p203i.p392f.p393a.p397c.C10212b;
import p081h.p203i.p392f.p393a.p398d.C10214b;
import p081h.p203i.p392f.p393a.p400f.C10218b;
/* renamed from: h.i.f.a.b.e.b */
/* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b.class */
public class C10198b<T extends AbstractC10182b> implements AbstractC10197a<T> {

    /* renamed from: q */
    public static final boolean f22977q;

    /* renamed from: r */
    public static final int[] f22978r;

    /* renamed from: s */
    public static final TimeInterpolator f22979s;

    /* renamed from: a */
    public final C8856c f22980a;

    /* renamed from: b */
    public final C10218b f22981b;

    /* renamed from: c */
    public final C10183c<T> f22982c;

    /* renamed from: d */
    public final float f22983d;

    /* renamed from: e */
    public ShapeDrawable f22984e;

    /* renamed from: j */
    public Set<? extends AbstractC10181a<T>> f22989j;

    /* renamed from: m */
    public float f22992m;

    /* renamed from: o */
    public C10183c.AbstractC10186c<T> f22994o;

    /* renamed from: p */
    public C10183c.AbstractC10188e<T> f22995p;

    /* renamed from: f */
    public Set<C10207i> f22985f = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: g */
    public SparseArray<C8906a> f22986g = new SparseArray<>();

    /* renamed from: h */
    public C10205g<T> f22987h = new C10205g<>(null);

    /* renamed from: i */
    public int f22988i = 4;

    /* renamed from: k */
    public Map<C8908c, AbstractC10181a<T>> f22990k = new HashMap();

    /* renamed from: l */
    public Map<AbstractC10181a<T>, C8908c> f22991l = new HashMap();

    /* renamed from: n */
    public final C10198b<T>.HandlerC10209k f22993n = new HandlerC10209k(this, null);

    /* renamed from: h.i.f.a.b.e.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$a.class */
    public class C10199a implements C8856c.AbstractC8863g {
        public C10199a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p081h.p203i.p204a.p224e.p282l.C8856c.AbstractC8863g
        /* renamed from: a */
        public boolean mo13137a(C8908c cVar) {
            return C10198b.this.f22995p != null && C10198b.this.f22995p.mo13185a((AbstractC10182b) C10198b.this.f22987h.m13132a(cVar));
        }
    }

    /* renamed from: h.i.f.a.b.e.b$b */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$b.class */
    public class C10200b implements C8856c.AbstractC8860d {
        public C10200b(C10198b bVar) {
        }
    }

    /* renamed from: h.i.f.a.b.e.b$c */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$c.class */
    public class C10201c implements C8856c.AbstractC8863g {
        public C10201c() {
        }

        @Override // p081h.p203i.p204a.p224e.p282l.C8856c.AbstractC8863g
        /* renamed from: a */
        public boolean mo13137a(C8908c cVar) {
            return C10198b.this.f22994o != null && C10198b.this.f22994o.mo13186a((AbstractC10181a) C10198b.this.f22990k.get(cVar));
        }
    }

    /* renamed from: h.i.f.a.b.e.b$d */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$d.class */
    public class C10202d implements C8856c.AbstractC8860d {
        public C10202d(C10198b bVar) {
        }
    }

    @TargetApi(12)
    /* renamed from: h.i.f.a.b.e.b$e */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$e.class */
    public class C10203e extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final C10207i f22998a;

        /* renamed from: b */
        public final C8908c f22999b;

        /* renamed from: c */
        public final LatLng f23000c;

        /* renamed from: d */
        public final LatLng f23001d;

        /* renamed from: e */
        public boolean f23002e;

        /* renamed from: f */
        public C10179a f23003f;

        public C10203e(C10207i iVar, LatLng latLng, LatLng latLng2) {
            this.f22998a = iVar;
            this.f22999b = iVar.f23020a;
            this.f23000c = latLng;
            this.f23001d = latLng2;
        }

        public /* synthetic */ C10203e(C10198b bVar, C10207i iVar, LatLng latLng, LatLng latLng2, C10199a aVar) {
            this(iVar, latLng, latLng2);
        }

        /* renamed from: a */
        public void m13136a() {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setInterpolator(C10198b.f22979s);
            ofFloat.addUpdateListener(this);
            ofFloat.addListener(this);
            ofFloat.start();
        }

        /* renamed from: a */
        public void m13135a(C10179a aVar) {
            this.f23003f = aVar;
            this.f23002e = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f23002e) {
                C10198b.this.f22991l.remove((AbstractC10181a) C10198b.this.f22990k.get(this.f22999b));
                C10198b.this.f22987h.m13129b(this.f22999b);
                C10198b.this.f22990k.remove(this.f22999b);
                this.f23003f.m13209b(this.f22999b);
            }
            this.f22998a.f23021b = this.f23001d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14, types: [double] */
        /* JADX WARN: Type inference failed for: r21v0 */
        /* JADX WARN: Type inference failed for: r21v1, types: [double] */
        /* JADX WARN: Type inference failed for: r21v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onAnimationUpdate(android.animation.ValueAnimator r10) {
            /*
                r9 = this;
                r0 = r10
                float r0 = r0.getAnimatedFraction()
                r11 = r0
                r0 = r9
                com.google.android.gms.maps.model.LatLng r0 = r0.f23001d
                r12 = r0
                r0 = r12
                double r0 = r0.f7058a
                r13 = r0
                r0 = r9
                com.google.android.gms.maps.model.LatLng r0 = r0.f23000c
                r10 = r0
                r0 = r10
                double r0 = r0.f7058a
                r15 = r0
                r0 = r11
                double r0 = (double) r0
                r17 = r0
                r0 = r12
                double r0 = r0.f7059b
                r1 = r10
                double r1 = r1.f7059b
                double r0 = r0 - r1
                r19 = r0
                r0 = r19
                r21 = r0
                r0 = r19
                double r0 = java.lang.Math.abs(r0)
                r1 = 4640537203540230144(0x4066800000000000, double:180.0)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0048
                r0 = r19
                r1 = r19
                double r1 = java.lang.Math.signum(r1)
                r2 = 4645040803167600640(0x4076800000000000, double:360.0)
                double r1 = r1 * r2
                double r0 = r0 - r1
                r21 = r0
            L_0x0048:
                com.google.android.gms.maps.model.LatLng r0 = new com.google.android.gms.maps.model.LatLng
                r1 = r0
                r2 = r13
                r3 = r15
                double r2 = r2 - r3
                r3 = r17
                double r2 = r2 * r3
                r3 = r15
                double r2 = r2 + r3
                r3 = r21
                r4 = r17
                double r3 = r3 * r4
                r4 = r9
                com.google.android.gms.maps.model.LatLng r4 = r4.f23000c
                double r4 = r4.f7059b
                double r3 = r3 + r4
                r1.<init>(r2, r3)
                r10 = r0
                r0 = r9
                h.i.a.e.l.k.c r0 = r0.f22999b
                r1 = r10
                r0.m16802a(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p392f.p393a.p394b.p396e.C10198b.C10203e.onAnimationUpdate(android.animation.ValueAnimator):void");
        }
    }

    /* renamed from: h.i.f.a.b.e.b$f */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$f.class */
    public class C10204f {

        /* renamed from: a */
        public final AbstractC10181a<T> f23005a;

        /* renamed from: b */
        public final Set<C10207i> f23006b;

        /* renamed from: c */
        public final LatLng f23007c;

        public C10204f(AbstractC10181a<T> aVar, Set<C10207i> set, LatLng latLng) {
            this.f23005a = aVar;
            this.f23006b = set;
            this.f23007c = latLng;
        }

        /* renamed from: a */
        public final void m13133a(C10198b<T>.HandlerC10206h hVar) {
            C10207i iVar;
            if (!C10198b.this.mo1020b(this.f23005a)) {
                for (T t : this.f23005a.mo13171b()) {
                    C8908c a = C10198b.this.f22987h.m13131a((C10205g) t);
                    if (a == null) {
                        MarkerOptions markerOptions = new MarkerOptions();
                        LatLng latLng = this.f23007c;
                        if (latLng != null) {
                            markerOptions.m31713a(latLng);
                        } else {
                            markerOptions.m31713a(t.getPosition());
                        }
                        C10198b.this.mo1023a((C10198b) t, markerOptions);
                        C8908c a2 = C10198b.this.f22982c.m13191d().m13206a(markerOptions);
                        C10207i iVar2 = new C10207i(a2, null);
                        C10198b.this.f22987h.m13130a(t, a2);
                        LatLng latLng2 = this.f23007c;
                        a = a2;
                        iVar = iVar2;
                        if (latLng2 != null) {
                            hVar.m13126a(iVar2, latLng2, t.getPosition());
                            a = a2;
                            iVar = iVar2;
                        }
                    } else {
                        iVar = new C10207i(a, null);
                    }
                    C10198b.this.mo1022a((C10198b) t, a);
                    this.f23006b.add(iVar);
                }
                return;
            }
            MarkerOptions markerOptions2 = new MarkerOptions();
            LatLng latLng3 = this.f23007c;
            LatLng latLng4 = latLng3;
            if (latLng3 == null) {
                latLng4 = this.f23005a.getPosition();
            }
            MarkerOptions a3 = markerOptions2.m31713a(latLng4);
            C10198b.this.m13165a(this.f23005a, a3);
            C8908c a4 = C10198b.this.f22982c.m13193c().m13206a(a3);
            C10198b.this.f22990k.put(a4, this.f23005a);
            C10198b.this.f22991l.put(this.f23005a, a4);
            C10207i iVar3 = new C10207i(a4, null);
            LatLng latLng5 = this.f23007c;
            if (latLng5 != null) {
                hVar.m13126a(iVar3, latLng5, this.f23005a.getPosition());
            }
            C10198b.this.mo1024a(this.f23005a, a4);
            this.f23006b.add(iVar3);
        }
    }

    /* renamed from: h.i.f.a.b.e.b$g */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$g.class */
    public static class C10205g<T> {

        /* renamed from: a */
        public Map<T, C8908c> f23009a;

        /* renamed from: b */
        public Map<C8908c, T> f23010b;

        public C10205g() {
            this.f23009a = new HashMap();
            this.f23010b = new HashMap();
        }

        public /* synthetic */ C10205g(C10199a aVar) {
            this();
        }

        /* renamed from: a */
        public C8908c m13131a(T t) {
            return this.f23009a.get(t);
        }

        /* renamed from: a */
        public T m13132a(C8908c cVar) {
            return this.f23010b.get(cVar);
        }

        /* renamed from: a */
        public void m13130a(T t, C8908c cVar) {
            this.f23009a.put(t, cVar);
            this.f23010b.put(cVar, t);
        }

        /* renamed from: b */
        public void m13129b(C8908c cVar) {
            T t = this.f23010b.get(cVar);
            this.f23010b.remove(cVar);
            this.f23009a.remove(t);
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* renamed from: h.i.f.a.b.e.b$h */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$h.class */
    public class HandlerC10206h extends Handler implements MessageQueue.IdleHandler {

        /* renamed from: a */
        public final Lock f23011a;

        /* renamed from: b */
        public final Condition f23012b;

        /* renamed from: c */
        public Queue<C10198b<T>.C10204f> f23013c;

        /* renamed from: d */
        public Queue<C10198b<T>.C10204f> f23014d;

        /* renamed from: e */
        public Queue<C8908c> f23015e;

        /* renamed from: f */
        public Queue<C8908c> f23016f;

        /* renamed from: g */
        public Queue<C10198b<T>.C10203e> f23017g;

        /* renamed from: h */
        public boolean f23018h;

        public HandlerC10206h() {
            super(Looper.getMainLooper());
            this.f23011a = new ReentrantLock();
            this.f23012b = this.f23011a.newCondition();
            this.f23013c = new LinkedList();
            this.f23014d = new LinkedList();
            this.f23015e = new LinkedList();
            this.f23016f = new LinkedList();
            this.f23017g = new LinkedList();
        }

        public /* synthetic */ HandlerC10206h(C10198b bVar, C10199a aVar) {
            this();
        }

        /* renamed from: a */
        public final void m13127a(C8908c cVar) {
            C10198b.this.f22991l.remove((AbstractC10181a) C10198b.this.f22990k.get(cVar));
            C10198b.this.f22987h.m13129b(cVar);
            C10198b.this.f22990k.remove(cVar);
            C10198b.this.f22982c.m13190e().m13209b(cVar);
        }

        /* renamed from: a */
        public void m13126a(C10207i iVar, LatLng latLng, LatLng latLng2) {
            this.f23011a.lock();
            this.f23017g.add(new C10203e(C10198b.this, iVar, latLng, latLng2, null));
            this.f23011a.unlock();
        }

        /* renamed from: a */
        public void m13125a(boolean z, C8908c cVar) {
            this.f23011a.lock();
            sendEmptyMessage(0);
            if (z) {
                this.f23016f.add(cVar);
            } else {
                this.f23015e.add(cVar);
            }
            this.f23011a.unlock();
        }

        /* renamed from: a */
        public void m13124a(boolean z, C10198b<T>.C10204f fVar) {
            this.f23011a.lock();
            sendEmptyMessage(0);
            if (z) {
                this.f23014d.add(fVar);
            } else {
                this.f23013c.add(fVar);
            }
            this.f23011a.unlock();
        }

        /* renamed from: a */
        public boolean m13128a() {
            boolean z;
            try {
                this.f23011a.lock();
                if (this.f23013c.isEmpty() && this.f23014d.isEmpty() && this.f23016f.isEmpty() && this.f23015e.isEmpty()) {
                    if (this.f23017g.isEmpty()) {
                        z = false;
                        return z;
                    }
                }
                z = true;
                return z;
            } finally {
                this.f23011a.unlock();
            }
        }

        @TargetApi(11)
        /* renamed from: b */
        public final void m13123b() {
            if (!this.f23016f.isEmpty()) {
                m13127a(this.f23016f.poll());
            } else if (!this.f23017g.isEmpty()) {
                this.f23017g.poll().m13136a();
            } else if (!this.f23014d.isEmpty()) {
                this.f23014d.poll().m13133a(this);
            } else if (!this.f23013c.isEmpty()) {
                this.f23013c.poll().m13133a(this);
            } else if (!this.f23015e.isEmpty()) {
                m13127a(this.f23015e.poll());
            }
        }

        @TargetApi(11)
        /* renamed from: b */
        public void m13122b(C10207i iVar, LatLng latLng, LatLng latLng2) {
            this.f23011a.lock();
            C10198b<T>.C10203e eVar = new C10203e(C10198b.this, iVar, latLng, latLng2, null);
            eVar.m13135a(C10198b.this.f22982c.m13190e());
            this.f23017g.add(eVar);
            this.f23011a.unlock();
        }

        /* renamed from: c */
        public void m13121c() {
            while (m13128a()) {
                sendEmptyMessage(0);
                this.f23011a.lock();
                try {
                    try {
                        if (m13128a()) {
                            this.f23012b.await();
                        }
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                } finally {
                    this.f23011a.unlock();
                }
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (!this.f23018h) {
                Looper.myQueue().addIdleHandler(this);
                this.f23018h = true;
            }
            removeMessages(0);
            this.f23011a.lock();
            for (int i = 0; i < 10; i++) {
                try {
                    m13123b();
                } finally {
                    this.f23011a.unlock();
                }
            }
            if (!m13128a()) {
                this.f23018h = false;
                Looper.myQueue().removeIdleHandler(this);
                this.f23012b.signalAll();
            } else {
                sendEmptyMessageDelayed(0, 10L);
            }
        }

        @Override // android.os.MessageQueue.IdleHandler
        public boolean queueIdle() {
            sendEmptyMessage(0);
            return true;
        }
    }

    /* renamed from: h.i.f.a.b.e.b$i */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$i.class */
    public static class C10207i {

        /* renamed from: a */
        public final C8908c f23020a;

        /* renamed from: b */
        public LatLng f23021b;

        public C10207i(C8908c cVar) {
            this.f23020a = cVar;
            this.f23021b = cVar.m16803a();
        }

        public /* synthetic */ C10207i(C8908c cVar, C10199a aVar) {
            this(cVar);
        }

        public boolean equals(Object obj) {
            if (obj instanceof C10207i) {
                return this.f23020a.equals(((C10207i) obj).f23020a);
            }
            return false;
        }

        public int hashCode() {
            return this.f23020a.hashCode();
        }
    }

    /* renamed from: h.i.f.a.b.e.b$j */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$j.class */
    public class RunnableC10208j implements Runnable {

        /* renamed from: a */
        public final Set<? extends AbstractC10181a<T>> f23022a;

        /* renamed from: b */
        public Runnable f23023b;

        /* renamed from: c */
        public C8868g f23024c;

        /* renamed from: d */
        public C10214b f23025d;

        /* renamed from: e */
        public float f23026e;

        public RunnableC10208j(Set<? extends AbstractC10181a<T>> set) {
            this.f23022a = set;
        }

        public /* synthetic */ RunnableC10208j(C10198b bVar, Set set, C10199a aVar) {
            this(set);
        }

        /* renamed from: a */
        public void m13117a(float f) {
            this.f23026e = f;
            this.f23025d = new C10214b(Math.pow(2.0d, Math.min(f, C10198b.this.f22992m)) * 256.0d);
        }

        /* renamed from: a */
        public void m13116a(C8868g gVar) {
            this.f23024c = gVar;
        }

        /* renamed from: a */
        public void m13115a(Runnable runnable) {
            this.f23023b = runnable;
        }

        @Override // java.lang.Runnable
        @SuppressLint({"NewApi"})
        public void run() {
            ArrayList arrayList;
            if (this.f23022a.equals(C10198b.this.f22989j)) {
                this.f23023b.run();
                return;
            }
            ArrayList arrayList2 = null;
            HandlerC10206h hVar = new HandlerC10206h(C10198b.this, null);
            float f = this.f23026e;
            boolean z = f > C10198b.this.f22992m;
            float f2 = C10198b.this.f22992m;
            Set<C10207i> set = C10198b.this.f22985f;
            LatLngBounds latLngBounds = this.f23024c.m16856a().f7134e;
            if (C10198b.this.f22989j != null && C10198b.f22977q) {
                ArrayList arrayList3 = new ArrayList();
                Iterator it = C10198b.this.f22989j.iterator();
                while (true) {
                    arrayList = arrayList3;
                    if (!it.hasNext()) {
                        break;
                    }
                    AbstractC10181a<T> aVar = (AbstractC10181a) it.next();
                    if (C10198b.this.mo1020b(aVar) && latLngBounds.m31727a(aVar.getPosition())) {
                        arrayList3.add(this.f23025d.m13108a(aVar.getPosition()));
                    }
                }
            } else {
                arrayList = null;
            }
            Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            Iterator<? extends AbstractC10181a<T>> it2 = this.f23022a.iterator();
            while (it2.hasNext()) {
                AbstractC10181a aVar2 = (AbstractC10181a) it2.next();
                boolean a = latLngBounds.m31727a(aVar2.getPosition());
                if (!z || !a || !C10198b.f22977q) {
                    hVar.m13124a(a, new C10204f(aVar2, newSetFromMap, null));
                } else {
                    C10212b b = C10198b.m13149b(arrayList, this.f23025d.m13108a(aVar2.getPosition()));
                    if (b != null) {
                        hVar.m13124a(true, (C10204f) new C10204f(aVar2, newSetFromMap, this.f23025d.m13107a(b)));
                    } else {
                        hVar.m13124a(true, (C10204f) new C10204f(aVar2, newSetFromMap, null));
                    }
                }
            }
            hVar.m13121c();
            set.removeAll(newSetFromMap);
            if (C10198b.f22977q) {
                ArrayList arrayList4 = new ArrayList();
                Iterator<? extends AbstractC10181a<T>> it3 = this.f23022a.iterator();
                while (true) {
                    arrayList2 = arrayList4;
                    if (!it3.hasNext()) {
                        break;
                    }
                    AbstractC10181a<T> aVar3 = (AbstractC10181a) it3.next();
                    if (C10198b.this.mo1020b(aVar3) && latLngBounds.m31727a(aVar3.getPosition())) {
                        arrayList4.add(this.f23025d.m13108a(aVar3.getPosition()));
                    }
                }
            }
            for (C10207i iVar : set) {
                boolean a2 = latLngBounds.m31727a(iVar.f23021b);
                if (z || f - f2 <= -3.0f || !a2 || !C10198b.f22977q) {
                    hVar.m13125a(a2, iVar.f23020a);
                } else {
                    C10212b b2 = C10198b.m13149b(arrayList2, this.f23025d.m13108a(iVar.f23021b));
                    if (b2 != null) {
                        hVar.m13122b(iVar, iVar.f23021b, this.f23025d.m13107a(b2));
                    } else {
                        hVar.m13125a(true, iVar.f23020a);
                    }
                }
            }
            hVar.m13121c();
            C10198b.this.f22985f = newSetFromMap;
            C10198b.this.f22989j = this.f23022a;
            C10198b.this.f22992m = f;
            this.f23023b.run();
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* renamed from: h.i.f.a.b.e.b$k */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$k.class */
    public class HandlerC10209k extends Handler {

        /* renamed from: a */
        public boolean f23028a;

        /* renamed from: b */
        public C10198b<T>.RunnableC10208j f23029b;

        /* renamed from: h.i.f.a.b.e.b$k$a */
        /* loaded from: classes2-dex2jar.jar:h/i/f/a/b/e/b$k$a.class */
        public class RunnableC10210a implements Runnable {
            public RunnableC10210a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                HandlerC10209k.this.sendEmptyMessage(1);
            }
        }

        public HandlerC10209k() {
            this.f23028a = false;
            this.f23029b = null;
        }

        public /* synthetic */ HandlerC10209k(C10198b bVar, C10199a aVar) {
            this();
        }

        /* renamed from: a */
        public void m13114a(Set<? extends AbstractC10181a<T>> set) {
            synchronized (this) {
                this.f23029b = new RunnableC10208j(C10198b.this, set, null);
            }
            sendEmptyMessage(0);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C8868g c;
            C10198b<T>.RunnableC10208j jVar;
            if (message.what == 1) {
                this.f23028a = false;
                if (this.f23029b != null) {
                    sendEmptyMessage(0);
                    return;
                }
                return;
            }
            removeMessages(0);
            if (!this.f23028a && this.f23029b != null && (c = C10198b.this.f22980a.m16863c()) != null) {
                synchronized (this) {
                    jVar = this.f23029b;
                    this.f23029b = null;
                    this.f23028a = true;
                }
                jVar.m13115a(new RunnableC10210a());
                jVar.m13116a(c);
                jVar.m13117a(C10198b.this.f22980a.m16865b().f7023b);
                new Thread(jVar).start();
            }
        }
    }

    static {
        f22977q = Build.VERSION.SDK_INT >= 11;
        f22978r = new int[]{10, 20, 50, 100, 200, 500, 1000};
        f22979s = new DecelerateInterpolator();
    }

    public C10198b(Context context, C8856c cVar, C10183c<T> cVar2) {
        this.f22980a = cVar;
        this.f22983d = context.getResources().getDisplayMetrics().density;
        this.f22981b = new C10218b(context);
        this.f22981b.m13094a(m13167a(context));
        this.f22981b.m13091c(R$style.amu_ClusterIcon_TextAppearance);
        this.f22981b.m13095a(m13148c());
        this.f22982c = cVar2;
    }

    /* renamed from: a */
    public static double m13156a(C10212b bVar, C10212b bVar2) {
        double d = bVar.f23038a;
        double d2 = bVar2.f23038a;
        double d3 = bVar.f23039b;
        double d4 = bVar2.f23039b;
        return ((d - d2) * (d - d2)) + ((d3 - d4) * (d3 - d4));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p081h.p203i.p392f.p393a.p397c.C10212b m13149b(java.util.List<p081h.p203i.p392f.p393a.p397c.C10212b> r5, p081h.p203i.p392f.p393a.p397c.C10212b r6) {
        /*
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0059
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x001a
            r0 = r7
            r9 = r0
            goto L_0x0059
        L_0x001a:
            r0 = 4666723172467343360(0x40c3880000000000, double:10000.0)
            r10 = r0
            r0 = r5
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
            r0 = r8
            r5 = r0
        L_0x0028:
            r0 = r5
            r9 = r0
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0059
            r0 = r7
            java.lang.Object r0 = r0.next()
            h.i.f.a.c.b r0 = (p081h.p203i.p392f.p393a.p397c.C10212b) r0
            r9 = r0
            r0 = r9
            r1 = r6
            double r0 = m13156a(r0, r1)
            r12 = r0
            r0 = r12
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0028
            r0 = r9
            r5 = r0
            r0 = r12
            r10 = r0
            goto L_0x0028
        L_0x0059:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p392f.p393a.p394b.p396e.C10198b.m13149b(java.util.List, h.i.f.a.c.b):h.i.f.a.c.b");
    }

    /* renamed from: a */
    public int m13166a(AbstractC10181a<T> aVar) {
        int a = aVar.mo13173a();
        int i = 0;
        if (a <= f22978r[0]) {
            return a;
        }
        while (true) {
            int[] iArr = f22978r;
            if (i >= iArr.length - 1) {
                return iArr[iArr.length - 1];
            }
            int i2 = i + 1;
            if (a < iArr[i2]) {
                return iArr[i];
            }
            i = i2;
        }
    }

    /* renamed from: a */
    public final SquareTextView m13167a(Context context) {
        SquareTextView squareTextView = new SquareTextView(context);
        squareTextView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        squareTextView.setId(R$id.amu_text);
        int i = (int) (this.f22983d * 12.0f);
        squareTextView.setPadding(i, i, i, i);
        return squareTextView;
    }

    /* renamed from: a */
    public C8908c m13164a(T t) {
        return this.f22987h.m13131a((C10205g<T>) t);
    }

    /* renamed from: a */
    public String m13168a(int i) {
        if (i < f22978r[0]) {
            return String.valueOf(i);
        }
        return String.valueOf(i) + "+";
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p396e.AbstractC10197a
    /* renamed from: a */
    public void mo13169a() {
        this.f22982c.m13191d().m13204a((C8856c.AbstractC8863g) null);
        this.f22982c.m13193c().m13204a((C8856c.AbstractC8863g) null);
    }

    /* renamed from: a */
    public void m13165a(AbstractC10181a<T> aVar, MarkerOptions markerOptions) {
        int a = m13166a(aVar);
        C8906a aVar2 = this.f22986g.get(a);
        C8906a aVar3 = aVar2;
        if (aVar2 == null) {
            this.f22984e.getPaint().setColor(m13152b(a));
            aVar3 = C8907b.m16805a(this.f22981b.m13093a(m13168a(a)));
            this.f22986g.put(a, aVar3);
        }
        markerOptions.m31712a(aVar3);
    }

    /* renamed from: a */
    public void mo1024a(AbstractC10181a<T> aVar, C8908c cVar) {
    }

    /* renamed from: a */
    public void mo1023a(T t, MarkerOptions markerOptions) {
    }

    /* renamed from: a */
    public void mo1022a(T t, C8908c cVar) {
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p396e.AbstractC10197a
    /* renamed from: a */
    public void mo13163a(C10183c.AbstractC10186c<T> cVar) {
        this.f22994o = cVar;
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p396e.AbstractC10197a
    /* renamed from: a */
    public void mo13162a(C10183c.AbstractC10187d<T> dVar) {
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p396e.AbstractC10197a
    /* renamed from: a */
    public void mo13161a(C10183c.AbstractC10188e<T> eVar) {
        this.f22995p = eVar;
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p396e.AbstractC10197a
    /* renamed from: a */
    public void mo13160a(C10183c.AbstractC10189f<T> fVar) {
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p396e.AbstractC10197a
    /* renamed from: a */
    public void mo13154a(Set<? extends AbstractC10181a<T>> set) {
        this.f22993n.m13114a(set);
    }

    /* renamed from: b */
    public int m13152b(int i) {
        float min = 300.0f - Math.min(i, 300.0f);
        return Color.HSVToColor(new float[]{((min * min) / 90000.0f) * 220.0f, 1.0f, 0.6f});
    }

    @Override // p081h.p203i.p392f.p393a.p394b.p396e.AbstractC10197a
    /* renamed from: b */
    public void mo13153b() {
        this.f22982c.m13191d().m13204a(new C10199a());
        this.f22982c.m13191d().m13205a(new C10200b(this));
        this.f22982c.m13193c().m13204a(new C10201c());
        this.f22982c.m13193c().m13205a(new C10202d(this));
    }

    /* renamed from: b */
    public boolean mo1020b(AbstractC10181a<T> aVar) {
        return aVar.mo13173a() > this.f22988i;
    }

    /* renamed from: c */
    public final LayerDrawable m13148c() {
        this.f22984e = new ShapeDrawable(new OvalShape());
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(-2130706433);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable, this.f22984e});
        int i = (int) (this.f22983d * 3.0f);
        layerDrawable.setLayerInset(1, i, i, i, i);
        return layerDrawable;
    }
}
