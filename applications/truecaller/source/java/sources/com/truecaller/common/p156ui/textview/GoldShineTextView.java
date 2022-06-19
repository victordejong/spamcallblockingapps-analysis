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
import androidx.appcompat.widget.AppCompatTextView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.ShineView;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1868v.AbstractC26992b0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p382d0.C8295e;
import p193e.p194a.p372b0.p373a.p382d0.C8296f;
import p193e.p194a.p372b0.p373a.p382d0.C8297g;
import p193e.p194a.p372b0.p373a.p382d0.C8298h;
import p193e.p194a.p372b0.p373a.p382d0.C8299i;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001J/\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0012\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0010J\u0019\u0010\u001a\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00072\b\b\u0001\u0010\u001e\u001a\u00020\u0002¢\u0006\u0004\b\u001f\u0010\u0010J\r\u0010 \u001a\u00020\u0007¢\u0006\u0004\b \u0010\u001dJ\r\u0010!\u001a\u00020\u0007¢\u0006\u0004\b!\u0010\u001dJ\u0017\u0010$\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010\u0004\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0004\u0010\u001dJ\u0017\u0010'\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\"H\u0002¢\u0006\u0004\b'\u0010%J\u000f\u0010(\u001a\u00020\u0007H\u0002¢\u0006\u0004\b(\u0010\u001dR\u001d\u0010-\u001a\u00020)8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010*\u001a\u0004\b+\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010/R\u0018\u00103\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u00102R\u0016\u00105\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u00104R\u0016\u00107\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00104R\u001d\u0010<\u001a\u0002088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010*\u001a\u0004\b:\u0010;R\u0016\u0010>\u001a\u00020.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010/R\u001d\u0010C\u001a\u00020?8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010*\u001a\u0004\bA\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010ER\u0018\u0010H\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010G¨\u0006I"}, d2 = {"Lcom/truecaller/common/ui/textview/GoldShineTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "", "w", "h", "oldw", "oldh", "Ls1/s;", "onSizeChanged", "(IIII)V", "Landroid/graphics/drawable/Drawable;", "background", "setBackground", "(Landroid/graphics/drawable/Drawable;)V", "resId", "setBackgroundResource", "(I)V", RemoteMessageConst.Notification.COLOR, "setTextColor", "Landroid/content/res/ColorStateList;", "colors", "(Landroid/content/res/ColorStateList;)V", RemoteMessageConst.Notification.VISIBILITY, "setVisibility", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "onDetachedFromWindow", "()V", "textColor", "setTextColorRes", "l", "k", "", "showOnBackground", "m", "(Z)V", "sizeChanged", "i", "j", "", "Ls1/g;", "getGradientColors", "()[I", "gradientColors", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "goldBackgroundPaint", "Landroid/graphics/Bitmap;", "Landroid/graphics/Bitmap;", "goldBitmap", "Z", "isGold", "n", "showGoldOnBackground", "Landroid/view/ContextThemeWrapper;", "f", "getThemedContext", "()Landroid/view/ContextThemeWrapper;", "themedContext", "o", "srcInPaint", "Le/a/p5/i0;", "g", "getResourceProvider", "()Le/a/p5/i0;", "resourceProvider", "Lcom/truecaller/common/ui/ShineView;", "Lcom/truecaller/common/ui/ShineView;", "shineView", "Landroid/graphics/Canvas;", "goldCanvas", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.textview.GoldShineTextView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/textview/GoldShineTextView.class */
public final class GoldShineTextView extends AppCompatTextView {

    /* renamed from: f */
    public final g f11293f;

    /* renamed from: g */
    public final g f11294g = C25225a.m3978P1(new C8297g(this));

    /* renamed from: h */
    public final g f11295h = C25225a.m3978P1(new C8295e(this));

    /* renamed from: i */
    public ShineView f11296i;

    /* renamed from: j */
    public Paint f11297j;

    /* renamed from: k */
    public Bitmap f11298k;

    /* renamed from: l */
    public Canvas f11299l;

    /* renamed from: m */
    public boolean f11300m;

    /* renamed from: n */
    public boolean f11301n;

    /* renamed from: o */
    public final Paint f11302o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoldShineTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f11293f = C25225a.m3978P1(new C8299i(context));
        Paint paint = new Paint(1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f11302o = paint;
    }

    private final int[] getGradientColors() {
        return (int[]) this.f11295h.getValue();
    }

    public final C19235i0 getResourceProvider() {
        return (C19235i0) this.f11294g.getValue();
    }

    public final ContextThemeWrapper getThemedContext() {
        return (ContextThemeWrapper) this.f11293f.getValue();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Paint paint;
        Canvas canvas2;
        if (canvas == null || !C19286f.m13663p(this) || !this.f11300m || (paint = this.f11297j) == null) {
            super.draw(canvas);
        } else if (paint == null) {
        } else {
            if (this.f11301n) {
                canvas.save();
                canvas.setMatrix(null);
                canvas.drawPaint(paint);
                ShineView shineView = this.f11296i;
                if (shineView != null) {
                    shineView.draw(canvas);
                }
                canvas.restore();
                super.draw(canvas);
                return;
            }
            canvas.drawColor(0);
            super.draw(canvas);
            Bitmap bitmap = this.f11298k;
            if (bitmap == null || (canvas2 = this.f11299l) == null) {
                return;
            }
            canvas2.drawPaint(paint);
            ShineView shineView2 = this.f11296i;
            if (shineView2 != null) {
                shineView2.draw(canvas2);
            }
            canvas.save();
            canvas.setMatrix(null);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.f11302o);
            canvas.restore();
        }
    }

    /* renamed from: h */
    public final void m35622h() {
        this.f11300m = false;
        this.f11301n = false;
        m35620j();
        setOutlineProvider(null);
        setClipToOutline(false);
    }

    /* renamed from: i */
    public final void m35621i(boolean z) {
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        if (!z && this.f11298k != null) {
            return;
        }
        setLayerType(2, null);
        if (this.f11296i == null) {
            ShineView shineView = new ShineView(getThemedContext(), null, 0, 6);
            shineView.setOnInvalidateCallback(new C8296f(this));
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
                        this.f11296i = shineView;
                    }
                }
                throw new IllegalStateException(C22128a.m8643a2(AbstractC26992b0.class, C22128a.m8728C("Context does not implement ")));
            }
            shineView.setLifecycleOwner((AbstractC26992b0) context);
            C19286f.m13684T(shineView);
            this.f11296i = shineView;
        }
        int width = getWidth();
        int height = getHeight();
        ShineView shineView2 = this.f11296i;
        if (shineView2 != null) {
            shineView2.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(height, 1073741824));
            shineView2.layout(0, 0, width, height);
        }
        int width2 = getWidth();
        int height2 = getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width2, height2, Bitmap.Config.ARGB_8888);
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, width2, height2, getGradientColors(), new float[]{0.24f, 0.51f, 0.79f}, Shader.TileMode.CLAMP);
        this.f11298k = createBitmap;
        this.f11299l = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        paint.setShader(linearGradient);
        this.f11297j = paint;
    }

    /* renamed from: j */
    public final void m35620j() {
        ShineView shineView = this.f11296i;
        if (shineView != null) {
            C19286f.m13689O(shineView);
        }
        ShineView shineView2 = this.f11296i;
        if (shineView2 != null) {
            shineView2.setLifecycleOwner(null);
        }
        ShineView shineView3 = this.f11296i;
        if (shineView3 != null) {
            shineView3.setOnInvalidateCallback(null);
        }
        this.f11296i = null;
        this.f11298k = null;
        this.f11299l = null;
        this.f11297j = null;
    }

    /* renamed from: k */
    public final void m35619k() {
        m35617m(true);
        invalidate();
    }

    /* renamed from: l */
    public final void m35618l() {
        m35617m(false);
        invalidate();
    }

    /* renamed from: m */
    public final void m35617m(boolean z) {
        this.f11300m = true;
        this.f11301n = z;
        m35621i(false);
        if (z) {
            super.setBackground(null);
            setOutlineProvider(new C8298h());
            setClipToOutline(true);
            return;
        }
        super.setTextColor(-1);
        setOutlineProvider(null);
        setClipToOutline(false);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        m35620j();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m35621i(true);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        m35622h();
        super.setBackground(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    public void setBackgroundResource(int i) {
        m35622h();
        super.setBackgroundResource(i);
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        m35622h();
        super.setTextColor(i);
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        m35622h();
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
        if (!C19286f.m13663p(this) || !this.f11300m) {
            ShineView shineView = this.f11296i;
            if (shineView == null) {
                return;
            }
            C19286f.m13689O(shineView);
            return;
        }
        ShineView shineView2 = this.f11296i;
        if (shineView2 == null) {
            return;
        }
        C19286f.m13684T(shineView2);
    }
}
