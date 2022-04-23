package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.AbstractC0053Px;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\u001a*\u0010��\u001a\u00020\u0001*\u00020\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0003\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a2\u0010\b\u001a\u00020\t*\u00020\u00022\b\b\u0003\u0010\n\u001a\u00020\u00042\b\b\u0003\u0010\u000b\u001a\u00020\u00042\b\b\u0003\u0010\f\u001a\u00020\u00042\b\b\u0003\u0010\r\u001a\u00020\u0004¨\u0006\u000e"}, m815d2 = {"toBitmap", "Landroid/graphics/Bitmap;", "Landroid/graphics/drawable/Drawable;", "width", "", "height", "config", "Landroid/graphics/Bitmap$Config;", "updateBounds", "", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/DrawableKt.class */
public final class DrawableKt {
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
        if (r0.getConfig() == r9) goto L_0x002a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.graphics.Bitmap toBitmap(android.graphics.drawable.Drawable r6, @androidx.annotation.AbstractC0053Px int r7, @androidx.annotation.AbstractC0053Px int r8, android.graphics.Bitmap.Config r9) {
        /*
            r0 = r6
            java.lang.String r1 = "$this$toBitmap"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r6
            boolean r0 = r0 instanceof android.graphics.drawable.BitmapDrawable
            if (r0 == 0) goto L_0x005f
            r0 = r9
            if (r0 == 0) goto L_0x002a
            r0 = r6
            android.graphics.drawable.BitmapDrawable r0 = (android.graphics.drawable.BitmapDrawable) r0
            android.graphics.Bitmap r0 = r0.getBitmap()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "bitmap"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r10
            android.graphics.Bitmap$Config r0 = r0.getConfig()
            r1 = r9
            if (r0 != r1) goto L_0x005f
        L_0x002a:
            r0 = r6
            android.graphics.drawable.BitmapDrawable r0 = (android.graphics.drawable.BitmapDrawable) r0
            r6 = r0
            r0 = r7
            r1 = r6
            int r1 = r1.getIntrinsicWidth()
            if (r0 != r1) goto L_0x004c
            r0 = r8
            r1 = r6
            int r1 = r1.getIntrinsicHeight()
            if (r0 != r1) goto L_0x004c
            r0 = r6
            android.graphics.Bitmap r0 = r0.getBitmap()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "bitmap"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r6
            return r0
        L_0x004c:
            r0 = r6
            android.graphics.Bitmap r0 = r0.getBitmap()
            r1 = r7
            r2 = r8
            r3 = 1
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createScaledBitmap(r0, r1, r2, r3)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Bitmap.createScaledBitma…map, width, height, true)"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r6
            return r0
        L_0x005f:
            r0 = r6
            android.graphics.Rect r0 = r0.getBounds()
            r10 = r0
            r0 = r10
            int r0 = r0.left
            r11 = r0
            r0 = r10
            int r0 = r0.top
            r12 = r0
            r0 = r10
            int r0 = r0.right
            r13 = r0
            r0 = r10
            int r0 = r0.bottom
            r14 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0088
            goto L_0x008c
        L_0x0088:
            android.graphics.Bitmap$Config r0 = android.graphics.Bitmap.Config.ARGB_8888
            r9 = r0
        L_0x008c:
            r0 = r7
            r1 = r8
            r2 = r9
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r0, r1, r2)
            r9 = r0
            r0 = r6
            r1 = 0
            r2 = 0
            r3 = r7
            r4 = r8
            r0.setBounds(r1, r2, r3, r4)
            r0 = r6
            android.graphics.Canvas r1 = new android.graphics.Canvas
            r2 = r1
            r3 = r9
            r2.<init>(r3)
            r0.draw(r1)
            r0 = r6
            r1 = r11
            r2 = r12
            r3 = r13
            r4 = r14
            r0.setBounds(r1, r2, r3, r4)
            r0 = r9
            java.lang.String r1 = "bitmap"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.DrawableKt.toBitmap(android.graphics.drawable.Drawable, int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    public static /* synthetic */ Bitmap toBitmap$default(Drawable drawable, int i, int i2, Bitmap.Config config, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = drawable.getIntrinsicWidth();
        }
        if ((i3 & 2) != 0) {
            i2 = drawable.getIntrinsicHeight();
        }
        if ((i3 & 4) != 0) {
            config = null;
        }
        return toBitmap(drawable, i, i2, config);
    }

    public static final void updateBounds(Drawable drawable, @AbstractC0053Px int i, @AbstractC0053Px int i2, @AbstractC0053Px int i3, @AbstractC0053Px int i4) {
        C15149k.m377b(drawable, "$this$updateBounds");
        drawable.setBounds(i, i2, i3, i4);
    }

    public static /* synthetic */ void updateBounds$default(Drawable drawable, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = drawable.getBounds().left;
        }
        if ((i5 & 2) != 0) {
            i2 = drawable.getBounds().top;
        }
        if ((i5 & 4) != 0) {
            i3 = drawable.getBounds().right;
        }
        if ((i5 & 8) != 0) {
            i4 = drawable.getBounds().bottom;
        }
        updateBounds(drawable, i, i2, i3, i4);
    }
}
