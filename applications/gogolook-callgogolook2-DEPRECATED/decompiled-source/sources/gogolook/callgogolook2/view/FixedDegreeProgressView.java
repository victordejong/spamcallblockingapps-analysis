package gogolook.callgogolook2.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import gogolook.callgogolook2.R$styleable;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0012\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0018\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0014J\u0010\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u0007H\u0016J\u0006\u0010&\u001a\u00020\u001eR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u001a\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\r\"\u0004\b\u001c\u0010\u000f¨\u0006'"}, m815d2 = {"Lgogolook/callgogolook2/view/FixedDegreeProgressView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "anim", "Landroid/view/animation/RotateAnimation;", TtmlNode.ATTR_TTS_COLOR, "getColor", "()I", "setColor", "(I)V", "degree", "getDegree", "setDegree", "duration", "getDuration", "setDuration", "paint", "Landroid/graphics/Paint;", "rect", "Landroid/graphics/RectF;", "size", "getSize", "setSize", "onDraw", "", "canvas", "Landroid/graphics/Canvas;", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "setVisibility", "visibility", "start", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/FixedDegreeProgressView.class */
public final class FixedDegreeProgressView extends View {

    /* renamed from: a */
    public int f13050a;

    /* renamed from: b */
    public int f13051b;

    /* renamed from: c */
    public int f13052c;

    /* renamed from: d */
    public int f13053d;

    /* renamed from: e */
    public final Paint f13054e;

    /* renamed from: f */
    public final RectF f13055f;

    /* renamed from: g */
    public final RotateAnimation f13056g;

    public FixedDegreeProgressView(Context context) {
        this(context, null, 0, 6, null);
    }

    public FixedDegreeProgressView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FixedDegreeProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C15149k.m377b(context, "context");
        this.f13054e = new Paint();
        this.f13055f = new RectF();
        this.f13056g = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FixedDegreeProgressView);
            this.f13052c = obtainStyledAttributes.getInteger(1, 90);
            this.f13051b = obtainStyledAttributes.getDimensionPixelSize(3, 10);
            this.f13050a = obtainStyledAttributes.getColor(0, Color.parseColor("#00c300"));
            this.f13053d = obtainStyledAttributes.getColor(2, 1000);
            obtainStyledAttributes.recycle();
            this.f13054e.setStyle(Paint.Style.STROKE);
            this.f13054e.setStrokeWidth(this.f13051b);
            this.f13054e.setColor(this.f13050a);
            this.f13054e.setAntiAlias(true);
            this.f13056g.setDuration(this.f13053d);
            this.f13056g.setRepeatCount(-1);
            this.f13056g.setInterpolator(new LinearInterpolator());
        }
        setAnimation(this.f13056g);
    }

    public /* synthetic */ FixedDegreeProgressView(Context context, AttributeSet attributeSet, int i, int i2, C15145g gVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (canvas != null) {
            canvas.drawArc(this.f13055f, 270.0f, this.f13052c, false, this.f13054e);
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i);
        float f = this.f13051b / 2;
        this.f13055f.set(f, f, size2 - f, size - f);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i == 4 || i == 8) {
            clearAnimation();
        } else {
            setAnimation(this.f13056g);
        }
        super.setVisibility(i);
    }
}
