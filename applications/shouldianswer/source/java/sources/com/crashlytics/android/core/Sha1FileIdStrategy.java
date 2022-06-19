package com.crashlytics.android.core;

import com.crashlytics.android.core.BinaryImagesConverter;
import io.fabric.sdk.android.services.p068b.C1480i;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/Sha1FileIdStrategy.class */
class Sha1FileIdStrategy implements BinaryImagesConverter.FileIdStrategy {
    private static String getFileSHA(String str) {
        Throwable th;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            String m3480b = C1480i.m3480b(bufferedInputStream);
            C1480i.m3498a((Closeable) bufferedInputStream);
            return m3480b;
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream2 = bufferedInputStream;
            C1480i.m3498a((Closeable) bufferedInputStream2);
            throw th;
        }
    }

    @Override // com.crashlytics.android.core.BinaryImagesConverter.FileIdStrategy
    public String createId(File file) {
        return getFileSHA(file.getPath());
    }
}
