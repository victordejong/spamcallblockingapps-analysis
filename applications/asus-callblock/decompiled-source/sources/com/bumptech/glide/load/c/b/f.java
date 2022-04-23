package com.bumptech.glide.load.c.b;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.c.c;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.c.k;
import com.bumptech.glide.load.c.n;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/f.class */
public final class f extends n<InputStream> implements d<String> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/f$a.class */
    public static final class a implements k<String, InputStream> {
        @Override // com.bumptech.glide.load.c.k
        public final j<String, InputStream> a(Context context, c cVar) {
            return new f(cVar.a(Uri.class, InputStream.class));
        }
    }

    public f(j<Uri, InputStream> jVar) {
        super(jVar);
    }
}
