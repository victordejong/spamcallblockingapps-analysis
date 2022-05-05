package com.bumptech.glide.load.resource;

import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.load.f;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b.class */
public final class b<T> implements f<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final b<?> f3589a = new b<>();

    public static <T> b<T> b() {
        return (b<T>) f3589a;
    }

    @Override // com.bumptech.glide.load.b
    public final String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // com.bumptech.glide.load.b
    public final /* bridge */ /* synthetic */ boolean a(Object obj, OutputStream outputStream) {
        return false;
    }
}
