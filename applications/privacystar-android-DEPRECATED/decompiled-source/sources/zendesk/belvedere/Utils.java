package zendesk.belvedere;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.graphics.drawable.DrawableCompat;
import android.support.p001v4.view.ViewCompat;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import com.squareup.picasso.Transformation;
import java.util.Locale;
import zendesk.belvedere.p041ui.C2612R;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/Utils.class */
class Utils {

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/Utils$RoundedTransformation.class */
    private static class RoundedTransformation implements Transformation {
        private final int margin;
        private final int radius;

        RoundedTransformation(int i, int i2) {
            this.radius = i;
            this.margin = i2;
        }

        @Override // com.squareup.picasso.Transformation
        public String key() {
            return String.format(Locale.US, "rounded-%s-%s", Integer.valueOf(this.radius), Integer.valueOf(this.margin));
        }

        @Override // com.squareup.picasso.Transformation
        public Bitmap transform(Bitmap bitmap) {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setShader(new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            new Canvas(createBitmap).drawRoundRect(new RectF(this.margin, this.margin, bitmap.getWidth() - this.margin, bitmap.getHeight() - this.margin), this.radius, this.radius, paint);
            if (bitmap != createBitmap) {
                bitmap.recycle();
            }
            return createBitmap;
        }
    }

    Utils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getThemeColor(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        return typedValue.resourceId == 0 ? typedValue.data : ContextCompat.getColor(context, typedValue.resourceId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void internalSetTint(ImageView imageView, int i) {
        if (imageView != null) {
            Drawable wrap = DrawableCompat.wrap(imageView.getDrawable());
            if (wrap != null) {
                DrawableCompat.setTint(wrap.mutate(), i);
            }
            imageView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isAppAvailable(String str, Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(str, 128).enabled;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Transformation roundTransformation(Context context, int i) {
        return new RoundedTransformation(context.getResources().getDimensionPixelOffset(i), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void showToolbar(View view, boolean z) {
        int i = 8;
        view.findViewById(C2612R.C2615id.image_stream_toolbar).setVisibility(z ? 0 : 8);
        View findViewById = view.findViewById(C2612R.C2615id.image_stream_toolbar_container);
        if (findViewById != null) {
            if (z) {
                i = 0;
            }
            findViewById.setVisibility(i);
        }
    }
}
