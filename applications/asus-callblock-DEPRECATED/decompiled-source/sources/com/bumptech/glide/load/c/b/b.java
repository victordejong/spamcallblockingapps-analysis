package com.bumptech.glide.load.c.b;

import android.content.Context;
import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.load.c.c;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.c.k;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/b.class */
public final class b implements d<byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final String f3561a;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/b$a.class */
    public static final class a implements k<byte[], InputStream> {
        @Override // com.bumptech.glide.load.c.k
        public final j<byte[], InputStream> a(Context context, c cVar) {
            return new b();
        }
    }

    public b() {
        this(BuildConfig.FLAVOR);
    }

    @Deprecated
    private b(String str) {
        this.f3561a = str;
    }

    @Override // com.bumptech.glide.load.c.j
    public final /* synthetic */ com.bumptech.glide.load.a.c a(Object obj, int i, int i2) {
        return new com.bumptech.glide.load.a.b((byte[]) obj, this.f3561a);
    }
}
