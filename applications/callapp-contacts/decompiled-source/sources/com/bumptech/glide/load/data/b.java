package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import com.bumptech.glide.h;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.d;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/b.class */
public abstract class b<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f7394a;

    /* renamed from: b  reason: collision with root package name */
    private final AssetManager f7395b;

    /* renamed from: c  reason: collision with root package name */
    private T f7396c;

    public b(AssetManager assetManager, String str) {
        this.f7395b = assetManager;
        this.f7394a = str;
    }

    protected abstract T a(AssetManager assetManager, String str) throws IOException;

    protected abstract void a(T t) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.d
    public void cleanup() {
        T t = this.f7396c;
        if (t != null) {
            try {
                a(t);
            } catch (IOException e) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public a getDataSource() {
        return a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public void loadData(h hVar, d.a<? super T> aVar) {
        try {
            T a2 = a(this.f7395b, this.f7394a);
            this.f7396c = a2;
            aVar.onDataReady(a2);
        } catch (IOException e) {
            Log.isLoggable("AssetPathFetcher", 3);
            aVar.onLoadFailed(e);
        }
    }
}
