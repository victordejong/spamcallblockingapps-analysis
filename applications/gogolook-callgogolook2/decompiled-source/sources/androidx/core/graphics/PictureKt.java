package androidx.core.graphics;

import android.graphics.Canvas;
import android.graphics.Picture;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\u001a6\u0010��\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0086\b¨\u0006\n"}, m815d2 = {"record", "Landroid/graphics/Picture;", "width", "", "height", "block", "Lkotlin/Function1;", "Landroid/graphics/Canvas;", "", "Lkotlin/ExtensionFunctionType;", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/PictureKt.class */
public final class PictureKt {
    public static final Picture record(Picture picture, int i, int i2, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(picture, "$this$record");
        C15149k.m377b(lVar, "block");
        Canvas beginRecording = picture.beginRecording(i, i2);
        try {
            C15149k.m383a((Object) beginRecording, "c");
            lVar.invoke(beginRecording);
            C15148j.m389b(1);
            picture.endRecording();
            C15148j.m390a(1);
            return picture;
        } catch (Throwable th) {
            C15148j.m389b(1);
            picture.endRecording();
            C15148j.m390a(1);
            throw th;
        }
    }
}
