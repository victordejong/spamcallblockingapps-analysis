package com.bumptech.glide.load.a;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/e.class */
public final class e extends g<ParcelFileDescriptor> {
    public e(Context context, Uri uri) {
        super(context, uri);
    }

    @Override // com.bumptech.glide.load.a.g
    protected final /* synthetic */ ParcelFileDescriptor a(Uri uri, ContentResolver contentResolver) {
        return contentResolver.openAssetFileDescriptor(uri, "r").getParcelFileDescriptor();
    }

    @Override // com.bumptech.glide.load.a.g
    protected final /* synthetic */ void a(ParcelFileDescriptor parcelFileDescriptor) {
        parcelFileDescriptor.close();
    }
}
