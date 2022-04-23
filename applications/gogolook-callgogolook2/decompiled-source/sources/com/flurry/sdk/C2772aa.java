package com.flurry.sdk;

import android.app.KeyguardManager;
import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.flurry.sdk.AbstractC3055ez;
import com.flurry.sdk.AbstractC3506u;
import com.flurry.sdk.C3324j;
import com.flurry.sdk.C3504t;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.flurry.sdk.aa */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/aa.class */
public class C2772aa extends AbstractC3506u {

    /* renamed from: k */
    public static final String f3884k = "aa";

    /* renamed from: x */
    public KeyguardManager f3897x;

    /* renamed from: l */
    public List<Integer> f3886l = null;

    /* renamed from: m */
    public List<String> f3887m = null;

    /* renamed from: u */
    public WeakReference<View> f3894u = new WeakReference<>(null);

    /* renamed from: n */
    public WeakReference<View> f3888n = new WeakReference<>(null);

    /* renamed from: o */
    public WeakReference<View> f3889o = new WeakReference<>(null);

    /* renamed from: v */
    public WeakReference<Button> f3895v = new WeakReference<>(null);

    /* renamed from: p */
    public AbstractC3055ez f3890p = null;

    /* renamed from: q */
    public C3088fj f3891q = null;

    /* renamed from: y */
    public final AbstractC3107fp f3898y = new AbstractC3107fp() { // from class: com.flurry.sdk.aa.11
        @Override // com.flurry.sdk.AbstractC3107fp
        /* renamed from: a */
        public final void mo32301a() {
            int p = C2772aa.this.f3891q.m33126p();
            String str = C2772aa.f3884k;
            C3356jq.m32615a(3, str, "PlayPause: view-ability Ready to pause video position: " + p + " adObject: " + C2772aa.this.f6058b);
            C2772aa.this.f3891q.m33136b(p);
        }
    };

    /* renamed from: z */
    public final AbstractC3107fp f3899z = new AbstractC3107fp() { // from class: com.flurry.sdk.aa.2
        @Override // com.flurry.sdk.AbstractC3107fp
        /* renamed from: a */
        public final void mo32301a() {
            String str = C2772aa.f3884k;
            C3356jq.m32615a(3, str, "PlayPause: view-ability Ready to play video adObject: " + C2772aa.this.f6058b);
            C2772aa.this.f3891q.m33127j();
        }
    };

    /* renamed from: A */
    public final AbstractC3107fp f3885A = new AbstractC3107fp() { // from class: com.flurry.sdk.aa.3
        @Override // com.flurry.sdk.AbstractC3107fp
        /* renamed from: a */
        public final void mo32301a() {
            int p = C2772aa.this.f3891q.m33126p();
            String str = C2772aa.f3884k;
            C3356jq.m32615a(3, str, "PlayPause: view-ability Ready to pause video position: " + p + " adObject: " + C2772aa.this.f6058b);
            C2772aa.this.f3891q.m33136b(p);
            C2772aa.this.f3890p.mo33178k();
        }
    };

