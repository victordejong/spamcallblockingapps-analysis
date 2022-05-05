package com.bumptech.glide.load.c.b;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.a.h;
import com.bumptech.glide.load.a.i;
import com.bumptech.glide.load.c.c;
import com.bumptech.glide.load.c.d;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.c.k;
import com.bumptech.glide.load.c.o;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/g.class */
public final class g extends o<InputStream> implements d<Uri> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/g$a.class */
    public static final class a implements k<Uri, InputStream> {
        @Override // com.bumptech.glide.load.c.k
        public final j<Uri, InputStream> a(Context context, c cVar) {
            return new g(context, cVar.a(d.class, InputStream.class));
        }
    }

    public g(Context context, j<d, InputStream> jVar) {
        super(context, jVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.c.o
    public final com.bumptech.glide.load.a.c<InputStream> a(Context context, Uri uri) {
        return new i(context, uri);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.c.o
    public final com.bumptech.glide.load.a.c<InputStream> a(Context context, String str) {
        return new h(context.getApplicationContext().getAssets(), str);
    }
}
