package androidx.appcompat.widget;

import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v.class */
final class v {

    /* renamed from: a  reason: collision with root package name */
    int f1135a = 0;

    /* renamed from: b  reason: collision with root package name */
    int f1136b = 0;

    /* renamed from: c  reason: collision with root package name */
    int f1137c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* renamed from: d  reason: collision with root package name */
    int f1138d = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
    int e = 0;
    int f = 0;
    boolean g = false;
    boolean h = false;

    public final void a(int i, int i2) {
        this.f1137c = i;
        this.f1138d = i2;
        this.h = true;
        if (this.g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1135a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f1136b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1135a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1136b = i2;
        }
    }

    public final void b(int i, int i2) {
        this.h = false;
        if (i != Integer.MIN_VALUE) {
            this.e = i;
            this.f1135a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f = i2;
            this.f1136b = i2;
        }
    }
}
