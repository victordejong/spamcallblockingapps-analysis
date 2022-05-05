package com.bumptech.glide.load.resource;

import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.load.b;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/a.class */
public final class a<T> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final a<?> f3587a = new a<>();

    public static <T> b<T> b() {
        return f3587a;
    }

    @Override // com.bumptech.glide.load.b
    public final String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // com.bumptech.glide.load.b
    public final boolean a(T t, OutputStream outputStream) {
        return false;
    }
}
