package p193e.p194a.p1129p5.p1132s0;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.p5.s0.j0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/j0.class */
public final class RunnableC19298j0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f53722a;

    /* renamed from: b */
    public final /* synthetic */ boolean f53723b;

    public RunnableC19298j0(View view, boolean z) {
        this.f53722a = view;
        this.f53723b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f53723b) {
            this.f53722a.requestFocus();
            Context context = this.f53722a.getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            l.e(context, "$this$inputMethodManager");
            Object systemService = context.getSystemService("input_method");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            ((InputMethodManager) systemService).showSoftInput(this.f53722a, 1);
            return;
        }
        Context context2 = this.f53722a.getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        l.e(context2, "$this$inputMethodManager");
        Object systemService2 = context2.getSystemService("input_method");
        Objects.requireNonNull(systemService2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService2).hideSoftInputFromWindow(this.f53722a.getWindowToken(), 0);
        this.f53722a.clearFocus();
    }
}
