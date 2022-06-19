package com.bumptech.glide.load.p079a;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;
/* renamed from: com.bumptech.glide.load.a.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/i.class */
public class C1484i extends AbstractC1490l<ParcelFileDescriptor> {
    public C1484i(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* renamed from: a */
    public ParcelFileDescriptor mo16902b(Uri uri, ContentResolver contentResolver) {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor == null) {
            throw new FileNotFoundException("FileDescriptor is null for: " + uri);
        }
        return openAssetFileDescriptor.getParcelFileDescriptor();
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: a */
    public Class<ParcelFileDescriptor> mo16813a() {
        return ParcelFileDescriptor.class;
    }

    /* renamed from: a */
    public void mo16903a(ParcelFileDescriptor parcelFileDescriptor) {
        parcelFileDescriptor.close();
    }
}
