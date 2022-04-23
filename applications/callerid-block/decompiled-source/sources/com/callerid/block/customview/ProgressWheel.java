package com.callerid.block.customview;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import com.callerid.block.R$styleable;
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ProgressWheel.class */
public class ProgressWheel extends View {

    /* renamed from: r */
    private boolean f4233r;

    /* renamed from: v */
    private AbstractC0937b f4237v;

    /* renamed from: w */
    private boolean f4238w;

    /* renamed from: b */
    private int f4217b = 28;

    /* renamed from: c */
    private int f4218c = 4;

    /* renamed from: d */
    private int f4219d = 4;

    /* renamed from: e */
    private boolean f4220e = false;

    /* renamed from: f */
    private double f4221f = 0.0d;

    /* renamed from: g */
    private double f4222g = 460.0d;

    /* renamed from: h */
    private float f4223h = 0.0f;

    /* renamed from: i */
    private boolean f4224i = true;

    /* renamed from: j */
    private long f4225j = 0;

    /* renamed from: k */
    private int f4226k = -1442840576;

    /* renamed from: l */
    private int f4227l = 16777215;

    /* renamed from: m */
    private Paint f4228m = new Paint();

    /* renamed from: n */
    private Paint f4229n = new Paint();

    /* renamed from: o */
    private RectF f4230o = new RectF();

    /* renamed from: p */
    private float f4231p = 230.0f;

    /* renamed from: q */
    private long f4232q = 0;

    /* renamed from: s */
    private float f4234s = 0.0f;

    /* renamed from: t */
    private float f4235t = 0.0f;

    /* renamed from: u */
    private boolean f4236u = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ProgressWheel$WheelSavedState.class */
    public static class WheelSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<WheelSavedState> CREATOR = new C0935a();

        /* renamed from: b */
        float f4239b;

        /* renamed from: c */
        float f4240c;

        /* renamed from: d */
        boolean f4241d;

        /* renamed from: e */
        float f4242e;

        /* renamed from: f */
        int f4243f;

        /* renamed from: g */
        int f4244g;

        /* renamed from: h */
        int f4245h;

        /* renamed from: i */
        int f4246i;

        /* renamed from: j */
        int f4247j;

        /* renamed from: k */
        boolean f4248k;

        /* renamed from: l */
        boolean f4249l;

        /* renamed from: com.callerid.block.customview.ProgressWheel$WheelSavedState$a */
        /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ProgressWheel$WheelSavedState$a.class */
        static final class C0935a implements Parcelable.Creator<WheelSavedState> {
            C0935a() {
            }

            /* renamed from: a */
            public WheelSavedState createFromParcel(Parcel parcel) {
                return new WheelSavedState(parcel);
            }

            /* renamed from: b */
            public WheelSavedState[] newArray(int i) {
                return new WheelSavedState[i];
            }
        }

        private WheelSavedState(Parcel parcel) {
            super(parcel);
            this.f4239b = parcel.readFloat();
            this.f4240c = parcel.readFloat();
            boolean z = true;
            this.f4241d = parcel.readByte() != 0;
            this.f4242e = parcel.readFloat();
            this.f4243f = parcel.readInt();
            this.f4244g = parcel.readInt();
            this.f4245h = parcel.readInt();
            this.f4246i = parcel.readInt();
            this.f4247j = parcel.readInt();
            this.f4248k = parcel.readByte() != 0;
            if (parcel.readByte() == 0) {
                z = false;
            }
            this.f4249l = z;
        }

        WheelSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f4239b);
            parcel.writeFloat(this.f4240c);
            parcel.writeByte(this.f4241d ? (byte) 1 : (byte) 0);
            parcel.writeFloat(this.f4242e);
            parcel.writeInt(this.f4243f);
            parcel.writeInt(this.f4244g);
            parcel.writeInt(this.f4245h);
            parcel.writeInt(this.f4246i);
            parcel.writeInt(this.f4247j);
            parcel.writeByte(this.f4248k ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f4249l ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: com.callerid.block.customview.ProgressWheel$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ProgressWheel$b.class */
    public interface AbstractC0937b {
        /* renamed from: a */
        void m10513a(float f);
    }

    public ProgressWheel(Context context) {
        super(context);
        m10520d();
    }

    public ProgressWheel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m10523a(context.obtainStyledAttributes(attributeSet, R$styleable.ProgressWheel));
        m10520d();
    }

    /* renamed from: a */
    private void m10523a(TypedArray typedArray) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.f4218c = (int) TypedValue.applyDimension(1, this.f4218c, displayMetrics);
        this.f4219d = (int) TypedValue.applyDimension(1, this.f4219d, displayMetrics);
        int applyDimension = (int) TypedValue.applyDimension(1, this.f4217b, displayMetrics);
        this.f4217b = applyDimension;
        this.f4217b = (int) typedArray.getDimension(3, applyDimension);
        this.f4220e = typedArray.getBoolean(4, false);
        this.f4218c = (int) typedArray.getDimension(2, this.f4218c);
        this.f4219d = (int) typedArray.getDimension(8, this.f4219d);
        this.f4231p = typedArray.getFloat(9, this.f4231p / 360.0f) * 360.0f;
        this.f4222g = typedArray.getInt(1, (int) this.f4222g);
        this.f4226k = typedArray.getColor(0, this.f4226k);
        this.f4227l = typedArray.getColor(7, this.f4227l);
        this.f4233r = typedArray.getBoolean(5, false);
        if (typedArray.getBoolean(6, false)) {
            m10517g();
        }
        typedArray.recycle();
    }

    /* renamed from: b */
    private void m10522b() {
        if (this.f4237v != null) {
            this.f4237v.m10513a(Math.round((this.f4234s * 100.0f) / 360.0f) / 100.0f);
        }
    }

    /* renamed from: c */
    private void m10521c(float f) {
        AbstractC0937b bVar = this.f4237v;
        if (bVar != null) {
            bVar.m10513a(f);
        }
    }

    @TargetApi(17)
    /* renamed from: d */
    private void m10520d() {
        this.f4238w = (Build.VERSION.SDK_INT >= 17 ? Settings.Global.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f) : Settings.System.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f)) != 0.0f;
    }

    /* renamed from: e */
    private void m10519e(int i, int i2) {
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (!this.f4220e) {
            int i3 = (i - paddingLeft) - paddingRight;
            int min = Math.min(Math.min(i3, (i2 - paddingBottom) - paddingTop), (this.f4217b * 2) - (this.f4218c * 2));
            int i4 = ((i3 - min) / 2) + paddingLeft;
            int i5 = ((((i2 - paddingTop) - paddingBottom) - min) / 2) + paddingTop;
            int i6 = this.f4218c;
            this.f4230o = new RectF(i4 + i6, i5 + i6, (i4 + min) - i6, (i5 + min) - i6);
            return;
        }
        int i7 = this.f4218c;
        this.f4230o = new RectF(paddingLeft + i7, paddingTop + i7, (i - paddingRight) - i7, (i2 - paddingBottom) - i7);
    }

    /* renamed from: f */
    private void m10518f() {
        this.f4228m.setColor(this.f4226k);
        this.f4228m.setAntiAlias(true);
        this.f4228m.setStyle(Paint.Style.STROKE);
        this.f4228m.setStrokeWidth(this.f4218c);
        this.f4229n.setColor(this.f4227l);
        this.f4229n.setAntiAlias(true);
        this.f4229n.setStyle(Paint.Style.STROKE);
        this.f4229n.setStrokeWidth(this.f4219d);
    }

    /* renamed from: h */
    private void m10516h(long j) {
        long j2 = this.f4225j;
        if (j2 >= 200) {
            double d = this.f4221f;
            double d2 = j;
            Double.isNaN(d2);
            double d3 = d + d2;
            this.f4221f = d3;
            double d4 = this.f4222g;
            if (d3 > d4) {
                this.f4221f = d3 - d4;
                this.f4225j = 0L;
                this.f4224i = !this.f4224i;
            }
            float cos = (((float) Math.cos(((this.f4221f / d4) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
            if (this.f4224i) {
                this.f4223h = cos * 254.0f;
                return;
            }
            float f = (1.0f - cos) * 254.0f;
            this.f4234s += this.f4223h - f;
            this.f4223h = f;
            return;
        }
        this.f4225j = j2 + j;
    }

    /* renamed from: g */
    public void m10517g() {
        this.f4232q = SystemClock.uptimeMillis();
        this.f4236u = true;
        invalidate();
    }

    public int getBarColor() {
        return this.f4226k;
    }

    public int getBarWidth() {
        return this.f4218c;
    }

    public int getCircleRadius() {
        return this.f4217b;
    }

    public float getProgress() {
        return this.f4236u ? -1.0f : this.f4234s / 360.0f;
    }

    public int getRimColor() {
        return this.f4227l;
    }

    public int getRimWidth() {
        return this.f4219d;
    }

    public float getSpinSpeed() {
        return this.f4231p / 360.0f;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        super.onDraw(canvas);
        canvas.drawArc(this.f4230o, 360.0f, 360.0f, false, this.f4229n);
        if (this.f4238w) {
            float f3 = 0.0f;
            r12 = true;
            boolean z = true;
            if (this.f4236u) {
                long uptimeMillis = SystemClock.uptimeMillis() - this.f4232q;
                float f4 = (((float) uptimeMillis) * this.f4231p) / 1000.0f;
                m10516h(uptimeMillis);
                float f5 = this.f4234s + f4;
                this.f4234s = f5;
                if (f5 > 360.0f) {
                    this.f4234s = f5 - 360.0f;
                    m10521c(-1.0f);
                }
                this.f4232q = SystemClock.uptimeMillis();
                float f6 = this.f4234s;
                float f7 = this.f4223h;
                if (isInEditMode()) {
                    f = 0.0f;
                    f2 = 135.0f;
                } else {
                    f = f6 - 90.0f;
                    f2 = f7 + 16.0f;
                }
                canvas.drawArc(this.f4230o, f, f2, false, this.f4228m);
            } else {
                float f8 = this.f4234s;
                if (f8 != this.f4235t) {
                    this.f4234s = Math.min(this.f4234s + ((((float) (SystemClock.uptimeMillis() - this.f4232q)) / 1000.0f) * this.f4231p), this.f4235t);
                    this.f4232q = SystemClock.uptimeMillis();
                } else {
                    z = false;
                }
                if (f8 != this.f4234s) {
                    m10522b();
                }
                float f9 = this.f4234s;
                float f10 = f9;
                if (!this.f4233r) {
                    f3 = ((float) (1.0d - Math.pow(1.0f - (f9 / 360.0f), 4.0f))) * 360.0f;
                    f10 = ((float) (1.0d - Math.pow(1.0f - (this.f4234s / 360.0f), 2.0f))) * 360.0f;
                }
                if (isInEditMode()) {
                    f10 = 360.0f;
                }
                canvas.drawArc(this.f4230o, f3 - 90.0f, f10, false, this.f4228m);
            }
            if (z) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        super.onMeasure(i, i2);
        int paddingLeft = this.f4217b + getPaddingLeft() + getPaddingRight();
        int paddingTop = this.f4217b + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            i3 = size;
        } else {
            i3 = paddingLeft;
            if (mode == Integer.MIN_VALUE) {
                i3 = Math.min(paddingLeft, size);
            }
        }
        if (mode2 == 1073741824 || mode == 1073741824) {
            i4 = size2;
        } else {
            i4 = paddingTop;
            if (mode2 == Integer.MIN_VALUE) {
                i4 = Math.min(paddingTop, size2);
            }
        }
        setMeasuredDimension(i3, i4);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof WheelSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        WheelSavedState wheelSavedState = (WheelSavedState) parcelable;
        super.onRestoreInstanceState(wheelSavedState.getSuperState());
        this.f4234s = wheelSavedState.f4239b;
        this.f4235t = wheelSavedState.f4240c;
        this.f4236u = wheelSavedState.f4241d;
        this.f4231p = wheelSavedState.f4242e;
        this.f4218c = wheelSavedState.f4243f;
        this.f4226k = wheelSavedState.f4244g;
        this.f4219d = wheelSavedState.f4245h;
        this.f4227l = wheelSavedState.f4246i;
        this.f4217b = wheelSavedState.f4247j;
        this.f4233r = wheelSavedState.f4248k;
        this.f4220e = wheelSavedState.f4249l;
        this.f4232q = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        WheelSavedState wheelSavedState = new WheelSavedState(super.onSaveInstanceState());
        wheelSavedState.f4239b = this.f4234s;
        wheelSavedState.f4240c = this.f4235t;
        wheelSavedState.f4241d = this.f4236u;
        wheelSavedState.f4242e = this.f4231p;
        wheelSavedState.f4243f = this.f4218c;
        wheelSavedState.f4244g = this.f4226k;
        wheelSavedState.f4245h = this.f4219d;
        wheelSavedState.f4246i = this.f4227l;
        wheelSavedState.f4247j = this.f4217b;
        wheelSavedState.f4248k = this.f4233r;
        wheelSavedState.f4249l = this.f4220e;
        return wheelSavedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m10519e(i, i2);
        m10518f();
        invalidate();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            this.f4232q = SystemClock.uptimeMillis();
        }
    }

    public void setBarColor(int i) {
        this.f4226k = i;
        m10518f();
        if (!this.f4236u) {
            invalidate();
        }
    }

    public void setBarWidth(int i) {
        this.f4218c = i;
        if (!this.f4236u) {
            invalidate();
        }
    }

    public void setCallback(AbstractC0937b bVar) {
        this.f4237v = bVar;
        if (!this.f4236u) {
            m10522b();
        }
    }

    public void setCircleRadius(int i) {
        this.f4217b = i;
        if (!this.f4236u) {
            invalidate();
        }
    }

    public void setInstantProgress(float f) {
        float f2;
        if (this.f4236u) {
            this.f4234s = 0.0f;
            this.f4236u = false;
        }
        if (f > 1.0f) {
            f2 = f - 1.0f;
        } else {
            f2 = f;
            if (f < 0.0f) {
                f2 = 0.0f;
            }
        }
        if (f2 != this.f4235t) {
            float min = Math.min(f2 * 360.0f, 360.0f);
            this.f4235t = min;
            this.f4234s = min;
            this.f4232q = SystemClock.uptimeMillis();
            invalidate();
        }
    }

    public void setLinearProgress(boolean z) {
        this.f4233r = z;
        if (!this.f4236u) {
            invalidate();
        }
    }

    public void setProgress(float f) {
        float f2;
        if (this.f4236u) {
            this.f4234s = 0.0f;
            this.f4236u = false;
            m10522b();
        }
        if (f > 1.0f) {
            f2 = f - 1.0f;
        } else {
            f2 = f;
            if (f < 0.0f) {
                f2 = 0.0f;
            }
        }
        float f3 = this.f4235t;
        if (f2 != f3) {
            if (this.f4234s == f3) {
                this.f4232q = SystemClock.uptimeMillis();
            }
            this.f4235t = Math.min(f2 * 360.0f, 360.0f);
            invalidate();
        }
    }

    public void setRimColor(int i) {
        this.f4227l = i;
        m10518f();
        if (!this.f4236u) {
            invalidate();
        }
    }

    public void setRimWidth(int i) {
        this.f4219d = i;
        if (!this.f4236u) {
            invalidate();
        }
    }

    public void setSpinSpeed(float f) {
        this.f4231p = f * 360.0f;
    }
}
