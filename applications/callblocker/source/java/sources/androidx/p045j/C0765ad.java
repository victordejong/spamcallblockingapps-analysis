package androidx.p045j;

import android.annotation.SuppressLint;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.j.ad */
/* loaded from: classes-dex2jar.jar:androidx/j/ad.class */
public class C0765ad extends C0770ai {

    /* renamed from: a */
    private static boolean f2666a = true;

    @Override // androidx.p045j.C0770ai
    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public float mo19485a(View view) {
        float transitionAlpha;
        if (f2666a) {
            try {
                transitionAlpha = view.getTransitionAlpha();
            } catch (NoSuchMethodError e) {
                f2666a = false;
            }
            return transitionAlpha;
        }
        transitionAlpha = view.getAlpha();
        return transitionAlpha;
    }

    @Override // androidx.p045j.C0770ai
    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public void mo19484a(View view, float f) {
        if (f2666a) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError e) {
                f2666a = false;
            }
        }
        view.setAlpha(f);
    }

    @Override // androidx.p045j.C0770ai
    /* renamed from: b */
    public void mo19480b(View view) {
    }

    @Override // androidx.p045j.C0770ai
    /* renamed from: c */
    public void mo19478c(View view) {
    }
}
