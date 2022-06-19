package androidx.p045j;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewParent;
import androidx.p045j.C0833j;
/* renamed from: androidx.j.ai */
/* loaded from: classes-dex2jar.jar:androidx/j/ai.class */
class C0800ai {
    /* renamed from: a */
    public float mo5319a(View view) {
        Float f = (Float) view.getTag(C0833j.C0834a.save_non_transition_alpha);
        return f != null ? view.getAlpha() / f.floatValue() : view.getAlpha();
    }

    /* renamed from: a */
    public void mo5318a(View view, float f) {
        Float f2 = (Float) view.getTag(C0833j.C0834a.save_non_transition_alpha);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    /* renamed from: a */
    public void mo5317a(View view, int i, int i2, int i3, int i4) {
        view.setLeft(i);
        view.setTop(i2);
        view.setRight(i3);
        view.setBottom(i4);
    }

    /* renamed from: a */
    public void mo5316a(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            mo5316a(view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            matrix.preConcat(matrix2);
        }
    }

    /* renamed from: b */
    public void mo5315b(View view) {
        if (view.getTag(C0833j.C0834a.save_non_transition_alpha) == null) {
            view.setTag(C0833j.C0834a.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }

    /* renamed from: b */
    public void mo5314b(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            mo5314b(view2, matrix);
            matrix.postTranslate(view2.getScrollX(), view2.getScrollY());
        }
        matrix.postTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            Matrix matrix3 = new Matrix();
            if (!matrix2.invert(matrix3)) {
                return;
            }
            matrix.postConcat(matrix3);
        }
    }

    /* renamed from: c */
    public void mo5313c(View view) {
        if (view.getVisibility() == 0) {
            view.setTag(C0833j.C0834a.save_non_transition_alpha, null);
        }
    }
}
