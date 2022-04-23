package com.google.android.gms.internal.ads;

import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxg.class */
public class dxg {

    /* renamed from: a  reason: collision with root package name */
    int f27361a;

    public void a() {
        this.f27361a = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(int i) {
        return (this.f27361a & i) == i;
    }

    public final boolean b() {
        return a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    public final boolean c() {
        return a(4);
    }

    public final boolean d() {
        return a(1);
    }
}
