package com.p456lb.video_trimmer_library.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.p456lb.video_trimmer_library.p457a.AbstractC16594b;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.C18519k;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p530f.C18363d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018��2\u00020\u0001:\u0002LMB#\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0010J\u0010\u0010'\u001a\u00020%2\u0006\u0010(\u001a\u00020\u0007H\u0002J\u0010\u0010)\u001a\u00020%2\u0006\u0010(\u001a\u00020\u0007H\u0002J(\u0010*\u001a\u00020%2\u0006\u0010+\u001a\u00020!2\u0006\u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\rH\u0002J\u0010\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0013H\u0002J\u0010\u00101\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u0007H\u0002J\u0006\u00102\u001a\u00020%J\b\u00103\u001a\u00020\u0007H\u0017J\b\u00104\u001a\u00020\u0013H\u0016J\u0010\u00105\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J \u00106\u001a\u00020%2\u0006\u00107\u001a\u00020��2\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J\u0010\u00109\u001a\u00020%2\u0006\u0010:\u001a\u00020;H\u0014J\u0018\u0010<\u001a\u00020%2\u0006\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u0007H\u0014J \u0010?\u001a\u00020%2\u0006\u00107\u001a\u00020��2\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J \u0010@\u001a\u00020%2\u0006\u00107\u001a\u00020��2\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J \u0010A\u001a\u00020%2\u0006\u00107\u001a\u00020��2\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J\u0010\u0010B\u001a\u00020\r2\u0006\u0010C\u001a\u00020DH\u0016J\u0018\u0010E\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\u0013H\u0002J\u0018\u0010G\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u0013H\u0002J\u0018\u0010I\u001a\u00020%2\u0006\u0010(\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u0013H\u0002J\u0016\u0010K\u001a\u00020%2\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0013X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0019\u001a\u00020\u0013X\u0082\u0004¢\u0006\b\n��\u0012\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\"R\u000e\u0010#\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006N"}, m4298d2 = {"Lcom/lb/video_trimmer_library/view/RangeSeekBarView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "currentThumb", "edgePaint", "Landroid/graphics/Paint;", "firstRun", "", "listeners", "Ljava/util/HashSet;", "Lcom/lb/video_trimmer_library/interfaces/OnRangeSeekBarListener;", "Lkotlin/collections/HashSet;", "maxWidth", "", "pixelRangeMax", "pixelRangeMin", "scaleRangeMax", "shadowPaint", "strokePaint", "thumbTouchExtraMultiplier", "thumbTouchExtraMultiplier$annotations", "()V", "thumbWidth", "getThumbWidth", "()I", "thumbs", "", "Lcom/lb/video_trimmer_library/view/RangeSeekBarView$Thumb;", "[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$Thumb;", "viewWidth", "addOnRangeSeekBarListener", "", "listener", "calculateThumbPos", "index", "calculateThumbValue", "checkPositionThumb", "thumbLeft", "thumbRight", "dx", "isLeftMove", "getClosestThumb", "xPos", "getThumbValue", "initMaxWidth", "initShadowColor", "initThumbTouchExtraMultiplier", "initThumbWidth", "onCreate", "rangeSeekBarView", "value", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onSeek", "onSeekStart", "onSeekStop", "onTouchEvent", "ev", "Landroid/view/MotionEvent;", "pixelToScale", "pixelValue", "scaleToPixel", "scaleValue", "setThumbPos", "pos", "setThumbValue", "Thumb", "ThumbType", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
/* renamed from: com.lb.video_trimmer_library.view.RangeSeekBarView */
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/RangeSeekBarView.class */
public class RangeSeekBarView extends View {

    /* renamed from: a */
    public final C16604a[] f58423a;

    /* renamed from: b */
    public HashSet<AbstractC16594b> f58424b;

    /* renamed from: c */
    public float f58425c;

    /* renamed from: d */
    public final int f58426d;

    /* renamed from: e */
    private final float f58427e;

    /* renamed from: f */
    private int f58428f;

    /* renamed from: g */
    private float f58429g;

    /* renamed from: h */
    private float f58430h;

