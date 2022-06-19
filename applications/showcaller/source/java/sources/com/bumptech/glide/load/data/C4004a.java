package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.FileNotFoundException;
/* renamed from: com.bumptech.glide.load.data.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a.class */
public final class C4004a extends AbstractC4022l<AssetFileDescriptor> {
    public C4004a(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: a */
    public Class<AssetFileDescriptor> mo23090a() {
        return AssetFileDescriptor.class;
    }

    /* renamed from: g */
    public void mo23480c(AssetFileDescriptor assetFileDescriptor) {
        assetFileDescriptor.close();
    }

    /* renamed from: h */
    public AssetFileDescriptor mo23479f(Uri uri, ContentResolver contentResolver) {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor;
        }
        throw new FileNotFoundException("FileDescriptor is null for: " + uri);
    }
}
