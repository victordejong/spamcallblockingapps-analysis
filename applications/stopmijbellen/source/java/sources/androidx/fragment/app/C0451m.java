package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.lifecycle.AbstractC0516f;
import androidx.savedstate.C0657a;
/* renamed from: androidx.fragment.app.m */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/m.class */
public class C0451m implements C0657a.AbstractC0659b {

    /* renamed from: a */
    public final /* synthetic */ ActivityC0455o f1861a;

    public C0451m(ActivityC0455o activityC0455o) {
        this.f1861a = activityC0455o;
    }

    @Override // androidx.savedstate.C0657a.AbstractC0659b
    /* renamed from: a */
    public Bundle mo3371a() {
        Bundle bundle = new Bundle();
        do {
        } while (ActivityC0455o.m8093p(this.f1861a.m8094o(), AbstractC0516f.EnumC0519c.CREATED));
        this.f1861a.f1879i.m7988e(AbstractC0516f.EnumC0518b.ON_STOP);
        Parcelable m8174c0 = this.f1861a.f1878h.f1951a.f1984d.m8174c0();
        if (m8174c0 != null) {
            bundle.putParcelable("android:support:fragments", m8174c0);
        }
        return bundle;
    }
}
