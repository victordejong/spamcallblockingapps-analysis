package com.bumptech.glide.load.c.b;

import android.content.Context;
import com.bumptech.glide.load.c.c;
import com.bumptech.glide.load.c.d;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.c.k;
import com.bumptech.glide.load.c.p;
import java.io.InputStream;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/h.class */
public final class h extends p<InputStream> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/h$a.class */
    public static final class a implements k<URL, InputStream> {
        @Override // com.bumptech.glide.load.c.k
        public final j<URL, InputStream> a(Context context, c cVar) {
            return new h(cVar.a(d.class, InputStream.class));
        }
    }

    public h(j<d, InputStream> jVar) {
        super(jVar);
    }
}
