package p078e2;

import android.view.ViewTreeObserver;
/* renamed from: e2.e */
/* loaded from: classes-dex2jar.jar:e2/e.class */
public class ViewTreeObserver$OnGlobalLayoutListenerC2527e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC2530g f8818a;

    /* renamed from: e2.e$a */
    /* loaded from: classes-dex2jar.jar:e2/e$a.class */
    public class RunnableC2528a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f8819a;

        public RunnableC2528a(int i) {
            ViewTreeObserver$OnGlobalLayoutListenerC2527e.this = r4;
            this.f8819a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewTreeObserver$OnGlobalLayoutListenerC2527e.this.f8818a.f8827h.requestFocus();
            ViewTreeObserver$OnGlobalLayoutListenerC2527e.this.f8818a.f8822c.f8842G.mo7673w0(this.f8819a);
        }
    }

    public ViewTreeObserver$OnGlobalLayoutListenerC2527e(View$OnClickListenerC2530g view$OnClickListenerC2530g) {
        this.f8818a = view$OnClickListenerC2530g;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        int i;
        this.f8818a.f8827h.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        View$OnClickListenerC2530g view$OnClickListenerC2530g = this.f8818a;
        int i2 = view$OnClickListenerC2530g.f8835p;
        if ((i2 == 2 || i2 == 3) && i2 == 2 && (i = view$OnClickListenerC2530g.f8822c.f8836A) >= 0) {
            view$OnClickListenerC2530g.f8827h.post(new RunnableC2528a(i));
        }
    }
}
