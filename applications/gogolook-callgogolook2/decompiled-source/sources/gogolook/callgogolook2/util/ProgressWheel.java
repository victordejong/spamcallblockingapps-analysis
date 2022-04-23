package gogolook.callgogolook2.util;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import gogolook.callgogolook2.R$styleable;
import p459j.p460a.p582w0.C14217x3;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/util/ProgressWheel.class */
public class ProgressWheel extends View {

    /* renamed from: v */
    public static float f12943v = -1.0f;

    /* renamed from: w */
    public static int f12944w = 9999;

    /* renamed from: x */
    public static int f12945x = 0;

    /* renamed from: q */
    public boolean f12962q;

    /* renamed from: u */
    public AbstractC5256b f12966u;

    /* renamed from: a */
    public float f12946a = 41.7f;

    /* renamed from: b */
    public float f12947b = -1.0f;

    /* renamed from: c */
    public float f12948c = -1.0f;

    /* renamed from: d */
    public boolean f12949d = false;

    /* renamed from: e */
    public double f12950e = 0.0d;

    /* renamed from: f */
    public double f12951f = 690.0d;

    /* renamed from: g */
    public float f12952g = 0.0f;

    /* renamed from: h */
    public boolean f12953h = true;

    /* renamed from: i */
    public long f12954i = 0;

    /* renamed from: j */
    public int f12955j = Color.parseColor("#00c10e");

    /* renamed from: k */
    public int f12956k = ViewCompat.MEASURED_SIZE_MASK;

    /* renamed from: l */
    public Paint f12957l = new Paint();

    /* renamed from: m */
    public Paint f12958m = new Paint();

    /* renamed from: n */
    public RectF f12959n = new RectF();

    /* renamed from: o */
    public float f12960o = 230.0f;

    /* renamed from: p */
    public long f12961p = 0;

    /* renamed from: r */
    public float f12963r = 0.0f;

    /* renamed from: s */
    public float f12964s = 0.0f;

    /* renamed from: t */
    public boolean f12965t = false;

    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/util/ProgressWheel$WheelSavedState.class */
    public static class WheelSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<WheelSavedState> CREATOR = new C5254a();

        /* renamed from: a */
        public float f12967a;

        /* renamed from: b */
        public float f12968b;

        /* renamed from: c */
        public boolean f12969c;

        /* renamed from: d */
        public float f12970d;

        /* renamed from: e */
        public float f12971e;

        /* renamed from: f */
        public float f12972f;

        /* renamed from: g */
        public int f12973g;

        /* renamed from: h */
        public int f12974h;

        /* renamed from: i */
        public float f12975i;

        /* renamed from: j */
        public boolean f12976j;

        /* renamed from: k */
        public boolean f12977k;

        /* renamed from: gogolook.callgogolook2.util.ProgressWheel$WheelSavedState$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/util/ProgressWheel$WheelSavedState$a.class */
        public static final class C5254a implements Parcelable.Creator<WheelSavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WheelSavedState createFromParcel(Parcel parcel) {
                return new WheelSavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WheelSavedState[] newArray(int i) {
                return new WheelSavedState[i];
            }
        }

        public WheelSavedState(Parcel parcel) {
            super(parcel);
            this.f12967a = parcel.readFloat();
            this.f12968b = parcel.readFloat();
            boolean z = true;
            this.f12969c = parcel.readByte() != 0;
            this.f12970d = parcel.readFloat();
            this.f12971e = parcel.readFloat();
            this.f12972f = parcel.readFloat();
            this.f12973g = parcel.readInt();
            this.f12974h = parcel.readInt();
            this.f12975i = parcel.readFloat();
            this.f12976j = parcel.readByte() != 0;
            if (parcel.readByte() == 0) {
                z = false;
            }
            this.f12977k = z;
        }

