package com.bumptech.glide.load.a;

import android.content.res.AssetManager;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/h.class */
public final class h extends a<InputStream> {
    public h(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.a.a
    protected final /* synthetic */ InputStream a(AssetManager assetManager, String str) {
        return assetManager.open(str);
    }

    @Override // com.bumptech.glide.load.a.a
    protected final /* synthetic */ void a(InputStream inputStream) {
        inputStream.close();
    }
}
