package com.bumptech.glide.load.p079a;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.FileNotFoundException;
/* renamed from: com.bumptech.glide.load.a.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/a.class */
public final class C1465a extends AbstractC1490l<AssetFileDescriptor> {
    public C1465a(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* renamed from: a */
    public AssetFileDescriptor mo16902b(Uri uri, ContentResolver contentResolver) {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor == null) {
            throw new FileNotFoundException("FileDescriptor is null for: " + uri);
        }
        return openAssetFileDescriptor;
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: a */
    public Class<AssetFileDescriptor> mo16813a() {
        return AssetFileDescriptor.class;
    }

    /* renamed from: a */
    public void mo16903a(AssetFileDescriptor assetFileDescriptor) {
        assetFileDescriptor.close();
    }
}
