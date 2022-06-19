package androidx.viewpager2.p051a;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.p051a.C1107f;
import java.util.Locale;
/* renamed from: androidx.viewpager2.a.d */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/a/d.class */
public final class C1104d extends C1107f.AbstractC1109b {

    /* renamed from: a */
    private final LinearLayoutManager f3795a;

    /* renamed from: b */
    private C1107f.AbstractC1110c f3796b;

    /* renamed from: a */
    public C1107f.AbstractC1110c m18036a() {
        return this.f3796b;
    }

    @Override // androidx.viewpager2.p051a.C1107f.AbstractC1109b
    /* renamed from: a */
    public void mo17999a(int i) {
    }

    @Override // androidx.viewpager2.p051a.C1107f.AbstractC1109b
    /* renamed from: a */
    public void mo17998a(int i, float f, int i2) {
        if (this.f3796b == null) {
            return;
        }
        float f2 = -f;
        for (int i3 = 0; i3 < this.f3795a.m18910y(); i3++) {
            View i4 = this.f3795a.m18927i(i3);
            if (i4 == null) {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i3), Integer.valueOf(this.f3795a.m18910y())));
            }
            this.f3796b.m17996a(i4, (this.f3795a.m18943d(i4) - i) + f2);
        }
    }

    /* renamed from: a */
    public void m18035a(C1107f.AbstractC1110c abstractC1110c) {
        this.f3796b = abstractC1110c;
    }

    @Override // androidx.viewpager2.p051a.C1107f.AbstractC1109b
    /* renamed from: b */
    public void mo17997b(int i) {
    }
}
