package io.bidmachine.nativead.tasks;

import android.media.ThumbnailUtils;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/tasks/a.class */
final class a {
    a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File cacheVideoFile(String str, File file, int i) {
        Throwable th;
        InputStream inputStream;
        Exception e;
        InputStream inputStream2;
        File file2;
        InputStream inputStream3 = null;
        try {
            inputStream2 = b.getInputStream(str, i);
            inputStream3 = inputStream2;
            try {
                try {
                    file2 = new File(file, Utils.generateFileName(str));
                } catch (Exception e2) {
                    e = e2;
                    inputStream = inputStream2;
                    inputStream3 = inputStream;
                    Logger.log(e);
                    Utils.close(inputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                Utils.close(inputStream3);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            Utils.close(inputStream3);
            throw th;
        }
        if (!file2.exists() || file2.length() <= 0 || !isVideoFileSupported(file2)) {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream2.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.close();
            inputStream = inputStream2;
            if (isVideoFileSupported(file2)) {
                Utils.close(inputStream2);
                return file2;
            }
            Utils.close(inputStream);
            return null;
        }
        Utils.close(inputStream2);
        return file2;
    }

    private static boolean isVideoFileSupported(File file) {
        return ThumbnailUtils.createVideoThumbnail(file.getPath(), 1) != null;
    }
}
