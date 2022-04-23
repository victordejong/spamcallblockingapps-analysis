package com.explorestack.iab.mraid;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.explorestack.iab.utils.d;
import com.explorestack.iab.utils.e;
import com.explorestack.iab.utils.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/CloseableLayout.class */
public class CloseableLayout extends FrameLayout {
    private static final int TIMER_INTERVAL = 50;
    private c closeClickListener;
    private h closeStyle;
    private a closeTimerRunnable;
    private d closeWrapper;
    private h countDownStyle;
    private e countDownWrapper;
    private final b state = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/CloseableLayout$a.class */
    public final class a implements Runnable {
        private a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v6, types: [long] */
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
                com.explorestack.iab.mraid.CloseableLayout r0 = com.explorestack.iab.mraid.CloseableLayout.this
                com.explorestack.iab.utils.e r0 = com.explorestack.iab.mraid.CloseableLayout.access$600(r0)
                if (r0 != 0) goto L_0x000b
                return
            L_0x000b:
                r0 = r7
                com.explorestack.iab.mraid.CloseableLayout r0 = com.explorestack.iab.mraid.CloseableLayout.this
                com.explorestack.iab.mraid.CloseableLayout$b r0 = com.explorestack.iab.mraid.CloseableLayout.access$700(r0)
                long r0 = r0.f19087d
                r8 = r0
                r0 = r8
                r10 = r0
                r0 = r7
                com.explorestack.iab.mraid.CloseableLayout r0 = com.explorestack.iab.mraid.CloseableLayout.this
                boolean r0 = r0.isShown()
                if (r0 == 0) goto L_0x0063
                r0 = r8
                r1 = 50
                long r0 = r0 + r1
                r10 = r0
                r0 = r7
                com.explorestack.iab.mraid.CloseableLayout r0 = com.explorestack.iab.mraid.CloseableLayout.this
                com.explorestack.iab.mraid.CloseableLayout$b r0 = com.explorestack.iab.mraid.CloseableLayout.access$700(r0)
                r1 = r10
                r0.f19087d = r1
                r0 = r7
                com.explorestack.iab.mraid.CloseableLayout r0 = com.explorestack.iab.mraid.CloseableLayout.this
                com.explorestack.iab.utils.e r0 = com.explorestack.iab.mraid.CloseableLayout.access$600(r0)
                r1 = 100
                r2 = r10
                long r1 = r1 * r2
                r2 = r7
                com.explorestack.iab.mraid.CloseableLayout r2 = com.explorestack.iab.mraid.CloseableLayout.this
                com.explorestack.iab.mraid.CloseableLayout$b r2 = com.explorestack.iab.mraid.CloseableLayout.access$700(r2)
                long r2 = r2.f19086c
                long r1 = r1 / r2
                int r1 = (int) r1
                r2 = r7
                com.explorestack.iab.mraid.CloseableLayout r2 = com.explorestack.iab.mraid.CloseableLayout.this
                com.explorestack.iab.mraid.CloseableLayout$b r2 = com.explorestack.iab.mraid.CloseableLayout.access$700(r2)
                long r2 = r2.f19086c
                r3 = r10
                long r2 = r2 - r3
                double r2 = (double) r2
                r3 = 4652007308841189376(0x408f400000000000, double:1000.0)
                double r2 = r2 / r3
                double r2 = java.lang.Math.ceil(r2)
                int r2 = (int) r2
                r0.a(r1, r2)
            L_0x0063:
                r0 = r10
                r1 = r7
                com.explorestack.iab.mraid.CloseableLayout r1 = com.explorestack.iab.mraid.CloseableLayout.this
                com.explorestack.iab.mraid.CloseableLayout$b r1 = com.explorestack.iab.mraid.CloseableLayout.access$700(r1)
                long r1 = r1.f19086c
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x009f
                r0 = r7
                com.explorestack.iab.mraid.CloseableLayout r0 = com.explorestack.iab.mraid.CloseableLayout.this
                com.explorestack.iab.mraid.CloseableLayout.access$1000(r0)
                r0 = r7
                com.explorestack.iab.mraid.CloseableLayout r0 = com.explorestack.iab.mraid.CloseableLayout.this
                com.explorestack.iab.mraid.CloseableLayout$b r0 = com.explorestack.iab.mraid.CloseableLayout.access$700(r0)
                float r0 = r0.f19085b
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x00ab
                r0 = r7
                com.explorestack.iab.mraid.CloseableLayout r0 = com.explorestack.iab.mraid.CloseableLayout.this
                com.explorestack.iab.mraid.CloseableLayout$c r0 = com.explorestack.iab.mraid.CloseableLayout.access$300(r0)
                if (r0 == 0) goto L_0x00ab
                r0 = r7
                com.explorestack.iab.mraid.CloseableLayout r0 = com.explorestack.iab.mraid.CloseableLayout.this
                com.explorestack.iab.mraid.CloseableLayout$c r0 = com.explorestack.iab.mraid.CloseableLayout.access$300(r0)
                r0.onCountDownFinish()
                return
            L_0x009f:
                r0 = r7
                com.explorestack.iab.mraid.CloseableLayout r0 = com.explorestack.iab.mraid.CloseableLayout.this
                r1 = r7
                r2 = 50
                boolean r0 = r0.postDelayed(r1, r2)
            L_0x00ab:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.mraid.CloseableLayout.a.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/CloseableLayout$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        boolean f19084a;

