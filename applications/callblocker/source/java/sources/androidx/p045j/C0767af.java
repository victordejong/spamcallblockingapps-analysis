package androidx.p045j;

import android.annotation.SuppressLint;
import android.view.View;
/* renamed from: androidx.j.af */
/* loaded from: classes-dex2jar.jar:androidx/j/af.class */
class C0767af extends C0766ae {

    /* renamed from: a */
    private static boolean f2670a = true;

    @Override // androidx.p045j.C0770ai
    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public void mo19482a(View view, int i, int i2, int i3, int i4) {
        if (f2670a) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError e) {
                f2670a = false;
            }
        }
    }
}
