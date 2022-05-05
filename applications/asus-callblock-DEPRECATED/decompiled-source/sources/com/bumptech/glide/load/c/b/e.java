package com.bumptech.glide.load.c.b;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.c.c;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.c.k;
import com.bumptech.glide.load.c.l;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/e.class */
public final class e extends l<InputStream> implements d<Integer> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/e$a.class */
    public static final class a implements k<Integer, InputStream> {
        @Override // com.bumptech.glide.load.c.k
        public final j<Integer, InputStream> a(Context context, c cVar) {
            return new e(context, cVar.a(Uri.class, InputStream.class));
        }
    }

    public e(Context context, j<Uri, InputStream> jVar) {
        super(context, jVar);
    }
}
