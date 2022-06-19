package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.data.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a.class */
public final class C3663a extends AbstractC3688l<AssetFileDescriptor> {
    public C3663a(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // com.bumptech.glide.load.data.AbstractC3688l
    /* renamed from: a */
    protected final /* synthetic */ AssetFileDescriptor mo37516a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor;
        }
        throw new FileNotFoundException("FileDescriptor is null for: ".concat(String.valueOf(uri)));
    }

    @Override // com.bumptech.glide.load.data.AbstractC3688l
    /* renamed from: a */
    protected final /* synthetic */ void mo37515a(AssetFileDescriptor assetFileDescriptor) throws IOException {
        assetFileDescriptor.close();
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final Class<AssetFileDescriptor> getDataClass() {
        return AssetFileDescriptor.class;
    }
}
