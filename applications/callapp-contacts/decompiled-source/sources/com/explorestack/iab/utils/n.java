package com.explorestack.iab.utils;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public final View f19194a;

    /* renamed from: b  reason: collision with root package name */
    final a f19195b;
    public final ViewTreeObserver.OnGlobalLayoutListener f;
    private boolean g = false;

    /* renamed from: c  reason: collision with root package name */
    public float f19196c = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: d  reason: collision with root package name */
    public long f19197d = 0;
    long e = 0;
    private final Runnable h = new Runnable() { // from class: com.explorestack.iab.utils.n.2
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [long] */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1, types: [long] */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r7 = this;
                r0 = r7
                com.explorestack.iab.utils.n r0 = com.explorestack.iab.utils.n.this
                long r0 = r0.e
                r8 = r0
                r0 = r8
                r10 = r0
                r0 = r7
                com.explorestack.iab.utils.n r0 = com.explorestack.iab.utils.n.this
                android.view.View r0 = r0.f19194a
                boolean r0 = r0.isShown()
                if (r0 == 0) goto L_0x0061
                r0 = r7
                com.explorestack.iab.utils.n r0 = com.explorestack.iab.utils.n.this
                long r0 = r0.f19197d
                r1 = r8
                r2 = 16
                long r1 = r1 + r2
                long r0 = java.lang.Math.min(r0, r1)
                r10 = r0
                r0 = r7
                com.explorestack.iab.utils.n r0 = com.explorestack.iab.utils.n.this
                r1 = r10
                r0.e = r1
                r0 = r7
                com.explorestack.iab.utils.n r0 = com.explorestack.iab.utils.n.this
                long r0 = r0.e
                float r0 = (float) r0
                r1 = 1120403456(0x42c80000, float:100.0)
                float r0 = r0 * r1
                r1 = r7
                com.explorestack.iab.utils.n r1 = com.explorestack.iab.utils.n.this
                long r1 = r1.f19197d
                float r1 = (float) r1
                float r0 = r0 / r1
                r12 = r0
                r0 = r7
                com.explorestack.iab.utils.n r0 = com.explorestack.iab.utils.n.this
                com.explorestack.iab.utils.n$a r0 = r0.f19195b
                r1 = r12
                r2 = r7
                com.explorestack.iab.utils.n r2 = com.explorestack.iab.utils.n.this
                long r2 = r2.e
                r3 = r7
                com.explorestack.iab.utils.n r3 = com.explorestack.iab.utils.n.this
                long r3 = r3.f19197d
                r0.a(r1, r2, r3)
            L_0x0061:
                r0 = r10
                r1 = r7
                com.explorestack.iab.utils.n r1 = com.explorestack.iab.utils.n.this
                long r1 = r1.f19197d
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x007a
                r0 = r7
                com.explorestack.iab.utils.n r0 = com.explorestack.iab.utils.n.this
                com.explorestack.iab.utils.n$a r0 = r0.f19195b
                r0.a()
                return
            L_0x007a:
                r0 = r7
                com.explorestack.iab.utils.n r0 = com.explorestack.iab.utils.n.this
                android.view.View r0 = r0.f19194a
                r1 = r7
                r2 = 16
                boolean r0 = r0.postDelayed(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.utils.n.AnonymousClass2.run():void");
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/n$a.class */
    public interface a {
        void a();

        void a(float f, long j, long j2);
    }

    public n(View view, a aVar) {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.explorestack.iab.utils.n.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                n.this.c();
            }
        };
        this.f = onGlobalLayoutListener;
        this.f19194a = view;
        this.f19195b = aVar;
        view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        c();
    }

    private boolean d() {
        long j = this.f19197d;
        return j != 0 && this.e < j;
    }

    public final void a() {
        if (this.f19194a.isShown() && this.f19197d != 0) {
            this.f19194a.postDelayed(this.h, 16L);
        }
    }

    public final void b() {
        this.f19194a.removeCallbacks(this.h);
    }

    final void c() {
        boolean isShown = this.f19194a.isShown();
        if (this.g != isShown) {
            this.g = isShown;
            if (!isShown) {
                b();
            } else if (d()) {
                a();
            }
        }
    }
}
