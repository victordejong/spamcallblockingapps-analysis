package com.bumptech.glide.load.resource.b;

import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.f.b;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.c.m;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.f;
import java.io.File;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/d.class */
public final class d implements b<InputStream, File> {

    /* renamed from: a  reason: collision with root package name */
    private static final a f3592a = new a((byte) 0);

    /* renamed from: b  reason: collision with root package name */
    private final e<File, File> f3593b = new com.bumptech.glide.load.resource.b.a();
    private final com.bumptech.glide.load.b<InputStream> c = new m();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/d$a.class */
    private static final class a implements e<InputStream, File> {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        @Override // com.bumptech.glide.load.e
        public final /* synthetic */ k<File> a(InputStream inputStream, int i, int i2) {
            throw new Error("You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder");
        }

        @Override // com.bumptech.glide.load.e
        public final String a() {
            return BuildConfig.FLAVOR;
        }
    }

    @Override // com.bumptech.glide.f.b
    public final e<File, File> a() {
        return this.f3593b;
    }

    @Override // com.bumptech.glide.f.b
    public final e<InputStream, File> b() {
        return f3592a;
    }

    @Override // com.bumptech.glide.f.b
    public final com.bumptech.glide.load.b<InputStream> c() {
        return this.c;
    }

    @Override // com.bumptech.glide.f.b
    public final f<File> d() {
        return com.bumptech.glide.load.resource.b.b();
    }
}
