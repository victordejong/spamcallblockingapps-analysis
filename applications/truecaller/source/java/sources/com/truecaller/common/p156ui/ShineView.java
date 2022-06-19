package com.truecaller.common.p156ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26985a0;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.C8315k;
import s1.a.f;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0003¢\u0006\u0004\b\u0006\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\f\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\f\u0010\u0005J\u0017\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0015\u0010\u0005R.\u0010\u001e\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R*\u00109\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\"\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030>8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\"\u0010G\u001a\u00020:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010<\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0016\u0010Q\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010<R\u0016\u0010S\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010 ¨\u0006T"}, d2 = {"Lcom/truecaller/common/ui/ShineView;", "Landroid/view/View;", "Ln3/v/a0;", "Ls1/s;", "subscribeSensorData", "()V", "unsubscribeSensorData", "Le/a/b0/a/k$a;", RemoteMessageConst.DATA, "setRotationData", "(Le/a/b0/a/k$a;)V", "onAttachedToWindow", "onDetachedFromWindow", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "", RemoteMessageConst.Notification.VISIBILITY, "setVisibility", "(I)V", "invalidate", "Ln3/v/b0;", "value", "m", "Ln3/v/b0;", "getLifecycleOwner", "()Ln3/v/b0;", "setLifecycleOwner", "(Ln3/v/b0;)V", "lifecycleOwner", "f", "I", "transparentColor", "", "i", "Z", "rotationDataInitialized", "Le/a/b0/a/k;", "j", "Le/a/b0/a/k;", "dataProvider", "Landroid/graphics/RectF;", "d", "Landroid/graphics/RectF;", "rect", "Landroid/graphics/Matrix;", "g", "Landroid/graphics/Matrix;", "shaderTransformMatrix", "Lkotlin/Function0;", "n", "Ls1/z/b/a;", "getOnInvalidateCallback", "()Ls1/z/b/a;", "setOnInvalidateCallback", "(Ls1/z/b/a;)V", "onInvalidateCallback", "", C22021b.f61237c, "F", "gradientYPosition", "Lkotlin/reflect/KFunction1;", "k", "Ls1/a/f;", "sensorDataSubscriber", "l", "getCornerRadius", "()F", "setCornerRadius", "(F)V", "cornerRadius", "Landroid/graphics/Paint;", AbstractC2405c.f7629a, "Landroid/graphics/Paint;", "shaderPaint", "Landroid/graphics/Shader;", "h", "Landroid/graphics/Shader;", "shader", "a", "gradientXPosition", "e", "gradientColor", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.ShineView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/ShineView.class */
public final class ShineView extends View implements AbstractC26985a0 {

    /* renamed from: a */
    public float f11066a;

    /* renamed from: b */
    public float f11067b;

    /* renamed from: c */
    public final Paint f11068c;

    /* renamed from: d */
    public final RectF f11069d;

    /* renamed from: e */
    public final int f11070e;

    /* renamed from: f */
    public final int f11071f;

    /* renamed from: g */
    public final Matrix f11072g;

    /* renamed from: h */
    public Shader f11073h;

    /* renamed from: i */
    public boolean f11074i;

    /* renamed from: j */
    public final C8315k f11075j;

    /* renamed from: k */
    public final f<s> f11076k;

    /* renamed from: l */
    public float f11077l;

    /* renamed from: m */
    public AbstractC26992b0 f11078m;

    /* renamed from: n */
    public a<s> f11079n;

    public ShineView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ShineView(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10) {
        /*
            r6 = this;
            r0 = r10
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r8 = r0
        L9:
            r0 = r10
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L12
            r0 = 0
            r9 = r0
        L12:
            r0 = r7
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r0.<init>(r1, r2, r3)
            r0 = r6
            android.graphics.Paint r1 = new android.graphics.Paint
            r2 = r1
            r2.<init>()
            r0.f11068c = r1
            r0 = r6
            android.graphics.RectF r1 = new android.graphics.RectF
            r2 = r1
            r2.<init>()
            r0.f11069d = r1
            r0 = r6
            r1 = -1
            r2 = 128(0x80, float:1.794E-43)
            int r1 = p1727n3.p1807k.p1812c.C26493a.m1747l(r1, r2)
            r0.f11070e = r1
            r0 = r6
            r1 = -1
            r2 = 0
            int r1 = p1727n3.p1807k.p1812c.C26493a.m1747l(r1, r2)
            r0.f11071f = r1
            r0 = r6
            android.graphics.Matrix r1 = new android.graphics.Matrix
            r2 = r1
            r2.<init>()
            r0.f11072g = r1
            r0 = r7
            java.lang.String r1 = "sensor"
            java.lang.Object r0 = r0.getSystemService(r1)
            r11 = r0
            r0 = r11
            java.lang.String r1 = "null cannot be cast to non-null type android.hardware.SensorManager"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r6
            e.a.b0.a.k r1 = new e.a.b0.a.k
            r2 = r1
            r3 = r11
            android.hardware.SensorManager r3 = (android.hardware.SensorManager) r3
            r2.<init>(r3)
            r0.f11075j = r1
            r0 = r6
            e.a.b0.a.m r1 = new e.a.b0.a.m
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            r0.f11076k = r1
            r0 = r7
            android.content.res.Resources$Theme r0 = r0.getTheme()
            r1 = r8
            int[] r2 = com.truecaller.common.p156ui.C3700R.styleable.ShineView
            r3 = 0
            r4 = 0
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "context.theme.obtainStyl…tyleable.ShineView, 0, 0)"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            r1 = r7
            int r2 = com.truecaller.common.p156ui.C3700R.styleable.ShineView_shineCornerRadius     // Catch: java.lang.Throwable -> Lac
            r3 = 0
            int r1 = r1.getDimensionPixelSize(r2, r3)     // Catch: java.lang.Throwable -> Lac
            float r1 = (float) r1     // Catch: java.lang.Throwable -> Lac
            r0.f11077l = r1     // Catch: java.lang.Throwable -> Lac
            r0 = r7
            r0.recycle()
            r0 = r6
            r1 = 2
            r2 = 0
            r0.setLayerType(r1, r2)
            return
        Lac:
            r8 = move-exception
            r0 = r7
            r0.recycle()
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.ShineView.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    public final void setRotationData(C8315k.C8316a c8316a) {
        this.f11074i = true;
        this.f11066a = c8316a.f25605b + 0.5f;
        this.f11067b = c8316a.f25606c;
        invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0099, code lost:
        if (r0 != null) goto L24;
     */
    @p1727n3.p1868v.AbstractC27013m0(p1727n3.p1868v.AbstractC27028u.EnumC27029a.ON_RESUME)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void subscribeSensorData() {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.ShineView.subscribeSensorData():void");
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_PAUSE)
    private final void unsubscribeSensorData() {
        this.f11074i = false;
        C8315k c8315k = this.f11075j;
        c8315k.f25603b.unregisterListener(c8315k.f25602a);
        c8315k.f25602a = null;
    }

    public final float getCornerRadius() {
        return this.f11077l;
    }

    public final AbstractC26992b0 getLifecycleOwner() {
        return this.f11078m;
    }

    public final a<s> getOnInvalidateCallback() {
        return this.f11079n;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        a<s> aVar = this.f11079n;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        subscribeSensorData();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        unsubscribeSensorData();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        if (!C19286f.m13663p(this) || !this.f11074i) {
            return;
        }
        if (this.f11073h == null) {
            float measuredWidth = getMeasuredWidth() * 2.0f;
            float measuredHeight = getMeasuredHeight();
            float f = -measuredWidth;
            float measuredHeight2 = (float) (getMeasuredHeight() * 1.5d);
            int i = this.f11071f;
            this.f11073h = new LinearGradient(f, measuredHeight2, f + measuredWidth, measuredHeight2 - (measuredHeight * 2.0f), new int[]{i, this.f11070e, i}, new float[]{0.3f, 0.5f, 0.7f}, Shader.TileMode.CLAMP);
        }
        this.f11072g.setTranslate(getMeasuredWidth() * 3 * this.f11066a, getMeasuredHeight() * 2 * this.f11067b);
        Shader shader = this.f11073h;
        if (shader != null) {
            shader.setLocalMatrix(this.f11072g);
        }
        this.f11068c.setShader(this.f11073h);
        RectF rectF = this.f11069d;
        rectF.left = 0.0f;
        rectF.top = 0.0f;
        rectF.bottom = getMeasuredHeight();
        this.f11069d.right = getMeasuredWidth();
        float f2 = this.f11077l;
        if (f2 == 0.0f) {
            canvas.drawRect(this.f11069d, this.f11068c);
        } else {
            canvas.drawRoundRect(this.f11069d, f2, f2, this.f11068c);
        }
    }

    public final void setCornerRadius(float f) {
        this.f11077l = f;
    }

    public final void setLifecycleOwner(AbstractC26992b0 abstractC26992b0) {
        AbstractC27028u lifecycle;
        if (this.f11078m == null) {
            this.f11078m = abstractC26992b0;
            if (abstractC26992b0 == null || (lifecycle = abstractC26992b0.getLifecycle()) == null) {
                return;
            }
            lifecycle.mo988a(this);
        }
    }

    public final void setOnInvalidateCallback(a<s> aVar) {
        this.f11079n = aVar;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (C19286f.m13663p(this)) {
            subscribeSensorData();
        } else {
            unsubscribeSensorData();
        }
    }
}