    /* renamed from: i */
    private final float f58431i;

    /* renamed from: j */
    private boolean f58432j;

    /* renamed from: k */
    private final Paint f58433k;

    /* renamed from: l */
    private final Paint f58434l;

    /* renamed from: m */
    private final Paint f58435m;

    /* renamed from: n */
    private int f58436n;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u000b\u0018��2\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR\u001a\u0010\u0010\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\f¨\u0006\u0013"}, m4298d2 = {"Lcom/lb/video_trimmer_library/view/RangeSeekBarView$Thumb;", "", "index", "", "(I)V", "getIndex", "()I", "lastTouchX", "", "getLastTouchX", "()F", "setLastTouchX", "(F)V", "pos", "getPos", "setPos", "value", "getValue", "setValue", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.view.RangeSeekBarView$a */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/RangeSeekBarView$a.class */
    public static final class C16604a {

        /* renamed from: a */
        public float f58437a;

        /* renamed from: b */
        public float f58438b;

        /* renamed from: c */
        float f58439c;

        /* renamed from: d */
        final int f58440d;

        public C16604a() {
            this(0, 1, null);
        }

        public C16604a(int i) {
            this.f58440d = i;
        }

        public /* synthetic */ C16604a(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0 : i);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m4298d2 = {"Lcom/lb/video_trimmer_library/view/RangeSeekBarView$ThumbType;", "", "index", "", "(Ljava/lang/String;II)V", "getIndex", "()I", "LEFT", "RIGHT", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.view.RangeSeekBarView$b */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/RangeSeekBarView$b.class */
    public enum EnumC16605b {
        LEFT(0),
        RIGHT(1);
        
        private final int index;

        EnumC16605b(int i) {
            this.index = i;
        }

        public final int getIndex() {
            return this.index;
        }
    }

    public RangeSeekBarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RangeSeekBarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C18524p.m3841c(context, "context");
        this.f58427e = 1.0f;
        this.f58423a = new C16604a[]{new C16604a(EnumC16605b.LEFT.getIndex()), new C16604a(EnumC16605b.RIGHT.getIndex())};
        this.f58424b = new HashSet<>();
        C18524p.m3841c(context, "context");
        Resources resources = context.getResources();
        C18524p.m3849a((Object) resources, "context.resources");
        this.f58426d = C18363d.m4051c((int) TypedValue.applyDimension(1, 27.0f, resources.getDisplayMetrics()), 1);
        this.f58431i = 100.0f;
        this.f58432j = true;
        Paint paint = new Paint();
        this.f58433k = paint;
        Paint paint2 = new Paint();
        this.f58434l = paint2;
        Paint paint3 = new Paint();
        this.f58435m = paint3;
        this.f58436n = EnumC16605b.LEFT.getIndex();
        setFocusable(true);
        setFocusableInTouchMode(true);
        paint.setAntiAlias(true);
        paint.setColor(-1325400064);
        paint2.setAntiAlias(true);
        paint2.setStyle(Paint.Style.STROKE);
        Resources resources2 = context.getResources();
        C18524p.m3849a((Object) resources2, "context.resources");
        paint2.setStrokeWidth(TypedValue.applyDimension(1, 2.0f, resources2.getDisplayMetrics()));
        paint2.setColor(-1);
        paint3.setAntiAlias(true);
        paint3.setColor(-1);
    }

    public /* synthetic */ RangeSeekBarView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* renamed from: a */
    private final void m6918a(int i) {
        C16604a[] c16604aArr = this.f58423a;
        if (i < c16604aArr.length) {
            if (c16604aArr.length == 0) {
                return;
            }
            C16604a c16604a = c16604aArr[i];
            float f = c16604a.f58438b;
            float f2 = this.f58430h;
            float f3 = (f * 100.0f) / f2;
            c16604a.f58437a = i == 0 ? f3 + ((((this.f58426d * f3) / 100.0f) * 100.0f) / f2) : f3 - (((((100.0f - f3) * this.f58426d) / 100.0f) * 100.0f) / f2);
            float f4 = c16604a.f58437a;
            for (AbstractC16594b abstractC16594b : this.f58424b) {
                abstractC16594b.mo6939a(this, i, f4);
            }
        }
    }

