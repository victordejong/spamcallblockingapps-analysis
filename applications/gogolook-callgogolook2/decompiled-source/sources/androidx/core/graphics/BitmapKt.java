package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Point;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a#\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0086\b\u001a7\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nH\u0087\b\u001a&\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0086\b\u001a\u0015\u0010\u0011\u001a\u00020\b*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0013H\u0086\n\u001a\u0015\u0010\u0011\u001a\u00020\b*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0014H\u0086\n\u001a\u001d\u0010\u0015\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0086\n\u001a'\u0010\u0018\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\bH\u0086\b\u001a'\u0010\u001a\u001a\u00020\u000f*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\b\b\u0001\u0010\u001b\u001a\u00020\u0003H\u0086\n¨\u0006\u001c"}, m815d2 = {"createBitmap", "Landroid/graphics/Bitmap;", "width", "", "height", "config", "Landroid/graphics/Bitmap$Config;", "hasAlpha", "", "colorSpace", "Landroid/graphics/ColorSpace;", "applyCanvas", "block", "Lkotlin/Function1;", "Landroid/graphics/Canvas;", "", "Lkotlin/ExtensionFunctionType;", "contains", "p", "Landroid/graphics/Point;", "Landroid/graphics/PointF;", "get", "x", "y", "scale", "filter", "set", TtmlNode.ATTR_TTS_COLOR, "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/BitmapKt.class */
public final class BitmapKt {
    public static final Bitmap applyCanvas(Bitmap bitmap, AbstractC15118l<? super Canvas, C14989s> lVar) {
        C15149k.m377b(bitmap, "$this$applyCanvas");
        C15149k.m377b(lVar, "block");
        lVar.invoke(new Canvas(bitmap));
        return bitmap;
    }

    public static final boolean contains(Bitmap bitmap, Point point) {
        int i;
        C15149k.m377b(bitmap, "$this$contains");
        C15149k.m377b(point, "p");
        int i2 = point.x;
        return i2 >= 0 && i2 < bitmap.getWidth() && (i = point.y) >= 0 && i < bitmap.getHeight();
    }

    public static final boolean contains(Bitmap bitmap, PointF pointF) {
        C15149k.m377b(bitmap, "$this$contains");
        C15149k.m377b(pointF, "p");
        float f = pointF.x;
        float f2 = 0;
        boolean z = false;
        if (f >= f2) {
            z = false;
            if (f < bitmap.getWidth()) {
                float f3 = pointF.y;
                z = false;
                if (f3 >= f2) {
                    z = false;
                    if (f3 < bitmap.getHeight()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public static final Bitmap createBitmap(int i, int i2, Bitmap.Config config) {
        C15149k.m377b(config, "config");
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, config);
        C15149k.m383a((Object) createBitmap, "Bitmap.createBitmap(width, height, config)");
        return createBitmap;
    }

    @RequiresApi(26)
    public static final Bitmap createBitmap(int i, int i2, Bitmap.Config config, boolean z, ColorSpace colorSpace) {
        C15149k.m377b(config, "config");
        C15149k.m377b(colorSpace, "colorSpace");
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, config, z, colorSpace);
        C15149k.m383a((Object) createBitmap, "Bitmap.createBitmap(widt…ig, hasAlpha, colorSpace)");
        return createBitmap;
    }

    public static /* synthetic */ Bitmap createBitmap$default(int i, int i2, Bitmap.Config config, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        C15149k.m377b(config, "config");
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, config);
        C15149k.m383a((Object) createBitmap, "Bitmap.createBitmap(width, height, config)");
        return createBitmap;
    }

    public static /* synthetic */ Bitmap createBitmap$default(int i, int i2, Bitmap.Config config, boolean z, ColorSpace colorSpace, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        if ((i3 & 8) != 0) {
            z = true;
        }
        if ((i3 & 16) != 0) {
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            C15149k.m383a((Object) colorSpace, "ColorSpace.get(ColorSpace.Named.SRGB)");
        }
        C15149k.m377b(config, "config");
        C15149k.m377b(colorSpace, "colorSpace");
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, config, z, colorSpace);
        C15149k.m383a((Object) createBitmap, "Bitmap.createBitmap(widt…ig, hasAlpha, colorSpace)");
        return createBitmap;
    }

    public static final int get(Bitmap bitmap, int i, int i2) {
        C15149k.m377b(bitmap, "$this$get");
        return bitmap.getPixel(i, i2);
    }

    public static final Bitmap scale(Bitmap bitmap, int i, int i2, boolean z) {
        C15149k.m377b(bitmap, "$this$scale");
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, z);
        C15149k.m383a((Object) createScaledBitmap, "Bitmap.createScaledBitma…s, width, height, filter)");
        return createScaledBitmap;
    }

    public static /* synthetic */ Bitmap scale$default(Bitmap bitmap, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z = true;
        }
        C15149k.m377b(bitmap, "$this$scale");
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, z);
        C15149k.m383a((Object) createScaledBitmap, "Bitmap.createScaledBitma…s, width, height, filter)");
        return createScaledBitmap;
    }

    public static final void set(Bitmap bitmap, int i, int i2, @ColorInt int i3) {
        C15149k.m377b(bitmap, "$this$set");
        bitmap.setPixel(i, i2, i3);
    }
}
