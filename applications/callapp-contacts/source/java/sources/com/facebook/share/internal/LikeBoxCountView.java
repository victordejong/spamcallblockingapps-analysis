package com.facebook.share.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.common.C10165a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/LikeBoxCountView.class */
public class LikeBoxCountView extends FrameLayout {

    /* renamed from: a */
    private TextView f34146a;

    /* renamed from: f */
    private Paint f34151f;

    /* renamed from: b */
    private EnumC10443a f34147b = EnumC10443a.LEFT;

    /* renamed from: c */
    private float f34148c = getResources().getDimension(C10165a.C10167b.com_facebook_likeboxcountview_caret_height);

    /* renamed from: d */
    private float f34149d = getResources().getDimension(C10165a.C10167b.com_facebook_likeboxcountview_caret_width);

    /* renamed from: e */
    private float f34150e = getResources().getDimension(C10165a.C10167b.com_facebook_likeboxcountview_border_radius);

    /* renamed from: g */
    private int f34152g = getResources().getDimensionPixelSize(C10165a.C10167b.com_facebook_likeboxcountview_text_padding);

    /* renamed from: h */
    private int f34153h = getResources().getDimensionPixelSize(C10165a.C10167b.com_facebook_likeboxcountview_caret_height);

    /* renamed from: com.facebook.share.internal.LikeBoxCountView$1 */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/LikeBoxCountView$1.class */
    public static final /* synthetic */ class C104421 {

        /* renamed from: a */
        static final /* synthetic */ int[] f34154a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC10443a.values().length];
            f34154a = iArr;
            try {
                iArr[EnumC10443a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34154a[EnumC10443a.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34154a[EnumC10443a.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34154a[EnumC10443a.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.facebook.share.internal.LikeBoxCountView$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/LikeBoxCountView$a.class */
    public enum EnumC10443a {
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
        this.f34151f = paint;
        paint.setColor(getResources().getColor(C10165a.C10166a.com_facebook_likeboxcountview_border_color));
        this.f34151f.setStrokeWidth(getResources().getDimension(C10165a.C10167b.com_facebook_likeboxcountview_border_width));
        this.f34151f.setStyle(Paint.Style.STROKE);
        this.f34146a = new TextView(context);
        this.f34146a.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f34146a.setGravity(17);
        this.f34146a.setTextSize(0, getResources().getDimension(C10165a.C10167b.com_facebook_likeboxcountview_text_size));
        this.f34146a.setTextColor(getResources().getColor(C10165a.C10166a.com_facebook_likeboxcountview_text_color));
        addView(this.f34146a);
        setCaretPosition(this.f34147b);
    }

    /* renamed from: a */
    private void m22787a(int i, int i2, int i3, int i4) {
        TextView textView = this.f34146a;
        int i5 = this.f34152g;
        textView.setPadding(i + i5, i2 + i5, i3 + i5, i5 + i4);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int i = C104421.f34154a[this.f34147b.ordinal()];
        if (i == 1) {
            paddingLeft = (int) (paddingLeft + this.f34148c);
        } else if (i == 2) {
            paddingTop = (int) (paddingTop + this.f34148c);
        } else if (i == 3) {
            width = (int) (width - this.f34148c);
        } else if (i == 4) {
            height = (int) (height - this.f34148c);
        }
        float f = paddingLeft;
        float f2 = paddingTop;
        float f3 = width;
        float f4 = height;
        Path path = new Path();
        float f5 = this.f34150e * 2.0f;
        float f6 = f + f5;
        float f7 = f2 + f5;
        path.addArc(new RectF(f, f2, f6, f7), -180.0f, 90.0f);
        if (this.f34147b == EnumC10443a.TOP) {
            float f8 = f3 - f;
            path.lineTo(((f8 - this.f34149d) / 2.0f) + f, f2);
            path.lineTo((f8 / 2.0f) + f, f2 - this.f34148c);
            path.lineTo(((f8 + this.f34149d) / 2.0f) + f, f2);
        }
        path.lineTo(f3 - this.f34150e, f2);
        float f9 = f3 - f5;
        path.addArc(new RectF(f9, f2, f3, f7), -90.0f, 90.0f);
        if (this.f34147b == EnumC10443a.RIGHT) {
            float f10 = f4 - f2;
            path.lineTo(f3, ((f10 - this.f34149d) / 2.0f) + f2);
            path.lineTo(this.f34148c + f3, (f10 / 2.0f) + f2);
            path.lineTo(f3, ((f10 + this.f34149d) / 2.0f) + f2);
        }
        path.lineTo(f3, f4 - this.f34150e);
        float f11 = f4 - f5;
        path.addArc(new RectF(f9, f11, f3, f4), BitmapDescriptorFactory.HUE_RED, 90.0f);
        if (this.f34147b == EnumC10443a.BOTTOM) {
            float f12 = f3 - f;
            path.lineTo(((this.f34149d + f12) / 2.0f) + f, f4);
            path.lineTo((f12 / 2.0f) + f, this.f34148c + f4);
            path.lineTo(((f12 - this.f34149d) / 2.0f) + f, f4);
        }
        path.lineTo(this.f34150e + f, f4);
        path.addArc(new RectF(f, f11, f6, f4), 90.0f, 90.0f);
        if (this.f34147b == EnumC10443a.LEFT) {
            float f13 = f4 - f2;
            path.lineTo(f, ((this.f34149d + f13) / 2.0f) + f2);
            path.lineTo(f - this.f34148c, (f13 / 2.0f) + f2);
            path.lineTo(f, ((f13 - this.f34149d) / 2.0f) + f2);
        }
        path.lineTo(f, f2 + this.f34150e);
        canvas.drawPath(path, this.f34151f);
    }

    @Deprecated
    public void setCaretPosition(EnumC10443a enumC10443a) {
        this.f34147b = enumC10443a;
        int i = C104421.f34154a[enumC10443a.ordinal()];
        if (i == 1) {
            m22787a(this.f34153h, 0, 0, 0);
        } else if (i == 2) {
            m22787a(0, this.f34153h, 0, 0);
        } else if (i == 3) {
            m22787a(0, 0, this.f34153h, 0);
        } else if (i != 4) {
        } else {
            m22787a(0, 0, 0, this.f34153h);
        }
    }

    @Deprecated
    public void setText(String str) {
        this.f34146a.setText(str);
    }
}
