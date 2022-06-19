package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;
/* renamed from: com.bumptech.glide.load.data.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/i.class */
public class C4016i extends AbstractC4022l<ParcelFileDescriptor> {
    public C4016i(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: a */
    public Class<ParcelFileDescriptor> mo23090a() {
        return ParcelFileDescriptor.class;
    }

    /* renamed from: g */
    public void mo23480c(ParcelFileDescriptor parcelFileDescriptor) {
        parcelFileDescriptor.close();
    }

    /* renamed from: h */
    public ParcelFileDescriptor mo23479f(Uri uri, ContentResolver contentResolver) {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor.getParcelFileDescriptor();
        }
        throw new FileNotFoundException("FileDescriptor is null for: " + uri);
    }
}
