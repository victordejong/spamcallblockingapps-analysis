package com.bumptech.glide.load.c;

import com.bumptech.glide.load.a.c;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/p.class */
public class p<T> implements j<URL, T> {

    /* renamed from: a  reason: collision with root package name */
    private final j<d, T> f3584a;

    public p(j<d, T> jVar) {
        this.f3584a = jVar;
    }

    @Override // com.bumptech.glide.load.c.j
    public final /* synthetic */ c a(URL url, int i, int i2) {
        return this.f3584a.a(new d(url), i, i2);
    }
}
