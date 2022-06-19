package com.bumptech.glide.load.p079a;

import android.content.res.AssetManager;
import android.util.Log;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.a.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/b.class */
public abstract class AbstractC1473b<T> implements AbstractC1475d<T> {

    /* renamed from: a */
    private final String f4811a;

    /* renamed from: b */
    private final AssetManager f4812b;

    /* renamed from: c */
    private T f4813c;

    public AbstractC1473b(AssetManager assetManager, String str) {
        this.f4812b = assetManager;
        this.f4811a = str;
    }

    /* renamed from: a */
    protected abstract T mo16910a(AssetManager assetManager, String str);

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: a */
    public void mo16812a(EnumC1428g enumC1428g, AbstractC1475d.AbstractC1476a<? super T> abstractC1476a) {
        try {
            this.f4813c = mo16910a(this.f4812b, this.f4811a);
            abstractC1476a.mo16337a((AbstractC1475d.AbstractC1476a<? super T>) ((T) this.f4813c));
        } catch (IOException e) {
            if (Log.isLoggable("AssetPathFetcher", 3)) {
                Log.d("AssetPathFetcher", "Failed to load data from asset manager", e);
            }
            abstractC1476a.mo16338a((Exception) e);
        }
    }

    /* renamed from: a */
    protected abstract void mo16908a(T t);

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: b */
    public void mo16811b() {
        if (this.f4813c == null) {
            return;
        }
        try {
            mo16908a(this.f4813c);
        } catch (IOException e) {
        }
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: c */
    public void mo16810c() {
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: d */
    public EnumC1464a mo16809d() {
        return EnumC1464a.LOCAL;
    }
}
