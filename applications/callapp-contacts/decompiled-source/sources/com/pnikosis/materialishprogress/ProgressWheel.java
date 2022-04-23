package com.pnikosis.materialishprogress;

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
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.pnikosis.materialishprogress.a;
/* loaded from: classes4-dex2jar.jar:com/pnikosis/materialishprogress/ProgressWheel.class */
public class ProgressWheel extends View {

    /* renamed from: a  reason: collision with root package name */
    private static final String f34977a = "ProgressWheel";

    /* renamed from: b  reason: collision with root package name */
    private final int f34978b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34979c;

    /* renamed from: d  reason: collision with root package name */
    private final long f34980d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private double i;
    private double j;
    private float k;
    private boolean l;
    private long m;
    private int n;
    private int o;
    private Paint p;
    private Paint q;
    private RectF r;
    private float s;
    private long t;
    private boolean u;
    private float v;
    private float w;
    private boolean x;
    private a y;
    private boolean z;

    /* loaded from: classes4-dex2jar.jar:com/pnikosis/materialishprogress/ProgressWheel$WheelSavedState.class */
    static class WheelSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<WheelSavedState> CREATOR = new Parcelable.Creator<WheelSavedState>() { // from class: com.pnikosis.materialishprogress.ProgressWheel.WheelSavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ WheelSavedState createFromParcel(Parcel parcel) {
                return new WheelSavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ WheelSavedState[] newArray(int i) {
                return new WheelSavedState[i];
            }
        };
        int barColor;
        int barWidth;
        int circleRadius;
        boolean fillRadius;
        boolean isSpinning;
        boolean linearProgress;
        float mProgress;
        float mTargetProgress;
        int rimColor;
        int rimWidth;
        float spinSpeed;

        private WheelSavedState(Parcel parcel) {
            super(parcel);
            this.mProgress = parcel.readFloat();
            this.mTargetProgress = parcel.readFloat();
            boolean z = true;
            this.isSpinning = parcel.readByte() != 0;
            this.spinSpeed = parcel.readFloat();
            this.barWidth = parcel.readInt();
            this.barColor = parcel.readInt();
            this.rimWidth = parcel.readInt();
            this.rimColor = parcel.readInt();
            this.circleRadius = parcel.readInt();
            this.linearProgress = parcel.readByte() != 0;
            if (parcel.readByte() == 0) {
                z = false;
            }
            this.fillRadius = z;
        }

        WheelSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.mProgress);
            parcel.writeFloat(this.mTargetProgress);
            parcel.writeByte(this.isSpinning ? (byte) 1 : (byte) 0);
            parcel.writeFloat(this.spinSpeed);
            parcel.writeInt(this.barWidth);
            parcel.writeInt(this.barColor);
            parcel.writeInt(this.rimWidth);
            parcel.writeInt(this.rimColor);
            parcel.writeInt(this.circleRadius);
            parcel.writeByte(this.linearProgress ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.fillRadius ? (byte) 1 : (byte) 0);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/pnikosis/materialishprogress/ProgressWheel$a.class */
    public interface a {
    }

    public ProgressWheel(Context context) {
        super(context);
        this.f34978b = 16;
        this.f34979c = 270;
        this.f34980d = 200L;
        this.e = 28;
        this.f = 4;
        this.g = 4;
        this.h = false;
        this.i = 0.0d;
        this.j = 460.0d;
        this.k = BitmapDescriptorFactory.HUE_RED;
        this.l = true;
        this.m = 0L;
        this.n = -1442840576;
        this.o = 16777215;
        this.p = new Paint();
        this.q = new Paint();
        this.r = new RectF();
        this.s = 230.0f;
        this.t = 0L;
        this.v = BitmapDescriptorFactory.HUE_RED;
        this.w = BitmapDescriptorFactory.HUE_RED;
        this.x = false;
        a();
    }

    public ProgressWheel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f34978b = 16;
        this.f34979c = 270;
        this.f34980d = 200L;
        this.e = 28;
        this.f = 4;
        this.g = 4;
        this.h = false;
        this.i = 0.0d;
        this.j = 460.0d;
        this.k = BitmapDescriptorFactory.HUE_RED;
        this.l = true;
        this.m = 0L;
        this.n = -1442840576;
        this.o = 16777215;
        this.p = new Paint();
        this.q = new Paint();
        this.r = new RectF();
        this.s = 230.0f;
        this.t = 0L;
        this.v = BitmapDescriptorFactory.HUE_RED;
        this.w = BitmapDescriptorFactory.HUE_RED;
        this.x = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.C0552a.ProgressWheel);
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.f = (int) TypedValue.applyDimension(1, this.f, displayMetrics);
        this.g = (int) TypedValue.applyDimension(1, this.g, displayMetrics);
        this.e = (int) TypedValue.applyDimension(1, this.e, displayMetrics);
        this.e = (int) obtainStyledAttributes.getDimension(a.C0552a.ProgressWheel_matProg_circleRadius, this.e);
        this.h = obtainStyledAttributes.getBoolean(a.C0552a.ProgressWheel_matProg_fillRadius, false);
        this.f = (int) obtainStyledAttributes.getDimension(a.C0552a.ProgressWheel_matProg_barWidth, this.f);
        this.g = (int) obtainStyledAttributes.getDimension(a.C0552a.ProgressWheel_matProg_rimWidth, this.g);
        this.s = obtainStyledAttributes.getFloat(a.C0552a.ProgressWheel_matProg_spinSpeed, this.s / 360.0f) * 360.0f;
        this.j = obtainStyledAttributes.getInt(a.C0552a.ProgressWheel_matProg_barSpinCycleTime, (int) this.j);
        this.n = obtainStyledAttributes.getColor(a.C0552a.ProgressWheel_matProg_barColor, this.n);
        this.o = obtainStyledAttributes.getColor(a.C0552a.ProgressWheel_matProg_rimColor, this.o);
        this.u = obtainStyledAttributes.getBoolean(a.C0552a.ProgressWheel_matProg_linearProgress, false);
        if (obtainStyledAttributes.getBoolean(a.C0552a.ProgressWheel_matProg_progressIndeterminate, false)) {
            this.t = SystemClock.uptimeMillis();
            this.x = true;
            invalidate();
        }
        obtainStyledAttributes.recycle();
        a();
    }

    private void a() {
        this.z = (Build.VERSION.SDK_INT >= 17 ? Settings.Global.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f) : Settings.System.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f)) != BitmapDescriptorFactory.HUE_RED;
    }

    private void b() {
        this.p.setColor(this.n);
        this.p.setAntiAlias(true);
        this.p.setStyle(Paint.Style.STROKE);
        this.p.setStrokeWidth(this.f);
        this.q.setColor(this.o);
        this.q.setAntiAlias(true);
        this.q.setStyle(Paint.Style.STROKE);
        this.q.setStrokeWidth(this.g);
    }

    private void c() {
        if (this.y != null) {
            Math.round((this.v * 100.0f) / 360.0f);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        super.onDraw(canvas);
        canvas.drawArc(this.r, 360.0f, 360.0f, false, this.q);
        if (this.z) {
            boolean z = this.x;
            float f4 = BitmapDescriptorFactory.HUE_RED;
            r12 = true;
            boolean z2 = true;
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis() - this.t;
                float f5 = (((float) uptimeMillis) * this.s) / 1000.0f;
                long j = this.m;
                if (j >= 200) {
                    double d2 = this.i + uptimeMillis;
                    this.i = d2;
                    double d3 = this.j;
                    if (d2 > d3) {
                        this.i = d2 - d3;
                        this.m = 0L;
                        this.l = !this.l;
                    }
                    float cos = (((float) Math.cos(((this.i / d3) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
                    if (this.l) {
                        this.k = cos * 254.0f;
                    } else {
                        float f6 = (1.0f - cos) * 254.0f;
                        this.v += this.k - f6;
                        this.k = f6;
                    }
                } else {
                    this.m = j + uptimeMillis;
                }
                float f7 = this.v + f5;
                this.v = f7;
                if (f7 > 360.0f) {
                    this.v = f7 - 360.0f;
                }
                this.t = SystemClock.uptimeMillis();
                float f8 = this.v;
                float f9 = this.k;
                if (isInEditMode()) {
                    f2 = BitmapDescriptorFactory.HUE_RED;
                    f3 = 135.0f;
                } else {
                    f2 = f8 - 90.0f;
                    f3 = f9 + 16.0f;
                }
                canvas.drawArc(this.r, f2, f3, false, this.p);
            } else {
                float f10 = this.v;
                if (f10 != this.w) {
                    this.v = Math.min(this.v + ((((float) (SystemClock.uptimeMillis() - this.t)) / 1000.0f) * this.s), this.w);
                    this.t = SystemClock.uptimeMillis();
                } else {
                    z2 = false;
                }
                if (f10 != this.v) {
                    c();
                }
                float f11 = this.v;
                if (!this.u) {
                    f4 = ((float) (1.0d - Math.pow(1.0f - (f / 360.0f), 4.0d))) * 360.0f;
                    f11 = ((float) (1.0d - Math.pow(1.0f - (this.v / 360.0f), 2.0d))) * 360.0f;
                }
                if (isInEditMode()) {
                    f11 = 360.0f;
                }
                canvas.drawArc(this.r, f4 - 90.0f, f11, false, this.p);
            }
            if (z2) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        super.onMeasure(i, i2);
        int paddingLeft = this.e + getPaddingLeft() + getPaddingRight();
        int paddingTop = this.e + getPaddingTop() + getPaddingBottom();
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
        this.v = wheelSavedState.mProgress;
        this.w = wheelSavedState.mTargetProgress;
        this.x = wheelSavedState.isSpinning;
        this.s = wheelSavedState.spinSpeed;
        this.f = wheelSavedState.barWidth;
        this.n = wheelSavedState.barColor;
        this.g = wheelSavedState.rimWidth;
        this.o = wheelSavedState.rimColor;
        this.e = wheelSavedState.circleRadius;
        this.u = wheelSavedState.linearProgress;
        this.h = wheelSavedState.fillRadius;
        this.t = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        WheelSavedState wheelSavedState = new WheelSavedState(super.onSaveInstanceState());
        wheelSavedState.mProgress = this.v;
        wheelSavedState.mTargetProgress = this.w;
        wheelSavedState.isSpinning = this.x;
        wheelSavedState.spinSpeed = this.s;
        wheelSavedState.barWidth = this.f;
        wheelSavedState.barColor = this.n;
        wheelSavedState.rimWidth = this.g;
        wheelSavedState.rimColor = this.o;
        wheelSavedState.circleRadius = this.e;
        wheelSavedState.linearProgress = this.u;
        wheelSavedState.fillRadius = this.h;
        return wheelSavedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (!this.h) {
            int i5 = (i - paddingLeft) - paddingRight;
            int min = Math.min(Math.min(i5, (i2 - paddingBottom) - paddingTop), (this.e * 2) - (this.f * 2));
            int i6 = ((i5 - min) / 2) + paddingLeft;
            int i7 = ((((i2 - paddingTop) - paddingBottom) - min) / 2) + paddingTop;
            int i8 = this.f;
            this.r = new RectF(i6 + i8, i7 + i8, (i6 + min) - i8, (i7 + min) - i8);
        } else {
            int i9 = this.f;
            this.r = new RectF(paddingLeft + i9, paddingTop + i9, (i - paddingRight) - i9, (i2 - paddingBottom) - i9);
        }
        b();
        invalidate();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            this.t = SystemClock.uptimeMillis();
        }
    }

    public void setBarColor(int i) {
        this.n = i;
        b();
        if (!this.x) {
            invalidate();
        }
    }

    public void setBarWidth(int i) {
        this.f = i;
        if (!this.x) {
            invalidate();
        }
    }

    public void setCallback(a aVar) {
        this.y = aVar;
        if (!this.x) {
            c();
        }
    }

    public void setCircleRadius(int i) {
        this.e = i;
        if (!this.x) {
            invalidate();
        }
    }

    public void setInstantProgress(float f) {
        float f2;
        if (this.x) {
            this.v = BitmapDescriptorFactory.HUE_RED;
            this.x = false;
        }
        if (f > 1.0f) {
            f2 = f - 1.0f;
        } else {
            f2 = f;
            if (f < BitmapDescriptorFactory.HUE_RED) {
                f2 = BitmapDescriptorFactory.HUE_RED;
            }
        }
        if (f2 != this.w) {
            float min = Math.min(f2 * 360.0f, 360.0f);
            this.w = min;
            this.v = min;
            this.t = SystemClock.uptimeMillis();
            invalidate();
        }
    }

    public void setLinearProgress(boolean z) {
        this.u = z;
        if (!this.x) {
            invalidate();
        }
    }

    public void setProgress(float f) {
        float f2;
        if (this.x) {
            this.v = BitmapDescriptorFactory.HUE_RED;
            this.x = false;
            c();
        }
        if (f > 1.0f) {
            f2 = f - 1.0f;
        } else {
            f2 = f;
            if (f < BitmapDescriptorFactory.HUE_RED) {
                f2 = BitmapDescriptorFactory.HUE_RED;
            }
        }
        float f3 = this.w;
        if (f2 != f3) {
            if (this.v == f3) {
                this.t = SystemClock.uptimeMillis();
            }
            this.w = Math.min(f2 * 360.0f, 360.0f);
            invalidate();
        }
    }

    public void setRimColor(int i) {
        this.o = i;
        b();
        if (!this.x) {
            invalidate();
        }
    }

    public void setRimWidth(int i) {
        this.g = i;
        if (!this.x) {
            invalidate();
        }
    }

    public void setSpinSpeed(float f) {
        this.s = f * 360.0f;
    }
}
