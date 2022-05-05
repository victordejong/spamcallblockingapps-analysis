package androidx.core.util;

import android.util.Size;
import android.util.SizeF;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0087\n\u001a\r\u0010��\u001a\u00020\u0003*\u00020\u0004H\u0087\n\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0087\n\u001a\r\u0010\u0005\u001a\u00020\u0003*\u00020\u0004H\u0087\n¨\u0006\u0006"}, m815d2 = {"component1", "", "Landroid/util/Size;", "", "Landroid/util/SizeF;", "component2", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/util/SizeKt.class */
public final class SizeKt {
    @RequiresApi(21)
    public static final float component1(SizeF sizeF) {
        C15149k.m377b(sizeF, "$this$component1");
        return sizeF.getWidth();
    }

    @RequiresApi(21)
    public static final int component1(Size size) {
        C15149k.m377b(size, "$this$component1");
        return size.getWidth();
    }

    @RequiresApi(21)
    public static final float component2(SizeF sizeF) {
        C15149k.m377b(sizeF, "$this$component2");
        return sizeF.getHeight();
    }

    @RequiresApi(21)
    public static final int component2(Size size) {
        C15149k.m377b(size, "$this$component2");
        return size.getHeight();
    }
}
