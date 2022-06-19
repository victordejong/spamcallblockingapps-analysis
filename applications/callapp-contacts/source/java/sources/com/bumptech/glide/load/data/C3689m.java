package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.data.m */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/m.class */
public final class C3689m extends AbstractC3671b<InputStream> {
    public C3689m(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.data.AbstractC3671b
    /* renamed from: a */
    protected final /* synthetic */ InputStream mo37518a(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }

    @Override // com.bumptech.glide.load.data.AbstractC3671b
    /* renamed from: a */
    protected final /* synthetic */ void mo37517a(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }
}
