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
/* renamed from: androidx.j.r */
/* loaded from: classes-dex2jar.jar:androidx/j/r.class */
class C0822r {

    /* renamed from: a */
    private static final boolean f2819a;

    /* renamed from: b */
    private static final boolean f2820b;

    /* renamed from: c */
    private static final boolean f2821c;

    static {
        f2819a = Build.VERSION.SDK_INT >= 19;
        f2820b = Build.VERSION.SDK_INT >= 18;
        f2821c = Build.VERSION.SDK_INT >= 28;
    }

    /* renamed from: a */
    public static Animator m19345a(Animator animator, Animator animator2) {
        if (animator != null) {
            if (animator2 == null) {
                animator2 = animator;
            } else {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(animator, animator2);
                animator2 = animatorSet;
            }
        }
        return animator2;
    }

    /* renamed from: a */
    private static Bitmap m19344a(View view, Matrix matrix, RectF rectF, ViewGroup viewGroup) {
        boolean z;
        boolean z2;
        ViewGroup viewGroup2;
        Bitmap bitmap;
        int i = 0;
        if (f2819a) {
            z2 = !view.isAttachedToWindow();
            z = viewGroup == null ? false : viewGroup.isAttachedToWindow();
        } else {
            z = false;
            z2 = false;
        }
        if (!f2820b || !z2) {
            viewGroup2 = null;
        } else if (!z) {
            bitmap = null;
            return bitmap;
        } else {
            viewGroup2 = (ViewGroup) view.getParent();
            i = viewGroup2.indexOfChild(view);
            viewGroup.getOverlay().add(view);
        }
        int round = Math.round(rectF.width());
        int round2 = Math.round(rectF.height());
        Bitmap bitmap2 = null;
        if (round > 0) {
            bitmap2 = null;
            if (round2 > 0) {
                float min = Math.min(1.0f, 1048576.0f / (round * round2));
                int round3 = Math.round(round * min);
                int round4 = Math.round(round2 * min);
                matrix.postTranslate(-rectF.left, -rectF.top);
                matrix.postScale(min, min);
                if (f2821c) {
                    Picture picture = new Picture();
                    Canvas beginRecording = picture.beginRecording(round3, round4);
                    beginRecording.concat(matrix);
                    view.draw(beginRecording);
                    picture.endRecording();
                    bitmap2 = Bitmap.createBitmap(picture);
                } else {
                    bitmap2 = Bitmap.createBitmap(round3, round4, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmap2);
                    canvas.concat(matrix);
                    view.draw(canvas);
                }
            }
        }
        bitmap = bitmap2;
        if (f2820b) {
            bitmap = bitmap2;
            if (z2) {
                viewGroup.getOverlay().remove(view);
                viewGroup2.addView(view, i);
                bitmap = bitmap2;
            }
        }
        return bitmap;
    }

    /* renamed from: a */
    public static View m19343a(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        C0762ac.m19496a(view, matrix);
        C0762ac.m19494b(viewGroup, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int round = Math.round(rectF.left);
        int round2 = Math.round(rectF.top);
        int round3 = Math.round(rectF.right);
        int round4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap m19344a = m19344a(view, matrix, rectF, viewGroup);
        if (m19344a != null) {
            imageView.setImageBitmap(m19344a);
        }
        imageView.measure(View.MeasureSpec.makeMeasureSpec(round3 - round, 1073741824), View.MeasureSpec.makeMeasureSpec(round4 - round2, 1073741824));
        imageView.layout(round, round2, round3, round4);
        return imageView;
    }
}
