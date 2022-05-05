package butterknife.internal;

import android.view.View;
import p072g.p073c.RunnableC4292a;
/* loaded from: classes-dex2jar.jar:butterknife/internal/DebouncingOnClickListener.class */
public abstract class DebouncingOnClickListener implements View.OnClickListener {
    public static final Runnable ENABLE_AGAIN = RunnableC4292a.f10362a;
    public static boolean enabled = true;

    public abstract void doClick(View view);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (enabled) {
            enabled = false;
            view.post(ENABLE_AGAIN);
            doClick(view);
        }
    }
}
