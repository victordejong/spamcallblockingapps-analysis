package p262v3;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
/* renamed from: v3.q */
/* loaded from: classes-dex2jar.jar:v3/q.class */
public final class RunnableC4635q implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f14326a;

    public RunnableC4635q(View view) {
        this.f14326a = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        ((InputMethodManager) this.f14326a.getContext().getSystemService("input_method")).showSoftInput(this.f14326a, 1);
    }
}
