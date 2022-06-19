package com.truecaller.common.p156ui.textview;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.Chronometer;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.ShineView;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1868v.AbstractC26992b0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p382d0.C8291a;
import p193e.p194a.p372b0.p373a.p382d0.C8292b;
import p193e.p194a.p372b0.p373a.p382d0.C8293c;
import p193e.p194a.p372b0.p373a.p382d0.C8294d;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001J/\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0012\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0010J\u0019\u0010\u001a\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00072\b\b\u0001\u0010\u001e\u001a\u00020\u0002¢\u0006\u0004\b\u001f\u0010\u0010J\r\u0010 \u001a\u00020\u0007¢\u0006\u0004\b \u0010\u001dJ\u000f\u0010!\u001a\u00020\u0007H\u0002¢\u0006\u0004\b!\u0010\u001dJ\u0017\u0010$\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0002¢\u0006\u0004\b&\u0010\u001dR\u001d\u0010+\u001a\u00020'8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010(\u001a\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u00101R\u0016\u00105\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u001d\u0010:\u001a\u0002068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010(\u001a\u0004\b8\u00109R\u0018\u0010;\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010.R\u001d\u0010@\u001a\u00020<8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010(\u001a\u0004\b>\u0010?R\u0016\u0010A\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u00104R\u0018\u0010D\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010F¨\u0006H"}, d2 = {"Lcom/truecaller/common/ui/textview/GoldShineChronometer;", "Landroid/widget/Chronometer;", "", "w", "h", "oldw", "oldh", "Ls1/s;", "onSizeChanged", "(IIII)V", "Landroid/graphics/drawable/Drawable;", "background", "setBackground", "(Landroid/graphics/drawable/Drawable;)V", "resId", "setBackgroundResource", "(I)V", RemoteMessageConst.Notification.COLOR, "setTextColor", "Landroid/content/res/ColorStateList;", "colors", "(Landroid/content/res/ColorStateList;)V", RemoteMessageConst.Notification.VISIBILITY, "setVisibility", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "onDetachedFromWindow", "()V", "textColor", "setTextColorRes", "f", AbstractC2405c.f7629a, "", "sizeChanged", "d", "(Z)V", "e", "", "Ls1/g;", "getGradientColors", "()[I", "gradientColors", "Landroid/graphics/Paint;", "j", "Landroid/graphics/Paint;", "srcInPaint", "Lcom/truecaller/common/ui/ShineView;", "Lcom/truecaller/common/ui/ShineView;", "shineView", "i", "Z", "showGoldOnBackground", "Landroid/view/ContextThemeWrapper;", "a", "getThemedContext", "()Landroid/view/ContextThemeWrapper;", "themedContext", "goldBackgroundPaint", "Le/a/p5/i0;", C22021b.f61237c, "getResourceProvider", "()Le/a/p5/i0;", "resourceProvider", "isGold", "g", "Landroid/graphics/Canvas;", "goldCanvas", "Landroid/graphics/Bitmap;", "Landroid/graphics/Bitmap;", "goldBitmap", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.textview.GoldShineChronometer */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/textview/GoldShineChronometer.class */
public final class GoldShineChronometer extends Chronometer {

    /* renamed from: a */
    public final g f11283a;

    /* renamed from: b */
    public final g f11284b = C25225a.m3978P1(new C8293c(this));

    /* renamed from: c */
    public final g f11285c = C25225a.m3978P1(new C8291a(this));

    /* renamed from: d */
    public ShineView f11286d;

    /* renamed from: e */
    public Paint f11287e;

    /* renamed from: f */
    public Bitmap f11288f;

    /* renamed from: g */
    public Canvas f11289g;

    /* renamed from: h */
    public boolean f11290h;

    /* renamed from: i */
    public boolean f11291i;

    /* renamed from: j */
    public final Paint f11292j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoldShineChronometer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f11283a = C25225a.m3978P1(new C8294d(context));
        Paint paint = new Paint(1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f11292j = paint;
    }

    private final int[] getGradientColors() {
        return (int[]) this.f11285c.getValue();
    }

    public final C19235i0 getResourceProvider() {
        return (C19235i0) this.f11284b.getValue();
    }

    public final ContextThemeWrapper getThemedContext() {
        return (ContextThemeWrapper) this.f11283a.getValue();
    }

    /* renamed from: c */
    public final void m35628c() {
        this.f11290h = false;
        this.f11291i = false;
        m35626e();
        setOutlineProvider(null);
        setClipToOutline(false);
    }

