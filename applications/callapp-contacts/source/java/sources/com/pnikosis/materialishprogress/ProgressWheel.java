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
import com.pnikosis.materialishprogress.C17088a;
/* loaded from: classes4-dex2jar.jar:com/pnikosis/materialishprogress/ProgressWheel.class */
public class ProgressWheel extends View {

    /* renamed from: a */
    private static final String f60629a = "ProgressWheel";

    /* renamed from: b */
    private final int f60630b;

    /* renamed from: c */
    private final int f60631c;

    /* renamed from: d */
    private final long f60632d;

    /* renamed from: e */
    private int f60633e;

    /* renamed from: f */
    private int f60634f;

    /* renamed from: g */
    private int f60635g;

    /* renamed from: h */
    private boolean f60636h;

    /* renamed from: i */
    private double f60637i;

    /* renamed from: j */
    private double f60638j;

    /* renamed from: k */
    private float f60639k;

    /* renamed from: l */
    private boolean f60640l;

    /* renamed from: m */
    private long f60641m;

    /* renamed from: n */
    private int f60642n;

    /* renamed from: o */
    private int f60643o;

    /* renamed from: p */
    private Paint f60644p;

    /* renamed from: q */
    private Paint f60645q;

    /* renamed from: r */
    private RectF f60646r;

    /* renamed from: s */
    private float f60647s;

    /* renamed from: t */
    private long f60648t;

    /* renamed from: u */
    private boolean f60649u;

    /* renamed from: v */
    private float f60650v;

    /* renamed from: w */
    private float f60651w;

    /* renamed from: x */
    private boolean f60652x;

    /* renamed from: y */
    private AbstractC17087a f60653y;

    /* renamed from: z */
    private boolean f60654z;

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
            this.isSpinning = parcel.readByte() != 0;
            this.spinSpeed = parcel.readFloat();
            this.barWidth = parcel.readInt();
            this.barColor = parcel.readInt();
            this.rimWidth = parcel.readInt();
            this.rimColor = parcel.readInt();
            this.circleRadius = parcel.readInt();
            this.linearProgress = parcel.readByte() != 0;
            this.fillRadius = parcel.readByte() != 0;
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

    /* renamed from: com.pnikosis.materialishprogress.ProgressWheel$a */
    /* loaded from: classes4-dex2jar.jar:com/pnikosis/materialishprogress/ProgressWheel$a.class */
    public interface AbstractC17087a {
    }

    public ProgressWheel(Context context) {
        super(context);
        this.f60630b = 16;
        this.f60631c = 270;
        this.f60632d = 200L;
        this.f60633e = 28;
        this.f60634f = 4;
        this.f60635g = 4;
        this.f60636h = false;
        this.f60637i = 0.0d;
        this.f60638j = 460.0d;
        this.f60639k = BitmapDescriptorFactory.HUE_RED;
        this.f60640l = true;
        this.f60641m = 0L;
        this.f60642n = -1442840576;
        this.f60643o = 16777215;
        this.f60644p = new Paint();
        this.f60645q = new Paint();
        this.f60646r = new RectF();
        this.f60647s = 230.0f;
        this.f60648t = 0L;
        this.f60650v = BitmapDescriptorFactory.HUE_RED;
        this.f60651w = BitmapDescriptorFactory.HUE_RED;
        this.f60652x = false;
        m5886a();
    }

