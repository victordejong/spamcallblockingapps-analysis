package com.bumptech.glide.load.a;

import android.content.res.AssetManager;
import android.util.Log;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/a.class */
public abstract class a<T> implements c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f3476a;

    /* renamed from: b  reason: collision with root package name */
    private final AssetManager f3477b;
    private T c;

    public a(AssetManager assetManager, String str) {
        this.f3477b = assetManager;
        this.f3476a = str;
    }

    @Override // com.bumptech.glide.load.a.c
    public final T a(int i) {
        this.c = a(this.f3477b, this.f3476a);
        return this.c;
    }

    protected abstract T a(AssetManager assetManager, String str);

    @Override // com.bumptech.glide.load.a.c
    public final void a() {
        if (this.c != null) {
            try {
                a((a<T>) this.c);
            } catch (IOException e) {
                if (Log.isLoggable("AssetUriFetcher", 2)) {
                    Log.v("AssetUriFetcher", "Failed to close data", e);
                }
            }
        }
    }

    protected abstract void a(T t);

    @Override // com.bumptech.glide.load.a.c
    public final String b() {
        return this.f3476a;
    }

    @Override // com.bumptech.glide.load.a.c
    public final void c() {
    }
}
