package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/m.class */
public final class m extends b<InputStream> {
    public m(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.data.b
    protected final /* synthetic */ InputStream a(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }

    @Override // com.bumptech.glide.load.data.b
    protected final /* synthetic */ void a(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // com.bumptech.glide.load.data.d
    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }
}
