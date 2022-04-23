package com.lb.video_trimmer_library.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.f.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018��2\u00020\u0001:\u0002LMB#\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0010J\u0010\u0010'\u001a\u00020%2\u0006\u0010(\u001a\u00020\u0007H\u0002J\u0010\u0010)\u001a\u00020%2\u0006\u0010(\u001a\u00020\u0007H\u0002J(\u0010*\u001a\u00020%2\u0006\u0010+\u001a\u00020!2\u0006\u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\rH\u0002J\u0010\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0013H\u0002J\u0010\u00101\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u0007H\u0002J\u0006\u00102\u001a\u00020%J\b\u00103\u001a\u00020\u0007H\u0017J\b\u00104\u001a\u00020\u0013H\u0016J\u0010\u00105\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J \u00106\u001a\u00020%2\u0006\u00107\u001a\u00020��2\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J\u0010\u00109\u001a\u00020%2\u0006\u0010:\u001a\u00020;H\u0014J\u0018\u0010<\u001a\u00020%2\u0006\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u0007H\u0014J \u0010?\u001a\u00020%2\u0006\u00107\u001a\u00020��2\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J \u0010@\u001a\u00020%2\u0006\u00107\u001a\u00020��2\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J \u0010A\u001a\u00020%2\u0006\u00107\u001a\u00020��2\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J\u0010\u0010B\u001a\u00020\r2\u0006\u0010C\u001a\u00020DH\u0016J\u0018\u0010E\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\u0013H\u0002J\u0018\u0010G\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u0013H\u0002J\u0018\u0010I\u001a\u00020%2\u0006\u0010(\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u0013H\u0002J\u0016\u0010K\u001a\u00020%2\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0013X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0019\u001a\u00020\u0013X\u0082\u0004¢\u0006\b\n��\u0012\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\"R\u000e\u0010#\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006N"}, d2 = {"Lcom/lb/video_trimmer_library/view/RangeSeekBarView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "currentThumb", "edgePaint", "Landroid/graphics/Paint;", "firstRun", "", "listeners", "Ljava/util/HashSet;", "Lcom/lb/video_trimmer_library/interfaces/OnRangeSeekBarListener;", "Lkotlin/collections/HashSet;", "maxWidth", "", "pixelRangeMax", "pixelRangeMin", "scaleRangeMax", "shadowPaint", "strokePaint", "thumbTouchExtraMultiplier", "thumbTouchExtraMultiplier$annotations", "()V", "thumbWidth", "getThumbWidth", "()I", "thumbs", "", "Lcom/lb/video_trimmer_library/view/RangeSeekBarView$Thumb;", "[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$Thumb;", "viewWidth", "addOnRangeSeekBarListener", "", "listener", "calculateThumbPos", "index", "calculateThumbValue", "checkPositionThumb", "thumbLeft", "thumbRight", "dx", "isLeftMove", "getClosestThumb", "xPos", "getThumbValue", "initMaxWidth", "initShadowColor", "initThumbTouchExtraMultiplier", "initThumbWidth", "onCreate", "rangeSeekBarView", "value", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onSeek", "onSeekStart", "onSeekStop", "onTouchEvent", "ev", "Landroid/view/MotionEvent;", "pixelToScale", "pixelValue", "scaleToPixel", "scaleValue", "setThumbPos", "pos", "setThumbValue", "Thumb", "ThumbType", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/RangeSeekBarView.class */
public class RangeSeekBarView extends View {

    /* renamed from: a  reason: collision with root package name */
    public final a[] f33639a;

    /* renamed from: b  reason: collision with root package name */
    public HashSet<com.lb.video_trimmer_library.a.b> f33640b;

    /* renamed from: c  reason: collision with root package name */
    public float f33641c;

    /* renamed from: d  reason: collision with root package name */
    public final int f33642d;
    private final float e;
    private int f;
    private float g;
    private float h;
    private final float i;
    private boolean j;
    private final Paint k;
    private final Paint l;
    private final Paint m;
    private int n;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u000b\u0018��2\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR\u001a\u0010\u0010\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/lb/video_trimmer_library/view/RangeSeekBarView$Thumb;", "", "index", "", "(I)V", "getIndex", "()I", "lastTouchX", "", "getLastTouchX", "()F", "setLastTouchX", "(F)V", "pos", "getPos", "setPos", "value", "getValue", "setValue", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/RangeSeekBarView$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public float f33643a;

        /* renamed from: b  reason: collision with root package name */
        public float f33644b;

        /* renamed from: c  reason: collision with root package name */
        float f33645c;

        /* renamed from: d  reason: collision with root package name */
        final int f33646d;

        public a() {
            this(0, 1, null);
        }

        public a(int i) {
            this.f33646d = i;
        }