        /* renamed from: b  reason: collision with root package name */
        float f19085b;

        /* renamed from: c  reason: collision with root package name */
        long f19086c;

        /* renamed from: d  reason: collision with root package name */
        long f19087d;
        long e;
        long f;

        private b() {
            this.f19084a = false;
            this.f19085b = BitmapDescriptorFactory.HUE_RED;
            this.f19086c = 0L;
            this.f19087d = 0L;
            this.e = 0L;
            this.f = 0L;
        }

        public final boolean a() {
            long j = this.f19086c;
            return j != 0 && this.f19087d < j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/CloseableLayout$c.class */
    public interface c {
        void onCloseClick();

        void onCountDownFinish();
    }

    public CloseableLayout(Context context) {
        super(context);
    }

    private void startTimer() {
        if (isShown()) {
            stopTimer();
            a aVar = new a();
            this.closeTimerRunnable = aVar;
            postDelayed(aVar, 50L);
        }
    }

    private void stopTimer() {
        a aVar = this.closeTimerRunnable;
        if (aVar != null) {
            removeCallbacks(aVar);
            this.closeTimerRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncCloseViewState() {
        if (this.state.a()) {
            d dVar = this.closeWrapper;
            if (dVar != null) {
                dVar.d();
            }
            if (this.countDownWrapper == null) {
                this.countDownWrapper = new e(null);
            }
            this.countDownWrapper.a(getContext(), (ViewGroup) this, this.countDownStyle);
            startTimer();
            return;
        }
        stopTimer();
        if (this.closeWrapper == null) {
            this.closeWrapper = new d(new View.OnClickListener() { // from class: com.explorestack.iab.mraid.CloseableLayout.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (CloseableLayout.this.closeClickListener != null) {
                        CloseableLayout.this.closeClickListener.onCloseClick();
                    }
                }
            });
        }
        this.closeWrapper.a(getContext(), (ViewGroup) this, this.closeStyle);
        e eVar = this.countDownWrapper;
        if (eVar != null) {
            eVar.d();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        d dVar = this.closeWrapper;
        if (dVar != null) {
            dVar.b();
        }
        e eVar = this.countDownWrapper;
        if (eVar != null) {
            eVar.b();
        }
    }

    public boolean canBeClosed() {
        b bVar = this.state;
        return bVar.f19086c == 0 || bVar.f19087d >= bVar.f19086c;
    }

    public long getOnScreenTimeMs() {
        b bVar = this.state;
        long j = bVar.f;
        if (bVar.e > 0) {
            j = System.currentTimeMillis() - bVar.e;
        }
        return j;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            stopTimer();
        } else if (this.state.a() && this.state.f19084a) {
            startTimer();
        }
        b bVar = this.state;
        boolean z = i == 0;
        if (bVar.e > 0) {
            bVar.f += System.currentTimeMillis() - bVar.e;
        }
        if (z) {
            bVar.e = System.currentTimeMillis();
        } else {
            bVar.e = 0L;
        }
    }

    public void setCloseClickListener(c cVar) {
        this.closeClickListener = cVar;
    }

    public void setCloseStyle(h hVar) {
        this.closeStyle = hVar;
        d dVar = this.closeWrapper;
        if (dVar != null && dVar.c()) {
            this.closeWrapper.a(getContext(), (ViewGroup) this, hVar);
        }
    }

    public void setCloseVisibility(boolean z, float f) {
        if (this.state.f19084a != z || this.state.f19085b != f) {
            b bVar = this.state;
            bVar.f19084a = z;
            bVar.f19085b = f;
            bVar.f19086c = f * 1000.0f;
            bVar.f19087d = 0L;
            if (!z) {
                d dVar = this.closeWrapper;
                if (dVar != null) {
                    dVar.d();
                }
                e eVar = this.countDownWrapper;
                if (eVar != null) {
                    eVar.d();
                }
                stopTimer();
                return;
            }
            syncCloseViewState();
        }
    }

    public void setCountDownStyle(h hVar) {
        this.countDownStyle = hVar;
        e eVar = this.countDownWrapper;
        if (eVar != null && eVar.c()) {
            this.countDownWrapper.a(getContext(), (ViewGroup) this, hVar);
        }
    }
}
