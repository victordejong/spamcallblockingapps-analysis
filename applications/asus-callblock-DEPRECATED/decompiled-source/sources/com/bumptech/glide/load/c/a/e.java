package com.bumptech.glide.load.c.a;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.c.c;
import com.bumptech.glide.load.c.d;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.c.k;
import com.bumptech.glide.load.c.o;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/e.class */
public final class e extends o<ParcelFileDescriptor> implements b<Uri> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/e$a.class */
    public static final class a implements k<Uri, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.c.k
        public final j<Uri, ParcelFileDescriptor> a(Context context, c cVar) {
            return new e(context, cVar.a(d.class, ParcelFileDescriptor.class));
        }
    }

    public e(Context context, j<d, ParcelFileDescriptor> jVar) {
        super(context, jVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.c.o
    public final com.bumptech.glide.load.a.c<ParcelFileDescriptor> a(Context context, Uri uri) {
        return new com.bumptech.glide.load.a.e(context, uri);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.c.o
    public final com.bumptech.glide.load.a.c<ParcelFileDescriptor> a(Context context, String str) {
        return new com.bumptech.glide.load.a.d(context.getApplicationContext().getAssets(), str);
    }
}
