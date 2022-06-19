package androidx.appcompat.widget;

import com.callapp.contacts.activity.base.BaseViewTypeData;
/* renamed from: androidx.appcompat.widget.v */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v.class */
final class C0422v {

    /* renamed from: a */
    int f1656a = 0;

    /* renamed from: b */
    int f1657b = 0;

    /* renamed from: c */
    int f1658c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* renamed from: d */
    int f1659d = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* renamed from: e */
    int f1660e = 0;

    /* renamed from: f */
    int f1661f = 0;

    /* renamed from: g */
    boolean f1662g = false;

    /* renamed from: h */
    boolean f1663h = false;

    /* renamed from: a */
    public final void m45586a(int i, int i2) {
        this.f1658c = i;
        this.f1659d = i2;
        this.f1663h = true;
        if (this.f1662g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1656a = i2;
            }
            if (i == Integer.MIN_VALUE) {
                return;
            }
            this.f1657b = i;
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1656a = i;
        }
        if (i2 == Integer.MIN_VALUE) {
            return;
        }
        this.f1657b = i2;
    }

    /* renamed from: b */
    public final void m45585b(int i, int i2) {
        this.f1663h = false;
        if (i != Integer.MIN_VALUE) {
            this.f1660e = i;
            this.f1656a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1661f = i2;
            this.f1657b = i2;
        }
    }
}
