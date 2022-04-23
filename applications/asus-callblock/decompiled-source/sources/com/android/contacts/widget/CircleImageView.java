package com.android.contacts.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import java.lang.ref.SoftReference;
@SuppressLint({"DrawAllocation"})
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/CircleImageView.class */
public class CircleImageView extends ImageView {
    private static String g = "CircleImageView";
    private Context e;

    /* renamed from: a  reason: collision with root package name */
    private Paint f2187a = new Paint();

    /* renamed from: b  reason: collision with root package name */
    private boolean f2188b = false;
    private int c = -12434878;
    private int d = 0;
    private boolean f = false;
    private SoftReference<Bitmap> h = new SoftReference<>(null);

    public CircleImageView(Context context) {
        super(context);
        this.e = context;
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = context;
    }

    public CircleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = context;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            if (this.f2188b) {
                try {
                    Bitmap bitmap = (Bitmap) new SoftReference(Bitmap.createScaledBitmap((Bitmap) new SoftReference(((BitmapDrawable) drawable).getBitmap()).get(), getMeasuredHeight(), getMeasuredWidth(), true)).get();
                    SoftReference softReference = new SoftReference(Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888));
                    Canvas canvas2 = new Canvas((Bitmap) softReference.get());
                    int i = this.c;
                    Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                    this.f2187a.reset();
                    this.f2187a.setAntiAlias(true);
                    this.f2187a.setFilterBitmap(true);
                    canvas2.drawARGB(0, 0, 0, 0);
                    this.f2187a.setColor(i);
                    int width = bitmap.getWidth();
                    canvas2.drawCircle(width / 2, width / 2, (width / 2) - this.d, this.f2187a);
                    this.f2187a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                    canvas2.drawBitmap(bitmap, rect, rect, this.f2187a);
                    this.f2187a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
                    canvas2.drawCircle(width / 2, width / 2, width / 2, this.f2187a);
                    this.h = new SoftReference<>((Bitmap) softReference.get());
                    Rect rect2 = new Rect(0, 0, this.h.get().getWidth(), this.h.get().getHeight());
                    this.f2187a.reset();
                    this.f2187a.setAntiAlias(true);
                    this.f2187a.setFilterBitmap(true);
                    canvas.drawBitmap(this.h.get(), rect2, rect2, this.f2187a);
                } catch (Exception e) {
                    Log.d(g, "Fail to draw circle image, exception = " + e.toString());
                }
            } else {
                try {
                    Bitmap bitmap2 = (Bitmap) new SoftReference(Bitmap.createScaledBitmap((Bitmap) new SoftReference(((BitmapDrawable) drawable).getBitmap()).get(), getMeasuredHeight(), getMeasuredWidth(), true)).get();
                    SoftReference softReference2 = new SoftReference(Bitmap.createBitmap(bitmap2.getWidth(), bitmap2.getHeight(), Bitmap.Config.ARGB_8888));
                    Canvas canvas3 = new Canvas((Bitmap) softReference2.get());
                    int i2 = this.c;
                    Rect rect3 = new Rect(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
                    this.f2187a.reset();
                    this.f2187a.setAntiAlias(true);
                    this.f2187a.setFilterBitmap(true);
                    canvas3.drawARGB(0, 0, 0, 0);
                    this.f2187a.setColor(i2);
                    int width2 = bitmap2.getWidth();
                    canvas3.drawCircle(width2 / 2, width2 / 2, width2 / 2, this.f2187a);
                    Path path = new Path();
                    path.addCircle(width2 / 2, width2 / 2, width2 / 2, Path.Direction.CCW);
                    canvas3.clipPath(path);
                    canvas3.drawBitmap(bitmap2, rect3, rect3, this.f2187a);
                    this.h = new SoftReference<>((Bitmap) softReference2.get());
                    Rect rect4 = new Rect(0, 0, this.h.get().getWidth(), this.h.get().getHeight());
                    this.f2187a.reset();
                    this.f2187a.setAntiAlias(true);
                    this.f2187a.setFilterBitmap(true);
                    canvas.drawBitmap(this.h.get(), rect4, rect4, this.f2187a);
                } catch (Exception e2) {
                    Log.d(g, "Fail to draw circle image, exception = " + e2.toString());
                }
            }
        }
        if (this.f) {
            SoftReference softReference3 = new SoftReference(Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), Bitmap.Config.ARGB_8888));
            Canvas canvas4 = new Canvas((Bitmap) softReference3.get());
            int i3 = this.c;
            this.f2187a.reset();
            this.f2187a.setAntiAlias(true);
            this.f2187a.setFilterBitmap(true);
            canvas4.drawARGB(0, 0, 0, 0);
            this.f2187a.setColor(i3);
            int measuredWidth = getMeasuredWidth();
            canvas4.drawCircle(measuredWidth / 2, measuredWidth / 2, (float) ((measuredWidth / 2) + 0.5d), this.f2187a);
            this.h = new SoftReference<>((Bitmap) softReference3.get());
            Rect rect5 = new Rect(0, 0, this.h.get().getWidth(), this.h.get().getHeight());
            this.f2187a.reset();
            this.f2187a.setAntiAlias(true);
            this.f2187a.setFilterBitmap(true);
            canvas.drawBitmap(this.h.get(), rect5, rect5, this.f2187a);
        }
    }

    public void setCircleColor(int i) {
        this.c = i;
    }

    public void setCircleRange(int i) {
        this.d = i;
    }

    public void setDimEffect(boolean z) {
        this.f = z;
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        if (drawable == null && this.h != null && this.h.get() != null && !this.h.get().isRecycled()) {
            this.h.get().recycle();
        }
    }

    public void setOuterCircle(boolean z) {
        this.f2188b = z;
    }
}