    /* renamed from: d */
    public final void m35627d(boolean z) {
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        if (!z && this.f11288f != null) {
            return;
        }
        setLayerType(2, null);
        if (this.f11286d == null) {
            ShineView shineView = new ShineView(getThemedContext(), null, 0, 6);
            shineView.setOnInvalidateCallback(new C8292b(this));
            Context context = shineView.getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            Context context2 = context;
            if (!(context instanceof AbstractC26992b0)) {
                while (context2 instanceof ContextWrapper) {
                    context = ((ContextWrapper) context2).getBaseContext();
                    l.d(context, "currentContext.baseContext");
                    context2 = context;
                    if (context instanceof AbstractC26992b0) {
                        shineView.setLifecycleOwner((AbstractC26992b0) context);
                        C19286f.m13684T(shineView);
                        this.f11286d = shineView;
                    }
                }
                throw new IllegalStateException(C22128a.m8643a2(AbstractC26992b0.class, C22128a.m8728C("Context does not implement ")));
            }
            shineView.setLifecycleOwner((AbstractC26992b0) context);
            C19286f.m13684T(shineView);
            this.f11286d = shineView;
        }
        int width = getWidth();
        int height = getHeight();
        ShineView shineView2 = this.f11286d;
        if (shineView2 != null) {
            shineView2.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(height, 1073741824));
            shineView2.layout(0, 0, width, height);
        }
        int width2 = getWidth();
        int height2 = getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width2, height2, Bitmap.Config.ARGB_8888);
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, width2, height2, getGradientColors(), new float[]{0.24f, 0.51f, 0.79f}, Shader.TileMode.CLAMP);
        this.f11288f = createBitmap;
        this.f11289g = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        paint.setShader(linearGradient);
        this.f11287e = paint;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Paint paint;
        Canvas canvas2;
        if (canvas == null || !C19286f.m13663p(this) || !this.f11290h || (paint = this.f11287e) == null) {
            super.draw(canvas);
        } else if (paint == null) {
        } else {
            if (this.f11291i) {
                canvas.save();
                canvas.setMatrix(null);
                canvas.drawPaint(paint);
                ShineView shineView = this.f11286d;
                if (shineView != null) {
                    shineView.draw(canvas);
                }
                canvas.restore();
                super.draw(canvas);
                return;
            }
            canvas.drawColor(0);
            super.draw(canvas);
            Bitmap bitmap = this.f11288f;
            if (bitmap == null || (canvas2 = this.f11289g) == null) {
                return;
            }
            canvas2.drawPaint(paint);
            ShineView shineView2 = this.f11286d;
            if (shineView2 != null) {
                shineView2.draw(canvas2);
            }
            canvas.save();
            canvas.setMatrix(null);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.f11292j);
            canvas.restore();
        }
    }

    /* renamed from: e */
    public final void m35626e() {
        ShineView shineView = this.f11286d;
        if (shineView != null) {
            C19286f.m13689O(shineView);
        }
        ShineView shineView2 = this.f11286d;
        if (shineView2 != null) {
            shineView2.setLifecycleOwner(null);
        }
        ShineView shineView3 = this.f11286d;
        if (shineView3 != null) {
            shineView3.setOnInvalidateCallback(null);
        }
        this.f11286d = null;
        this.f11288f = null;
        this.f11289g = null;
        this.f11287e = null;
    }

    /* renamed from: f */
    public final void m35625f() {
        this.f11290h = true;
        this.f11291i = false;
        m35627d(false);
        super.setTextColor(-1);
        setOutlineProvider(null);
        setClipToOutline(false);
        invalidate();
    }

    @Override // android.widget.Chronometer, android.view.View
    public void onDetachedFromWindow() {
        m35626e();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m35627d(true);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        m35628c();
        super.setBackground(drawable);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        m35628c();
        super.setBackgroundResource(i);
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        m35628c();
        super.setTextColor(i);
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        m35628c();
        super.setTextColor(colorStateList);
    }

    public final void setTextColorRes(int i) {
        Context context = getContext();
        Object obj = C26467a.f74235a;
        setTextColor(C26467a.C26471d.m1787a(context, i));
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (!C19286f.m13663p(this) || !this.f11290h) {
            ShineView shineView = this.f11286d;
            if (shineView == null) {
                return;
            }
            C19286f.m13689O(shineView);
            return;
        }
        ShineView shineView2 = this.f11286d;
        if (shineView2 == null) {
            return;
        }
        C19286f.m13684T(shineView2);
    }
}
