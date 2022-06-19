package androidx.p045j;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.j.ae */
/* loaded from: classes-dex2jar.jar:androidx/j/ae.class */
public class C0766ae extends C0765ad {

    /* renamed from: a */
    private static boolean f2667a = true;

    /* renamed from: b */
    private static boolean f2668b = true;

    /* renamed from: c */
    private static boolean f2669c = true;

    @Override // androidx.p045j.C0770ai
    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public void mo19481a(View view, Matrix matrix) {
        if (f2668b) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError e) {
                f2668b = false;
            }
        }
    }

    @Override // androidx.p045j.C0770ai
    @SuppressLint({"NewApi"})
    /* renamed from: b */
    public void mo19479b(View view, Matrix matrix) {
        if (f2669c) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError e) {
                f2669c = false;
            }
        }
    }
}
