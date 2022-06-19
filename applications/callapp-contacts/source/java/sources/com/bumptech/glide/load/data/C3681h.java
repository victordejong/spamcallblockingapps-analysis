package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.data.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/h.class */
public final class C3681h extends AbstractC3671b<ParcelFileDescriptor> {
    public C3681h(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.data.AbstractC3671b
    /* renamed from: a */
    protected final /* synthetic */ ParcelFileDescriptor mo37518a(AssetManager assetManager, String str) throws IOException {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }

    @Override // com.bumptech.glide.load.data.AbstractC3671b
    /* renamed from: a */
    protected final /* synthetic */ void mo37517a(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final Class<ParcelFileDescriptor> getDataClass() {
        return ParcelFileDescriptor.class;
    }
}
