package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.play.core.internal.g1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/g1.class */
public final class C8490g1 extends C8523w0 implements AbstractC8493h1 {
    public C8490g1(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
    }

    @Override // com.google.android.play.core.internal.AbstractC8493h1
    /* renamed from: Q4 */
    public final void mo3513Q4(Bundle bundle) {
        Parcel m3436c0 = m3436c0();
        C8527y0.m3419b(m3436c0, bundle);
        m3437D0(3, m3436c0);
    }

    @Override // com.google.android.play.core.internal.AbstractC8493h1
    /* renamed from: S3 */
    public final void mo3512S3(Bundle bundle, Bundle bundle2) {
        Parcel m3436c0 = m3436c0();
        C8527y0.m3419b(m3436c0, bundle);
        C8527y0.m3419b(m3436c0, bundle2);
        m3437D0(2, m3436c0);
    }

    @Override // com.google.android.play.core.internal.AbstractC8493h1
    /* renamed from: Y3 */
    public final void mo3511Y3(Bundle bundle) {
        Parcel m3436c0 = m3436c0();
        C8527y0.m3419b(m3436c0, bundle);
        m3437D0(4, m3436c0);
    }
}
