package androidx.media2.exoplayer.external.text;

import android.graphics.Bitmap;
import android.text.Layout;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* renamed from: androidx.media2.exoplayer.external.text.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a.class */
public class C1856a {

    /* renamed from: a */
    public static final C1856a f7399a = new C1856a("");

    /* renamed from: b */
    public final CharSequence f7400b;

    /* renamed from: c */
    public final Layout.Alignment f7401c;

    /* renamed from: d */
    public final Bitmap f7402d;

    /* renamed from: e */
    public final float f7403e;

    /* renamed from: f */
    public final int f7404f;

    /* renamed from: g */
    public final int f7405g;

    /* renamed from: h */
    public final float f7406h;

    /* renamed from: i */
    public final int f7407i;

    /* renamed from: j */
    public final float f7408j;

    /* renamed from: k */
    public final float f7409k;

    /* renamed from: l */
    public final boolean f7410l;

    /* renamed from: m */
    public final int f7411m;

    /* renamed from: n */
    public final int f7412n;

    /* renamed from: o */
    public final float f7413o;

    public C1856a(Bitmap bitmap, float f, int i, float f2, int i2, float f3, float f4) {
        this(null, null, bitmap, f2, 0, i2, f, i, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE, f3, f4, false, -16777216);
    }

    public C1856a(CharSequence charSequence) {
        this(charSequence, null, Float.MIN_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE);
    }

    public C1856a(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        this(charSequence, alignment, f, i, i2, f2, i3, f3, false, -16777216);
    }

    public C1856a(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, int i4, float f4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, i4, f4, f3, Float.MIN_VALUE, false, -16777216);
    }

    public C1856a(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE, f3, Float.MIN_VALUE, z, i4);
    }

    private C1856a(CharSequence charSequence, Layout.Alignment alignment, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5) {
        this.f7400b = charSequence;
        this.f7401c = alignment;
        this.f7402d = bitmap;
        this.f7403e = f;
        this.f7404f = i;
        this.f7405g = i2;
        this.f7406h = f2;
        this.f7407i = i3;
        this.f7408j = f4;
        this.f7409k = f5;
        this.f7410l = z;
        this.f7411m = i5;
        this.f7412n = i4;
        this.f7413o = f3;
    }
}
