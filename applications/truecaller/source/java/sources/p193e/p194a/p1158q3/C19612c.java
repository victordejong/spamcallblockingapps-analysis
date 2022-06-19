package p193e.p194a.p1158q3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.dialpad_view.C3880R;
import java.util.List;
import kotlin.Metadata;
import p1727n3.p1807k.p1818g.C26536a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p417k.C8502h;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010<\u001a\u00020;¢\u0006\u0004\b=\u0010>J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J/\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00042\b\b\u0001\u0010\u0012\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014R\"\u0010\u001b\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001eR\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010'\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\u0016R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010$R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00104\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00106\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00103R\u0018\u00108\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u0010\u0016R\u0018\u0010:\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010*¨\u0006?"}, d2 = {"Le/a/q3/c;", "Landroid/view/View;", "Landroid/view/accessibility/AccessibilityEvent;", "event", "Ls1/s;", "onPopulateAccessibilityEvent", "(Landroid/view/accessibility/AccessibilityEvent;)V", "", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "drawableRes", "setSecondaryImage", "(I)V", "", "Ljava/lang/CharSequence;", "getMainText", "()Ljava/lang/CharSequence;", "setMainText", "(Ljava/lang/CharSequence;)V", "mainText", "Landroid/graphics/Paint;", "a", "Landroid/graphics/Paint;", "primaryTextPaint", C22021b.f61237c, "secondaryTextPaint", "Landroid/graphics/Rect;", "d", "Landroid/graphics/Rect;", "textBounds", "i", "secondaryText", "Landroid/graphics/drawable/Drawable;", "k", "Landroid/graphics/drawable/Drawable;", "mainImage", AbstractC2405c.f7629a, "rect", "", "g", "Z", "isRTL", "e", "I", "secondaryTextCenterMargin", "f", "mainTextMinWidth", "j", "tertiaryText", "l", "secondaryImage", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "<init>", "(Landroid/content/Context;)V", "dialpad-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.q3.c */
/* loaded from: classes8-dex2jar.jar:e/a/q3/c.class */
public final class C19612c extends View {

    /* renamed from: m */
    public static Typeface f54503m;

    /* renamed from: n */
    public static final C19612c f54504n = null;

    /* renamed from: a */
    public final Paint f54505a;

    /* renamed from: b */
    public final Paint f54506b;

    /* renamed from: c */
    public final Rect f54507c = new Rect();

    /* renamed from: d */
    public final Rect f54508d = new Rect();

    /* renamed from: e */
    public final int f54509e = C8605o.m28238b(getContext(), 3);

    /* renamed from: f */
    public final int f54510f = C8605o.m28238b(getContext(), 24.0f);

    /* renamed from: g */
    public final boolean f54511g = C8502h.m28437a();

    /* renamed from: h */
    public CharSequence f54512h = "";

    /* renamed from: i */
    public CharSequence f54513i;

    /* renamed from: j */
    public CharSequence f54514j;

    /* renamed from: k */
    public Drawable f54515k;

    /* renamed from: l */
    public Drawable f54516l;

    static {
        Typeface create = Typeface.create("sans-serif", 0);
        l.d(create, "Typeface.create(\"sans-serif\", Typeface.NORMAL)");
        f54503m = create;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19612c(Context context) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
        Paint paint = new Paint(1);
        paint.setColor(C17422k.m16105M(context, C3880R.attr.tcx_textPrimary));
        paint.setTextSize(C8605o.m28232h(context, 30));
        paint.setTextAlign(Paint.Align.CENTER);
        this.f54505a = paint;
        Paint paint2 = new Paint(1);
        paint2.setColor(C17422k.m16105M(context, C3880R.attr.tcx_textTertiary));
        paint2.setTextSize(C8605o.m28232h(context, 10));
        paint2.setTextAlign(Paint.Align.LEFT);
        paint2.setTypeface(f54503m);
        this.f54506b = paint2;
        setBackground(C19291g.m13600P(context, C3880R.attr.keypad_btnBackground));
        setClickable(true);
    }

    public final CharSequence getMainText() {
        return this.f54512h;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        Drawable drawable = this.f54515k;
        if (drawable != null) {
            drawable.draw(canvas);
        } else {
            this.f54505a.getTextBounds(this.f54512h.toString(), 0, this.f54512h.length(), this.f54508d);
            CharSequence charSequence = this.f54512h;
            canvas.drawText(charSequence, 0, charSequence.length(), ((this.f54511g ? this.f54510f : -this.f54510f) / 2) + this.f54507c.centerX(), (this.f54508d.height() / 2) + this.f54507c.centerY(), this.f54505a);
        }
        if (TextUtils.isEmpty(this.f54513i)) {
            Drawable drawable2 = this.f54516l;
            if (drawable2 != null) {
                drawable2.draw(canvas);
            }
        } else {
            CharSequence charSequence2 = this.f54513i;
            if (charSequence2 == null) {
                charSequence2 = "";
            }
            this.f54506b.getTextBounds(charSequence2.toString(), 0, charSequence2.length(), this.f54508d);
            int centerX = this.f54507c.centerX();
            int width = this.f54511g ? (-this.f54509e) - this.f54508d.width() : this.f54509e;
            this.f54505a.getTextBounds(this.f54512h.toString(), 0, this.f54512h.length(), this.f54508d);
            canvas.drawText(charSequence2, 0, charSequence2.length(), centerX + width, (this.f54508d.height() / 2) + this.f54507c.centerY(), this.f54506b);
        }
        CharSequence charSequence3 = this.f54514j;
        if (charSequence3 != null) {
            this.f54506b.getTextBounds(charSequence3.toString(), 0, charSequence3.length(), this.f54508d);
            int centerX2 = this.f54507c.centerX();
            int width2 = this.f54511g ? (-this.f54509e) - this.f54508d.width() : this.f54509e;
            this.f54505a.getTextBounds(this.f54512h.toString(), 0, this.f54512h.length(), this.f54508d);
            canvas.drawText(charSequence3, 0, charSequence3.length(), centerX2 + width2, this.f54507c.centerY(), this.f54506b);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        l.e(accessibilityEvent, "event");
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.getText().add(this.f54512h);
        List<CharSequence> text = accessibilityEvent.getText();
        CharSequence charSequence = this.f54513i;
        if (charSequence == null) {
            charSequence = "";
        }
        text.add(charSequence);
        List<CharSequence> text2 = accessibilityEvent.getText();
        CharSequence charSequence2 = this.f54514j;
        CharSequence charSequence3 = "";
        if (charSequence2 != null) {
            charSequence3 = charSequence2;
        }
        text2.add(charSequence3);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f54507c.set(0, 0, i, i2);
        Drawable background = getBackground();
        int m28238b = C8605o.m28238b(getContext(), 32.0f);
        background.setHotspotBounds(this.f54507c.centerX() - m28238b, this.f54507c.centerY() - m28238b, this.f54507c.centerX() + m28238b, this.f54507c.centerY() + m28238b);
        Drawable drawable = this.f54515k;
        if (drawable != null) {
            int centerX = this.f54507c.centerX() + (this.f54511g ? 0 : -drawable.getIntrinsicWidth());
            drawable.setBounds(centerX, this.f54507c.centerY() - (drawable.getIntrinsicHeight() / 2), drawable.getIntrinsicWidth() + centerX, (drawable.getIntrinsicHeight() / 2) + this.f54507c.centerY());
        }
        Drawable drawable2 = this.f54516l;
        if (drawable2 != null) {
            int centerX2 = this.f54507c.centerX() + (this.f54511g ? (-this.f54509e) - drawable2.getIntrinsicWidth() : this.f54509e);
            int intrinsicWidth = drawable2.getIntrinsicWidth();
            this.f54505a.getTextBounds(this.f54512h.toString(), 0, this.f54512h.length(), this.f54508d);
            int height = (this.f54508d.height() / 2) + this.f54507c.centerY();
            drawable2.setBounds(centerX2, height - drawable2.getIntrinsicHeight(), intrinsicWidth + centerX2, height);
        }
    }

    public final void setMainText(CharSequence charSequence) {
        l.e(charSequence, "<set-?>");
        this.f54512h = charSequence;
    }

    public final void setSecondaryImage(int i) {
        if (this.f54516l == null) {
            Context context = getContext();
            ColorStateList valueOf = ColorStateList.valueOf(this.f54506b.getColor());
            C26536a c26536a = C8605o.f26448a;
            Drawable mutate = context.getResources().getDrawable(i, context.getTheme()).mutate();
            mutate.setTintList(valueOf);
            this.f54516l = mutate;
        }
    }
}
