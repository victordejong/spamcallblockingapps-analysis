package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
/* renamed from: com.bumptech.glide.load.data.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/h.class */
public class C4015h extends AbstractC4005b<ParcelFileDescriptor> {
    public C4015h(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: a */
    public Class<ParcelFileDescriptor> mo23090a() {
        return ParcelFileDescriptor.class;
    }

    /* renamed from: g */
    public void mo23484c(ParcelFileDescriptor parcelFileDescriptor) {
        parcelFileDescriptor.close();
    }

    /* renamed from: h */
    public ParcelFileDescriptor mo23483f(AssetManager assetManager, String str) {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }
}
