package com.telguarder.helpers.p022ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ViewCompat;
import androidx.palette.graphics.Palette;
import com.telguarder.C2083R;
/* renamed from: com.telguarder.helpers.ui.CrescentoImageView */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/CrescentoImageView.class */
public class CrescentoImageView extends AppCompatImageView {
    Bitmap mBitmap;
    Path mClipPath;
    Context mContext;
    Paint mPaint;
    private PorterDuffXfermode porterDuffXfermode;
    Paint shaderPaint;
    Paint tintPaint;
    int width = 0;
    int height = 0;
    int gravity = 0;
    int curvatureHeight = 50;
    int tintAmount = 0;
    int tintMode = 1;
    int tintColor = 0;
    int gradientDirection = 0;
    int gradientStartColor = 0;
    int gradientEndColor = 0;
    int curvatureDirection = 0;

    /* renamed from: com.telguarder.helpers.ui.CrescentoImageView$CurvatureDirection */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/CrescentoImageView$CurvatureDirection.class */
    public static class CurvatureDirection {
        static final int INWARD = 1;
        static final int OUTWARD = 0;
    }

    /* renamed from: com.telguarder.helpers.ui.CrescentoImageView$Gradient */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/CrescentoImageView$Gradient.class */
    public static class Gradient {
        static final int BOTTOM_TO_TOP = 1;
        static final int LEFT_TO_RIGHT = 2;
        static final int RIGHT_TO_LEFT = 3;
        static final int TOP_TO_BOTTOM = 0;
    }

    /* renamed from: com.telguarder.helpers.ui.CrescentoImageView$Gravity */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/CrescentoImageView$Gravity.class */
    public static class Gravity {
        static final int BOTTOM = 1;
        static final int TOP = 0;
    }

    /* renamed from: com.telguarder.helpers.ui.CrescentoImageView$TintMode */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/CrescentoImageView$TintMode.class */
    public static class TintMode {
        static final int AUTOMATIC = 0;
        static final int MANUAL = 1;
    }

    public CrescentoImageView(Context context) {
        super(context);
        init(context, null);
    }