        public WheelSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f12967a);
            parcel.writeFloat(this.f12968b);
            parcel.writeByte(this.f12969c ? (byte) 1 : (byte) 0);
            parcel.writeFloat(this.f12970d);
            parcel.writeFloat(this.f12971e);
            parcel.writeFloat(this.f12972f);
            parcel.writeInt(this.f12973g);
            parcel.writeInt(this.f12974h);
            parcel.writeFloat(this.f12975i);
            parcel.writeByte(this.f12976j ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f12977k ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: gogolook.callgogolook2.util.ProgressWheel$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/util/ProgressWheel$b.class */
    public interface AbstractC5256b {
        /* renamed from: a */
        void m26007a(float f);
    }

    public ProgressWheel(Context context) {
        super(context);
        m26011a(context, (AttributeSet) null);
    }

    public ProgressWheel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m26011a(context, attributeSet);
    }

    /* renamed from: a */
    public float m26012a(Context context, float f) {
        return (f * context.getResources().getDisplayMetrics().density) + 0.5f;
    }

    /* renamed from: a */
    public final void m26017a() {
        if (this.f12966u != null) {
            this.f12966u.m26007a(Math.round((this.f12963r * 100.0f) / 360.0f) / 100.0f);
        }
    }

    /* renamed from: a */
    public final void m26016a(float f) {
        AbstractC5256b bVar = this.f12966u;
        if (bVar != null) {
            bVar.m26007a(f);
        }
    }

    /* renamed from: a */
    public void m26015a(int i) {
        this.f12946a = i;
        if (!this.f12965t) {
            invalidate();
        }
    }

    /* renamed from: a */
    public final void m26014a(int i, int i2) {
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (!this.f12949d) {
            int i3 = (i - paddingLeft) - paddingRight;
            int min = Math.min(Math.min(i3, (i2 - paddingBottom) - paddingTop), (int) ((this.f12946a * 2.0f) - (this.f12947b * 2.0f)));
            int i4 = ((i3 - min) / 2) + paddingLeft;
            int i5 = ((((i2 - paddingTop) - paddingBottom) - min) / 2) + paddingTop;
            float f = i4;
            float f2 = this.f12947b;
            this.f12959n = new RectF(f + f2, i5 + f2, (i4 + min) - f2, (i5 + min) - f2);
            return;
        }
        float f3 = paddingLeft;
        float f4 = this.f12947b;
        this.f12959n = new RectF(f3 + f4, paddingTop + f4, (i - paddingRight) - f4, (i2 - paddingBottom) - f4);
    }

    /* renamed from: a */
    public final void m26013a(long j) {
        long j2 = this.f12954i;
        if (j2 >= 200) {
            this.f12950e += j;
            double d = this.f12950e;
            double d2 = this.f12951f;
            if (d > d2) {
                this.f12950e = d - d2;
                this.f12954i = 0L;
                this.f12953h = !this.f12953h;
            }
            float cos = (((float) Math.cos(((this.f12950e / this.f12951f) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
            if (this.f12953h) {
                this.f12952g = cos * 285.0f;
                return;
            }
            float f = (1.0f - cos) * 285.0f;
            this.f12963r += this.f12952g - f;
            this.f12952g = f;
            return;
        }
        this.f12954i = j2 + j;
    }

    /* renamed from: a */
    public void m26011a(Context context, AttributeSet attributeSet) {
        if (!isInEditMode()) {
            if (attributeSet != null) {
                m26010a(context.obtainStyledAttributes(attributeSet, R$styleable.ProgressWheel));
            }
            if (f12943v == -1.0f) {
                f12943v = ((m26012a(context, 3.6f) - m26012a(context, 0.5f)) * 0.9f) / (m26012a(context, 48.0f) - m26012a(context, 4.0f));
                f12944w = (int) m26012a(context, 5.0f);
                f12945x = (int) m26012a(context, 0.0f);
            }
        }
    }

    /* renamed from: a */
    public final void m26010a(TypedArray typedArray) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.f12947b = TypedValue.applyDimension(1, this.f12947b, displayMetrics);
        this.f12948c = TypedValue.applyDimension(1, this.f12948c, displayMetrics);
        this.f12946a = TypedValue.applyDimension(1, this.f12946a, displayMetrics);
        this.f12946a = typedArray.getDimension(3, this.f12946a);
        this.f12949d = typedArray.getBoolean(4, false);
        this.f12947b = typedArray.getDimension(2, this.f12947b);
        this.f12948c = typedArray.getDimension(9, this.f12948c);
        this.f12960o = typedArray.getFloat(10, this.f12960o / 360.0f) * 360.0f;
        this.f12951f = typedArray.getInt(1, (int) this.f12951f);
        this.f12955j = typedArray.getColor(0, this.f12955j);
        this.f12956k = typedArray.getColor(8, this.f12956k);
        this.f12962q = typedArray.getBoolean(5, false);
        boolean z = typedArray.getBoolean(11, false);
        int a = (this.f12949d || z) ? C14217x3.m2201a(0.5f) : C14217x3.m2201a(3.15f);
        setPadding(a, a, a, a);
        if (z) {
            this.f12946a = m26012a(getContext(), 15.0f);
        }
        if (typedArray.getBoolean(7, false)) {
            m26008c();
        }
        typedArray.recycle();
    }

    /* renamed from: b */
    public final void m26009b() {
        this.f12957l.setColor(this.f12955j);
        this.f12957l.setAntiAlias(true);
        this.f12957l.setStyle(Paint.Style.STROKE);
        this.f12957l.setStrokeWidth(this.f12947b);
        this.f12958m.setColor(this.f12956k);
        this.f12958m.setAntiAlias(true);
        this.f12958m.setStyle(Paint.Style.STROKE);
        this.f12958m.setStrokeWidth(this.f12948c);
    }

    /* renamed from: c */
    public void m26008c() {
        this.f12961p = SystemClock.uptimeMillis();
        this.f12965t = true;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        super.onDraw(canvas);
        canvas.drawArc(this.f12959n, 360.0f, 360.0f, false, this.f12958m);
        r11 = true;
        boolean z = true;
        if (this.f12965t) {
            long uptimeMillis = SystemClock.uptimeMillis() - this.f12961p;
            m26013a(uptimeMillis);
            this.f12963r += (((float) uptimeMillis) * this.f12960o) / 1000.0f;
            float f4 = this.f12963r;
            if (f4 > 360.0f) {
                this.f12963r = f4 - 360.0f;
                m26016a(-1.0f);
            }
            this.f12961p = SystemClock.uptimeMillis();
            float f5 = this.f12963r;
            float f6 = this.f12952g;
            if (isInEditMode()) {
                f2 = 0.0f;
                f3 = 135.0f;
            } else {
                f2 = f5 - 90.0f;
                f3 = f6 + 30.0f;
            }
            canvas.drawArc(this.f12959n, f2, f3, false, this.f12957l);
        } else {
            float f7 = this.f12963r;
            if (f7 != this.f12964s) {
                this.f12963r = Math.min(this.f12963r + ((((float) (SystemClock.uptimeMillis() - this.f12961p)) / 1000.0f) * this.f12960o), this.f12964s);
                this.f12961p = SystemClock.uptimeMillis();
            } else {
                z = false;
            }
            if (f7 != this.f12963r) {
                m26017a();
            }
            float f8 = this.f12963r;
            if (!this.f12962q) {
                f = ((float) (1.0d - Math.pow(1.0f - (f8 / 360.0f), 4.0f))) * 360.0f;
                f8 = ((float) (1.0d - Math.pow(1.0f - (this.f12963r / 360.0f), 2.0f))) * 360.0f;
            } else {
                f = 0.0f;
            }
            if (isInEditMode()) {
                f8 = 360.0f;
            }
            canvas.drawArc(this.f12959n, f - 90.0f, f8, false, this.f12957l);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        super.onMeasure(i, i2);
        int paddingLeft = (int) (this.f12946a + getPaddingLeft() + getPaddingRight());
        int paddingTop = (int) (this.f12946a + getPaddingTop() + getPaddingBottom());
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
        if (this.f12947b < 0.0f) {
            this.f12947b = f12943v * Math.min(i3, i4);
        }
        float f = this.f12947b;
        int i5 = f12944w;
        if (f > i5) {
            this.f12947b = i5;
        }
        float f2 = this.f12947b;
        int i6 = f12945x;
        if (f2 < i6) {
            this.f12947b = i6;
        }
        this.f12948c = this.f12947b;
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
        this.f12963r = wheelSavedState.f12967a;
        this.f12964s = wheelSavedState.f12968b;
        this.f12965t = wheelSavedState.f12969c;
        this.f12960o = wheelSavedState.f12970d;
        this.f12947b = wheelSavedState.f12971e;
        this.f12955j = wheelSavedState.f12973g;
        this.f12948c = wheelSavedState.f12972f;
        this.f12956k = wheelSavedState.f12974h;
        this.f12946a = wheelSavedState.f12975i;
        this.f12962q = wheelSavedState.f12976j;
        this.f12949d = wheelSavedState.f12977k;
        this.f12961p = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        WheelSavedState wheelSavedState = new WheelSavedState(super.onSaveInstanceState());
        wheelSavedState.f12967a = this.f12963r;
        wheelSavedState.f12968b = this.f12964s;
        wheelSavedState.f12969c = this.f12965t;
        wheelSavedState.f12970d = this.f12960o;
        wheelSavedState.f12971e = this.f12947b;
        wheelSavedState.f12973g = this.f12955j;
        wheelSavedState.f12972f = this.f12948c;
        wheelSavedState.f12974h = this.f12956k;
        wheelSavedState.f12975i = this.f12946a;
        wheelSavedState.f12976j = this.f12962q;
        wheelSavedState.f12977k = this.f12949d;
        return wheelSavedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m26014a(i, i2);
        m26009b();
        invalidate();
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            this.f12961p = SystemClock.uptimeMillis();
        }
    }
}
