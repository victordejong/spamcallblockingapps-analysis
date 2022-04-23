package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/l.class */
final class l extends k<ParcelFileDescriptor> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public l(p pVar, p<ParcelFileDescriptor> pVar2) {
        super(pVar, pVar2);
    }

    @Override // com.google.android.play.core.assetpacks.k, com.google.android.play.core.internal.bz
    public final void b(Bundle bundle, Bundle bundle2) throws RemoteException {
        super.b(bundle, bundle2);
        this.f31288a.a((p<T>) ((ParcelFileDescriptor) bundle.getParcelable("chunk_file_descriptor")));
    }
}
