package androidx.p045j;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.j.s */
/* loaded from: classes-dex2jar.jar:androidx/j/s.class */
class C0854s {

    /* renamed from: a */
    private static final boolean f2694a;

    /* renamed from: b */
    private static final boolean f2695b;

    /* renamed from: c */
    private static final boolean f2696c;

    static {
        f2694a = Build.VERSION.SDK_INT >= 19;
        f2695b = Build.VERSION.SDK_INT >= 18;
        f2696c = Build.VERSION.SDK_INT >= 28;
    }

    /* renamed from: a */
    public static Animator m5222a(Animator animator, Animator animator2) {
        if (animator == null) {
            return animator2;
        }
        if (animator2 == null) {
            return animator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animator, animator2);
        return animatorSet;
    }

    /* renamed from: a */
    private static Bitmap m5221a(View view, Matrix matrix, RectF rectF, ViewGroup viewGroup) {
        boolean z;
        boolean z2;
        ViewGroup viewGroup2;
        int i = 0;
        if (f2694a) {
            z = !view.isAttachedToWindow();
            z2 = viewGroup == null ? false : viewGroup.isAttachedToWindow();
        } else {
            z = false;
            z2 = false;
        }
        if (!f2695b || !z) {
            viewGroup2 = null;
        } else if (!z2) {
            return null;
        } else {
            viewGroup2 = (ViewGroup) view.getParent();
            i = viewGroup2.indexOfChild(view);
            viewGroup.getOverlay().add(view);
        }
        int round = Math.round(rectF.width());
        int round2 = Math.round(rectF.height());
        Bitmap bitmap = null;
        if (round > 0) {
            bitmap = null;
            if (round2 > 0) {
                float min = Math.min(1.0f, 1048576.0f / (round * round2));
                int round3 = Math.round(round * min);
                int round4 = Math.round(round2 * min);
                matrix.postTranslate(-rectF.left, -rectF.top);
                matrix.postScale(min, min);
                if (f2696c) {
                    Picture picture = new Picture();
                    Canvas beginRecording = picture.beginRecording(round3, round4);
                    beginRecording.concat(matrix);
                    view.draw(beginRecording);
                    picture.endRecording();
                    bitmap = Bitmap.createBitmap(picture);
                } else {
                    bitmap = Bitmap.createBitmap(round3, round4, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmap);
                    canvas.concat(matrix);
                    view.draw(canvas);
                }
            }
        }
        if (f2695b && z) {
            viewGroup.getOverlay().remove(view);
            viewGroup2.addView(view, i);
        }
        return bitmap;
    }

    /* renamed from: a */
    public static View m5220a(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        C0794ae.m5334a(view, matrix);
        C0794ae.m5332b(viewGroup, matrix);
        RectF rectF = new RectF(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int round = Math.round(rectF.left);
        int round2 = Math.round(rectF.top);
        int round3 = Math.round(rectF.right);
        int round4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap m5221a = m5221a(view, matrix, rectF, viewGroup);
        if (m5221a != null) {
            imageView.setImageBitmap(m5221a);
        }
        imageView.measure(View.MeasureSpec.makeMeasureSpec(round3 - round, 1073741824), View.MeasureSpec.makeMeasureSpec(round4 - round2, 1073741824));
        imageView.layout(round, round2, round3, round4);
        return imageView;
    }
}
