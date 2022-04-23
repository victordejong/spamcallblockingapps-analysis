package com.rey.material.app;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import com.callerid.block.R$style;
import com.callerid.block.R$styleable;
import com.rey.material.app.C2824a;
import com.rey.material.widget.Button;
import com.rey.material.widget.TextView;
import d.h.m.t;
import p092e.p107g.p108a.p109a.C3103a;
import p092e.p107g.p108a.p109a.View$OnTouchListenerC3116f;
import p092e.p107g.p108a.p110b.C3122b;
import p092e.p107g.p108a.p110b.C3124d;
/* loaded from: classes2-dex2jar.jar:com/rey/material/app/Dialog.class */
public class Dialog extends android.app.Dialog {

    /* renamed from: B */
    public static final int f11672B = C3124d.m71f();

    /* renamed from: C */
    public static final int f11673C = C3124d.m71f();

    /* renamed from: D */
    public static final int f11674D = C3124d.m71f();

    /* renamed from: E */
    public static final int f11675E = C3124d.m71f();

    /* renamed from: A */
    private boolean f11676A;

    /* renamed from: b */
    private C2816d f11677b;

    /* renamed from: c */
    private int f11678c;

    /* renamed from: d */
    private int f11679d;

    /* renamed from: e */
    private int f11680e;

    /* renamed from: f */
    private int f11681f;

    /* renamed from: g */
    protected TextView f11682g;

    /* renamed from: h */
    protected Button f11683h;

    /* renamed from: i */
    protected Button f11684i;

    /* renamed from: j */
    protected Button f11685j;

    /* renamed from: k */
    private View f11686k;

    /* renamed from: l */
    private C2817e f11687l;

    /* renamed from: m */
    protected int f11688m;

    /* renamed from: n */
    protected int f11689n;

    /* renamed from: o */
    protected int f11690o;

    /* renamed from: p */
    protected int f11691p;

    /* renamed from: q */
    protected int f11692q;

    /* renamed from: r */
    protected int f11693r;

    /* renamed from: s */
    protected int f11694s;

    /* renamed from: t */
    protected int f11695t;

    /* renamed from: u */
    protected int f11696u;

    /* renamed from: v */
    protected int f11697v;

    /* renamed from: w */
    private final Handler f11698w;

    /* renamed from: x */
    private final Runnable f11699x;

    /* renamed from: y */
    private boolean f11700y;

    /* renamed from: z */
    private boolean f11701z;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/Dialog$Builder.class */
    public static class Builder implements C2824a.AbstractC2826b, Parcelable {
        public static final Parcelable.Creator<Builder> CREATOR = new C2812a();

        /* renamed from: b */
        protected int f11702b;

        /* renamed from: c */
        protected int f11703c;

        /* renamed from: d */
        protected CharSequence f11704d;

        /* renamed from: e */
        protected CharSequence f11705e;

        /* renamed from: f */
        protected CharSequence f11706f;

        /* renamed from: g */
        protected CharSequence f11707g;

        /* renamed from: h */
        protected Dialog f11708h;

        /* renamed from: com.rey.material.app.Dialog$Builder$a */
        /* loaded from: classes2-dex2jar.jar:com/rey/material/app/Dialog$Builder$a.class */
        static final class C2812a implements Parcelable.Creator<Builder> {
            C2812a() {
            }

            /* renamed from: a */
            public Builder createFromParcel(Parcel parcel) {
                return new Builder(parcel);
            }

            /* renamed from: b */
            public Builder[] newArray(int i) {
                return new Builder[i];
            }
        }

        public Builder() {
            this((int) R$style.Material_App_Dialog_Light);
        }

        public Builder(int i) {
            this.f11702b = i;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Builder(Parcel parcel) {
            try {
                this.f11702b = parcel.readInt();
                this.f11703c = parcel.readInt();
                this.f11704d = (CharSequence) parcel.readParcelable(getClass().getClassLoader());
                this.f11705e = (CharSequence) parcel.readParcelable(Dialog.class.getClassLoader());
                this.f11706f = (CharSequence) parcel.readParcelable(getClass().getClassLoader());
                this.f11707g = (CharSequence) parcel.readParcelable(getClass().getClassLoader());
            } catch (Exception e) {
                e.printStackTrace();
            }
            mo1479l(parcel);
        }

        @Override // com.rey.material.app.C2824a.AbstractC2826b
        /* renamed from: a */
        public void mo1463a(C2824a aVar) {
            aVar.E1();
        }

        @Override // com.rey.material.app.C2824a.AbstractC2826b
        /* renamed from: b */
        public void mo1462b(C2824a aVar) {
            aVar.E1();
        }

        @Override // com.rey.material.app.C2824a.AbstractC2826b
        /* renamed from: c */
        public Dialog mo1461c(Context context) {
            Dialog h = mo1480h(context, this.f11702b);
            this.f11708h = h;
            Dialog u0 = h.mo1485u0(this.f11704d);
            u0.m1547j0(this.f11705e);
            u0.m1576P(this.f11706f);
            u0.m1567Y(this.f11707g);
            int i = this.f11703c;
            if (i != 0) {
                this.f11708h.m1521z(i);
            }
            m1518i(this.f11708h);
            return this.f11708h;
        }

        @Override // com.rey.material.app.C2824a.AbstractC2826b
        /* renamed from: d */
        public void mo1460d(C2824a aVar) {
            aVar.E1();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: f */
        public Builder m1520f(int i) {
            this.f11703c = i;
            return this;
        }

        /* renamed from: g */
        public Builder m1519g(CharSequence charSequence) {
            this.f11706f = charSequence;
            return this;
        }

        /* renamed from: h */
        protected Dialog mo1480h(Context context, int i) {
            return new Dialog(context, i);
        }

        /* renamed from: i */
        protected void m1518i(Dialog dialog) {
        }

        /* renamed from: l */
        protected void mo1479l(Parcel parcel) {
        }

        /* renamed from: m */
        protected void mo1478m(Parcel parcel, int i) {
        }

        /* renamed from: n */
        public Builder m1517n(CharSequence charSequence) {
            this.f11705e = charSequence;
            return this;
        }

        /* renamed from: o */
        public Builder m1516o(CharSequence charSequence) {
            this.f11704d = charSequence;
            return this;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f11702b);
            parcel.writeInt(this.f11703c);
            parcel.writeValue(this.f11704d);
            parcel.writeValue(this.f11705e);
            parcel.writeValue(this.f11706f);
            parcel.writeValue(this.f11707g);
            mo1478m(parcel, i);
        }
    }

