package com.bumptech.glide.load.resource.bitmap;

import android.os.ParcelFileDescriptor;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/r.class */
public final class r implements com.bumptech.glide.load.resource.bitmap.a<ParcelFileDescriptor> {

    /* renamed from: b  reason: collision with root package name */
    private static final a f3625b = new a();

    /* renamed from: a  reason: collision with root package name */
    int f3626a;
    private a c;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/r$a.class */
    static final class a {
        a() {
        }
    }

    public r() {
        this(f3625b);
    }

    private r(a aVar) {
        this.c = aVar;
        this.f3626a = -1;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.a
    public final String a() {
        return "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
    }
}
