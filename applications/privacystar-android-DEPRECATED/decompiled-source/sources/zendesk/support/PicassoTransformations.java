package zendesk.support;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.support.annotation.RestrictTo;
import com.squareup.picasso.Transformation;
import java.util.Locale;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/PicassoTransformations.class */
public class PicassoTransformations {

    /* loaded from: classes3-dex2jar.jar:zendesk/support/PicassoTransformations$BlurTransformation.class */
    private static class BlurTransformation implements Transformation {

        /* renamed from: rs */
        private final RenderScript f1845rs;

        BlurTransformation(Context context) {
            this.f1845rs = RenderScript.create(context);
        }

        @Override // com.squareup.picasso.Transformation
        public String key() {
            return "blur";
        }

        @Override // com.squareup.picasso.Transformation
        public Bitmap transform(Bitmap bitmap) {
            Allocation allocation;
            Throwable th;
            if (Build.VERSION.SDK_INT < 17) {
                return bitmap;
            }
            Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
            ScriptIntrinsicBlur create = ScriptIntrinsicBlur.create(this.f1845rs, Element.U8_4(this.f1845rs));
            Allocation allocation2 = null;
            try {
                allocation = Build.VERSION.SDK_INT >= 18 ? Allocation.createFromBitmap(this.f1845rs, copy, Allocation.MipmapControl.MIPMAP_FULL, 128) : Allocation.createFromBitmap(this.f1845rs, copy, Allocation.MipmapControl.MIPMAP_FULL, 1);
                try {
                    Allocation createTyped = Allocation.createTyped(this.f1845rs, allocation.getType());
                    try {
                        create.setInput(allocation);
                        create.setRadius(25.0f);
                        create.forEach(createTyped);
                        createTyped.copyTo(copy);
                        bitmap.recycle();
                        this.f1845rs.destroy();
                        create.destroy();
                        if (allocation != null) {
                            allocation.destroy();
                        }
                        if (createTyped != null) {
                            createTyped.destroy();
                        }
                        return copy;
                    } catch (Throwable th2) {
                        th = th2;
                        allocation2 = createTyped;
                        bitmap.recycle();
                        this.f1845rs.destroy();
                        create.destroy();
                        if (allocation != null) {
                            allocation.destroy();
                        }
                        if (allocation2 != null) {
                            allocation2.destroy();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                allocation = null;
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/PicassoTransformations$RoundedTransformation.class */
    private static class RoundedTransformation implements Transformation {
        private final int radius;
        private final int strokeColor;
        private final int strokeWidth;

        RoundedTransformation(int i) {
            this(i, 0, -1);
        }

        RoundedTransformation(int i, int i2, int i3) {
            this.radius = i;
            this.strokeColor = i2;
            this.strokeWidth = i3;
        }

        private RectF getMask(int i, int i2, int i3) {
            float f = i3;
            return new RectF(f, f, i - i3, i2 - i3);
        }

        private Paint shapePaint(Bitmap bitmap) {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setShader(new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
            return paint;
        }

        private Paint strokePaint() {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(this.strokeColor);
            return paint;
        }

        @Override // com.squareup.picasso.Transformation
        public String key() {
            return String.format(Locale.US, "rounded-%s-%s-%s", Integer.valueOf(this.radius), Integer.valueOf(this.strokeColor), Integer.valueOf(this.strokeWidth));
        }

        @Override // com.squareup.picasso.Transformation
        public Bitmap transform(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (this.strokeWidth > 0) {
                bitmap2 = bitmap;
                if (!bitmap.isMutable()) {
                    bitmap2 = bitmap.copy(Bitmap.Config.ARGB_8888, true);
                    if (bitmap2 != bitmap) {
                        bitmap.recycle();
                    }
                }
                Canvas canvas = new Canvas(bitmap2);
                Paint strokePaint = strokePaint();
                Path path = new Path();
                path.setFillType(Path.FillType.INVERSE_EVEN_ODD);
                path.addRoundRect(getMask(bitmap2.getWidth(), bitmap2.getHeight(), this.strokeWidth), this.radius, this.radius, Path.Direction.CW);
                canvas.drawPath(path, strokePaint);
            }
            Bitmap createBitmap = Bitmap.createBitmap(bitmap2.getWidth(), bitmap2.getHeight(), Bitmap.Config.ARGB_8888);
            new Canvas(createBitmap).drawRoundRect(getMask(bitmap2.getWidth(), bitmap2.getHeight(), 0), this.radius, this.radius, shapePaint(bitmap2));
            if (bitmap2 != createBitmap) {
                bitmap2.recycle();
            }
            return createBitmap;
        }
    }

    private PicassoTransformations() {
    }

    public static Transformation getBlurTransformation(Context context) {
        return new BlurTransformation(context);
    }

    public static Transformation getRoundWithBorderTransformation(int i, int i2, int i3) {
        return new RoundedTransformation(i, i2, i3);
    }

    public static Transformation getRoundedTransformation(int i) {
        return new RoundedTransformation(i);
    }
}
