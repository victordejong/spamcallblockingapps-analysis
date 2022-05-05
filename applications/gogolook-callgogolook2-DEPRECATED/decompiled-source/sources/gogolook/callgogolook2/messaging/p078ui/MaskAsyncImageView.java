package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$styleable;
import gogolook.callgogolook2.messaging.p078ui.AsyncImageView;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11667n;
/* renamed from: gogolook.callgogolook2.messaging.ui.MaskAsyncImageView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/MaskAsyncImageView.class */
public class MaskAsyncImageView extends FrameLayout {

    /* renamed from: j */
    public static final int f11480j = View.MeasureSpec.makeMeasureSpec(0, 0);

    /* renamed from: k */
    public static final ImageView.ScaleType[] f11481k = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* renamed from: d */
    public final int f11485d;

    /* renamed from: e */
    public final int f11486e;

    /* renamed from: h */
    public final int f11489h;

    /* renamed from: i */
    public final boolean f11490i;

    /* renamed from: a */
    public final AsyncImageView f11482a = (AsyncImageView) findViewById(R$id.async_image_view);

    /* renamed from: f */
    public final int f11487f = getMinimumWidth();

    /* renamed from: g */
    public final int f11488g = getMinimumHeight();

    /* renamed from: b */
    public int f11483b = -1;

    /* renamed from: c */
    public int f11484c = -1;

    public MaskAsyncImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R$layout.mask_async_image_view, (ViewGroup) this, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaskAsyncImageView, 0, 0);
        this.f11485d = obtainStyledAttributes.getDimensionPixelSize(2, Integer.MAX_VALUE);
        this.f11486e = obtainStyledAttributes.getDimensionPixelSize(1, Integer.MAX_VALUE);
        this.f11489h = obtainStyledAttributes.getInt(3, -1);
        this.f11490i = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        setMinimumWidth(0);
        setMinimumHeight(0);
        int i = this.f11489h;
        if (i >= 0) {
            this.f11482a.setScaleType(f11481k[i]);
        }
    }

    /* renamed from: a */
    public int m27362a() {
        return this.f11486e;
    }

    /* renamed from: a */
    public void m27361a(AsyncImageView.C4678b bVar) {
        this.f11482a.m27449a(bVar);
    }

    /* renamed from: a */
    public void m27360a(@Nullable AbstractC11667n nVar) {
        this.f11482a.m27439b(nVar);
    }

    /* renamed from: b */
    public int m27359b() {
        return this.f11485d;
    }

    /* renamed from: c */
    public final boolean m27358c() {
        return (this.f11483b == -1 || this.f11484c == -1) ? false : true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (!this.f11490i) {
            this.f11482a.layout(0, 0, i3 - i, i4 - i2);
        } else {
            super.onLayout(z, i, i2, i3, i4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x013c, code lost:
        if (r0 > getMinimumWidth()) goto L_0x013f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01b2, code lost:
        if (r7 > r6.f11486e) goto L_0x01b5;
     */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.MaskAsyncImageView.onMeasure(int, int):void");
    }
}
