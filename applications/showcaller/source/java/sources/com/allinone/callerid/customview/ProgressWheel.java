package com.allinone.callerid.customview;

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
import com.allinone.callerid.R$styleable;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/ProgressWheel.class */
public class ProgressWheel extends View {

    /* renamed from: d */
    private static final String f8607d = ProgressWheel.class.getSimpleName();

    /* renamed from: B */
    private AbstractC2440b f8609B;

    /* renamed from: C */
    private boolean f8610C;

    /* renamed from: x */
    private boolean f8630x;

    /* renamed from: e */
    private final int f8611e = 16;

    /* renamed from: f */
    private final int f8612f = 270;

    /* renamed from: g */
    private final long f8613g = 200;

    /* renamed from: h */
    private int f8614h = 28;

    /* renamed from: i */
    private int f8615i = 4;

    /* renamed from: j */
    private int f8616j = 4;

    /* renamed from: k */
    private boolean f8617k = false;

    /* renamed from: l */
    private double f8618l = 0.0d;

    /* renamed from: m */
    private double f8619m = 460.0d;

    /* renamed from: n */
    private float f8620n = 0.0f;

    /* renamed from: o */
    private boolean f8621o = true;

    /* renamed from: p */
    private long f8622p = 0;

    /* renamed from: q */
    private int f8623q = -1442840576;

    /* renamed from: r */
    private int f8624r = 16777215;

    /* renamed from: s */
    private Paint f8625s = new Paint();

    /* renamed from: t */
    private Paint f8626t = new Paint();

    /* renamed from: u */
    private RectF f8627u = new RectF();

    /* renamed from: v */
    private float f8628v = 230.0f;

    /* renamed from: w */
    private long f8629w = 0;

    /* renamed from: y */
    private float f8631y = 0.0f;

    /* renamed from: z */
    private float f8632z = 0.0f;

    /* renamed from: A */
    private boolean f8608A = false;

    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/ProgressWheel$WheelSavedState.class */
    public static class WheelSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<WheelSavedState> CREATOR = new C2438a();

        /* renamed from: d */
        float f8633d;

        /* renamed from: e */
        float f8634e;

        /* renamed from: f */
        boolean f8635f;

        /* renamed from: g */
        float f8636g;

        /* renamed from: h */
        int f8637h;

        /* renamed from: i */
        int f8638i;

        /* renamed from: j */
        int f8639j;

        /* renamed from: k */
        int f8640k;

        /* renamed from: l */
        int f8641l;

        /* renamed from: m */
        boolean f8642m;

        /* renamed from: n */
        boolean f8643n;

        /* renamed from: com.allinone.callerid.customview.ProgressWheel$WheelSavedState$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/ProgressWheel$WheelSavedState$a.class */
        class C2438a implements Parcelable.Creator<WheelSavedState> {
            C2438a() {
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
            this.f8633d = parcel.readFloat();
            this.f8634e = parcel.readFloat();
            this.f8635f = parcel.readByte() != 0;
            this.f8636g = parcel.readFloat();
            this.f8637h = parcel.readInt();
            this.f8638i = parcel.readInt();
            this.f8639j = parcel.readInt();
            this.f8640k = parcel.readInt();
            this.f8641l = parcel.readInt();
            this.f8642m = parcel.readByte() != 0;
            this.f8643n = parcel.readByte() != 0;
        }

        WheelSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f8633d);
            parcel.writeFloat(this.f8634e);
            parcel.writeByte(this.f8635f ? (byte) 1 : (byte) 0);
            parcel.writeFloat(this.f8636g);
            parcel.writeInt(this.f8637h);
            parcel.writeInt(this.f8638i);
            parcel.writeInt(this.f8639j);
            parcel.writeInt(this.f8640k);
            parcel.writeInt(this.f8641l);
            parcel.writeByte(this.f8642m ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f8643n ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: com.allinone.callerid.customview.ProgressWheel$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/ProgressWheel$b.class */
    public interface AbstractC2440b {
        /* renamed from: a */
        void m27366a(float f);
    }

    public ProgressWheel(Context context) {
        super(context);
        m27373d();
    }

    public ProgressWheel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m27376a(context.obtainStyledAttributes(attributeSet, R$styleable.ProgressWheel));
        m27373d();
    }

