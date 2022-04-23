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
import androidx.transition.o;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/transition/Explode.class */
public class Explode extends Visibility {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeInterpolator f5721a = new DecelerateInterpolator();
    private static final TimeInterpolator k = new AccelerateInterpolator();
    private int[] l;

    public Explode() {
        this.l = new int[2];
        a(new c());
    }

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = new int[2];
        a(new c());
    }

    private static float a(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    private static float a(View view, int i, int i2) {
        return a(Math.max(i, view.getWidth() - i), Math.max(i2, view.getHeight() - i2));
    }

    private void a(View view, Rect rect, int[] iArr) {
        int i;
        int i2;
        view.getLocationOnScreen(this.l);
        int[] iArr2 = this.l;
        int i3 = iArr2[0];
        int i4 = iArr2[1];
        Rect j = j();
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
        float a2 = a(f, f2);
        float f3 = f / a2;
        float f4 = f2 / a2;
        float a3 = a(view, i2 - i3, i - i4);
        iArr[0] = Math.round(f3 * a3);
        iArr[1] = Math.round(a3 * f4);
    }

    private void d(x xVar) {
        View view = xVar.f5853b;
        view.getLocationOnScreen(this.l);
        int[] iArr = this.l;
        int i = iArr[0];
        int i2 = iArr[1];
        xVar.f5852a.put("android:explode:screenBounds", new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2));
    }

    @Override // androidx.transition.Visibility
    public final Animator a(ViewGroup viewGroup, View view, x xVar) {
        float f;
        float f2;
        if (xVar == null) {
            return null;
        }
        Rect rect = (Rect) xVar.f5852a.get("android:explode:screenBounds");
        int i = rect.left;
        int i2 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) xVar.f5853b.getTag(o.a.transition_position);
        if (iArr != null) {
            f2 = (iArr[0] - rect.left) + translationX;
            f = (iArr[1] - rect.top) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f2 = translationX;
            f = translationY;
        }
        a(viewGroup, rect, this.l);
        int[] iArr2 = this.l;
        return z.a(view, xVar, i, i2, translationX, translationY, f2 + iArr2[0], f + iArr2[1], k, this);
    }

    @Override // androidx.transition.Visibility
    public final Animator a(ViewGroup viewGroup, View view, x xVar, x xVar2) {
        if (xVar2 == null) {
            return null;
        }
        Rect rect = (Rect) xVar2.f5852a.get("android:explode:screenBounds");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        a(viewGroup, rect, this.l);
        int[] iArr = this.l;
        return z.a(view, xVar2, rect.left, rect.top, translationX + iArr[0], translationY + iArr[1], translationX, translationY, f5721a, this);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void a(x xVar) {
        super.a(xVar);
        d(xVar);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void b(x xVar) {
        super.b(xVar);
        d(xVar);
    }
}