        public /* synthetic */ a(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0 : i);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/lb/video_trimmer_library/view/RangeSeekBarView$ThumbType;", "", "index", "", "(Ljava/lang/String;II)V", "getIndex", "()I", "LEFT", "RIGHT", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/view/RangeSeekBarView$b.class */
    public enum b {
        LEFT(0),
        RIGHT(1);
        
        private final int index;

        b(int i) {
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
        p.c(context, "context");
        this.e = 1.0f;
        this.f33639a = new a[]{new a(b.LEFT.getIndex()), new a(b.RIGHT.getIndex())};
        this.f33640b = new HashSet<>();
        p.c(context, "context");
        Resources resources = context.getResources();
        p.a((Object) resources, "context.resources");
        this.f33642d = d.c((int) TypedValue.applyDimension(1, 27.0f, resources.getDisplayMetrics()), 1);
        this.i = 100.0f;
        this.j = true;
        Paint paint = new Paint();
        this.k = paint;
        Paint paint2 = new Paint();
        this.l = paint2;
        Paint paint3 = new Paint();
        this.m = paint3;
        this.n = b.LEFT.getIndex();
        setFocusable(true);
        setFocusableInTouchMode(true);
        paint.setAntiAlias(true);
        paint.setColor(-1325400064);
        paint2.setAntiAlias(true);
        paint2.setStyle(Paint.Style.STROKE);
        Resources resources2 = context.getResources();
        p.a((Object) resources2, "context.resources");
        paint2.setStrokeWidth(TypedValue.applyDimension(1, 2.0f, resources2.getDisplayMetrics()));
        paint2.setColor(-1);
        paint3.setAntiAlias(true);
        paint3.setColor(-1);
    }

    public /* synthetic */ RangeSeekBarView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    private final void a(int i) {
        a[] aVarArr = this.f33639a;
        if (i < aVarArr.length) {
            if (!(aVarArr.length == 0)) {
                a aVar = aVarArr[i];
                float f = aVar.f33644b;
                float f2 = this.h;
                float f3 = (f * 100.0f) / f2;
                aVar.f33643a = i == 0 ? f3 + ((((this.f33642d * f3) / 100.0f) * 100.0f) / f2) : f3 - (((((100.0f - f3) * this.f33642d) / 100.0f) * 100.0f) / f2);
                float f4 = aVar.f33643a;
                for (com.lb.video_trimmer_library.a.b bVar : this.f33640b) {
                    bVar.a(this, i, f4);
                }
            }
        }
    }

    private final void a(int i, float f) {
        this.f33639a[i].f33644b = f;
        a(i);
        invalidate();
    }

    private final void a(a aVar, a aVar2, float f, boolean z) {
        if (!z || f >= BitmapDescriptorFactory.HUE_RED) {
            if (!z && f > BitmapDescriptorFactory.HUE_RED && (aVar2.f33644b + f) - aVar.f33644b > this.f33641c) {
                aVar.f33644b = (aVar2.f33644b + f) - this.f33641c;
                a(b.LEFT.getIndex(), aVar.f33644b);
            }
        } else if (aVar2.f33644b - (aVar.f33644b + f) > this.f33641c) {
            aVar2.f33644b = aVar.f33644b + f + this.f33641c;
            a(b.RIGHT.getIndex(), aVar2.f33644b);
        }
    }

