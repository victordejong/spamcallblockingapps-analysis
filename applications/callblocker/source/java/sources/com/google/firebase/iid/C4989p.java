package com.google.firebase.iid;

import android.os.Bundle;
/* renamed from: com.google.firebase.iid.p */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/p.class */
final class C4989p extends AbstractC4987n<Bundle> {
    public C4989p(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    @Override // com.google.firebase.iid.AbstractC4987n
    /* renamed from: a */
    public final void mo1912a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = Bundle.EMPTY;
        }
        m1922a((C4989p) bundle3);
    }

    @Override // com.google.firebase.iid.AbstractC4987n
    /* renamed from: a */
    public final boolean mo1913a() {
        return false;
    }
}
