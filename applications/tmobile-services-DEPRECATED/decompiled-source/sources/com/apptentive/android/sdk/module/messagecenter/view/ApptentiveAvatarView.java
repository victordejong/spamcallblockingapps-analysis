package com.apptentive.android.sdk.module.messagecenter.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.metric.MetricModule;
import java.io.IOException;
import java.lang.Thread;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView.class */
public class ApptentiveAvatarView extends ImageView {
    Bitmap avatar;
    int avatarHeight;
    int avatarWidth;
    int borderColor;
    Paint borderPaint;
    float borderRadius;
    float borderSpace;
    float borderWidth;
    float containerX;
    float containerY;
    float imageRadius;
    int paddingBottom;
    int paddingLeft;
    int paddingRight;
    int paddingTop;
    BitmapShader shader;
    Matrix shaderMatrix;
    Paint shaderPaint;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apptentive.android.sdk.module.messagecenter.view.ApptentiveAvatarView$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$1.class */
    public class C08541 extends Thread {
        final /* synthetic */ ApptentiveAvatarView this$0;
        final /* synthetic */ String val$urlString;

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            final Bitmap bitmap;
            try {
                bitmap = BitmapFactory.decodeStream(new URL(this.val$urlString).openStream());
            } catch (IOException e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.UTIL, e, "Error opening avatar from URL: \"%s\"", this.val$urlString);
                this.this$0.logException(e);
                bitmap = null;
            }
            if (bitmap != null) {
                this.this$0.post(new Runnable() { // from class: com.apptentive.android.sdk.module.messagecenter.view.ApptentiveAvatarView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C08541.this.this$0.setImageBitmap(bitmap);
                    }
                });
            }
        }
    }

    /* renamed from: com.apptentive.android.sdk.module.messagecenter.view.ApptentiveAvatarView$2 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$2.class */
    class C08562 implements Thread.UncaughtExceptionHandler {
        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            ApptentiveLog.m15634w(ApptentiveLogTag.MESSAGES, th, "UncaughtException in AvatarView.", new Object[0]);
            MetricModule.sendError(th, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView$ImageScale.class */
    public class ImageScale {
        public float deltaX;
        public float deltaY;
        public float scale;

        private ImageScale(ApptentiveAvatarView apptentiveAvatarView) {
            this.scale = 1.0f;
            this.deltaX = 0.0f;
            this.deltaY = 0.0f;
        }

        /* synthetic */ ImageScale(ApptentiveAvatarView apptentiveAvatarView, C08541 r5) {
            this(apptentiveAvatarView);
        }

        public String toString() {
            return String.format("scale = %f, deltaX = %f, deltaY = %f", Float.valueOf(this.scale), Float.valueOf(this.deltaX), Float.valueOf(this.deltaY));
        }
    }

    public ApptentiveAvatarView(Context context) {
        super(context);
    }

    public ApptentiveAvatarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0726R.attr.apptentiveAvatarStyle);
    }

    /* JADX WARN: Finally extract failed */
    public ApptentiveAvatarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources.Theme theme;
        if (!isInEditMode() && attributeSet != null && (theme = context.getTheme()) != null) {
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C0726R.styleable.ApptentiveAvatarView, i, 0);
            try {
                this.borderWidth = obtainStyledAttributes.getDimension(C0726R.styleable.ApptentiveAvatarView_apptentive_borderWidth, 0.0f);
                this.borderSpace = obtainStyledAttributes.getDimensionPixelSize(C0726R.styleable.ApptentiveAvatarView_apptentive_borderSpace, 0);
                this.borderColor = obtainStyledAttributes.getColor(C0726R.styleable.ApptentiveAvatarView_apptentive_borderColor, -16777216);
                obtainStyledAttributes.recycle();
                setup();
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        }
    }

    private Bitmap getBitmapFromDrawable(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap createBitmap = drawable instanceof ColorDrawable ? Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (OutOfMemoryError e) {
            ApptentiveLog.m15634w(ApptentiveLogTag.UTIL, e, "Error creating bitmap.", new Object[0]);
            logException(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logException(Throwable th) {
        ErrorMetrics.logException(th);
    }

    private ImageScale scaleImage(int i, int i2, int i3, int i4) {
        ImageScale imageScale = new ImageScale(this, null);
        if (i * i4 > i2 * i3) {
            float f = i3 / i;
            imageScale.scale = f;
            imageScale.deltaY = (i4 - (f * i2)) / 2.0f;
        } else {
            float f2 = i4 / i2;
            imageScale.scale = f2;
            imageScale.deltaX = (i3 - (f2 * i)) / 2.0f;
        }
        return imageScale;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (getDrawable() != null) {
            canvas.translate(this.paddingLeft, this.paddingTop);
            if (this.borderWidth > 0.0f) {
                canvas.drawCircle(this.containerX / 2.0f, this.containerY / 2.0f, this.borderRadius, this.borderPaint);
            }
            canvas.drawCircle(this.containerX / 2.0f, this.containerY / 2.0f, this.imageRadius, this.shaderPaint);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        setup();
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        this.avatar = bitmap;
        setup();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        this.avatar = getBitmapFromDrawable(drawable);
        setup();
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        this.avatar = getBitmapFromDrawable(getDrawable());
        setup();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        this.avatar = getBitmapFromDrawable(getDrawable());
        setup();
    }

    protected void setup() {
        synchronized (this) {
            if (this.avatar != null) {
                this.paddingLeft = getPaddingLeft();
                this.paddingRight = getPaddingRight();
                this.paddingTop = getPaddingTop();
                this.paddingBottom = getPaddingBottom();
                this.containerX = (getWidth() - this.paddingLeft) - this.paddingRight;
                this.containerY = (getHeight() - this.paddingTop) - this.paddingBottom;
                this.avatarWidth = this.avatar.getWidth();
                this.avatarHeight = this.avatar.getHeight();
                this.shader = new BitmapShader(this.avatar, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
                if (this.shaderPaint == null) {
                    this.shaderPaint = new Paint(1);
                }
                this.shaderPaint.setShader(this.shader);
                if (this.borderPaint == null) {
                    Paint paint = new Paint(1);
                    this.borderPaint = paint;
                    paint.setStyle(Paint.Style.STROKE);
                }
                this.borderPaint.setColor(this.borderColor);
                this.borderPaint.setStrokeWidth(this.borderWidth);
                float min = (Math.min(this.containerX, this.containerY) - this.borderWidth) / 2.0f;
                this.borderRadius = min;
                float f = this.containerX;
                float f2 = this.borderWidth;
                float f3 = this.containerY;
                float f4 = this.borderWidth;
                float f5 = this.borderWidth / 2.0f;
                this.imageRadius = (min - f5) - this.borderSpace;
                if (this.shaderMatrix == null) {
                    this.shaderMatrix = new Matrix();
                }
                this.shaderMatrix.set(null);
                ImageScale scaleImage = scaleImage(this.avatarWidth, this.avatarHeight, (int) (f - f2), (int) (f3 - f4));
                this.shaderMatrix.setScale(scaleImage.scale, scaleImage.scale);
                this.shaderMatrix.postTranslate(scaleImage.deltaX + 0.5f + f5, scaleImage.deltaY + 0.5f + f5);
                this.shader.setLocalMatrix(this.shaderMatrix);
                invalidate();
            }
        }
    }
}
