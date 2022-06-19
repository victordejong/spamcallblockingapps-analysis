package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import com.google.android.play.core.tasks.C8581m;
/* renamed from: com.google.android.play.core.assetpacks.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/k.class */
final class BinderC8402k extends BinderC8398j<ParcelFileDescriptor> {
    public BinderC8402k(C8418o c8418o, C8581m<ParcelFileDescriptor> c8581m) {
        super(c8418o, c8581m);
    }

    @Override // com.google.android.play.core.assetpacks.BinderC8398j, com.google.android.play.core.internal.AbstractC8481d1
    /* renamed from: r5 */
    public final void mo3525r5(Bundle bundle, Bundle bundle2) {
        super.mo3525r5(bundle, bundle2);
        this.f37797d.m3311e((ParcelFileDescriptor) bundle.getParcelable("chunk_file_descriptor"));
    }
}
