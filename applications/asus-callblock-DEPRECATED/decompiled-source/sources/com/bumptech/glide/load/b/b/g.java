package com.bumptech.glide.load.b.b;

import android.annotation.SuppressLint;
import com.bumptech.glide.i.e;
import com.bumptech.glide.load.b.b.h;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.c;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/g.class */
public final class g extends e<c, k<?>> implements h {

    /* renamed from: a  reason: collision with root package name */
    private h.a f3517a;

    public g(int i) {
        super(i);
    }

    @Override // com.bumptech.glide.i.e
    protected final /* synthetic */ int a(k<?> kVar) {
        return kVar.b();
    }

    @Override // com.bumptech.glide.load.b.b.h
    public final /* synthetic */ k a(c cVar) {
        return (k) super.c(cVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bumptech.glide.load.b.b.h
    public final /* synthetic */ k a(c cVar, k kVar) {
        return (k) super.b(cVar, kVar);
    }

    @Override // com.bumptech.glide.load.b.b.h
    @SuppressLint({"InlinedApi"})
    public final void a(int i) {
        if (i >= 60) {
            a();
        } else if (i >= 40) {
            b(this.f3467b / 2);
        }
    }

    @Override // com.bumptech.glide.load.b.b.h
    public final void a(h.a aVar) {
        this.f3517a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.i.e
    public final /* bridge */ /* synthetic */ void a(c cVar, k<?> kVar) {
        k<?> kVar2 = kVar;
        if (this.f3517a != null) {
            this.f3517a.a(kVar2);
        }
    }
}
