package com.bumptech.glide.load.c.a;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.c.k;
import com.bumptech.glide.load.c.l;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/c.class */
public final class c extends l<ParcelFileDescriptor> implements b<Integer> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/c$a.class */
    public static final class a implements k<Integer, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.c.k
        public final j<Integer, ParcelFileDescriptor> a(Context context, com.bumptech.glide.load.c.c cVar) {
            return new c(context, cVar.a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public c(Context context, j<Uri, ParcelFileDescriptor> jVar) {
        super(context, jVar);
    }
}
