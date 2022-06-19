package com.millennialmedia.internal.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.HttpUtils;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/IOUtils.class */
public class IOUtils {
    private static final int BUFFER_SIZE = 4096;
    private static final String ENCODING_UTF_8 = "UTF-8";
    private static final String TAG = "IOUtils";

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/IOUtils$BitmapStreamer.class */
    public static class BitmapStreamer implements HttpUtils.ResponseStreamer {
        @Override // com.millennialmedia.internal.utils.HttpUtils.ResponseStreamer
        public void streamContent(InputStream inputStream, HttpUtils.Response response) {
            response.bitmap = IOUtils.convertStreamToBitmap(inputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/IOUtils$DownloadListener.class */
    public interface DownloadListener {
        void onDownloadFailed(Throwable th);

        void onDownloadSucceeded(File file);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/IOUtils$FileStreamer.class */
    public static class FileStreamer implements HttpUtils.ResponseStreamer {
        private File outputFile;

        public FileStreamer(File file) {
            this.outputFile = file;
        }

        @Override // com.millennialmedia.internal.utils.HttpUtils.ResponseStreamer
        public void streamContent(InputStream inputStream, HttpUtils.Response response) {
            Throwable th;
            IOException e;
            FileOutputStream fileOutputStream;
            FileOutputStream fileOutputStream2;
            FileOutputStream fileOutputStream3 = null;
            try {
                try {
                    fileOutputStream2 = new FileOutputStream(this.outputFile);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
                fileOutputStream = null;
            }
            try {
                IOUtils.read(inputStream, fileOutputStream2);
                response.file = this.outputFile;
                IOUtils.closeStream(fileOutputStream2);
            } catch (IOException e3) {
                e = e3;
                fileOutputStream = fileOutputStream2;
                fileOutputStream3 = fileOutputStream;
                MMLog.m4067e(IOUtils.TAG, "Unable to create file from input stream", e);
                IOUtils.closeStream(fileOutputStream);
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream3 = fileOutputStream2;
                IOUtils.closeStream(fileOutputStream3);
                throw th;
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/IOUtils$StringStreamer.class */
    public static class StringStreamer implements HttpUtils.ResponseStreamer {
        @Override // com.millennialmedia.internal.utils.HttpUtils.ResponseStreamer
        public void streamContent(InputStream inputStream, HttpUtils.Response response) {
            response.content = IOUtils.convertStreamToString(inputStream);
        }
    }

    public static boolean closeStream(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
                return true;
            } catch (IOException e) {
                MMLog.m4067e(TAG, "Error closing stream", e);
                return false;
            }
        }
        return false;
    }

    public static Bitmap convertStreamToBitmap(InputStream inputStream) {
        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
        if (decodeStream == null) {
            MMLog.m4068e(TAG, "Unable to create bitmap from input stream");
        }
        return decodeStream;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String convertStreamToString(java.io.InputStream r4) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.utils.IOUtils.convertStreamToString(java.io.InputStream):java.lang.String");
    }

    public static void downloadFile(final String str, final Integer num, final File file, final DownloadListener downloadListener) {
        if (str == null || file == null || downloadListener == null) {
            throw new IllegalArgumentException("url, file, and download listener are required");
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.utils.IOUtils.1
            @Override // java.lang.Runnable
            public void run() {
                File file2 = file;
                File file3 = file2;
                try {
                    if (file2.isDirectory()) {
                        file3 = File.createTempFile("_mm_", null, file);
                    }
                    File file4 = HttpUtils.sendHttpRequest(str, null, null, num, new FileStreamer(file3)).file;
                    if (file4 != null) {
                        downloadListener.onDownloadSucceeded(file4);
                    } else {
                        downloadListener.onDownloadFailed(new Throwable("Error creating file"));
                    }
                } catch (IOException e) {
                    String str2 = IOUtils.TAG;
                    MMLog.m4067e(str2, "An error occurred downloading file from url = " + str, e);
                    downloadListener.onDownloadFailed(e);
                }
            }
        });
    }

    public static File getUniqueFileName(File file, String str) {
        file.mkdirs();
        File file2 = new File(file, str);
        if (!file2.exists()) {
            return file2;
        }
        String[] split = str.split("\\.(?=[^\\.]+$)");
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

    public static String read(InputStream inputStream, String str) {
        if (str == null) {
            str = "UTF-8";
        }
        return new String(read(inputStream), str);
    }

    public static void read(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr, 0, 4096);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static byte[] read(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        read(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static String readAssetContents(String str) {
        String str2;
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            try {
                InputStream open = EnvironmentUtils.getApplicationContext().getAssets().open(str);
                inputStream2 = open;
                inputStream = open;
                String read = read(open, "UTF-8");
                closeStream(open);
                str2 = read;
            } catch (IOException e) {
                String str3 = TAG;
                InputStream inputStream3 = inputStream;
                InputStream inputStream4 = inputStream;
                StringBuilder sb = new StringBuilder();
                InputStream inputStream5 = inputStream;
                sb.append("Could not read contents of '");
                InputStream inputStream6 = inputStream;
                sb.append(str);
                InputStream inputStream7 = inputStream;
                sb.append("' asset.");
                inputStream2 = inputStream;
                MMLog.m4068e(str3, sb.toString());
                closeStream(inputStream);
                str2 = "";
            }
            return str2;
        } catch (Throwable th) {
            closeStream(inputStream2);
            throw th;
        }
    }

    public static void write(OutputStream outputStream, String str) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, "UTF-8");
        try {
            outputStreamWriter.write(str);
        } finally {
            outputStreamWriter.close();
        }
    }
}