    /* renamed from: com.rey.material.app.Dialog$a */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/Dialog$a.class */
    class RunnableC2813a implements Runnable {
        RunnableC2813a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Dialog.super.dismiss();
            } catch (IllegalArgumentException e) {
            }
        }
    }

    /* renamed from: com.rey.material.app.Dialog$b */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/Dialog$b.class */
    class ViewTreeObserver$OnPreDrawListenerC2814b implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserver$OnPreDrawListenerC2814b() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            Dialog.this.f11687l.getViewTreeObserver().removeOnPreDrawListener(this);
            Dialog.this.f11687l.startAnimation(AnimationUtils.loadAnimation(Dialog.this.f11687l.getContext(), Dialog.this.f11696u));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.rey.material.app.Dialog$c  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/Dialog$c.class */
    public class animationAnimation$AnimationListenerC2815c implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC2815c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Dialog.this.f11698w.post(Dialog.this.f11699x);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.rey.material.app.Dialog$d */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/Dialog$d.class */
    public class C2816d extends FrameLayout {

        /* renamed from: b */
        private boolean f11712b = false;

        public C2816d(Context context) {
            super(context);
        }

        /* renamed from: a */
        private boolean m1513a(float f, float f2) {
            return f < ((float) (Dialog.this.f11687l.getLeft() + Dialog.this.f11687l.getPaddingLeft())) || f > ((float) (Dialog.this.f11687l.getRight() - Dialog.this.f11687l.getPaddingRight())) || f2 < ((float) (Dialog.this.f11687l.getTop() + Dialog.this.f11687l.getPaddingTop())) || f2 > ((float) (Dialog.this.f11687l.getBottom() - Dialog.this.f11687l.getPaddingBottom()));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int measuredWidth = ((i3 - i) - Dialog.this.f11687l.getMeasuredWidth()) / 2;
            int measuredHeight = ((i4 - i2) - Dialog.this.f11687l.getMeasuredHeight()) / 2;
            Dialog.this.f11687l.layout(measuredWidth, measuredHeight, Dialog.this.f11687l.getMeasuredWidth() + measuredWidth, Dialog.this.f11687l.getMeasuredHeight() + measuredHeight);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            Dialog.this.f11687l.measure(i, i2);
            setMeasuredDimension(size, size2);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (super.onTouchEvent(motionEvent)) {
                return true;
            }
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 1) {
                    if (action == 2) {
                        return this.f11712b;
                    }
                    if (action != 3) {
                        return false;
                    }
                    this.f11712b = false;
                    return false;
                } else if (!this.f11712b || !m1513a(motionEvent.getX(), motionEvent.getY())) {
                    return false;
                } else {
                    this.f11712b = false;
                    if (!Dialog.this.f11701z || !Dialog.this.f11676A) {
                        return true;
                    }
                    Dialog.this.dismiss();
                    return true;
                }
            } else if (!m1513a(motionEvent.getX(), motionEvent.getY())) {
                return false;
            } else {
                this.f11712b = true;
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.rey.material.app.Dialog$e */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/Dialog$e.class */
    public class C2817e extends CardView {

        /* renamed from: k */
        private Paint f11714k;

        /* renamed from: n */
        private int f11717n;

        /* renamed from: o */
        private int f11718o;

        /* renamed from: p */
        private int f11719p;

        /* renamed from: q */
        private int f11720q;

        /* renamed from: l */
        private float f11715l = -1.0f;

        /* renamed from: m */
        private boolean f11716m = false;

        /* renamed from: r */
        private boolean f11721r = false;

        public C2817e(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.f11714k = paint;
            paint.setStyle(Paint.Style.STROKE);
            setWillNotDraw(false);
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
            if (!this.f11716m) {
                return;
            }
            if (Dialog.this.f11683h.getVisibility() == 0 || Dialog.this.f11684i.getVisibility() == 0 || Dialog.this.f11685j.getVisibility() == 0) {
                canvas.drawLine(getPaddingLeft(), this.f11715l, getWidth() - getPaddingRight(), this.f11715l, this.f11714k);
            }
        }

        /* renamed from: h */
        public void m1512h(int i) {
            m1511i(i, i, i, i);
        }

        /* renamed from: i */
        public void m1511i(int i, int i2, int i3, int i4) {
            this.f11717n = i;
            this.f11718o = i2;
            this.f11719p = i3;
            this.f11720q = i4;
        }

        /* renamed from: j */
        public void m1510j(int i) {
            this.f11714k.setColor(i);
            invalidate();
        }

        /* renamed from: k */
        public void m1509k(int i) {
            this.f11714k.setStrokeWidth(i);
            invalidate();
        }

        /* renamed from: l */
        public void m1508l(boolean z) {
            if (this.f11716m != z) {
                this.f11716m = z;
                invalidate();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:43:0x035f, code lost:
            if (r12 == false) goto L_0x0365;
         */
        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 933
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rey.material.app.Dialog.C2817e.onLayout(boolean, int, int, int, int):void");
        }

        @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9;
            int i10;
            int i11;
            int i12;
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            Dialog dialog = Dialog.this;
            int max = Math.max(dialog.f11694s, dialog.f11687l.getPaddingLeft());
            Dialog dialog2 = Dialog.this;
            int max2 = Math.max(dialog2.f11694s, dialog2.f11687l.getPaddingRight());
            Dialog dialog3 = Dialog.this;
            int max3 = Math.max(dialog3.f11695t, dialog3.f11687l.getPaddingTop());
            Dialog dialog4 = Dialog.this;
            int max4 = Math.max(dialog4.f11695t, dialog4.f11687l.getPaddingBottom());
            int i13 = (size - max) - max2;
            int i14 = i13;
            if (Dialog.this.f11680e > 0) {
                i14 = Math.min(i13, Dialog.this.f11680e);
            }
            int i15 = (size2 - max3) - max4;
            int i16 = i15;
            if (Dialog.this.f11681f > 0) {
                i16 = Math.min(i15, Dialog.this.f11681f);
            }
            int i17 = Dialog.this.f11678c == -1 ? i14 : Dialog.this.f11678c;
            int i18 = Dialog.this.f11679d == -1 ? i16 : Dialog.this.f11679d;
            if (Dialog.this.f11682g.getVisibility() == 0) {
                Dialog.this.f11682g.measure(View.MeasureSpec.makeMeasureSpec(i17 == -2 ? i14 : i17, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i16, Integer.MIN_VALUE));
                i4 = Dialog.this.f11682g.getMeasuredWidth();
                i3 = Dialog.this.f11682g.getMeasuredHeight();
            } else {
                i4 = 0;
                i3 = 0;
            }
            if (Dialog.this.f11686k != null) {
                Dialog.this.f11686k.measure(View.MeasureSpec.makeMeasureSpec(((i17 == -2 ? i14 : i17) - this.f11717n) - this.f11719p, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec((i16 - this.f11718o) - this.f11720q, Integer.MIN_VALUE));
                i6 = Dialog.this.f11686k.getMeasuredWidth();
                i5 = Dialog.this.f11686k.getMeasuredHeight();
            } else {
                i6 = 0;
                i5 = 0;
            }
            if (Dialog.this.f11683h.getVisibility() == 0) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Dialog.this.f11689n, 1073741824);
                Dialog.this.f11683h.measure(makeMeasureSpec, makeMeasureSpec2);
                int measuredWidth = Dialog.this.f11683h.getMeasuredWidth();
                Dialog dialog5 = Dialog.this;
                int i19 = dialog5.f11692q;
                i7 = measuredWidth;
                if (measuredWidth < i19) {
                    dialog5.f11683h.measure(View.MeasureSpec.makeMeasureSpec(i19, 1073741824), makeMeasureSpec2);
                    i7 = Dialog.this.f11692q;
                }
                i8 = 1;
            } else {
                i7 = 0;
                i8 = 0;
            }
            if (Dialog.this.f11684i.getVisibility() == 0) {
                int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(0, 0);
                int makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(Dialog.this.f11689n, 1073741824);
                Dialog.this.f11684i.measure(makeMeasureSpec3, makeMeasureSpec4);
                int measuredWidth2 = Dialog.this.f11684i.getMeasuredWidth();
                Dialog dialog6 = Dialog.this;
                int i20 = dialog6.f11692q;
                i9 = measuredWidth2;
                if (measuredWidth2 < i20) {
                    dialog6.f11684i.measure(View.MeasureSpec.makeMeasureSpec(i20, 1073741824), makeMeasureSpec4);
                    i9 = Dialog.this.f11692q;
                }
                i8++;
            } else {
                i9 = 0;
            }
            if (Dialog.this.f11685j.getVisibility() == 0) {
                int makeMeasureSpec5 = View.MeasureSpec.makeMeasureSpec(0, 0);
                int makeMeasureSpec6 = View.MeasureSpec.makeMeasureSpec(Dialog.this.f11689n, 1073741824);
                Dialog.this.f11685j.measure(makeMeasureSpec5, makeMeasureSpec6);
                i10 = Dialog.this.f11685j.getMeasuredWidth();
                Dialog dialog7 = Dialog.this;
                int i21 = dialog7.f11692q;
                if (i10 < i21) {
                    dialog7.f11685j.measure(View.MeasureSpec.makeMeasureSpec(i21, 1073741824), makeMeasureSpec6);
                    i10 = Dialog.this.f11692q;
                }
                i11 = i8 + 1;
            } else {
                i10 = 0;
                i11 = i8;
            }
            Dialog dialog8 = Dialog.this;
            int max5 = i7 + i9 + i10 + (dialog8.f11691p * 2) + (dialog8.f11693r * Math.max(0, i11 - 1));
            int i22 = i17;
            if (i17 == -2) {
                i22 = Math.min(i14, Math.max(i4, Math.max(i6 + this.f11717n + this.f11719p, max5)));
            }
            Dialog.this.f11700y = max5 > i22;
            Dialog dialog9 = Dialog.this;
            int i23 = i3 + dialog9.f11693r + this.f11718o + this.f11720q;
            if (dialog9.f11700y) {
                i12 = i23 + (Dialog.this.f11690o * i11);
            } else {
                i12 = i23 + (i11 > 0 ? Dialog.this.f11690o : 0);
            }
            int i24 = i18;
            if (i18 == -2) {
                i24 = Math.min(i16, i5 + i12);
            }
            if (Dialog.this.f11686k != null) {
                Dialog.this.f11686k.measure(View.MeasureSpec.makeMeasureSpec((i22 - this.f11717n) - this.f11719p, 1073741824), View.MeasureSpec.makeMeasureSpec(i24 - i12, 1073741824));
            }
            setMeasuredDimension(i22 + getPaddingLeft() + getPaddingRight(), i24 + getPaddingTop() + getPaddingBottom());
        }

        @Override // android.view.View
        @TargetApi(17)
        public void onRtlPropertiesChanged(int i) {
            boolean z = true;
            if (i != 1) {
                z = false;
            }
            if (this.f11721r != z) {
                this.f11721r = z;
                if (Build.VERSION.SDK_INT >= 17) {
                    int i2 = z ? 4 : 3;
                    Dialog.this.f11682g.setTextDirection(i2);
                    Dialog.this.f11683h.setTextDirection(i2);
                    Dialog.this.f11684i.setTextDirection(i2);
                    Dialog.this.f11685j.setTextDirection(i2);
                }
                requestLayout();
            }
        }
    }

    public Dialog(Context context) {
        this(context, R$style.Material_App_Dialog_Light);
    }

    public Dialog(Context context, int i) {
        super(context, i);
        this.f11678c = -2;
        this.f11679d = -2;
        this.f11698w = new Handler();
        this.f11699x = new RunnableC2813a();
        this.f11700y = false;
        this.f11701z = true;
        this.f11676A = true;
        requestWindowFeature(1);
        getWindow().setBackgroundDrawable(C3103a.m216a());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        attributes.windowAnimations = R$style.DialogNoAnimation;
        getWindow().setAttributes(attributes);
        m1583I(context, i);
    }

    /* renamed from: I */
    private void m1583I(Context context, int i) {
        this.f11688m = C3122b.m81e(context, 24);
        this.f11692q = C3122b.m81e(context, 64);
        this.f11689n = C3122b.m81e(context, 36);
        this.f11690o = C3122b.m81e(context, 48);
        this.f11693r = C3122b.m81e(context, 8);
        this.f11691p = C3122b.m81e(context, 16);
        this.f11694s = C3122b.m81e(context, 40);
        this.f11695t = C3122b.m81e(context, 24);
        this.f11687l = new C2817e(context);
        this.f11677b = new C2816d(context);
        this.f11682g = new TextView(context);
        this.f11683h = new Button(context);
        this.f11684i = new Button(context);
        this.f11685j = new Button(context);
        this.f11687l.setPreventCornerOverlap(false);
        this.f11687l.setUseCompatPadding(true);
        this.f11682g.setId(f11672B);
        this.f11682g.setGravity(8388611);
        TextView textView = this.f11682g;
        int i2 = this.f11688m;
        textView.setPadding(i2, i2, i2, i2 - this.f11693r);
        this.f11683h.setId(f11673C);
        Button button = this.f11683h;
        int i3 = this.f11693r;
        button.setPadding(i3, 0, i3, 0);
        this.f11683h.setBackgroundResource(0);
        this.f11684i.setId(f11674D);
        Button button2 = this.f11684i;
        int i4 = this.f11693r;
        button2.setPadding(i4, 0, i4, 0);
        this.f11684i.setBackgroundResource(0);
        this.f11685j.setId(f11675E);
        Button button3 = this.f11685j;
        int i5 = this.f11693r;
        button3.setPadding(i5, 0, i5, 0);
        this.f11685j.setBackgroundResource(0);
        this.f11677b.addView(this.f11687l);
        this.f11687l.addView(this.f11682g);
        this.f11687l.addView(this.f11683h);
        this.f11687l.addView(this.f11684i);
        this.f11687l.addView(this.f11685j);
        m1529t(C3122b.m78h(context, -1));
        m1585G(C3122b.m81e(context, 4));
        m1590B(C3122b.m81e(context, 2));
        m1589C(0.5f);
        m1582J(3);
        m1524w0(R$style.TextAppearance_AppCompat_Title);
        m1536p(R$style.TextAppearance_AppCompat_Button);
        m1587E(503316480);
        m1586F(C3122b.m81e(context, 1));
        m1527u(true);
        m1526v(true);
        mo1484w();
        mo1487g0();
        mo1486s(i);
        super.setContentView(this.f11677b);
    }

    /* renamed from: A */
    public Dialog mo1507A(View view) {
        View view2 = this.f11686k;
        if (view2 != view) {
            if (view2 != null) {
                this.f11687l.removeView(view2);
            }
            this.f11686k = view;
        }
        View view3 = this.f11686k;
        if (view3 != null) {
            this.f11687l.addView(view3);
        }
        return this;
    }

    /* renamed from: B */
    public Dialog m1590B(float f) {
        this.f11687l.setRadius(f);
        return this;
    }

    /* renamed from: C */
    public Dialog m1589C(float f) {
        Window window = getWindow();
        if (f > 0.0f) {
            window.addFlags(2);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = f;
            window.setAttributes(attributes);
        } else {
            window.clearFlags(2);
        }
        return this;
    }

    /* renamed from: D */
    public void m1588D() {
        super.dismiss();
        Handler handler = this.f11698w;
        if (handler != null) {
            handler.removeCallbacks(this.f11699x);
        }
    }

    /* renamed from: E */
    public Dialog m1587E(int i) {
        this.f11687l.m1510j(i);
        return this;
    }

    /* renamed from: F */
    public Dialog m1586F(int i) {
        this.f11687l.m1509k(i);
        return this;
    }

    /* renamed from: G */
    public Dialog m1585G(float f) {
        if (this.f11687l.getMaxCardElevation() < f) {
            this.f11687l.setMaxCardElevation(f);
        }
        this.f11687l.setCardElevation(f);
        return this;
    }

    /* renamed from: H */
    public Dialog m1584H(int i) {
        this.f11696u = i;
        return this;
    }

    /* renamed from: J */
    public Dialog m1582J(int i) {
        t.A0(this.f11687l, i);
        return this;
    }

    /* renamed from: K */
    public Dialog m1581K(int i, int i2) {
        this.f11678c = i;
        this.f11679d = i2;
        return this;
    }

    /* renamed from: L */
    public Dialog m1580L(float f) {
        this.f11687l.setMaxCardElevation(f);
        return this;
    }

    /* renamed from: M */
    public Dialog m1579M(int i) {
        this.f11681f = i;
        return this;
    }

    /* renamed from: N */
    public Dialog m1578N(int i) {
        this.f11680e = i;
        return this;
    }

    /* renamed from: O */
    public Dialog m1577O(int i) {
        m1576P(i == 0 ? null : getContext().getResources().getString(i));
        return this;
    }

    /* renamed from: P */
    public Dialog m1576P(CharSequence charSequence) {
        this.f11684i.setText(charSequence);
        this.f11684i.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        return this;
    }

    /* renamed from: Q */
    public Dialog m1575Q(int i) {
        m1574R(i == 0 ? null : getContext().getResources().getDrawable(i));
        return this;
    }

    /* renamed from: R */
    public Dialog m1574R(Drawable drawable) {
        C3124d.m69h(this.f11684i, drawable);
        return this;
    }

    /* renamed from: S */
    public Dialog m1573S(View.OnClickListener onClickListener) {
        this.f11684i.setOnClickListener(onClickListener);
        return this;
    }

    /* renamed from: T */
    public Dialog m1572T(int i) {
        m1574R(new View$OnTouchListenerC3116f.C3118b(getContext(), i).m112g());
        return this;
    }

    /* renamed from: U */
    public Dialog m1571U(int i) {
        this.f11684i.setTextAppearance(getContext(), i);
        return this;
    }

    /* renamed from: V */
    public Dialog m1570V(int i) {
        this.f11684i.setTextColor(i);
        return this;
    }

    /* renamed from: W */
    public Dialog m1569W(ColorStateList colorStateList) {
        this.f11684i.setTextColor(colorStateList);
        return this;
    }

    /* renamed from: X */
    public Dialog m1568X(int i) {
        m1567Y(i == 0 ? null : getContext().getResources().getString(i));
        return this;
    }

    /* renamed from: Y */
    public Dialog m1567Y(CharSequence charSequence) {
        this.f11685j.setText(charSequence);
        this.f11685j.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        return this;
    }

    /* renamed from: Z */
    public Dialog m1566Z(int i) {
        m1564a0(i == 0 ? null : getContext().getResources().getDrawable(i));
        return this;
    }

    /* renamed from: a0 */
    public Dialog m1564a0(Drawable drawable) {
        C3124d.m69h(this.f11685j, drawable);
        return this;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        mo1507A(view);
    }

    /* renamed from: b0 */
    public Dialog m1562b0(View.OnClickListener onClickListener) {
        this.f11685j.setOnClickListener(onClickListener);
        return this;
    }

    /* renamed from: c0 */
    public Dialog m1560c0(int i) {
        m1564a0(new View$OnTouchListenerC3116f.C3118b(getContext(), i).m112g());
        return this;
    }

    /* renamed from: d0 */
    public Dialog m1558d0(int i) {
        this.f11685j.setTextAppearance(getContext(), i);
        return this;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (isShowing()) {
            if (this.f11697v != 0) {
                Animation loadAnimation = AnimationUtils.loadAnimation(this.f11677b.getContext(), this.f11697v);
                loadAnimation.setAnimationListener(new animationAnimation$AnimationListenerC2815c());
                this.f11687l.startAnimation(loadAnimation);
                return;
            }
            this.f11698w.post(this.f11699x);
        }
    }

    /* renamed from: e0 */
    public Dialog m1556e0(int i) {
        this.f11685j.setTextColor(i);
        return this;
    }

    /* renamed from: f0 */
    public Dialog m1554f0(ColorStateList colorStateList) {
        this.f11685j.setTextColor(colorStateList);
        return this;
    }

    /* renamed from: g0 */
    protected void mo1487g0() {
    }

    /* renamed from: h0 */
    public Dialog m1551h0(int i) {
        this.f11697v = i;
        return this;
    }

    /* renamed from: i0 */
    public Dialog m1549i0(int i) {
        m1547j0(i == 0 ? null : getContext().getResources().getString(i));
        return this;
    }

    /* renamed from: j0 */
    public Dialog m1547j0(CharSequence charSequence) {
        this.f11683h.setText(charSequence);
        this.f11683h.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        return this;
    }

    /* renamed from: k0 */
    public Dialog m1545k0(int i) {
        m1543l0(i == 0 ? null : getContext().getResources().getDrawable(i));
        return this;
    }

    /* renamed from: l0 */
    public Dialog m1543l0(Drawable drawable) {
        C3124d.m69h(this.f11683h, drawable);
        return this;
    }

    /* renamed from: m0 */
    public Dialog m1541m0(View.OnClickListener onClickListener) {
        this.f11683h.setOnClickListener(onClickListener);
        return this;
    }

    /* renamed from: n */
    public Dialog m1540n(int i) {
        m1545k0(i);
        m1575Q(i);
        m1566Z(i);
        return this;
    }

    /* renamed from: n0 */
    public Dialog m1539n0(int i) {
        m1543l0(new View$OnTouchListenerC3116f.C3118b(getContext(), i).m112g());
        return this;
    }

    /* renamed from: o */
    public Dialog m1538o(int i) {
        m1539n0(i);
        m1572T(i);
        m1560c0(i);
        return this;
    }

    /* renamed from: o0 */
    public Dialog m1537o0(int i) {
        this.f11683h.setTextAppearance(getContext(), i);
        return this;
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        if (this.f11696u != 0) {
            this.f11687l.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC2814b());
        }
    }

    /* renamed from: p */
    public Dialog m1536p(int i) {
        m1537o0(i);
        m1571U(i);
        m1558d0(i);
        return this;
    }

    /* renamed from: p0 */
    public Dialog m1535p0(int i) {
        this.f11683h.setTextColor(i);
        return this;
    }

    /* renamed from: q */
    public Dialog m1534q(int i, int i2) {
        m1535p0(i);
        m1570V(i2);
        m1556e0(i);
        return this;
    }

    /* renamed from: q0 */
    public Dialog m1533q0(ColorStateList colorStateList) {
        this.f11683h.setTextColor(colorStateList);
        return this;
    }

    /* renamed from: r */
    public Dialog m1532r(ColorStateList colorStateList) {
        m1533q0(colorStateList);
        m1569W(colorStateList);
        m1554f0(colorStateList);
        return this;
    }

    /* renamed from: r0 */
    public Dialog m1531r0(Typeface typeface) {
        this.f11683h.setTypeface(typeface);
        this.f11684i.setTypeface(typeface);
        this.f11685j.setTypeface(typeface);
        this.f11682g.setTypeface(typeface);
        this.f11682g.setTextSize(16.0f);
        return this;
    }

    /* renamed from: s */
    public Dialog mo1486s(int i) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(i, R$styleable.Dialog);
        int i2 = this.f11678c;
        int i3 = this.f11679d;
        int indexCount = obtainStyledAttributes.getIndexCount();
        ColorStateList colorStateList = null;
        ColorStateList colorStateList2 = null;
        ColorStateList colorStateList3 = null;
        ColorStateList colorStateList4 = null;
        boolean z = false;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        for (int i18 = 0; i18 < indexCount; i18++) {
            int index = obtainStyledAttributes.getIndex(i18);
            if (index == 0) {
                i2 = obtainStyledAttributes.getLayoutDimension(index, -2);
            } else if (index == 1) {
                i3 = obtainStyledAttributes.getLayoutDimension(index, -2);
            } else {
                if (index == 18) {
                    m1578N(obtainStyledAttributes.getDimensionPixelOffset(index, 0));
                    colorStateList = colorStateList;
                    colorStateList2 = colorStateList2;
                    colorStateList3 = colorStateList3;
                    i4 = i4;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    i10 = i10;
                    i11 = i11;
                    i12 = i12;
                    i13 = i13;
                    i14 = i14;
                    i15 = i15;
                    i16 = i16;
                    i17 = i17;
                } else if (index == 17) {
                    m1579M(obtainStyledAttributes.getDimensionPixelOffset(index, 0));
                    colorStateList = colorStateList;
                    colorStateList2 = colorStateList2;
                    colorStateList3 = colorStateList3;
                    i4 = i4;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    i10 = i10;
                    i11 = i11;
                    i12 = i12;
                    i13 = i13;
                    i14 = i14;
                    i15 = i15;
                    i16 = i16;
                    i17 = i17;
                } else if (index == 10) {
                    m1589C(obtainStyledAttributes.getFloat(index, 0.0f));
                    colorStateList = colorStateList;
                    colorStateList2 = colorStateList2;
                    colorStateList3 = colorStateList3;
                    i4 = i4;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    i10 = i10;
                    i11 = i11;
                    i12 = i12;
                    i13 = i13;
                    i14 = i14;
                    i15 = i15;
                    i16 = i16;
                    i17 = i17;
                } else if (index == 6) {
                    m1529t(obtainStyledAttributes.getColor(index, 0));
                    colorStateList = colorStateList;
                    colorStateList2 = colorStateList2;
                    colorStateList3 = colorStateList3;
                    i4 = i4;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    i10 = i10;
                    i11 = i11;
                    i12 = i12;
                    i13 = i13;
                    i14 = i14;
                    i15 = i15;
                    i16 = i16;
                    i17 = i17;
                } else if (index == 16) {
                    m1580L(obtainStyledAttributes.getDimensionPixelOffset(index, 0));
                    colorStateList = colorStateList;
                    colorStateList2 = colorStateList2;
                    colorStateList3 = colorStateList3;
                    i4 = i4;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    i10 = i10;
                    i11 = i11;
                    i12 = i12;
                    i13 = i13;
                    i14 = i14;
                    i15 = i15;
                    i16 = i16;
                    i17 = i17;
                } else if (index == 13) {
                    m1585G(obtainStyledAttributes.getDimensionPixelOffset(index, 0));
                    colorStateList = colorStateList;
                    colorStateList2 = colorStateList2;
                    colorStateList3 = colorStateList3;
                    i4 = i4;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    i10 = i10;
                    i11 = i11;
                    i12 = i12;
                    i13 = i13;
                    i14 = i14;
                    i15 = i15;
                    i16 = i16;
                    i17 = i17;
                } else if (index == 9) {
                    m1590B(obtainStyledAttributes.getDimensionPixelOffset(index, 0));
                    colorStateList = colorStateList;
                    colorStateList2 = colorStateList2;
                    colorStateList3 = colorStateList3;
                    i4 = i4;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    i10 = i10;
                    i11 = i11;
                    i12 = i12;
                    i13 = i13;
                    i14 = i14;
                    i15 = i15;
                    i16 = i16;
                    i17 = i17;
                } else if (index == 15) {
                    m1582J(obtainStyledAttributes.getInteger(index, 0));
                    colorStateList = colorStateList;
                    colorStateList2 = colorStateList2;
                    colorStateList3 = colorStateList3;
                    i4 = i4;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    i10 = i10;
                    i11 = i11;
                    i12 = i12;
                    i13 = i13;
                    i14 = i14;
                    i15 = i15;
                    i16 = i16;
                    i17 = i17;
                } else if (index == 32) {
                    i4 = obtainStyledAttributes.getResourceId(index, 0);
                    colorStateList = colorStateList;
                    colorStateList2 = colorStateList2;
                    colorStateList3 = colorStateList3;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    i9 = i9;
                    i10 = i10;
                    i11 = i11;
                    i12 = i12;
                    i13 = i13;
                    i14 = i14;
                    i15 = i15;
                    i16 = i16;
                    i17 = i17;
                } else {
                    if (index == 33) {
                        i5 = obtainStyledAttributes.getColor(index, 0);
                        z2 = true;
                    } else if (index == 2) {
                        i6 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 3) {
                        i7 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 4) {
                        i8 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 5) {
                        colorStateList = obtainStyledAttributes.getColorStateList(index);
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 28) {
                        i9 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 29) {
                        i10 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 30) {
                        i11 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 31) {
                        colorStateList2 = obtainStyledAttributes.getColorStateList(index);
                        colorStateList = colorStateList;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 19) {
                        i12 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 20) {
                        i13 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 21) {
                        i14 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 22) {
                        colorStateList3 = obtainStyledAttributes.getColorStateList(index);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 23) {
                        i15 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 24) {
                        i16 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i17 = i17;
                    } else if (index == 25) {
                        i17 = obtainStyledAttributes.getResourceId(index, 0);
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                    } else if (index == 26) {
                        colorStateList4 = obtainStyledAttributes.getColorStateList(index);
                    } else if (index == 14) {
                        m1584H(obtainStyledAttributes.getResourceId(index, 0));
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 27) {
                        m1551h0(obtainStyledAttributes.getResourceId(index, 0));
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 11) {
                        m1587E(obtainStyledAttributes.getColor(index, 0));
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 12) {
                        m1586F(obtainStyledAttributes.getDimensionPixelOffset(index, 0));
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else if (index == 7) {
                        m1527u(obtainStyledAttributes.getBoolean(index, true));
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                    } else {
                        colorStateList = colorStateList;
                        colorStateList2 = colorStateList2;
                        colorStateList3 = colorStateList3;
                        i4 = i4;
                        i6 = i6;
                        i7 = i7;
                        i8 = i8;
                        i9 = i9;
                        i10 = i10;
                        i11 = i11;
                        i12 = i12;
                        i13 = i13;
                        i14 = i14;
                        i15 = i15;
                        i16 = i16;
                        i17 = i17;
                        if (index == 8) {
                            m1526v(obtainStyledAttributes.getBoolean(index, true));
                            i17 = i17;
                            i16 = i16;
                            i15 = i15;
                            i14 = i14;
                            i13 = i13;
                            i12 = i12;
                            i11 = i11;
                            i10 = i10;
                            i9 = i9;
                            i8 = i8;
                            i7 = i7;
                            i6 = i6;
                            i4 = i4;
                            colorStateList3 = colorStateList3;
                            colorStateList2 = colorStateList2;
                            colorStateList = colorStateList;
                        }
                    }
                }
            }
            z = true;
        }
        obtainStyledAttributes.recycle();
        if (z) {
            m1581K(i2, i3);
        }
        if (i4 != 0) {
            m1524w0(i4);
        }
        if (z2) {
            m1525v0(i5);
        }
        if (i6 != 0) {
            m1540n(i6);
        }
        if (i7 != 0) {
            m1538o(i7);
        }
        if (i8 != 0) {
            m1536p(i8);
        }
        if (colorStateList != null) {
            m1532r(colorStateList);
        }
        if (i9 != 0) {
            m1545k0(i9);
        }
        if (i10 != 0) {
            m1539n0(i10);
        }
        if (i11 != 0) {
            m1537o0(i11);
        }
        if (colorStateList2 != null) {
            m1533q0(colorStateList2);
        }
        if (i12 != 0) {
            m1575Q(i12);
        }
        if (i13 != 0) {
            m1572T(i13);
        }
        if (i14 != 0) {
            m1571U(i14);
        }
        if (colorStateList3 != null) {
            m1569W(colorStateList3);
        }
        if (i15 != 0) {
            m1566Z(i15);
        }
        if (i16 != 0) {
            m1560c0(i16);
        }
        if (i17 != 0) {
            m1558d0(i17);
        }
        if (colorStateList4 != null) {
            m1554f0(colorStateList4);
        }
        return this;
    }

    /* renamed from: s0 */
    public Dialog m1530s0(boolean z) {
        this.f11687l.m1508l(z);
        return this;
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        m1527u(z);
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        m1526v(z);
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        m1521z(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        mo1507A(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        mo1507A(view);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        m1528t0(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        mo1485u0(charSequence);
    }

    /* renamed from: t */
    public Dialog m1529t(int i) {
        this.f11687l.setCardBackgroundColor(i);
        return this;
    }

    /* renamed from: t0 */
    public Dialog m1528t0(int i) {
        return mo1485u0(i == 0 ? null : getContext().getResources().getString(i));
    }

    /* renamed from: u */
    public Dialog m1527u(boolean z) {
        super.setCancelable(z);
        this.f11701z = z;
        return this;
    }

    /* renamed from: u0 */
    public Dialog mo1485u0(CharSequence charSequence) {
        this.f11682g.setText(charSequence);
        this.f11682g.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        return this;
    }

    /* renamed from: v */
    public Dialog m1526v(boolean z) {
        super.setCanceledOnTouchOutside(z);
        this.f11676A = z;
        return this;
    }

    /* renamed from: v0 */
    public Dialog m1525v0(int i) {
        this.f11682g.setTextColor(i);
        return this;
    }

    /* renamed from: w */
    public Dialog mo1484w() {
        m1528t0(0);
        m1549i0(0);
        m1541m0(null);
        m1577O(0);
        m1573S(null);
        m1568X(0);
        m1562b0(null);
        mo1507A(null);
        return this;
    }

    /* renamed from: w0 */
    public Dialog m1524w0(int i) {
        this.f11682g.setTextAppearance(getContext(), i);
        return this;
    }

    /* renamed from: x */
    public Dialog m1523x(int i) {
        this.f11687l.m1512h(i);
        return this;
    }

    /* renamed from: y */
    public Dialog m1522y(int i, int i2, int i3, int i4) {
        this.f11687l.m1511i(i, i2, i3, i4);
        return this;
    }

    /* renamed from: z */
    public Dialog m1521z(int i) {
        return i == 0 ? this : mo1507A(LayoutInflater.from(getContext()).inflate(i, (ViewGroup) null));
    }
}
