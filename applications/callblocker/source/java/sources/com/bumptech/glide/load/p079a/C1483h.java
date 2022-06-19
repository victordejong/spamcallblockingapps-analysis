package com.bumptech.glide.load.p079a;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
/* renamed from: com.bumptech.glide.load.a.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/h.class */
public class C1483h extends AbstractC1473b<ParcelFileDescriptor> {
    public C1483h(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: a */
    public Class<ParcelFileDescriptor> mo16813a() {
        return ParcelFileDescriptor.class;
    }

    /* renamed from: a */
    public void mo16908a(ParcelFileDescriptor parcelFileDescriptor) {
        parcelFileDescriptor.close();
    }

    /* renamed from: b */
    public ParcelFileDescriptor mo16910a(AssetManager assetManager, String str) {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }
}
