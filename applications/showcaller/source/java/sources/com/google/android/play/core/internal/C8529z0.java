package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.z0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/z0.class */
public final class C8529z0 extends C8523w0 implements AbstractC8472b1 {
    public C8529z0(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
    }

    @Override // com.google.android.play.core.internal.AbstractC8472b1
    /* renamed from: D1 */
    public final void mo3416D1(String str, Bundle bundle, Bundle bundle2, AbstractC8481d1 abstractC8481d1) {
        Parcel m3436c0 = m3436c0();
        m3436c0.writeString(str);
        C8527y0.m3419b(m3436c0, bundle);
        C8527y0.m3419b(m3436c0, bundle2);
        C8527y0.m3418c(m3436c0, abstractC8481d1);
        m3437D0(9, m3436c0);
    }

    @Override // com.google.android.play.core.internal.AbstractC8472b1
    /* renamed from: F2 */
    public final void mo3415F2(String str, Bundle bundle, AbstractC8481d1 abstractC8481d1) {
        Parcel m3436c0 = m3436c0();
        m3436c0.writeString(str);
        C8527y0.m3419b(m3436c0, bundle);
        C8527y0.m3418c(m3436c0, abstractC8481d1);
        m3437D0(10, m3436c0);
    }

    @Override // com.google.android.play.core.internal.AbstractC8472b1
    /* renamed from: G2 */
    public final void mo3414G2(String str, Bundle bundle, Bundle bundle2, AbstractC8481d1 abstractC8481d1) {
        Parcel m3436c0 = m3436c0();
        m3436c0.writeString(str);
        C8527y0.m3419b(m3436c0, bundle);
        C8527y0.m3419b(m3436c0, bundle2);
        C8527y0.m3418c(m3436c0, abstractC8481d1);
        m3437D0(11, m3436c0);
    }

    @Override // com.google.android.play.core.internal.AbstractC8472b1
    /* renamed from: G5 */
    public final void mo3413G5(String str, Bundle bundle, AbstractC8481d1 abstractC8481d1) {
        Parcel m3436c0 = m3436c0();
        m3436c0.writeString(str);
        C8527y0.m3419b(m3436c0, bundle);
        C8527y0.m3418c(m3436c0, abstractC8481d1);
        m3437D0(5, m3436c0);
    }

    @Override // com.google.android.play.core.internal.AbstractC8472b1
    /* renamed from: Y5 */
    public final void mo3412Y5(String str, Bundle bundle, Bundle bundle2, AbstractC8481d1 abstractC8481d1) {
        Parcel m3436c0 = m3436c0();
        m3436c0.writeString(str);
        C8527y0.m3419b(m3436c0, bundle);
        C8527y0.m3419b(m3436c0, bundle2);
        C8527y0.m3418c(m3436c0, abstractC8481d1);
        m3437D0(6, m3436c0);
    }

    @Override // com.google.android.play.core.internal.AbstractC8472b1
    /* renamed from: Z0 */
    public final void mo3411Z0(String str, Bundle bundle, Bundle bundle2, AbstractC8481d1 abstractC8481d1) {
        Parcel m3436c0 = m3436c0();
        m3436c0.writeString(str);
        C8527y0.m3419b(m3436c0, bundle);
        C8527y0.m3419b(m3436c0, bundle2);
        C8527y0.m3418c(m3436c0, abstractC8481d1);
        m3437D0(7, m3436c0);
    }

    @Override // com.google.android.play.core.internal.AbstractC8472b1
    /* renamed from: b1 */
    public final void mo3410b1(String str, List<Bundle> list, Bundle bundle, AbstractC8481d1 abstractC8481d1) {
        Parcel m3436c0 = m3436c0();
        m3436c0.writeString(str);
        m3436c0.writeTypedList(list);
        C8527y0.m3419b(m3436c0, bundle);
        C8527y0.m3418c(m3436c0, abstractC8481d1);
        m3437D0(14, m3436c0);
    }
}