    /* renamed from: a */
    private void m27376a(TypedArray typedArray) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.f8615i = (int) TypedValue.applyDimension(1, this.f8615i, displayMetrics);
        this.f8616j = (int) TypedValue.applyDimension(1, this.f8616j, displayMetrics);
        int applyDimension = (int) TypedValue.applyDimension(1, this.f8614h, displayMetrics);
        this.f8614h = applyDimension;
        this.f8614h = (int) typedArray.getDimension(3, applyDimension);
        this.f8617k = typedArray.getBoolean(4, false);
        this.f8615i = (int) typedArray.getDimension(2, this.f8615i);
        this.f8616j = (int) typedArray.getDimension(8, this.f8616j);
        this.f8628v = typedArray.getFloat(9, this.f8628v / 360.0f) * 360.0f;
        this.f8619m = typedArray.getInt(1, (int) this.f8619m);
        this.f8623q = typedArray.getColor(0, this.f8623q);
        this.f8624r = typedArray.getColor(7, this.f8624r);
        this.f8630x = typedArray.getBoolean(5, false);
        if (typedArray.getBoolean(6, false)) {
            m27370g();
        }
        typedArray.recycle();
    }

    /* renamed from: b */
    private void m27375b() {
        if (this.f8609B != null) {
            this.f8609B.m27366a(Math.round((this.f8631y * 100.0f) / 360.0f) / 100.0f);
        }
    }

    /* renamed from: c */
    private void m27374c(float f) {
        AbstractC2440b abstractC2440b = this.f8609B;
        if (abstractC2440b != null) {
            abstractC2440b.m27366a(f);
        }
    }

    @TargetApi(17)
    /* renamed from: d */
    private void m27373d() {
        this.f8610C = (Build.VERSION.SDK_INT >= 17 ? Settings.Global.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f) : Settings.System.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f)) != 0.0f;
    }

    /* renamed from: e */
    private void m27372e(int i, int i2) {
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (this.f8617k) {
            int i3 = this.f8615i;
            this.f8627u = new RectF(paddingLeft + i3, paddingTop + i3, (i - paddingRight) - i3, (i2 - paddingBottom) - i3);
            return;
        }
        int i4 = (i - paddingLeft) - paddingRight;
        int min = Math.min(Math.min(i4, (i2 - paddingBottom) - paddingTop), (this.f8614h * 2) - (this.f8615i * 2));
        int i5 = ((i4 - min) / 2) + paddingLeft;
        int i6 = ((((i2 - paddingTop) - paddingBottom) - min) / 2) + paddingTop;
        int i7 = this.f8615i;
        this.f8627u = new RectF(i5 + i7, i6 + i7, (i5 + min) - i7, (i6 + min) - i7);
    }

    /* renamed from: f */
    private void m27371f() {
        this.f8625s.setColor(this.f8623q);
        this.f8625s.setAntiAlias(true);
        this.f8625s.setStyle(Paint.Style.STROKE);
        this.f8625s.setStrokeWidth(this.f8615i);
        this.f8626t.setColor(this.f8624r);
        this.f8626t.setAntiAlias(true);
        this.f8626t.setStyle(Paint.Style.STROKE);
        this.f8626t.setStrokeWidth(this.f8616j);
    }

    /* renamed from: h */
    private void m27369h(long j) {
        long j2 = this.f8622p;
        if (j2 < 200) {
            this.f8622p = j2 + j;
            return;
        }
        double d = this.f8618l + j;
        this.f8618l = d;
        double d2 = this.f8619m;
        if (d > d2) {
            this.f8618l = d - d2;
            this.f8622p = 0L;
            this.f8621o = !this.f8621o;
        }
        float cos = (((float) Math.cos(((this.f8618l / d2) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
        if (this.f8621o) {
            this.f8620n = cos * 254.0f;
            return;
        }
        float f = (1.0f - cos) * 254.0f;
        this.f8631y += this.f8620n - f;
        this.f8620n = f;
    }

    /* renamed from: g */
    public void m27370g() {
        this.f8629w = SystemClock.uptimeMillis();
        this.f8608A = true;
        invalidate();
    }

    public int getBarColor() {
        return this.f8623q;
    }

    public int getBarWidth() {
        return this.f8615i;
    }

    public int getCircleRadius() {
        return this.f8614h;
    }

    public float getProgress() {
        return this.f8608A ? -1.0f : this.f8631y / 360.0f;
    }

    public int getRimColor() {
        return this.f8624r;
    }

    public int getRimWidth() {
        return this.f8616j;
    }

    public float getSpinSpeed() {
        return this.f8628v / 360.0f;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        super.onDraw(canvas);
        canvas.drawArc(this.f8627u, 360.0f, 360.0f, false, this.f8626t);
        if (!this.f8610C) {
            return;
        }
        float f4 = 0.0f;
        boolean z = true;
        if (this.f8608A) {
            long uptimeMillis = SystemClock.uptimeMillis() - this.f8629w;
            float f5 = (((float) uptimeMillis) * this.f8628v) / 1000.0f;
            m27369h(uptimeMillis);
            float f6 = this.f8631y + f5;
            this.f8631y = f6;
            if (f6 > 360.0f) {
                this.f8631y = f6 - 360.0f;
                m27374c(-1.0f);
            }
            this.f8629w = SystemClock.uptimeMillis();
            float f7 = this.f8631y;
            float f8 = this.f8620n;
            if (isInEditMode()) {
                f3 = 0.0f;
                f2 = 135.0f;
            } else {
                f3 = f7 - 90.0f;
                f2 = f8 + 16.0f;
            }
            canvas.drawArc(this.f8627u, f3, f2, false, this.f8625s);
            z = true;
        } else {
            float f9 = this.f8631y;
            if (f9 != this.f8632z) {
                this.f8631y = Math.min(this.f8631y + ((((float) (SystemClock.uptimeMillis() - this.f8629w)) / 1000.0f) * this.f8628v), this.f8632z);
                this.f8629w = SystemClock.uptimeMillis();
            } else {
                z = false;
            }
            if (f9 != this.f8631y) {
                m27375b();
            }
            float f10 = this.f8631y;
            if (!this.f8630x) {
                f4 = ((float) (1.0d - Math.pow(1.0f - (f / 360.0f), 4.0f))) * 360.0f;
                f10 = ((float) (1.0d - Math.pow(1.0f - (this.f8631y / 360.0f), 2.0f))) * 360.0f;
            }
            if (isInEditMode()) {
                f10 = 360.0f;
            }
            canvas.drawArc(this.f8627u, f4 - 90.0f, f10, false, this.f8625s);
        }
        if (!z) {
            return;
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        super.onMeasure(i, i2);
        int paddingLeft = this.f8614h + getPaddingLeft() + getPaddingRight();
        int paddingTop = this.f8614h + getPaddingTop() + getPaddingBottom();
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
        this.f8631y = wheelSavedState.f8633d;
        this.f8632z = wheelSavedState.f8634e;
        this.f8608A = wheelSavedState.f8635f;
        this.f8628v = wheelSavedState.f8636g;
        this.f8615i = wheelSavedState.f8637h;
        this.f8623q = wheelSavedState.f8638i;
        this.f8616j = wheelSavedState.f8639j;
        this.f8624r = wheelSavedState.f8640k;
        this.f8614h = wheelSavedState.f8641l;
        this.f8630x = wheelSavedState.f8642m;
        this.f8617k = wheelSavedState.f8643n;
        this.f8629w = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        WheelSavedState wheelSavedState = new WheelSavedState(super.onSaveInstanceState());
        wheelSavedState.f8633d = this.f8631y;
        wheelSavedState.f8634e = this.f8632z;
        wheelSavedState.f8635f = this.f8608A;
        wheelSavedState.f8636g = this.f8628v;
        wheelSavedState.f8637h = this.f8615i;
        wheelSavedState.f8638i = this.f8623q;
        wheelSavedState.f8639j = this.f8616j;
        wheelSavedState.f8640k = this.f8624r;
        wheelSavedState.f8641l = this.f8614h;
        wheelSavedState.f8642m = this.f8630x;
        wheelSavedState.f8643n = this.f8617k;
        return wheelSavedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m27372e(i, i2);
        m27371f();
        invalidate();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            this.f8629w = SystemClock.uptimeMillis();
        }
    }

    public void setBarColor(int i) {
        this.f8623q = i;
        m27371f();
        if (!this.f8608A) {
            invalidate();
        }
    }

    public void setBarWidth(int i) {
        this.f8615i = i;
        if (!this.f8608A) {
            invalidate();
        }
    }

    public void setCallback(AbstractC2440b abstractC2440b) {
        this.f8609B = abstractC2440b;
        if (!this.f8608A) {
            m27375b();
        }
    }

    public void setCircleRadius(int i) {
        this.f8614h = i;
        if (!this.f8608A) {
            invalidate();
        }
    }

    public void setInstantProgress(float f) {
        float f2;
        if (this.f8608A) {
            this.f8631y = 0.0f;
            this.f8608A = false;
        }
        if (f > 1.0f) {
            f2 = f - 1.0f;
        } else {
            f2 = f;
            if (f < 0.0f) {
                f2 = 0.0f;
            }
        }
        if (f2 == this.f8632z) {
            return;
        }
        float min = Math.min(f2 * 360.0f, 360.0f);
        this.f8632z = min;
        this.f8631y = min;
        this.f8629w = SystemClock.uptimeMillis();
        invalidate();
    }

    public void setLinearProgress(boolean z) {
        this.f8630x = z;
        if (!this.f8608A) {
            invalidate();
        }
    }

    public void setProgress(float f) {
        float f2;
        if (this.f8608A) {
            this.f8631y = 0.0f;
            this.f8608A = false;
            m27375b();
        }
        if (f > 1.0f) {
            f2 = f - 1.0f;
        } else {
            f2 = f;
            if (f < 0.0f) {
                f2 = 0.0f;
            }
        }
        float f3 = this.f8632z;
        if (f2 == f3) {
            return;
        }
        if (this.f8631y == f3) {
            this.f8629w = SystemClock.uptimeMillis();
        }
        this.f8632z = Math.min(f2 * 360.0f, 360.0f);
        invalidate();
    }

    public void setRimColor(int i) {
        this.f8624r = i;
        m27371f();
        if (!this.f8608A) {
            invalidate();
        }
    }

    public void setRimWidth(int i) {
        this.f8616j = i;
        if (!this.f8608A) {
            invalidate();
        }
    }

    public void setSpinSpeed(float f) {
        this.f8628v = f * 360.0f;
    }
}
