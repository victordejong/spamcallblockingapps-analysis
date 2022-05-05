package p459j.p460a.p518j;

import android.content.Context;
import androidx.annotation.CallSuper;
import androidx.fragment.app.Fragment;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p590x4.C14260e;
/* renamed from: j.a.j.d */
/* loaded from: classes2-dex2jar.jar:j/a/j/d.class */
public abstract class AbstractC12478d extends Fragment {
    /* renamed from: b */
    public String m6059b(int i) {
        return C14206w4.m2225a(i);
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void setUserVisibleHint(boolean z) {
        Context context;
        super.setUserVisibleHint(z);
        if (z && (context = getContext()) != null) {
            C14260e.m2001a(context, getClass());
        }
    }
}
