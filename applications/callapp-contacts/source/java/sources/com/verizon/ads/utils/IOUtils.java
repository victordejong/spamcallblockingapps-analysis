package com.verizon.ads.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.verizon.ads.Logger;
import com.verizon.ads.utils.HttpUtils;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/IOUtils.class */
public class IOUtils {

    /* renamed from: a */
    private static final Logger f61750a = Logger.getInstance(IOUtils.class);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/IOUtils$BitmapStreamer.class */
    public static class BitmapStreamer implements HttpUtils.ResponseStreamer {
        @Override // com.verizon.ads.utils.HttpUtils.ResponseStreamer
        public void streamContent(InputStream inputStream, HttpUtils.Response response) {
            response.bitmap = IOUtils.m5306a(inputStream);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/IOUtils$DownloadListener.class */
    public interface DownloadListener {
        void onDownloadFailed(Throwable th);

        void onDownloadSucceeded(File file);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/IOUtils$FileStreamer.class */
    public static class FileStreamer implements HttpUtils.ResponseStreamer {

        /* renamed from: a */
        private File f61751a;

        public FileStreamer(File file) {
            this.f61751a = file;
        }

        @Override // com.verizon.ads.utils.HttpUtils.ResponseStreamer
        public void streamContent(InputStream inputStream, HttpUtils.Response response) {
            Throwable th;
            IOException e;
            FileOutputStream fileOutputStream;
            FileOutputStream fileOutputStream2;
            FileOutputStream fileOutputStream3 = null;
            try {
                try {
                    fileOutputStream2 = new FileOutputStream(this.f61751a);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
                fileOutputStream = null;
            }
            try {
                IOUtils.read(inputStream, fileOutputStream2);
                response.file = this.f61751a;
                IOUtils.closeStream(fileOutputStream2);
            } catch (IOException e3) {
                e = e3;
                fileOutputStream = fileOutputStream2;
                IOUtils.f61750a.m5564e("Unable to create file from input stream", e);
                IOUtils.closeStream(fileOutputStream);
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream3 = fileOutputStream2;
                IOUtils.closeStream(fileOutputStream3);
                throw th;
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/IOUtils$StringStreamer.class */
    public static class StringStreamer implements HttpUtils.ResponseStreamer {
        @Override // com.verizon.ads.utils.HttpUtils.ResponseStreamer
        public void streamContent(InputStream inputStream, HttpUtils.Response response) {
            response.content = IOUtils.convertStreamToString(inputStream);
        }
    }

    /* renamed from: a */
    static Bitmap m5306a(InputStream inputStream) {
        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
        if (decodeStream == null) {
            f61750a.m5565e("Unable to create bitmap from input stream");
        }
        return decodeStream;
    }

    /* renamed from: a */
    public static /* synthetic */ void m5307a(File file, String str, Integer num, DownloadListener downloadListener) {
        File file2 = file;
        try {
            if (file.isDirectory()) {
                file2 = File.createTempFile("_vas_", null, file);
            }
            HttpUtils.Response m5310a = HttpUtils.m5310a(str, null, null, null, num, new FileStreamer(file2));
            if (m5310a.file != null) {
                downloadListener.onDownloadSucceeded(m5310a.file);
            } else {
                downloadListener.onDownloadFailed(new Throwable("Error creating file"));
            }
        } catch (IOException e) {
            f61750a.m5564e("An error occurred downloading file from url = ".concat(String.valueOf(str)), e);
            downloadListener.onDownloadFailed(e);
        }
    }

    public static boolean closeStream(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
                return true;
            } catch (IOException e) {
                f61750a.m5564e("Error closing stream", e);
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String convertStreamToString(java.io.InputStream r4) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.utils.IOUtils.convertStreamToString(java.io.InputStream):java.lang.String");
    }

    public static void downloadFile(final String str, final Integer num, final File file, final DownloadListener downloadListener) {
        if (str == null || file == null || downloadListener == null) {
            throw new IllegalArgumentException("url, file, and download listener are required");
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.utils._$$Lambda$IOUtils$CwZooKI9nCl4KCq__KtiAMMPVEU
            @Override // java.lang.Runnable
            public final void run() {
                IOUtils.m5307a(file, str, num, downloadListener);
            }
        });
    }

    public static File getUniqueFileName(File file, String str) {
        file.mkdirs();
        File file2 = new File(file, str);
        if (!file2.exists()) {
            return file2;
        }
        String[] split = str.split("\\.(?=[^.]+$)");
        String str2 = split[0];
        String str3 = split.length > 1 ? split[1] : "";
        for (int i = 1; i < 1000; i++) {
            File file3 = new File(file, str2 + "(" + i + ")." + str3);
            if (!file3.exists()) {
                return file3;
            }
        }
        return null;
    }

    public static int read(InputStream inputStream, OutputStream... outputStreamArr) throws IOException {
        byte[] bArr = new byte[4096];
        int i = 0;
        while (true) {
            int read = inputStream.read(bArr, 0, 4096);
            if (read != -1) {
                int i2 = i + read;
                int length = outputStreamArr.length;
                int i3 = 0;
                while (true) {
                    i = i2;
                    if (i3 < length) {
                        outputStreamArr[i3].write(bArr, 0, read);
                        i3++;
                    }
                }
            } else {
                return i;
            }
        }
    }

    public static String read(InputStream inputStream, String str) throws IOException {
        if (str == null) {
            str = "UTF-8";
        }
        return new String(read(inputStream), str);
    }

    public static byte[] read(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        read(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static void write(OutputStream outputStream, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, "UTF-8");
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
