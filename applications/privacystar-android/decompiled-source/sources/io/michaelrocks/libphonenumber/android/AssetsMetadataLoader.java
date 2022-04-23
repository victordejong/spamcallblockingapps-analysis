package io.michaelrocks.libphonenumber.android;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:io/michaelrocks/libphonenumber/android/AssetsMetadataLoader.class */
public class AssetsMetadataLoader implements MetadataLoader {
    private final AssetManager assetManager;

    public AssetsMetadataLoader(AssetManager assetManager) {
        this.assetManager = assetManager;
    }

    @Override // io.michaelrocks.libphonenumber.android.MetadataLoader
    public InputStream loadMetadata(String str) {
        try {
            return this.assetManager.open(str.substring(1));
        } catch (IOException e) {
            return null;
        }
    }
}
