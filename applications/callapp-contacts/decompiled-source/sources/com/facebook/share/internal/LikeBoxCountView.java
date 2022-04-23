package com.facebook.share.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.common.a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/LikeBoxCountView.class */
public class LikeBoxCountView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private TextView f20168a;
    private Paint f;

    /* renamed from: b  reason: collision with root package name */
    private a f20169b = a.LEFT;

    /* renamed from: c  reason: collision with root package name */
    private float f20170c = getResources().getDimension(a.b.com_facebook_likeboxcountview_caret_height);

    /* renamed from: d  reason: collision with root package name */
    private float f20171d = getResources().getDimension(a.b.com_facebook_likeboxcountview_caret_width);
    private float e = getResources().getDimension(a.b.com_facebook_likeboxcountview_border_radius);
    private int g = getResources().getDimensionPixelSize(a.b.com_facebook_likeboxcountview_text_padding);
    private int h = getResources().getDimensionPixelSize(a.b.com_facebook_likeboxcountview_caret_height);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.share.internal.LikeBoxCountView$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/LikeBoxCountView$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f20172a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.values().length];
            f20172a = iArr;
            try {
                iArr[a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f20172a[a.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f20172a[a.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f20172a[a.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/LikeBoxCountView$a.class */
    public enum a {
        LEFT,
        TOP,
        RIGHT,
        BOTTOM
    }

    @Deprecated
    public LikeBoxCountView(Context context) {
        super(context);
        setWillNotDraw(false);
        Paint paint = new Paint();
        this.f = paint;
        paint.setColor(getResources().getColor(a.C0393a.com_facebook_likeboxcountview_border_color));
        this.f.setStrokeWidth(getResources().getDimension(a.b.com_facebook_likeboxcountview_border_width));
        this.f.setStyle(Paint.Style.STROKE);
        this.f20168a = new TextView(context);
        this.f20168a.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f20168a.setGravity(17);
        this.f20168a.setTextSize(0, getResources().getDimension(a.b.com_facebook_likeboxcountview_text_size));
        this.f20168a.setTextColor(getResources().getColor(a.C0393a.com_facebook_likeboxcountview_text_color));
        addView(this.f20168a);
        setCaretPosition(this.f20169b);
    }

    private void a(int i, int i2, int i3, int i4) {
        TextView textView = this.f20168a;
        int i5 = this.g;
        textView.setPadding(i + i5, i2 + i5, i3 + i5, i5 + i4);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int i = AnonymousClass1.f20172a[this.f20169b.ordinal()];
        if (i == 1) {
            paddingLeft = (int) (paddingLeft + this.f20170c);
        } else if (i == 2) {
            paddingTop = (int) (paddingTop + this.f20170c);
        } else if (i == 3) {
            width = (int) (width - this.f20170c);
        } else if (i == 4) {
            height = (int) (height - this.f20170c);
        }
        float f = paddingLeft;
        float f2 = paddingTop;
        float f3 = width;
        float f4 = height;
        Path path = new Path();
        float f5 = this.e * 2.0f;
        float f6 = f + f5;
        float f7 = f2 + f5;
        path.addArc(new RectF(f, f2, f6, f7), -180.0f, 90.0f);
        if (this.f20169b == a.TOP) {
            float f8 = f3 - f;
            path.lineTo(((f8 - this.f20171d) / 2.0f) + f, f2);
            path.lineTo((f8 / 2.0f) + f, f2 - this.f20170c);
            path.lineTo(((f8 + this.f20171d) / 2.0f) + f, f2);
        }
        path.lineTo(f3 - this.e, f2);
        float f9 = f3 - f5;
        path.addArc(new RectF(f9, f2, f3, f7), -90.0f, 90.0f);
        if (this.f20169b == a.RIGHT) {
            float f10 = f4 - f2;
            path.lineTo(f3, ((f10 - this.f20171d) / 2.0f) + f2);
            path.lineTo(this.f20170c + f3, (f10 / 2.0f) + f2);
            path.lineTo(f3, ((f10 + this.f20171d) / 2.0f) + f2);
        }
        path.lineTo(f3, f4 - this.e);
        float f11 = f4 - f5;
        path.addArc(new RectF(f9, f11, f3, f4), BitmapDescriptorFactory.HUE_RED, 90.0f);
        if (this.f20169b == a.BOTTOM) {
            float f12 = f3 - f;
            path.lineTo(((this.f20171d + f12) / 2.0f) + f, f4);
            path.lineTo((f12 / 2.0f) + f, this.f20170c + f4);
            path.lineTo(((f12 - this.f20171d) / 2.0f) + f, f4);
        }
        path.lineTo(this.e + f, f4);
        path.addArc(new RectF(f, f11, f6, f4), 90.0f, 90.0f);
        if (this.f20169b == a.LEFT) {
            float f13 = f4 - f2;
            path.lineTo(f, ((this.f20171d + f13) / 2.0f) + f2);
            path.lineTo(f - this.f20170c, (f13 / 2.0f) + f2);
            path.lineTo(f, ((f13 - this.f20171d) / 2.0f) + f2);
        }
        path.lineTo(f, f2 + this.e);
        canvas.drawPath(path, this.f);
    }

    @Deprecated
    public void setCaretPosition(a aVar) {
        this.f20169b = aVar;
        int i = AnonymousClass1.f20172a[aVar.ordinal()];
        if (i == 1) {
            a(this.h, 0, 0, 0);
        } else if (i == 2) {
            a(0, this.h, 0, 0);
        } else if (i == 3) {
            a(0, 0, this.h, 0);
        } else if (i == 4) {
            a(0, 0, 0, this.h);
        }
    }

    @Deprecated
    public void setText(String str) {
        this.f20168a.setText(str);
    }
}
