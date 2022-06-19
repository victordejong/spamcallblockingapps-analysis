package com.bumptech.glide.load.p079a;

import android.content.res.AssetManager;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.a.m */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/m.class */
public class C1491m extends AbstractC1473b<InputStream> {
    public C1491m(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: a */
    public Class<InputStream> mo16813a() {
        return InputStream.class;
    }

    /* renamed from: a */
    public void mo16908a(InputStream inputStream) {
        inputStream.close();
    }

    /* renamed from: b */
    public InputStream mo16910a(AssetManager assetManager, String str) {
        return assetManager.open(str);
    }
}
