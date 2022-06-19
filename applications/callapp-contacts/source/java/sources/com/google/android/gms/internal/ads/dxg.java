package com.google.android.gms.internal.ads;

import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxg.class */
public class dxg {

    /* renamed from: a */
    int f47942a;

    /* renamed from: a */
    public void mo15511a() {
        this.f47942a = 0;
    }

    /* renamed from: a */
    public final boolean m15524a(int i) {
        return (this.f47942a & i) == i;
    }

    /* renamed from: b */
    public final boolean m15523b() {
        return m15524a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    /* renamed from: c */
    public final boolean m15522c() {
        return m15524a(4);
    }

    /* renamed from: d */
    public final boolean m15521d() {
        return m15524a(1);
    }
}
