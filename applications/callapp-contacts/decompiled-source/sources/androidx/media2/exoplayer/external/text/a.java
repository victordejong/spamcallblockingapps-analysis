package androidx.media2.exoplayer.external.text;

import android.graphics.Bitmap;
import android.text.Layout;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f3785a = new a("");

    /* renamed from: b  reason: collision with root package name */
    public final CharSequence f3786b;

    /* renamed from: c  reason: collision with root package name */
    public final Layout.Alignment f3787c;

    /* renamed from: d  reason: collision with root package name */
    public final Bitmap f3788d;
    public final float e;
    public final int f;
    public final int g;
    public final float h;
    public final int i;
    public final float j;
    public final float k;
    public final boolean l;
    public final int m;
    public final int n;
    public final float o;

    public a(Bitmap bitmap, float f, int i, float f2, int i2, float f3, float f4) {
        this(null, null, bitmap, f2, 0, i2, f, i, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE, f3, f4, false, -16777216);
    }

    public a(CharSequence charSequence) {
        this(charSequence, null, Float.MIN_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE);
    }

    public a(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        this(charSequence, alignment, f, i, i2, f2, i3, f3, false, -16777216);
    }

    public a(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, int i4, float f4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, i4, f4, f3, Float.MIN_VALUE, false, -16777216);
    }

    public a(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE, f3, Float.MIN_VALUE, z, i4);
    }

    private a(CharSequence charSequence, Layout.Alignment alignment, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5) {
        this.f3786b = charSequence;
        this.f3787c = alignment;
        this.f3788d = bitmap;
        this.e = f;
        this.f = i;
        this.g = i2;
        this.h = f2;
        this.i = i3;
        this.j = f4;
        this.k = f5;
        this.l = z;
        this.m = i5;
        this.n = i4;
        this.o = f3;
    }
}