    public ProgressWheel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f60630b = 16;
        this.f60631c = 270;
        this.f60632d = 200L;
        this.f60633e = 28;
        this.f60634f = 4;
        this.f60635g = 4;
        this.f60636h = false;
        this.f60637i = 0.0d;
        this.f60638j = 460.0d;
        this.f60639k = BitmapDescriptorFactory.HUE_RED;
        this.f60640l = true;
        this.f60641m = 0L;
        this.f60642n = -1442840576;
        this.f60643o = 16777215;
        this.f60644p = new Paint();
        this.f60645q = new Paint();
        this.f60646r = new RectF();
        this.f60647s = 230.0f;
        this.f60648t = 0L;
        this.f60650v = BitmapDescriptorFactory.HUE_RED;
        this.f60651w = BitmapDescriptorFactory.HUE_RED;
        this.f60652x = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17088a.C17089a.ProgressWheel);
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.f60634f = (int) TypedValue.applyDimension(1, this.f60634f, displayMetrics);
        this.f60635g = (int) TypedValue.applyDimension(1, this.f60635g, displayMetrics);
        this.f60633e = (int) TypedValue.applyDimension(1, this.f60633e, displayMetrics);
        this.f60633e = (int) obtainStyledAttributes.getDimension(C17088a.C17089a.ProgressWheel_matProg_circleRadius, this.f60633e);
        this.f60636h = obtainStyledAttributes.getBoolean(C17088a.C17089a.ProgressWheel_matProg_fillRadius, false);
        this.f60634f = (int) obtainStyledAttributes.getDimension(C17088a.C17089a.ProgressWheel_matProg_barWidth, this.f60634f);
        this.f60635g = (int) obtainStyledAttributes.getDimension(C17088a.C17089a.ProgressWheel_matProg_rimWidth, this.f60635g);
        this.f60647s = obtainStyledAttributes.getFloat(C17088a.C17089a.ProgressWheel_matProg_spinSpeed, this.f60647s / 360.0f) * 360.0f;
        this.f60638j = obtainStyledAttributes.getInt(C17088a.C17089a.ProgressWheel_matProg_barSpinCycleTime, (int) this.f60638j);
        this.f60642n = obtainStyledAttributes.getColor(C17088a.C17089a.ProgressWheel_matProg_barColor, this.f60642n);
        this.f60643o = obtainStyledAttributes.getColor(C17088a.C17089a.ProgressWheel_matProg_rimColor, this.f60643o);
        this.f60649u = obtainStyledAttributes.getBoolean(C17088a.C17089a.ProgressWheel_matProg_linearProgress, false);
        if (obtainStyledAttributes.getBoolean(C17088a.C17089a.ProgressWheel_matProg_progressIndeterminate, false)) {
            this.f60648t = SystemClock.uptimeMillis();
            this.f60652x = true;
            invalidate();
        }
        obtainStyledAttributes.recycle();
        m5886a();
    }

    /* renamed from: a */
    private void m5886a() {
        this.f60654z = (Build.VERSION.SDK_INT >= 17 ? Settings.Global.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f) : Settings.System.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f)) != BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: b */
    private void m5885b() {
        this.f60644p.setColor(this.f60642n);
        this.f60644p.setAntiAlias(true);
        this.f60644p.setStyle(Paint.Style.STROKE);
        this.f60644p.setStrokeWidth(this.f60634f);
        this.f60645q.setColor(this.f60643o);
        this.f60645q.setAntiAlias(true);
        this.f60645q.setStyle(Paint.Style.STROKE);
        this.f60645q.setStrokeWidth(this.f60635g);
    }

    /* renamed from: c */
    private void m5884c() {
        if (this.f60653y != null) {
            Math.round((this.f60650v * 100.0f) / 360.0f);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        super.onDraw(canvas);
        canvas.drawArc(this.f60646r, 360.0f, 360.0f, false, this.f60645q);
        if (!this.f60654z) {
            return;
        }
        float f4 = 0.0f;
        boolean z = true;
        if (this.f60652x) {
            long uptimeMillis = SystemClock.uptimeMillis() - this.f60648t;
            float f5 = (((float) uptimeMillis) * this.f60647s) / 1000.0f;
            long j = this.f60641m;
            if (j >= 200) {
                double d = this.f60637i + uptimeMillis;
                this.f60637i = d;
                double d2 = this.f60638j;
                if (d > d2) {
                    this.f60637i = d - d2;
                    this.f60641m = 0L;
                    this.f60640l = !this.f60640l;
                }
                float cos = (((float) Math.cos(((this.f60637i / d2) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
                if (this.f60640l) {
                    this.f60639k = cos * 254.0f;
                } else {
                    float f6 = (1.0f - cos) * 254.0f;
                    this.f60650v += this.f60639k - f6;
                    this.f60639k = f6;
                }
            } else {
                this.f60641m = j + uptimeMillis;
            }
            float f7 = this.f60650v + f5;
            this.f60650v = f7;
            if (f7 > 360.0f) {
                this.f60650v = f7 - 360.0f;
            }
            this.f60648t = SystemClock.uptimeMillis();
            float f8 = this.f60650v;
            float f9 = this.f60639k;
            if (isInEditMode()) {
                f2 = 0.0f;
                f3 = 135.0f;
            } else {
                f2 = f8 - 90.0f;
                f3 = f9 + 16.0f;
            }
            canvas.drawArc(this.f60646r, f2, f3, false, this.f60644p);
            z = true;
        } else {
            float f10 = this.f60650v;
            if (f10 != this.f60651w) {
                this.f60650v = Math.min(this.f60650v + ((((float) (SystemClock.uptimeMillis() - this.f60648t)) / 1000.0f) * this.f60647s), this.f60651w);
                this.f60648t = SystemClock.uptimeMillis();
            } else {
                z = false;
            }
            if (f10 != this.f60650v) {
                m5884c();
            }
            float f11 = this.f60650v;
            if (!this.f60649u) {
                f4 = ((float) (1.0d - Math.pow(1.0f - (f / 360.0f), 4.0d))) * 360.0f;
                f11 = ((float) (1.0d - Math.pow(1.0f - (this.f60650v / 360.0f), 2.0d))) * 360.0f;
            }
            if (isInEditMode()) {
                f11 = 360.0f;
            }
            canvas.drawArc(this.f60646r, f4 - 90.0f, f11, false, this.f60644p);
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
        int paddingLeft = this.f60633e + getPaddingLeft() + getPaddingRight();
        int paddingTop = this.f60633e + getPaddingTop() + getPaddingBottom();
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
        this.f60650v = wheelSavedState.mProgress;
        this.f60651w = wheelSavedState.mTargetProgress;
        this.f60652x = wheelSavedState.isSpinning;
        this.f60647s = wheelSavedState.spinSpeed;
        this.f60634f = wheelSavedState.barWidth;
        this.f60642n = wheelSavedState.barColor;
        this.f60635g = wheelSavedState.rimWidth;
        this.f60643o = wheelSavedState.rimColor;
        this.f60633e = wheelSavedState.circleRadius;
        this.f60649u = wheelSavedState.linearProgress;
        this.f60636h = wheelSavedState.fillRadius;
        this.f60648t = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        WheelSavedState wheelSavedState = new WheelSavedState(super.onSaveInstanceState());
        wheelSavedState.mProgress = this.f60650v;
        wheelSavedState.mTargetProgress = this.f60651w;
        wheelSavedState.isSpinning = this.f60652x;
        wheelSavedState.spinSpeed = this.f60647s;
        wheelSavedState.barWidth = this.f60634f;
        wheelSavedState.barColor = this.f60642n;
        wheelSavedState.rimWidth = this.f60635g;
        wheelSavedState.rimColor = this.f60643o;
        wheelSavedState.circleRadius = this.f60633e;
        wheelSavedState.linearProgress = this.f60649u;
        wheelSavedState.fillRadius = this.f60636h;
        return wheelSavedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (!this.f60636h) {
            int i5 = (i - paddingLeft) - paddingRight;
            int min = Math.min(Math.min(i5, (i2 - paddingBottom) - paddingTop), (this.f60633e * 2) - (this.f60634f * 2));
            int i6 = ((i5 - min) / 2) + paddingLeft;
            int i7 = ((((i2 - paddingTop) - paddingBottom) - min) / 2) + paddingTop;
            int i8 = this.f60634f;
            this.f60646r = new RectF(i6 + i8, i7 + i8, (i6 + min) - i8, (i7 + min) - i8);
        } else {
            int i9 = this.f60634f;
            this.f60646r = new RectF(paddingLeft + i9, paddingTop + i9, (i - paddingRight) - i9, (i2 - paddingBottom) - i9);
        }
        m5885b();
        invalidate();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            this.f60648t = SystemClock.uptimeMillis();
        }
    }

    public void setBarColor(int i) {
        this.f60642n = i;
        m5885b();
        if (!this.f60652x) {
            invalidate();
        }
    }

    public void setBarWidth(int i) {
        this.f60634f = i;
        if (!this.f60652x) {
            invalidate();
        }
    }

    public void setCallback(AbstractC17087a abstractC17087a) {
        this.f60653y = abstractC17087a;
        if (!this.f60652x) {
            m5884c();
        }
    }

    public void setCircleRadius(int i) {
        this.f60633e = i;
        if (!this.f60652x) {
            invalidate();
        }
    }

    public void setInstantProgress(float f) {
        float f2;
        if (this.f60652x) {
            this.f60650v = BitmapDescriptorFactory.HUE_RED;
            this.f60652x = false;
        }
        if (f > 1.0f) {
            f2 = f - 1.0f;
        } else {
            f2 = f;
            if (f < BitmapDescriptorFactory.HUE_RED) {
                f2 = 0.0f;
            }
        }
        if (f2 == this.f60651w) {
            return;
        }
        float min = Math.min(f2 * 360.0f, 360.0f);
        this.f60651w = min;
        this.f60650v = min;
        this.f60648t = SystemClock.uptimeMillis();
        invalidate();
    }

    public void setLinearProgress(boolean z) {
        this.f60649u = z;
        if (!this.f60652x) {
            invalidate();
        }
    }

    public void setProgress(float f) {
        float f2;
        if (this.f60652x) {
            this.f60650v = BitmapDescriptorFactory.HUE_RED;
            this.f60652x = false;
            m5884c();
        }
        if (f > 1.0f) {
            f2 = f - 1.0f;
        } else {
            f2 = f;
            if (f < BitmapDescriptorFactory.HUE_RED) {
                f2 = 0.0f;
            }
        }
        float f3 = this.f60651w;
        if (f2 == f3) {
            return;
        }
        if (this.f60650v == f3) {
            this.f60648t = SystemClock.uptimeMillis();
        }
        this.f60651w = Math.min(f2 * 360.0f, 360.0f);
        invalidate();
    }

    public void setRimColor(int i) {
        this.f60643o = i;
        m5885b();
        if (!this.f60652x) {
            invalidate();
        }
    }

    public void setRimWidth(int i) {
        this.f60635g = i;
        if (!this.f60652x) {
            invalidate();
        }
    }

    public void setSpinSpeed(float f) {
        this.f60647s = f * 360.0f;
    }
}
