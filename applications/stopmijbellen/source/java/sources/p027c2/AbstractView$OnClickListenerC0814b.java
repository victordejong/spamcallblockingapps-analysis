package p027c2;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
/* renamed from: c2.b */
/* loaded from: classes-dex2jar.jar:c2/b.class */
public abstract class AbstractView$OnClickListenerC0814b implements View.OnClickListener {

    /* renamed from: a */
    public static final Handler f2993a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public static boolean f2994b = true;

    /* renamed from: a */
    public abstract void mo3936a(View view);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (f2994b) {
            f2994b = false;
            f2993a.post(RunnableC0813a.f2990b);
            mo3936a(view);
        }
    }
}
