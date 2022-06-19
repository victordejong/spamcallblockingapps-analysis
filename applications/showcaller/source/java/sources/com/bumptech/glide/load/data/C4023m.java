package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.data.m */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/m.class */
public class C4023m extends AbstractC4005b<InputStream> {
    public C4023m(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: a */
    public Class<InputStream> mo23090a() {
        return InputStream.class;
    }

    /* renamed from: g */
    public void mo23484c(InputStream inputStream) {
        inputStream.close();
    }

    /* renamed from: h */
    public InputStream mo23483f(AssetManager assetManager, String str) {
        return assetManager.open(str);
    }
}
