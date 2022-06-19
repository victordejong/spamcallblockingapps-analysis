package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.assetpacks.l */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/l.class */
final class BinderC14984l extends BinderC14983k<ParcelFileDescriptor> {
    public BinderC14984l(C14989p c14989p, C15192p<ParcelFileDescriptor> c15192p) {
        super(c14989p, c15192p);
    }

    @Override // com.google.android.play.core.assetpacks.BinderC14983k, com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: b */
    public final void mo9526b(Bundle bundle, Bundle bundle2) throws RemoteException {
        super.mo9526b(bundle, bundle2);
        this.f54678a.m9323a((C15192p<T>) ((ParcelFileDescriptor) bundle.getParcelable("chunk_file_descriptor")));
    }
}
