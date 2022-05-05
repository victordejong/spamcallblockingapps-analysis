package com.bumptech.glide.load.a;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/i.class */
public final class i extends g<InputStream> {
    public i(Context context, Uri uri) {
        super(context, uri);
    }

    @Override // com.bumptech.glide.load.a.g
    protected final /* synthetic */ InputStream a(Uri uri, ContentResolver contentResolver) {
        return contentResolver.openInputStream(uri);
    }

    @Override // com.bumptech.glide.load.a.g
    protected final /* synthetic */ void a(InputStream inputStream) {
        inputStream.close();
    }
}
