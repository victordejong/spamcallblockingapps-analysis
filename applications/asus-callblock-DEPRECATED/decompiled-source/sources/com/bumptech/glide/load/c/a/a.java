package com.bumptech.glide.load.c.a;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.c.b;
import com.bumptech.glide.load.c.c;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.c.k;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/a.class */
public final class a extends b<ParcelFileDescriptor> implements b<File> {

    /* renamed from: com.bumptech.glide.load.c.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/a$a.class */
    public static final class C0101a implements k<File, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.c.k
        public final j<File, ParcelFileDescriptor> a(Context context, c cVar) {
            return new a(cVar.a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public a(j<Uri, ParcelFileDescriptor> jVar) {
        super(jVar);
    }
}
