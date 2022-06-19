package p111h2;

import android.view.inputmethod.InputMethodManager;
import p078e2.View$OnClickListenerC2530g;
/* renamed from: h2.a */
/* loaded from: classes-dex2jar.jar:h2/a.class */
public final class RunnableC3002a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC2530g f10102a;

    /* renamed from: b */
    public final /* synthetic */ View$OnClickListenerC2530g.C2531a f10103b;

    public RunnableC3002a(View$OnClickListenerC2530g view$OnClickListenerC2530g, View$OnClickListenerC2530g.C2531a c2531a) {
        this.f10102a = view$OnClickListenerC2530g;
        this.f10103b = c2531a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f10102a.f8826g.requestFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) this.f10103b.f8850a.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(this.f10102a.f8826g, 1);
        }
    }
}
