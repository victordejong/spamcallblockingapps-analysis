package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.data.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/b.class */
public abstract class AbstractC3671b<T> implements AbstractC3673d<T> {

    /* renamed from: a */
    private final String f13816a;

    /* renamed from: b */
    private final AssetManager f13817b;

    /* renamed from: c */
    private T f13818c;

    public AbstractC3671b(AssetManager assetManager, String str) {
        this.f13817b = assetManager;
        this.f13816a = str;
    }

    /* renamed from: a */
    protected abstract T mo37518a(AssetManager assetManager, String str) throws IOException;

    /* renamed from: a */
    protected abstract void mo37517a(T t) throws IOException;

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public void cleanup() {
        T t = this.f13818c;
        if (t == null) {
            return;
        }
        try {
            mo37517a(t);
        } catch (IOException e) {
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public EnumC3658a getDataSource() {
        return EnumC3658a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public void loadData(EnumC3646h enumC3646h, AbstractC3673d.AbstractC3674a<? super T> abstractC3674a) {
        try {
            T mo37518a = mo37518a(this.f13817b, this.f13816a);
            this.f13818c = mo37518a;
            abstractC3674a.onDataReady(mo37518a);
        } catch (IOException e) {
            Log.isLoggable("AssetPathFetcher", 3);
            abstractC3674a.onLoadFailed(e);
        }
    }
}
