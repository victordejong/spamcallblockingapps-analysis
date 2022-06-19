package io.bidmachine.nativead.tasks;

import android.media.ThumbnailUtils;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
/* renamed from: io.bidmachine.nativead.tasks.a */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/tasks/a.class */
final class C17898a {
    C17898a() {
    }

    public static File cacheVideoFile(String str, File file, int i) {
        InputStream inputStream;
        Throwable th;
        InputStream inputStream2;
        Exception e;
        InputStream inputStream3;
        File file2;
        try {
            inputStream3 = C17899b.getInputStream(str, i);
            InputStream inputStream4 = inputStream3;
            try {
                try {
                    file2 = new File(file, Utils.generateFileName(str));
                } catch (Exception e2) {
                    e = e2;
                    inputStream2 = inputStream3;
                    inputStream4 = inputStream2;
                    Logger.log(e);
                    Utils.close(inputStream2);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = inputStream4;
                Utils.close(inputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            inputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
            Utils.close(inputStream);
            throw th;
        }
        if (file2.exists() && file2.length() > 0 && isVideoFileSupported(file2)) {
            Utils.close(inputStream3);
            return file2;
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream3.read(bArr);
            if (read <= 0) {
                break;
            }
            fileOutputStream.write(bArr, 0, read);
        }
        fileOutputStream.close();
        inputStream2 = inputStream3;
        if (isVideoFileSupported(file2)) {
            Utils.close(inputStream3);
            return file2;
        }
        Utils.close(inputStream2);
        return null;
    }

    private static boolean isVideoFileSupported(File file) {
        return ThumbnailUtils.createVideoThumbnail(file.getPath(), 1) != null;
    }
}