    public final void a(RangeSeekBarView rangeSeekBarView) {
        for (com.lb.video_trimmer_library.a.b bVar : this.f33640b) {
            bVar.c(rangeSeekBarView);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        p.c(canvas, "canvas");
        super.onDraw(canvas);
        a[] aVarArr = this.f33639a;
        if (!(aVarArr.length == 0)) {
            for (a aVar : aVarArr) {
                if (aVar.f33646d == b.LEFT.getIndex()) {
                    float paddingLeft = aVar.f33644b + getPaddingLeft();
                    if (paddingLeft > this.g) {
                        int i = this.f33642d;
                        canvas.drawRect(i, BitmapDescriptorFactory.HUE_RED, paddingLeft + i, getHeight(), this.k);
                    }
                } else {
                    float paddingRight = aVar.f33644b - getPaddingRight();
                    if (paddingRight < this.h) {
                        canvas.drawRect(paddingRight, BitmapDescriptorFactory.HUE_RED, this.f - this.f33642d, getHeight(), this.k);
                    }
                }
            }
            canvas.drawRect(this.f33639a[b.LEFT.getIndex()].f33644b + getPaddingLeft() + this.f33642d, BitmapDescriptorFactory.HUE_RED, this.f33639a[b.RIGHT.getIndex()].f33644b - getPaddingRight(), getHeight(), this.l);
            Context context = getContext();
            p.a((Object) context, "context");
            Resources resources = context.getResources();
            p.a((Object) resources, "context.resources");
            float applyDimension = TypedValue.applyDimension(1, 6.0f, resources.getDisplayMetrics());
            canvas.drawCircle(this.f33639a[b.LEFT.getIndex()].f33644b + getPaddingLeft() + this.f33642d, getHeight() / 2.0f, applyDimension, this.m);
            canvas.drawCircle(this.f33639a[b.RIGHT.getIndex()].f33644b - getPaddingRight(), getHeight() / 2.0f, applyDimension, this.m);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredWidth;
        super.onMeasure(i, i2);
        this.f = getMeasuredWidth();
        this.g = BitmapDescriptorFactory.HUE_RED;
        this.h = measuredWidth - this.f33642d;
        if (this.j) {
            a[] aVarArr = this.f33639a;
            int length = aVarArr.length;
            for (int i3 = 0; i3 < length; i3++) {
                a aVar = aVarArr[i3];
                float f = i3;
                aVar.f33643a = this.i * f;
                aVar.f33644b = this.h * f;
            }
            for (com.lb.video_trimmer_library.a.b bVar : this.f33640b) {
                bVar.a(this);
            }
            this.j = false;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int i;
        p.c(ev, "ev");
        float x = ev.getX();
        int action = ev.getAction();
        if (action == 0) {
            if (!(this.f33639a.length == 0)) {
                k kVar = k.f36806a;
                float f = Float.MAX_VALUE;
                float f2 = x - this.f33642d;
                a[] aVarArr = this.f33639a;
                int length = aVarArr.length;
                int i2 = 0;
                int i3 = -1;
                while (true) {
                    i = i3;
                    if (i2 >= length) {
                        break;
                    }
                    a aVar = aVarArr[i2];
                    float f3 = aVar.f33646d == b.LEFT.getIndex() ? aVar.f33644b : aVar.f33644b - this.f33642d;
                    int i4 = this.f33642d;
                    float f4 = i4;
                    float f5 = this.e;
                    float f6 = i4;
                    i3 = i3;
                    f = f;
                    if (f2 >= f3 - (f4 * f5)) {
                        i3 = i3;
                        f = f;
                        if (f2 <= (f6 * f5) + f3) {
                            float abs = Math.abs(f3 - f2);
                            i3 = i3;
                            f = f;
                            if (abs < f) {
                                i3 = aVar.f33646d;
                                f = abs;
                            }
                        }
                    }
                    i2++;
                }
            } else {
                i = -1;
            }
            this.n = i;
            if (i == -1) {
                return false;
            }
            this.f33639a[i].f33645c = x;
            for (com.lb.video_trimmer_library.a.b bVar : this.f33640b) {
                bVar.b(this);
            }
            return true;
        } else if (action != 1) {
            if (action != 2) {
                return false;
            }
            a[] aVarArr2 = this.f33639a;
            int i5 = this.n;
            a aVar2 = aVarArr2[i5];
            a aVar3 = aVarArr2[(i5 == b.LEFT.getIndex() ? b.RIGHT : b.LEFT).getIndex()];
            float f7 = x - aVar2.f33645c;
            float f8 = aVar2.f33644b + f7;
            if (this.n == 0) {
                if (this.f33642d + f8 >= aVar3.f33644b) {
                    aVar2.f33644b = aVar3.f33644b - this.f33642d;
                } else {
                    float f9 = this.g;
                    if (f8 <= f9) {
                        aVar2.f33644b = f9;
                    } else {
                        a(aVar2, aVar3, f7, true);
                        aVar2.f33644b += f7;
                        aVar2.f33645c = x;
                    }
                }
            } else if (f8 <= aVar3.f33644b + this.f33642d) {
                aVar2.f33644b = aVar3.f33644b + this.f33642d;
            } else {
                float f10 = this.h;
                if (f8 >= f10) {
                    aVar2.f33644b = f10;
                } else {
                    a(aVar3, aVar2, f7, false);
                    aVar2.f33644b += f7;
                    aVar2.f33645c = x;
                }
            }
            a(this.n, aVar2.f33644b);
            invalidate();
            return true;
        } else if (this.n == -1) {
            return false;
        } else {
            a(this);
            return true;
        }
    }

    public final void setThumbValue(int i, float f) {
        this.f33639a[i].f33643a = f;
        a[] aVarArr = this.f33639a;
        if (i < aVarArr.length) {
            if (!(aVarArr.length == 0)) {
                a aVar = aVarArr[i];
                float f2 = aVar.f33643a;
                float f3 = (this.h * f2) / 100.0f;
                aVar.f33644b = i == 0 ? f3 - ((f2 * this.f33642d) / 100.0f) : f3 + (((100.0f - f2) * this.f33642d) / 100.0f);
            }
        }
        invalidate();
    }
}
