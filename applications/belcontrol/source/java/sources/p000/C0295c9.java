package p000;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
/* renamed from: c9 */
/* loaded from: classes-dex2jar.jar:c9.class */
public class C0295c9 {
    /* renamed from: a */
    public static void m5415a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public static ByteBuffer m5414b(Context context, Resources resources, int i) {
        File m5411e = m5411e(context);
        if (m5411e == null) {
            return null;
        }
        try {
            if (!m5413c(m5411e, resources, i)) {
                m5411e.delete();
                return null;
            }
            ByteBuffer m5409g = m5409g(m5411e);
            m5411e.delete();
            return m5409g;
        } catch (Throwable th) {
            m5411e.delete();
            throw th;
        }
    }

    /* renamed from: c */
    public static boolean m5413c(File file, Resources resources, int i) {
        Throwable th;
        InputStream inputStream;
        try {
            InputStream openRawResource = resources.openRawResource(i);
            try {
                boolean m5412d = m5412d(file, openRawResource);
                m5415a(openRawResource);
                return m5412d;
            } catch (Throwable th2) {
                th = th2;
                inputStream = openRawResource;
                m5415a(inputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* renamed from: d */
    public static boolean m5412d(File file, InputStream inputStream) {
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                fileOutputStream2 = new FileOutputStream(file, false);
            } catch (IOException e2) {
                e = e2;
                fileOutputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    m5415a(fileOutputStream2);
                    StrictMode.setThreadPolicy(allowThreadDiskWrites);
                    return true;
                }
                fileOutputStream2.write(bArr, 0, read);
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream = fileOutputStream2;
            FileOutputStream fileOutputStream4 = fileOutputStream;
            StringBuilder sb = new StringBuilder();
            FileOutputStream fileOutputStream5 = fileOutputStream;
            sb.append("Error copying resource contents to temp file: ");
            FileOutputStream fileOutputStream6 = fileOutputStream;
            sb.append(e.getMessage());
            fileOutputStream3 = fileOutputStream;
            Log.e("TypefaceCompatUtil", sb.toString());
            m5415a(fileOutputStream);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream3 = fileOutputStream2;
            m5415a(fileOutputStream3);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    /* renamed from: e */
    public static File m5411e(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i = 0; i < 100; i++) {
            File file = new File(cacheDir, str + i);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    /* renamed from: f */
    public static ByteBuffer m5410f(Context context, CancellationSignal cancellationSignal, Uri uri) {
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor == null) {
                    return null;
                }
                openFileDescriptor.close();
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            FileChannel channel = fileInputStream.getChannel();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
            fileInputStream.close();
            if (openFileDescriptor != null) {
                openFileDescriptor.close();
            }
            return map;
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: g */
    public static ByteBuffer m5409g(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            FileChannel channel = fileInputStream.getChannel();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
            fileInputStream.close();
            return map;
        } catch (IOException e) {
            return null;
        }
    }
}
