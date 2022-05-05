package com.bumptech.glide.load.c.a;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.c.c;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.c.k;
import com.bumptech.glide.load.c.n;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/d.class */
public final class d extends n<ParcelFileDescriptor> implements b<String> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/d$a.class */
    public static final class a implements k<String, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.c.k
        public final j<String, ParcelFileDescriptor> a(Context context, c cVar) {
            return new d(cVar.a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public d(j<Uri, ParcelFileDescriptor> jVar) {
        super(jVar);
    }
}
