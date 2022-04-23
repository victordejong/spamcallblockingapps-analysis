package com.asus.contacts.materialui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import com.android.contacts.skin.a;
import com.asus.contacts.c;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/materialui/FloatingActionButton.class */
public class FloatingActionButton extends View {

    /* renamed from: a  reason: collision with root package name */
    private final Interpolator f2724a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f2725b;
    private final Paint c;
    private Bitmap d;
    private int e;
    private boolean f;
    private AnimationSet g;
    private AnimationSet h;
    private int i;
    private PorterDuffColorFilter j;
    private float k;
    private float l;

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2724a = new AccelerateDecelerateInterpolator();
        this.f2725b = new Paint(1);
        this.c = new Paint(1);
        this.f = false;
        this.g = new AnimationSet(true);
        this.h = new AnimationSet(true);
        this.k = -1.0f;
        this.l = -1.0f;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, c.a.j);
        if (a.c()) {
            this.e = a.a(1);
        } else {
            this.e = obtainStyledAttributes.getColor(0, getContext().getResources().getColor(2131034143));
        }
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.i = getContext().getResources().getColor(2131034181);
        this.j = new PorterDuffColorFilter(this.i, PorterDuff.Mode.SRC_ATOP);
        float f = obtainStyledAttributes.getFloat(5, 5.0f);
        float f2 = obtainStyledAttributes.getFloat(3, 0.05f);
        float f3 = obtainStyledAttributes.getFloat(4, 0.05f);
        int integer = obtainStyledAttributes.getInteger(2, Color.argb(100, 0, 0, 0));
        this.g.addAnimation(new AlphaAnimation(0.0f, 1.0f));
        this.g.setDuration(200L);
        this.h.addAnimation(new AlphaAnimation(1.0f, 0.0f));
        this.h.setDuration(200L);
        this.f2725b.setStyle(Paint.Style.FILL);
        this.f2725b.setColor(this.e);
        this.f2725b.setShadowLayer(f, f2, f3, integer);
        if (drawable != null) {
            this.d = ((BitmapDrawable) drawable).getBitmap();
        }
        setWillNotDraw(false);
        setLayerType(1, null);
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.l = point.y;
        obtainStyledAttributes.recycle();
    }

    public final void a() {
        this.f = false;
        startAnimation(this.g);
        setVisibility(0);
        invalidate();
    }

    public final void b() {
        this.f = true;
        setVisibility(8);
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, getWidth() / 2.3f, this.f2725b);
        if (this.d != null) {
            this.c.setColorFilter(this.j);
            canvas.drawBitmap(this.d, (getWidth() - this.d.getWidth()) / 2, (getHeight() - this.d.getHeight()) / 2, this.c);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            this.k = this.l - i2;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 4) {
            i = this.e;
        } else {
            Color.colorToHSV(this.e, r0);
            float[] fArr = {0.0f, 0.0f, fArr[2] * 0.8f};
            i = Color.HSVToColor(fArr);
        }
        this.f2725b.setColor(i);
        invalidate();
        return super.onTouchEvent(motionEvent);
    }

    public void setColor(int i) {
        this.e = i;
        this.f2725b.setColor(this.e);
        invalidate();
    }

    public void setDrawable(Drawable drawable) {
        this.d = ((BitmapDrawable) drawable).getBitmap();
        invalidate();
    }
}
