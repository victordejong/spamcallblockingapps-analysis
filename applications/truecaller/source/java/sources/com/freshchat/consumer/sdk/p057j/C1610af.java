package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import com.freshchat.consumer.sdk.FreshchatImageLoader;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import java.text.SimpleDateFormat;
import java.util.Locale;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: com.freshchat.consumer.sdk.j.af */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/af.class */
public class C1610af {

    /* renamed from: iy */
    private static final SimpleDateFormat f4366iy = new SimpleDateFormat("yyyyMMdd_HHmmss_SSS", Locale.US);

    /* renamed from: kZ */
    private static FreshchatImageLoader f4367kZ;

    /* renamed from: a */
    private static Bitmap m40310a(Context context, VectorDrawable vectorDrawable, int i) {
        if (vectorDrawable == null) {
            return null;
        }
        try {
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            vectorDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            vectorDrawable.draw(canvas);
            return createBitmap;
        } catch (Exception e) {
            C1723q.m39823a(e);
            return null;
        }
    }

    /* renamed from: a */
    public static Bitmap m40309a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        Bitmap bitmap2 = null;
        try {
            int min = Math.min(bitmap.getWidth(), bitmap.getHeight());
            int width = (bitmap.getWidth() - min) / 2;
            int height = (bitmap.getHeight() - min) / 2;
            Bitmap.Config config = bitmap.getConfig();
            Bitmap.Config config2 = config;
            if (config == null) {
                config2 = Bitmap.Config.ARGB_8888;
            }
            Bitmap createBitmap = Bitmap.createBitmap(min, min, config2);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            if (width != 0 || height != 0) {
                Matrix matrix = new Matrix();
                matrix.setTranslate(-width, -height);
                bitmapShader.setLocalMatrix(matrix);
            }
            paint.setShader(bitmapShader);
            paint.setAntiAlias(true);
            float f = min / 2.0f;
            bitmap2 = createBitmap;
            canvas.drawCircle(f, f, f, paint);
            bitmap2 = createBitmap;
        } catch (Exception e) {
            C1613ai.m40283e("FRESHCHAT", EnumC1464c.ERROR_WHILE_CROPPING.toString());
            C1723q.m39823a(e);
        }
        return bitmap2;
    }

    /* renamed from: a */
    public static void m40308a(FreshchatImageLoader freshchatImageLoader) {
        f4367kZ = freshchatImageLoader;
    }

    /* renamed from: aG */
    public static int m40307aG(String str) {
        C1602ac c1602ac;
        try {
            c1602ac = new C1602ac(str);
        } catch (Exception e) {
            C1613ai.m40283e("FRESHCHAT_WARNING", e.toString());
            c1602ac = null;
        }
        int i = 0;
        if (c1602ac != null) {
            int attributeInt = c1602ac.getAttributeInt("Orientation", 1);
            i = attributeInt != 3 ? attributeInt != 6 ? attributeInt != 8 ? 0 : 270 : 90 : 180;
        }
        return i;
    }

    /* renamed from: b */
    public static Bitmap m40306b(Context context, int i, int i2) {
        try {
            Object obj = C26467a.f74235a;
            Drawable m1789b = C26467a.C26470c.m1789b(context, i);
            if (C1630aw.m40197eZ() && (m1789b instanceof VectorDrawable)) {
                return m40310a(context, (VectorDrawable) m1789b, i2);
            }
            if (!(m1789b instanceof BitmapDrawable)) {
                return null;
            }
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i2);
            return Bitmap.createScaledBitmap(((BitmapDrawable) m1789b).getBitmap(), dimensionPixelSize, dimensionPixelSize, false);
        } catch (Exception e) {
            C1723q.m39823a(e);
            return null;
        }
    }

    /* renamed from: eK */
    public static FreshchatImageLoader m40305eK() {
        if (f4367kZ == null) {
            f4367kZ = C1728t.m39814eL();
        }
        return f4367kZ;
    }

    /* renamed from: fW */
    public static boolean m40304fW() {
        return f4367kZ != null;
    }

    /* renamed from: h */
    public static int m40303h(Context context, int i) {
        if (context == null || i <= 0) {
            return 0;
        }
        return (int) ((i * context.getResources().getDisplayMetrics().density) + 0.5d);
    }

    /* renamed from: i */
    public static int m40302i(Context context, int i) {
        if (context == null || i <= 0) {
            return 0;
        }
        return Math.round(i / (context.getResources().getDisplayMetrics().densityDpi / 160.0f));
    }
}
