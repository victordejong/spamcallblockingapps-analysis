package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.data.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/b.class */
public abstract class AbstractC4005b<T> implements AbstractC4007d<T> {

    /* renamed from: d */
    private final String f12641d;

    /* renamed from: e */
    private final AssetManager f12642e;

    /* renamed from: f */
    private T f12643f;

    public AbstractC4005b(AssetManager assetManager, String str) {
        this.f12642e = assetManager;
        this.f12641d = str;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: b */
    public void mo23089b() {
        T t = this.f12643f;
        if (t == null) {
            return;
        }
        try {
            mo23484c(t);
        } catch (IOException e) {
        }
    }

    /* renamed from: c */
    protected abstract void mo23484c(T t);

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: d */
    public DataSource mo23087d() {
        return DataSource.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: e */
    public void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super T> abstractC4008a) {
        try {
            T mo23483f = mo23483f(this.f12642e, this.f12641d);
            this.f12643f = mo23483f;
            abstractC4008a.mo23126f(mo23483f);
        } catch (IOException e) {
            if (Log.isLoggable("AssetPathFetcher", 3)) {
                Log.d("AssetPathFetcher", "Failed to load data from asset manager", e);
            }
            abstractC4008a.mo23127c(e);
        }
    }

    /* renamed from: f */
    protected abstract T mo23483f(AssetManager assetManager, String str);
}
