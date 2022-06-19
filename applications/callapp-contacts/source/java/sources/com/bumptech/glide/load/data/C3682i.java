package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.data.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/i.class */
public final class C3682i extends AbstractC3688l<ParcelFileDescriptor> {
    public C3682i(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // com.bumptech.glide.load.data.AbstractC3688l
    /* renamed from: a */
    protected final /* synthetic */ ParcelFileDescriptor mo37516a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor.getParcelFileDescriptor();
        }
        throw new FileNotFoundException("FileDescriptor is null for: ".concat(String.valueOf(uri)));
    }

    @Override // com.bumptech.glide.load.data.AbstractC3688l
    /* renamed from: a */
    protected final /* synthetic */ void mo37515a(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final Class<ParcelFileDescriptor> getDataClass() {
        return ParcelFileDescriptor.class;
    }
}
