package androidx.p045j;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
/* renamed from: androidx.j.ag */
/* loaded from: classes-dex2jar.jar:androidx/j/ag.class */
class C0768ag extends C0767af {

    /* renamed from: a */
    private static boolean f2671a = true;

    @Override // androidx.p045j.C0770ai
    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public void mo19483a(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.mo19483a(view, i);
        } else if (!f2671a) {
        } else {
            try {
                view.setTransitionVisibility(i);
            } catch (NoSuchMethodError e) {
                f2671a = false;
            }
        }
    }
}
