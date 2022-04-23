package androidx.core.graphics;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a.\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a.\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\t2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a.\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\n2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001aF\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001aF\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00102\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a0\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001aD\u0010\u0014\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\f2\b\b\u0002\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a&\u0010\u0018\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001aN\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\f2\b\b\u0002\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a:\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b\u001a:\u0010\u001d\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b¨\u0006\u001e"}, m815d2 = {"withClip", "", "Landroid/graphics/Canvas;", "clipPath", "Landroid/graphics/Path;", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "clipRect", "Landroid/graphics/Rect;", "Landroid/graphics/RectF;", TtmlNode.LEFT, "", "top", TtmlNode.RIGHT, "bottom", "", "withMatrix", "matrix", "Landroid/graphics/Matrix;", "withRotation", "degrees", "pivotX", "pivotY", "withSave", "withScale", "x", "y", "withSkew", "withTranslation", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/CanvasKt.class */
public final class CanvasKt {
    public static final void withClip(Canvas canvas, float f, float f2, float f3, float f4, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(canvas, "$this$withClip");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.clipRect(f, f2, f3, f4);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static final void withClip(Canvas canvas, int i, int i2, int i3, int i4, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(canvas, "$this$withClip");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.clipRect(i, i2, i3, i4);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static final void withClip(Canvas canvas, Path path, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(canvas, "$this$withClip");
        C15149k.m377b(path, "clipPath");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.clipPath(path);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static final void withClip(Canvas canvas, Rect rect, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(canvas, "$this$withClip");
        C15149k.m377b(rect, "clipRect");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.clipRect(rect);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static final void withClip(Canvas canvas, RectF rectF, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(canvas, "$this$withClip");
        C15149k.m377b(rectF, "clipRect");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.clipRect(rectF);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static final void withMatrix(Canvas canvas, Matrix matrix, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(canvas, "$this$withMatrix");
        C15149k.m377b(matrix, "matrix");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.concat(matrix);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static /* synthetic */ void withMatrix$default(Canvas canvas, Matrix matrix, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            matrix = new Matrix();
        }
        C15149k.m377b(canvas, "$this$withMatrix");
        C15149k.m377b(matrix, "matrix");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.concat(matrix);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static final void withRotation(Canvas canvas, float f, float f2, float f3, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(canvas, "$this$withRotation");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.rotate(f, f2, f3);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static /* synthetic */ void withRotation$default(Canvas canvas, float f, float f2, float f3, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        C15149k.m377b(canvas, "$this$withRotation");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.rotate(f, f2, f3);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static final void withSave(Canvas canvas, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(canvas, "$this$withSave");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static final void withScale(Canvas canvas, float f, float f2, float f3, float f4, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(canvas, "$this$withScale");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.scale(f, f2, f3, f4);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static /* synthetic */ void withScale$default(Canvas canvas, float f, float f2, float f3, float f4, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        if ((i & 2) != 0) {
            f2 = 1.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        if ((i & 8) != 0) {
            f4 = 0.0f;
        }
        C15149k.m377b(canvas, "$this$withScale");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.scale(f, f2, f3, f4);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static final void withSkew(Canvas canvas, float f, float f2, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(canvas, "$this$withSkew");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.skew(f, f2);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static /* synthetic */ void withSkew$default(Canvas canvas, float f, float f2, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        C15149k.m377b(canvas, "$this$withSkew");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.skew(f, f2);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static final void withTranslation(Canvas canvas, float f, float f2, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(canvas, "$this$withTranslation");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.translate(f, f2);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }

    public static /* synthetic */ void withTranslation$default(Canvas canvas, float f, float f2, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        C15149k.m377b(canvas, "$this$withTranslation");
        C15149k.m377b(lVar, "block");
        int save = canvas.save();
        canvas.translate(f, f2);
        try {
            lVar.invoke(canvas);
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
        } catch (Throwable th) {
            C15148j.m389b(1);
            canvas.restoreToCount(save);
            C15148j.m390a(1);
            throw th;
        }
    }
}
