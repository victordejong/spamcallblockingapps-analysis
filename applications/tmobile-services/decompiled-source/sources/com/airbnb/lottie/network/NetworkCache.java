package com.airbnb.lottie.network;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.core.util.Pair;
import com.airbnb.lottie.utils.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/network/NetworkCache.class */
public class NetworkCache {

    /* renamed from: a */
    private final Context f6281a;

    public NetworkCache(Context context) {
        this.f6281a = context.getApplicationContext();
    }

    /* renamed from: b */
    private static String m15896b(String str, FileExtension fileExtension, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("lottie_cache_");
        sb.append(str.replaceAll("\\W+", ""));
        sb.append(z ? fileExtension.tempExtension() : fileExtension.extension);
        return sb.toString();
    }

    @Nullable
    /* renamed from: c */
    private File m15895c(String str) throws FileNotFoundException {
        File file = new File(m15894d(), m15896b(str, FileExtension.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(m15894d(), m15896b(str, FileExtension.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        return null;
    }

    /* renamed from: d */
    private File m15894d() {
        File file = new File(this.f6281a.getCacheDir(), "lottie_network_cache");
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @WorkerThread
    /* renamed from: a */
    public Pair<FileExtension, InputStream> m15897a(String str) {
        try {
            File c = m15895c(str);
            if (c == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(c);
            FileExtension fileExtension = c.getAbsolutePath().endsWith(".zip") ? FileExtension.ZIP : FileExtension.JSON;
            Logger.m15738a("Cache hit for " + str + " at " + c.getAbsolutePath());
            return new Pair<>(fileExtension, fileInputStream);
        } catch (FileNotFoundException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m15893e(String str, FileExtension fileExtension) {
        File file = new File(m15894d(), m15896b(str, fileExtension, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean renameTo = file.renameTo(file2);
        Logger.m15738a("Copying temp file to real file (" + file2 + ")");
        if (!renameTo) {
            Logger.m15736c("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public File m15892f(String str, InputStream inputStream, FileExtension fileExtension) throws IOException {
        File file = new File(m15894d(), m15896b(str, fileExtension, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return file;
                }
            }
        } finally {
            inputStream.close();
        }
    }
}