    /* renamed from: r */
    public GestureDetector f3892r = new GestureDetector(C3331jb.m32681a().f5679a, new GestureDetector.SimpleOnGestureListener() { // from class: com.flurry.sdk.aa.1
        /* JADX WARN: Code restructure failed: missing block: B:6:0x003b, code lost:
            r0 = r0[1] - r0[1];
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean m33689a(android.view.MotionEvent r4, android.view.View r5, android.view.View r6) {
            /*
                r0 = 2
                int[] r0 = new int[r0]
                r7 = r0
                r0 = 2
                int[] r0 = new int[r0]
                r8 = r0
                r0 = r5
                r1 = r7
                r0.getLocationInWindow(r1)
                r0 = r6
                r1 = r8
                r0.getLocationInWindow(r1)
                r0 = r8
                r1 = 0
                r0 = r0[r1]
                r1 = r7
                r2 = 0
                r1 = r1[r2]
                int r0 = r0 - r1
                r9 = r0
                r0 = r4
                float r0 = r0.getX()
                int r0 = (int) r0
                r10 = r0
                r0 = r10
                r1 = r9
                if (r0 < r1) goto L_0x0064
                r0 = r10
                r1 = r9
                r2 = r6
                int r2 = r2.getWidth()
                int r1 = r1 + r2
                if (r0 <= r1) goto L_0x003b
                goto L_0x0064
            L_0x003b:
                r0 = r8
                r1 = 1
                r0 = r0[r1]
                r1 = r7
                r2 = 1
                r1 = r1[r2]
                int r0 = r0 - r1
                r10 = r0
                r0 = r4
                float r0 = r0.getY()
                int r0 = (int) r0
                r9 = r0
                r0 = r9
                r1 = r10
                if (r0 < r1) goto L_0x0064
                r0 = r9
                r1 = r10
                r2 = r6
                int r2 = r2.getHeight()
                int r1 = r1 + r2
                if (r0 <= r1) goto L_0x0062
                goto L_0x0064
            L_0x0062:
                r0 = 1
                return r0
            L_0x0064:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2772aa.C27731.m33689a(android.view.MotionEvent, android.view.View, android.view.View):boolean");
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            View view = (View) C2772aa.this.f3894u.get();
            if (view == null) {
                return false;
            }
            String unused = C2772aa.f3884k;
            String str = "On item clicked" + view.getClass();
            View view2 = (View) C2772aa.this.f3888n.get();
            if (view2 == null || m33689a(motionEvent, view, view2)) {
                View view3 = (View) C2772aa.this.f3889o.get();
                if (view3 == null || !m33689a(motionEvent, view, view3)) {
                    C2772aa.this.m32310o();
                    C2772aa.this.m33715G();
                    return false;
                }
                C2772aa.this.m33716F();
                return false;
            }
            C2772aa.this.m33717E();
            return false;
        }
    });

    /* renamed from: s */
    public AbstractC3344jl<C3504t> f3893s = new AbstractC3344jl<C3504t>() { // from class: com.flurry.sdk.aa.4
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3504t tVar) {
            Button button;
            C3504t tVar2 = tVar;
            if (tVar2.f6051b == C2772aa.this.f6058b && (button = tVar2.f6050a) != null) {
                int i = tVar2.f6052c.f6056c;
                int i2 = C3504t.EnumC3505a.CLICK_TO_CALL.f6056c;
                if (i == i2) {
                    button.setTag(Integer.valueOf(i2));
                } else {
                    button.setTag(Integer.valueOf(C3504t.EnumC3505a.CALL_TO_ACTION.f6056c));
                }
                C2772aa.this.f3895v = new WeakReference(tVar2.f6050a);
                final C2772aa aaVar = C2772aa.this;
                WeakReference weakReference = aaVar.f3895v;
                if (weakReference.get() != null) {
                    final Button button2 = (Button) weakReference.get();
                    button2.setClickable(true);
                    button2.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.aa.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            View view2;
                            if (((View) C2772aa.this.f3894u.get()) != null) {
                                String unused = C2772aa.f3884k;
                                String str = "On item clicked" + view2.getClass();
                                C2772aa.this.m32310o();
                                if (((Integer) button2.getTag()).intValue() == C3504t.EnumC3505a.CLICK_TO_CALL.f6056c) {
                                    C2772aa.this.m33713I();
                                } else {
                                    C2772aa.this.m33715G();
                                }
                            }
                        }
                    });
                }
            }
        }
    };

    /* renamed from: w */
    public GestureDetector f3896w = new GestureDetector(C3331jb.m32681a().f5679a, new GestureDetector.SimpleOnGestureListener() { // from class: com.flurry.sdk.aa.5
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (C2772aa.this.f3890p != null) {
                C2772aa.this.f3890p.mo33182i();
            }
            if (C2772aa.this.f3890p == null || C2772aa.this.f3890p.mo33180j() || C2772aa.this.f3890p.mo33173u()) {
                return false;
            }
            if (C2772aa.this.f3890p.mo33186g()) {
                C3356jq.m32615a(3, C2772aa.f3884k, "Autoloop video clicked.");
                C2772aa.this.m32319a(EnumC2874bi.EV_CLICKED, Collections.emptyMap());
            }
            if (!C2772aa.this.f3890p.mo33186g()) {
                C2772aa.this.f3890p.mo33200a(AbstractC3055ez.EnumC3056a.FULLSCREEN);
            }
            C2772aa.this.m32310o();
            return false;
        }
    });

    /* renamed from: com.flurry.sdk.aa$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/aa$a.class */
    public final class C2784a extends AbstractC2787d {
        public C2784a() {
            super(C2772aa.this, (byte) 0);
        }

        public /* synthetic */ C2784a(C2772aa aaVar, byte b) {
            this();
        }

        @Override // com.flurry.sdk.C2772aa.AbstractC2787d, com.flurry.sdk.AbstractC3108fq
        /* renamed from: a */
        public final boolean mo33057a() {
            if (!super.mo33057a()) {
                return false;
            }
            if (!C2772aa.m33692r(C2772aa.this)) {
                return true;
            }
            return ((AbstractC3066fc) C2772aa.this.f3890p).f4873b < 50 && C2772aa.this.f3891q.f4970b != null && C2772aa.this.f3891q.f4970b.isPlaying();
        }
    }

    /* renamed from: com.flurry.sdk.aa$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/aa$b.class */
    public final class C2785b extends AbstractC2787d {
        public C2785b() {
            super(C2772aa.this, (byte) 0);
        }

        public /* synthetic */ C2785b(C2772aa aaVar, byte b) {
            this();
        }

        @Override // com.flurry.sdk.C2772aa.AbstractC2787d, com.flurry.sdk.AbstractC3108fq
        /* renamed from: a */
        public final boolean mo33057a() {
            if (!super.mo33057a()) {
                return false;
            }
            if (!C2772aa.m33692r(C2772aa.this)) {
                return true;
            }
            return ((AbstractC3066fc) C2772aa.this.f3890p).f4873b < 50 && C2772aa.this.f3891q.f4970b != null && C2772aa.this.f3891q.f4970b.isPlaying();
        }
    }

    /* renamed from: com.flurry.sdk.aa$c */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/aa$c.class */
    public final class C2786c extends AbstractC2787d {

        /* renamed from: c */
        public long f3915c;

        public C2786c() {
            super(C2772aa.this, (byte) 0);
            this.f3915c = 0L;
        }

        public /* synthetic */ C2786c(C2772aa aaVar, byte b) {
            this();
        }

        @Override // com.flurry.sdk.C2772aa.AbstractC2787d, com.flurry.sdk.AbstractC3108fq
        /* renamed from: a */
        public final boolean mo33057a() {
            if (this.f3915c == 0) {
                this.f3915c = System.currentTimeMillis();
            }
            if (!super.mo33057a() || !C2772aa.m33692r(C2772aa.this) || ((AbstractC3066fc) C2772aa.this.f3890p).f4873b < 50 || System.currentTimeMillis() - this.f3915c < 250) {
                return false;
            }
            this.f3915c = 0L;
            return C2772aa.this.f3891q.f4970b != null && !C2772aa.this.f3891q.f4970b.isPlaying() && !C2772aa.this.f3890p.getVideoCompletedFromStateOrVideo() && !C2772aa.this.f3890p.m33206t();
        }
    }

    /* renamed from: com.flurry.sdk.aa$d */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/aa$d.class */
    public abstract class AbstractC2787d implements AbstractC3108fq {
        public AbstractC2787d() {
        }

        public /* synthetic */ AbstractC2787d(C2772aa aaVar, byte b) {
            this();
        }

        @Override // com.flurry.sdk.AbstractC3108fq
        /* renamed from: a */
        public boolean mo33057a() {
            if (!AbstractC3506u.EnumC3515a.READY.equals(C2772aa.this.f6066j) || C2772aa.this.f3890p.mo33191e()) {
                return false;
            }
            if (((AbstractC3066fc) C2772aa.this.f3890p).f4873b < 50) {
                return true;
            }
            C2772aa.this.f3890p.f4872a = true;
            return true;
        }

        @Override // com.flurry.sdk.AbstractC3108fq
        /* renamed from: b */
        public final boolean mo33056b() {
            if (C2772aa.this.f3890p == null) {
                return false;
            }
            ((AbstractC3066fc) C2772aa.this.f3890p).f4873b = (C2772aa.this.m33714H() || !C2772aa.m33692r(C2772aa.this)) ? -1 : C3019ef.m33278a((View) C2772aa.this.f3894u.get());
            return C2772aa.m33694p(C2772aa.this) && !C2772aa.this.f3891q.f4970b.m33077d();
        }
    }

    public C2772aa(Context context, String str) {
        super(context, null, str);
        this.f6066j = AbstractC3506u.EnumC3515a.INIT;
        C3345jm.m32636a().m32632a("com.flurry.android.impl.ads.RegisterCTAViewEvent", this.f3893s);
    }

    /* renamed from: a */
    public static void m33709a(WeakReference<View> weakReference) {
        View view = weakReference.get();
        if (view != null) {
            view.setOnTouchListener(null);
            weakReference.clear();
        }
    }

    /* renamed from: p */
    public static /* synthetic */ boolean m33694p(C2772aa aaVar) {
        View view = aaVar.f3894u.get();
        if (view == null) {
            return false;
        }
        return view.isShown();
    }

    /* renamed from: r */
    public static /* synthetic */ boolean m33692r(C2772aa aaVar) {
        View view = aaVar.f3894u.get();
        if (view == null) {
            return false;
        }
        return view.hasWindowFocus();
    }

    /* renamed from: B */
    public final List<C2921cr> m33720B() {
        return !AbstractC3506u.EnumC3515a.READY.equals(this.f6066j) ? Collections.emptyList() : new ArrayList(this.f6064h.f4111b.m33504b());
    }

    /* renamed from: C */
    public final void m33719C() {
        this.f3890p.mo33200a(AbstractC3055ez.EnumC3056a.INSTREAM);
    }

    /* renamed from: E */
    public final void m33717E() {
        synchronized (this) {
            C3356jq.m32606c(f3884k, "Expand logged");
            C3007du.m33321a(EnumC2874bi.EV_AD_EXPANDED, Collections.emptyMap(), mo32282e(), this, this.f6064h, 0);
        }
    }

    /* renamed from: F */
    public final void m33716F() {
        synchronized (this) {
            C3356jq.m32606c(f3884k, "Collapse logged");
            C3007du.m33321a(EnumC2874bi.EV_AD_COLLAPSED, Collections.emptyMap(), mo32282e(), this, this.f6064h, 0);
        }
    }

    /* renamed from: G */
    public final void m33715G() {
        synchronized (this) {
            if (!m33714H()) {
                HashMap hashMap = new HashMap();
                if (mo32311n() && C3016ec.m33293a(mo32282e(), this.f6058b)) {
                    hashMap.put("hide_view", "true");
                }
                C3356jq.m32606c(f3884k, "Click logged");
                C3007du.m33321a(EnumC2874bi.EV_CLICKED, hashMap, mo32282e(), this, this.f6064h, 0);
            }
        }
    }

    /* renamed from: H */
    public final boolean m33714H() {
        if (mo32282e() == null) {
            return false;
        }
        if (this.f3897x == null) {
            this.f3897x = (KeyguardManager) mo32282e().getSystemService("keyguard");
        }
        return this.f3897x.inKeyguardRestrictedInputMode();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0064 A[Catch: all -> 0x007b, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x001e, B:8:0x002b, B:10:0x003c, B:12:0x0044, B:18:0x0064), top: B:26:0x0002 }] */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33713I() {
        /*
            r7 = this;
            r0 = r7
            monitor-enter(r0)
            java.lang.String r0 = com.flurry.sdk.C2772aa.f3884k     // Catch: all -> 0x007b
            java.lang.String r1 = "Call Click logged"
            com.flurry.sdk.C3356jq.m32606c(r0, r1)     // Catch: all -> 0x007b
            r0 = r7
            com.flurry.sdk.bi r1 = com.flurry.sdk.EnumC2874bi.EV_CALL_CLICK_BEACON     // Catch: all -> 0x007b
            java.util.Map r2 = java.util.Collections.emptyMap()     // Catch: all -> 0x007b
            r0.m32319a(r1, r2)     // Catch: all -> 0x007b
            java.lang.String r0 = "clickToCall"
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: all -> 0x007b
            if (r0 != 0) goto L_0x005e
            com.flurry.sdk.u$a r0 = com.flurry.sdk.AbstractC3506u.EnumC3515a.READY     // Catch: all -> 0x007b
            r1 = r7
            com.flurry.sdk.u$a r1 = r1.f6066j     // Catch: all -> 0x007b
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x007b
            if (r0 == 0) goto L_0x005e
            r0 = r7
            com.flurry.sdk.ay r0 = r0.f6064h     // Catch: all -> 0x007b
            com.flurry.sdk.bc r0 = r0.f4111b     // Catch: all -> 0x007b
            java.util.List r0 = r0.m33504b()     // Catch: all -> 0x007b
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x007b
            r8 = r0
        L_0x003b:
            r0 = r8
            boolean r0 = r0.hasNext()     // Catch: all -> 0x007b
            if (r0 == 0) goto L_0x005e
            r0 = r8
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x007b
            com.flurry.sdk.cr r0 = (com.flurry.sdk.C2921cr) r0     // Catch: all -> 0x007b
            r9 = r0
            r0 = r9
            java.lang.String r0 = r0.f4515a     // Catch: all -> 0x007b
            java.lang.String r1 = "clickToCall"
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x007b
            if (r0 == 0) goto L_0x003b
            goto L_0x0060
        L_0x005e:
            r0 = 0
            r9 = r0
        L_0x0060:
            r0 = r9
            if (r0 == 0) goto L_0x0078
            com.flurry.sdk.bi r0 = com.flurry.sdk.EnumC2874bi.INTERNAL_EV_CALL_CLICKED     // Catch: all -> 0x007b
            r1 = r9
            java.util.Map<java.lang.String, java.lang.String> r1 = r1.f4521g     // Catch: all -> 0x007b
            r2 = r7
            android.content.Context r2 = r2.mo32282e()     // Catch: all -> 0x007b
            r3 = r7
            r4 = r7
            com.flurry.sdk.ay r4 = r4.f6064h     // Catch: all -> 0x007b
            r5 = 0
            com.flurry.sdk.C3007du.m33321a(r0, r1, r2, r3, r4, r5)     // Catch: all -> 0x007b
        L_0x0078:
            r0 = r7
            monitor-exit(r0)
            return
        L_0x007b:
            r9 = move-exception
            r0 = r7
            monitor-exit(r0)
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2772aa.m33713I():void");
    }

    @Override // com.flurry.sdk.AbstractC3506u, com.flurry.sdk.AbstractC3518x
    /* renamed from: a */
    public final void mo32290a() {
        super.mo32290a();
        m33690z();
        this.f3892r = null;
        this.f3896w = null;
    }

    @Override // com.flurry.sdk.AbstractC3506u, com.flurry.sdk.AbstractC3518x
    /* renamed from: a */
    public final void mo32288a(View view) {
        m33690z();
        super.mo32288a(view);
        if (!(view == null || view == null)) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.flurry.sdk.aa.7
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    if (C2772aa.this.f3892r == null) {
                        return false;
                    }
                    C2772aa.this.f3892r.onTouchEvent(motionEvent);
                    return true;
                }
            });
        }
        this.f3894u = new WeakReference<>(view);
        if (view instanceof ViewGroup) {
            m33712a((ViewGroup) view);
        }
    }

    /* renamed from: a */
    public final void m33712a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                m33712a((ViewGroup) childAt);
            }
            childAt.setFocusable(false);
            childAt.setClickable(false);
        }
    }

    @Override // com.flurry.sdk.AbstractC3506u
    /* renamed from: a */
    public final void mo32318a(C3324j jVar) {
        super.mo32318a(jVar);
        if (C3324j.EnumC3325a.kOnFetched.equals(jVar.f5648b)) {
            C2853ay ayVar = this.f6063g;
            if (ayVar == null) {
                C3009dw.m33318a(this, EnumC2873bh.kMissingAdController);
                return;
            }
            C2909cf cfVar = ayVar.f4111b.f4147b;
            if (cfVar == null) {
                C3009dw.m33318a(this, EnumC2873bh.kInvalidAdUnit);
            } else if (!EnumC2911ch.NATIVE.equals(cfVar.f4435a)) {
                C3009dw.m33318a(this, EnumC2873bh.kIncorrectClassForAdSpace);
            } else {
                m32308r();
                synchronized (this) {
                    this.f6066j = AbstractC3506u.EnumC3515a.READY;
                }
            }
        }
    }

    @Override // com.flurry.sdk.AbstractC3506u
    /* renamed from: p */
    public final void mo32309p() {
        if (!mo32304v()) {
            super.mo32309p();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    @Override // com.flurry.sdk.AbstractC3506u
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo32304v() {
        /*
            r3 = this;
            com.flurry.sdk.u$a r0 = com.flurry.sdk.AbstractC3506u.EnumC3515a.READY
            r1 = r3
            com.flurry.sdk.u$a r1 = r1.f6066j
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x000f
            r0 = 0
            return r0
        L_0x000f:
            r0 = r3
            com.flurry.sdk.ay r0 = r0.f6064h
            com.flurry.sdk.bc r0 = r0.f4111b
            java.util.List r0 = r0.m33504b()
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x001f:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x004e
            r0 = r4
            java.lang.Object r0 = r0.next()
            com.flurry.sdk.cr r0 = (com.flurry.sdk.C2921cr) r0
            r5 = r0
            r0 = r5
            java.lang.String r0 = r0.f4515a
            java.lang.String r1 = "videoUrl"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x004c
            r0 = r5
            java.lang.String r0 = r0.f4515a
            java.lang.String r1 = "vastAd"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x001f
        L_0x004c:
            r0 = 1
            return r0
        L_0x004e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2772aa.mo32304v():boolean");
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: w */
    public final boolean mo32276w() {
        if (!AbstractC3506u.EnumC3515a.READY.equals(this.f6066j)) {
            return false;
        }
        return this.f6064h.m33518l();
    }

    /* renamed from: y */
    public final void m33691y() {
        synchronized (this) {
            if (AbstractC3506u.EnumC3515a.INIT.equals(this.f6066j)) {
                m32306t();
            } else if (AbstractC3506u.EnumC3515a.READY.equals(this.f6066j)) {
                String str = f3884k;
                C3356jq.m32613a(str, "NativeAdObject fetched: " + this);
                C3009dw.m33319a(this);
            }
        }
    }

    /* renamed from: z */
    public final void m33690z() {
        m33709a(this.f3894u);
        m33709a(this.f3888n);
        m33709a(this.f3889o);
        C2853ay ayVar = this.f6064h;
        if (ayVar == null) {
            C3356jq.m32615a(3, f3884k, "Ad controller is null");
            return;
        }
        C2861bc bcVar = ayVar.f4111b;
        if (bcVar == null) {
            C3356jq.m32615a(3, f3884k, "Can't find ad unit data");
            return;
        }
        C3114ft ftVar = bcVar.f4156k;
        if (ftVar == null) {
            C3356jq.m32615a(3, f3884k, "Can't find viewability");
            return;
        }
        C3106fo foVar = ftVar.f5044a;
        if (foVar == null) {
            C3356jq.m32615a(3, f3884k, "Can't find static viewability");
            return;
        }
        final List<C3105fn> list = foVar.f5026a;
        if (list == null || list.isEmpty()) {
            C3356jq.m32615a(3, f3884k, "Impression list is null or empty");
        } else {
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.aa.9
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    C3356jq.m32615a(3, C2772aa.f3884k, "Remove impression tracking");
                    for (C3105fn fnVar : list) {
                        C3356jq.m32613a(C3105fn.f5019a, "Remove tracking View");
                        C3105fn.m33058a(fnVar.f5020b);
                    }
                }
            });
        }
    }
}
