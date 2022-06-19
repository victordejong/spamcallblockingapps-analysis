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
import androidx.transition.C2901o;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/transition/Explode.class */
public class Explode extends Visibility {

    /* renamed from: a */
    private static final TimeInterpolator f10726a = new DecelerateInterpolator();

    /* renamed from: k */
    private static final TimeInterpolator f10727k = new AccelerateInterpolator();

    /* renamed from: l */
    private int[] f10728l;

    public Explode() {
        this.f10728l = new int[2];
        mo39784a(new C2881c());
    }

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10728l = new int[2];
        mo39784a(new C2881c());
    }

    /* renamed from: a */
    private static float m39826a(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    /* renamed from: a */
    private static float m39825a(View view, int i, int i2) {
        return m39826a(Math.max(i, view.getWidth() - i), Math.max(i2, view.getHeight() - i2));
    }

    /* renamed from: a */
    private void m39824a(View view, Rect rect, int[] iArr) {
        int i;
        int i2;
        view.getLocationOnScreen(this.f10728l);
        int[] iArr2 = this.f10728l;
        int i3 = iArr2[0];
        int i4 = iArr2[1];
        Rect j = m39795j();
        if (j == null) {
            i2 = (view.getWidth() / 2) + i3 + Math.round(view.getTranslationX());
            i = (view.getHeight() / 2) + i4 + Math.round(view.getTranslationY());
        } else {
            i2 = j.centerX();
            i = j.centerY();
        }
        float centerX = rect.centerX() - i2;
        float centerY = rect.centerY() - i;
        float f = centerX;
        float f2 = centerY;
        if (centerX == BitmapDescriptorFactory.HUE_RED) {
            f = centerX;
            f2 = centerY;
            if (centerY == BitmapDescriptorFactory.HUE_RED) {
                f = ((float) (Math.random() * 2.0d)) - 1.0f;
                f2 = ((float) (Math.random() * 2.0d)) - 1.0f;
            }
        }
        float m39826a = m39826a(f, f2);
        float f3 = f / m39826a;
        float f4 = f2 / m39826a;
        float m39825a = m39825a(view, i2 - i3, i - i4);
        iArr[0] = Math.round(f3 * m39825a);
        iArr[1] = Math.round(m39825a * f4);
    }

    /* renamed from: d */
    private void m39823d(C2914x c2914x) {
        View view = c2914x.f10934b;
        view.getLocationOnScreen(this.f10728l);
        int[] iArr = this.f10728l;
        int i = iArr[0];
        int i2 = iArr[1];
        c2914x.f10933a.put("android:explode:screenBounds", new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2));
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo39766a(ViewGroup viewGroup, View view, C2914x c2914x) {
        float f;
        float f2;
        if (c2914x == null) {
            return null;
        }
        Rect rect = (Rect) c2914x.f10933a.get("android:explode:screenBounds");
        int i = rect.left;
        int i2 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) c2914x.f10934b.getTag(C2901o.C2902a.transition_position);
        if (iArr != null) {
            f2 = (iArr[0] - rect.left) + translationX;
            f = (iArr[1] - rect.top) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f2 = translationX;
            f = translationY;
        }
        m39824a(viewGroup, rect, this.f10728l);
        int[] iArr2 = this.f10728l;
        return C2916z.m39673a(view, c2914x, i, i2, translationX, translationY, f2 + iArr2[0], f + iArr2[1], f10727k, this);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo39765a(ViewGroup viewGroup, View view, C2914x c2914x, C2914x c2914x2) {
        if (c2914x2 == null) {
            return null;
        }
        Rect rect = (Rect) c2914x2.f10933a.get("android:explode:screenBounds");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        m39824a(viewGroup, rect, this.f10728l);
        int[] iArr = this.f10728l;
        return C2916z.m39673a(view, c2914x2, rect.left, rect.top, translationX + iArr[0], translationY + iArr[1], translationX, translationY, f10726a, this);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: a */
    public final void mo10513a(C2914x c2914x) {
        super.mo10513a(c2914x);
        m39823d(c2914x);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: b */
    public final void mo10512b(C2914x c2914x) {
        super.mo10512b(c2914x);
        m39823d(c2914x);
    }
}
