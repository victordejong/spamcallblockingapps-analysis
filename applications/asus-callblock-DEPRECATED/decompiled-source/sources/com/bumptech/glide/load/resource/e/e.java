package com.bumptech.glide.load.resource.e;

import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.load.b.k;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/e/e.class */
public final class e<Z> implements c<Z, Z> {

    /* renamed from: a  reason: collision with root package name */
    private static final e<?> f3669a = new e<>();

    public static <Z> c<Z, Z> b() {
        return f3669a;
    }

    @Override // com.bumptech.glide.load.resource.e.c
    public final k<Z> a(k<Z> kVar) {
        return kVar;
    }

    @Override // com.bumptech.glide.load.resource.e.c
    public final String a() {
        return BuildConfig.FLAVOR;
    }
}
