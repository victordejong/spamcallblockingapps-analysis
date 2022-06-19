package com.nostra13.universalimageloader.core.display;

import android.graphics.Bitmap;
import android.graphics.ComposeShader;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.display.RoundedBitmapDisplayer;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer.class */
public class RoundedVignetteBitmapDisplayer extends RoundedBitmapDisplayer {

    /* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable.class */
    protected static class RoundedVignetteDrawable extends RoundedBitmapDisplayer.RoundedDrawable {
        RoundedVignetteDrawable(Bitmap bitmap, int i, int i2) {
            super(bitmap, i, i2);
        }

        @Override // com.nostra13.universalimageloader.core.display.RoundedBitmapDisplayer.RoundedDrawable, android.graphics.drawable.Drawable
        public void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            int[] iArr = {0, 0, 2130706432};
            float[] fArr = {0.0f, 0.7f, 1.0f};
            RadialGradient radialGradient = new RadialGradient(this.mRect.centerX(), (this.mRect.centerY() * 1.0f) / 0.7f, 1.3f * this.mRect.centerX(), iArr, fArr, Shader.TileMode.CLAMP);
            Matrix matrix = new Matrix();
            matrix.setScale(1.0f, 0.7f);
            radialGradient.setLocalMatrix(matrix);
            this.paint.setShader(new ComposeShader(this.bitmapShader, radialGradient, PorterDuff.Mode.SRC_OVER));
        }
    }

    public RoundedVignetteBitmapDisplayer(int i, int i2) {
        super(i, i2);
    }

    @Override // com.nostra13.universalimageloader.core.display.RoundedBitmapDisplayer, com.nostra13.universalimageloader.core.display.BitmapDisplayer
    public void display(Bitmap bitmap, ImageAware imageAware, LoadedFrom loadedFrom) {
        if (imageAware instanceof ImageViewAware) {
            imageAware.setImageDrawable(new RoundedVignetteDrawable(bitmap, this.cornerRadius, this.margin));
            return;
        }
        throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
    }
}