    public CrescentoImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    private int getDpForPixel(int i) {
        return (int) TypedValue.applyDimension(1, i, this.mContext.getResources().getDisplayMetrics());
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.mContext = context;
        this.porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setColor(-1);
        this.shaderPaint = new Paint(1);
        this.mClipPath = new Path();
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, C2083R.styleable.CrescentoImageView, 0, 0);
        if (obtainStyledAttributes.hasValue(3)) {
            this.curvatureHeight = (int) obtainStyledAttributes.getDimension(3, getDpForPixel(this.curvatureHeight));
        }
        if (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.getInt(0, 0) <= 255 && obtainStyledAttributes.getInt(0, 0) >= 0) {
            this.tintAmount = obtainStyledAttributes.getInt(0, 0);
        }
        if (obtainStyledAttributes.hasValue(8)) {
            if (obtainStyledAttributes.getInt(8, 0) == 1) {
                this.gravity = 1;
            } else {
                this.gravity = 0;
            }
        }
        if (obtainStyledAttributes.hasValue(2)) {
            if (obtainStyledAttributes.getInt(2, 0) == 0) {
                this.tintMode = 0;
            } else {
                this.tintMode = 1;
            }
        }
        if (obtainStyledAttributes.hasValue(5)) {
            this.gradientDirection = obtainStyledAttributes.getInt(5, 0);
        }
        this.gradientStartColor = obtainStyledAttributes.getColor(7, 0);
        this.gradientEndColor = obtainStyledAttributes.getColor(6, 0);
        if (obtainStyledAttributes.hasValue(1)) {
            this.tintColor = obtainStyledAttributes.getColor(1, 0);
        }
        this.curvatureDirection = obtainStyledAttributes.getInt(4, 0);
        obtainStyledAttributes.recycle();
        if (getDrawable() != null) {
            Bitmap bitmap = ((BitmapDrawable) getDrawable()).getBitmap();
            this.mBitmap = bitmap;
            pickColorFromBitmap(bitmap);
        } else if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
        } else {
            Bitmap bitmap2 = ((BitmapDrawable) getBackground()).getBitmap();
            this.mBitmap = bitmap2;
            pickColorFromBitmap(bitmap2);
        }
    }

    private void pickColorFromBitmap(Bitmap bitmap) {
        Palette.from(bitmap).generate(new Palette.PaletteAsyncListener() { // from class: com.telguarder.helpers.ui.CrescentoImageView.1
            @Override // androidx.palette.graphics.Palette.PaletteAsyncListener
            public void onGenerated(Palette palette) {
                if (CrescentoImageView.this.tintMode != 0) {
                    CrescentoImageView.this.tintPaint = new Paint(1);
                    CrescentoImageView.this.tintPaint.setColor(CrescentoImageView.this.tintColor);
                    CrescentoImageView.this.tintPaint.setAlpha(CrescentoImageView.this.tintAmount);
                    return;
                }
                CrescentoImageView.this.tintPaint = new Paint(1);
                if (palette.getDarkMutedColor(0) != 0) {
                    System.out.println(palette.getMutedColor(0));
                    Paint paint = CrescentoImageView.this.tintPaint;
                    paint.setColor(Color.parseColor("#" + Math.abs(palette.getDarkVibrantColor(0))));
                } else if (palette.getDarkVibrantColor(0) != 0) {
                    System.out.println(palette.getMutedColor(0));
                    Paint paint2 = CrescentoImageView.this.tintPaint;
                    paint2.setColor(Color.parseColor("#" + Math.abs(palette.getDarkMutedColor(0))));
                } else {
                    CrescentoImageView.this.tintPaint.setColor(-1);
                }
                CrescentoImageView.this.tintPaint.setAlpha(CrescentoImageView.this.tintAmount);
            }
        });
    }

    @Override // android.view.View
    public ViewOutlineProvider getOutlineProvider() {
        return new ViewOutlineProvider() { // from class: com.telguarder.helpers.ui.CrescentoImageView.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                try {
                    outline.setConvexPath(PathProvider.getOutlinePath(CrescentoImageView.this.width, CrescentoImageView.this.height, CrescentoImageView.this.curvatureHeight, CrescentoImageView.this.curvatureDirection, CrescentoImageView.this.gravity));
                } catch (Exception e) {
                    Log.d("Outline Path", e.getMessage());
                }
            }
        };
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int saveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null);
        super.onDraw(canvas);
        this.mPaint.setXfermode(this.porterDuffXfermode);
        Paint paint = this.tintPaint;
        if (paint != null) {
            canvas.drawColor(paint.getColor());
        }
        this.shaderPaint.setShader(GradientProvider.getShader(this.gradientStartColor, this.gradientEndColor, this.gradientDirection, canvas.getWidth(), canvas.getHeight()));
        canvas.drawPaint(this.shaderPaint);
        canvas.drawPath(this.mClipPath, this.mPaint);
        canvas.restoreToCount(saveLayer);
        this.mPaint.setXfermode(null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.width = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.height = measuredHeight;
        this.mClipPath = PathProvider.getClipPath(this.width, measuredHeight, this.curvatureHeight, this.curvatureDirection, this.gravity);
        ViewCompat.setElevation(this, ViewCompat.getElevation(this));
        try {
            setOutlineProvider(getOutlineProvider());
        } catch (Exception e) {
            Log.d("CRESCENTO_IMAGE_VIEW", e.getMessage());
        }
    }

    public void setCurvature(int i) {
        this.curvatureHeight = getDpForPixel(i);
    }

    public void setCurvatureDirection(int i) {
        this.curvatureDirection = i;
    }

    public void setGradientDirection(int i) {
        this.gradientDirection = i;
    }

    public void setGradientEndColor(int i) {
        this.gradientEndColor = i;
    }

    public void setGradientStartColor(int i) {
        this.gradientStartColor = i;
    }

    public void setTintAmount(int i) {
        this.tintAmount = i;
    }

    public void setTintColor(int i) {
        this.tintColor = i;
    }

    public void setTintMode(int i) {
        this.tintMode = i;
    }
}