    /* renamed from: a */
    private final void m6917a(int i, float f) {
        this.f58423a[i].f58438b = f;
        m6918a(i);
        invalidate();
    }

    /* renamed from: a */
    private final void m6916a(C16604a c16604a, C16604a c16604a2, float f, boolean z) {
        if (z && f < BitmapDescriptorFactory.HUE_RED) {
            if (c16604a2.f58438b - (c16604a.f58438b + f) <= this.f58425c) {
                return;
            }
            c16604a2.f58438b = c16604a.f58438b + f + this.f58425c;
            m6917a(EnumC16605b.RIGHT.getIndex(), c16604a2.f58438b);
        } else if (z || f <= BitmapDescriptorFactory.HUE_RED || (c16604a2.f58438b + f) - c16604a.f58438b <= this.f58425c) {
        } else {
            c16604a.f58438b = (c16604a2.f58438b + f) - this.f58425c;
            m6917a(EnumC16605b.LEFT.getIndex(), c16604a.f58438b);
        }
    }

    /* renamed from: a */
    public final void m6915a(RangeSeekBarView rangeSeekBarView) {
        for (AbstractC16594b abstractC16594b : this.f58424b) {
            abstractC16594b.mo6937c(rangeSeekBarView);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        C18524p.m3841c(canvas, "canvas");
        super.onDraw(canvas);
        C16604a[] c16604aArr = this.f58423a;
        if (c16604aArr.length == 0) {
            return;
        }
        for (C16604a c16604a : c16604aArr) {
            if (c16604a.f58440d == EnumC16605b.LEFT.getIndex()) {
                float paddingLeft = c16604a.f58438b + getPaddingLeft();
                if (paddingLeft > this.f58429g) {
                    int i = this.f58426d;
                    canvas.drawRect(i, BitmapDescriptorFactory.HUE_RED, paddingLeft + i, getHeight(), this.f58433k);
                }
            } else {
                float paddingRight = c16604a.f58438b - getPaddingRight();
                if (paddingRight < this.f58430h) {
                    canvas.drawRect(paddingRight, BitmapDescriptorFactory.HUE_RED, this.f58428f - this.f58426d, getHeight(), this.f58433k);
                }
            }
        }
        canvas.drawRect(this.f58423a[EnumC16605b.LEFT.getIndex()].f58438b + getPaddingLeft() + this.f58426d, BitmapDescriptorFactory.HUE_RED, this.f58423a[EnumC16605b.RIGHT.getIndex()].f58438b - getPaddingRight(), getHeight(), this.f58434l);
        Context context = getContext();
        C18524p.m3849a((Object) context, "context");
        Resources resources = context.getResources();
        C18524p.m3849a((Object) resources, "context.resources");
        float applyDimension = TypedValue.applyDimension(1, 6.0f, resources.getDisplayMetrics());
        canvas.drawCircle(this.f58423a[EnumC16605b.LEFT.getIndex()].f58438b + getPaddingLeft() + this.f58426d, getHeight() / 2.0f, applyDimension, this.f58435m);
        canvas.drawCircle(this.f58423a[EnumC16605b.RIGHT.getIndex()].f58438b - getPaddingRight(), getHeight() / 2.0f, applyDimension, this.f58435m);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredWidth;
        super.onMeasure(i, i2);
        this.f58428f = getMeasuredWidth();
        this.f58429g = BitmapDescriptorFactory.HUE_RED;
        this.f58430h = measuredWidth - this.f58426d;
        if (this.f58432j) {
            C16604a[] c16604aArr = this.f58423a;
            int length = c16604aArr.length;
            for (int i3 = 0; i3 < length; i3++) {
                C16604a c16604a = c16604aArr[i3];
                float f = i3;
                c16604a.f58437a = this.f58431i * f;
                c16604a.f58438b = this.f58430h * f;
            }
            for (AbstractC16594b abstractC16594b : this.f58424b) {
                abstractC16594b.mo6940a(this);
            }
            this.f58432j = false;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int i;
        C18524p.m3841c(ev, "ev");
        float x = ev.getX();
        int action = ev.getAction();
        if (action != 0) {
            if (action == 1) {
                if (this.f58436n == -1) {
                    return false;
                }
                m6915a(this);
                return true;
            } else if (action != 2) {
                return false;
            } else {
                C16604a[] c16604aArr = this.f58423a;
                int i2 = this.f58436n;
                C16604a c16604a = c16604aArr[i2];
                C16604a c16604a2 = c16604aArr[(i2 == EnumC16605b.LEFT.getIndex() ? EnumC16605b.RIGHT : EnumC16605b.LEFT).getIndex()];
                float f = x - c16604a.f58439c;
                float f2 = c16604a.f58438b + f;
                if (this.f58436n == 0) {
                    if (this.f58426d + f2 >= c16604a2.f58438b) {
                        c16604a.f58438b = c16604a2.f58438b - this.f58426d;
                    } else {
                        float f3 = this.f58429g;
                        if (f2 <= f3) {
                            c16604a.f58438b = f3;
                        } else {
                            m6916a(c16604a, c16604a2, f, true);
                            c16604a.f58438b += f;
                            c16604a.f58439c = x;
                        }
                    }
                } else if (f2 <= c16604a2.f58438b + this.f58426d) {
                    c16604a.f58438b = c16604a2.f58438b + this.f58426d;
                } else {
                    float f4 = this.f58430h;
                    if (f2 >= f4) {
                        c16604a.f58438b = f4;
                    } else {
                        m6916a(c16604a2, c16604a, f, false);
                        c16604a.f58438b += f;
                        c16604a.f58439c = x;
                    }
                }
                m6917a(this.f58436n, c16604a.f58438b);
                invalidate();
                return true;
            }
        }
        if (!(this.f58423a.length == 0)) {
            C18519k c18519k = C18519k.f63620a;
            float f5 = Float.MAX_VALUE;
            float f6 = x - this.f58426d;
            C16604a[] c16604aArr2 = this.f58423a;
            int length = c16604aArr2.length;
            int i3 = 0;
            int i4 = -1;
            while (true) {
                i = i4;
                if (i3 >= length) {
                    break;
                }
                C16604a c16604a3 = c16604aArr2[i3];
                float f7 = c16604a3.f58440d == EnumC16605b.LEFT.getIndex() ? c16604a3.f58438b : c16604a3.f58438b - this.f58426d;
                int i5 = this.f58426d;
                float f8 = i5;
                float f9 = this.f58427e;
                float f10 = i5;
                int i6 = i4;
                float f11 = f5;
                if (f6 >= f7 - (f8 * f9)) {
                    i6 = i4;
                    f11 = f5;
                    if (f6 <= (f10 * f9) + f7) {
                        float abs = Math.abs(f7 - f6);
                        i6 = i4;
                        f11 = f5;
                        if (abs < f5) {
                            i6 = c16604a3.f58440d;
                            f11 = abs;
                        }
                    }
                }
                i3++;
                i4 = i6;
                f5 = f11;
            }
        } else {
            i = -1;
        }
        this.f58436n = i;
        if (i == -1) {
            return false;
        }
        this.f58423a[i].f58439c = x;
        for (AbstractC16594b abstractC16594b : this.f58424b) {
            abstractC16594b.mo6938b(this);
        }
        return true;
    }

    public final void setThumbValue(int i, float f) {
        this.f58423a[i].f58437a = f;
        C16604a[] c16604aArr = this.f58423a;
        if (i < c16604aArr.length) {
            if (!(c16604aArr.length == 0)) {
                C16604a c16604a = c16604aArr[i];
                float f2 = c16604a.f58437a;
                float f3 = (this.f58430h * f2) / 100.0f;
                c16604a.f58438b = i == 0 ? f3 - ((f2 * this.f58426d) / 100.0f) : f3 + (((100.0f - f2) * this.f58426d) / 100.0f);
            }
        }
        invalidate();
    }
}
