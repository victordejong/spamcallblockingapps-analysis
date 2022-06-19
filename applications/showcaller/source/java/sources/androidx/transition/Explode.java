package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
/* loaded from: classes-dex2jar.jar:androidx/transition/Explode.class */
public class Explode extends Visibility {

    /* renamed from: P */
    private static final TimeInterpolator f4788P = new DecelerateInterpolator();

    /* renamed from: Q */
    private static final TimeInterpolator f4789Q = new AccelerateInterpolator();

    /* renamed from: R */
    private int[] f4790R;

    public Explode() {
        this.f4790R = new int[2];
        mo30972i0(new C1122c());
    }

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4790R = new int[2];
        mo30972i0(new C1122c());
    }

    /* renamed from: m0 */
    private void m31032m0(C1175y c1175y) {
        View view = c1175y.f4996b;
        view.getLocationOnScreen(this.f4790R);
        int[] iArr = this.f4790R;
        int i = iArr[0];
        int i2 = iArr[1];
        c1175y.f4995a.put("android:explode:screenBounds", new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2));
    }

    /* renamed from: u0 */
    private static float m31031u0(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    /* renamed from: v0 */
    private static float m31030v0(View view, int i, int i2) {
        return m31031u0(Math.max(i, view.getWidth() - i), Math.max(i2, view.getHeight() - i2));
    }

    /* renamed from: w0 */
    private void m31029w0(View view, Rect rect, int[] iArr) {
        int i;
        int i2;
        view.getLocationOnScreen(this.f4790R);
        int[] iArr2 = this.f4790R;
        int i3 = iArr2[0];
        int i4 = iArr2[1];
        Rect m30988v = m30988v();
        if (m30988v == null) {
            i2 = (view.getWidth() / 2) + i3 + Math.round(view.getTranslationX());
            i = (view.getHeight() / 2) + i4 + Math.round(view.getTranslationY());
        } else {
            i2 = m30988v.centerX();
            i = m30988v.centerY();
        }
        float centerX = rect.centerX() - i2;
        float centerY = rect.centerY() - i;
        float f = centerX;
        float f2 = centerY;
        if (centerX == 0.0f) {
            f = centerX;
            f2 = centerY;
            if (centerY == 0.0f) {
                f = ((float) (Math.random() * 2.0d)) - 1.0f;
                f2 = ((float) (Math.random() * 2.0d)) - 1.0f;
            }
        }
        float m31031u0 = m31031u0(f, f2);
        float f3 = f / m31031u0;
        float f4 = f2 / m31031u0;
        float m31030v0 = m31030v0(view, i2 - i3, i - i4);
        iArr[0] = Math.round(f3 * m31030v0);
        iArr[1] = Math.round(m31030v0 * f4);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: i */
    public void mo4473i(C1175y c1175y) {
        super.mo4473i(c1175y);
        m31032m0(c1175y);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: m */
    public void mo4472m(C1175y c1175y) {
        super.mo4472m(c1175y);
        m31032m0(c1175y);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: p0 */
    public Animator mo30948p0(ViewGroup viewGroup, View view, C1175y c1175y, C1175y c1175y2) {
        if (c1175y2 == null) {
            return null;
        }
        Rect rect = (Rect) c1175y2.f4995a.get("android:explode:screenBounds");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        m31029w0(viewGroup, rect, this.f4790R);
        int[] iArr = this.f4790R;
        return C1118a0.m30938a(view, c1175y2, rect.left, rect.top, translationX + iArr[0], translationY + iArr[1], translationX, translationY, f4788P, this);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: r0 */
    public Animator mo30946r0(ViewGroup viewGroup, View view, C1175y c1175y, C1175y c1175y2) {
        float f;
        float f2;
        if (c1175y == null) {
            return null;
        }
        Rect rect = (Rect) c1175y.f4995a.get("android:explode:screenBounds");
        int i = rect.left;
        int i2 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) c1175y.f4996b.getTag(C1158p.transition_position);
        if (iArr != null) {
            f2 = (iArr[0] - rect.left) + translationX;
            f = (iArr[1] - rect.top) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f2 = translationX;
            f = translationY;
        }
        m31029w0(viewGroup, rect, this.f4790R);
        int[] iArr2 = this.f4790R;
        return C1118a0.m30938a(view, c1175y, i, i2, translationX, translationY, f2 + iArr2[0], f + iArr2[1], f4789Q, this);
    }
}
