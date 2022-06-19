package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
/* renamed from: androidx.core.graphics.k */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/k.class */
public final class C0855k {
    private C0855k() {
    }

    /* renamed from: a */
    public static File m44310a(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + VerificationLanguage.REGION_PREFIX + Process.myTid() + VerificationLanguage.REGION_PREFIX;
        for (int i = 0; i < 100; i++) {
            File file = new File(cacheDir, str + i);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static ByteBuffer m44309a(Context context, Resources resources, int i) {
        File m44310a = m44310a(context);
        if (m44310a == null) {
            return null;
        }
        try {
            if (!m44305a(m44310a, resources, i)) {
                m44310a.delete();
                return null;
            }
            ByteBuffer m44306a = m44306a(m44310a);
            m44310a.delete();
            return m44306a;
        } catch (Throwable th) {
            m44310a.delete();
            throw th;
        }
    }

    /* renamed from: a */
    public static ByteBuffer m44308a(Context context, CancellationSignal cancellationSignal, Uri uri) {
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

    /* renamed from: a */
    private static ByteBuffer m44306a(File file) {
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

    /* renamed from: a */
    public static void m44307a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m44305a(File file, Resources resources, int i) {
        Throwable th;
        InputStream inputStream;
        try {
            InputStream openRawResource = resources.openRawResource(i);
            try {
                boolean m44304a = m44304a(file, openRawResource);
                m44307a(openRawResource);
                return m44304a;
            } catch (Throwable th2) {
                th = th2;
                inputStream = openRawResource;
                m44307a(inputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* renamed from: a */
    public static boolean m44304a(File file, InputStream inputStream) {
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
                    m44307a(fileOutputStream2);
                    StrictMode.setThreadPolicy(allowThreadDiskWrites);
                    return true;
                }
                fileOutputStream2.write(bArr, 0, read);
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream = fileOutputStream2;
            FileOutputStream fileOutputStream4 = fileOutputStream;
            StringBuilder sb = new StringBuilder("Error copying resource contents to temp file: ");
            FileOutputStream fileOutputStream5 = fileOutputStream;
            sb.append(e.getMessage());
            fileOutputStream3 = fileOutputStream;
            Log.e("TypefaceCompatUtil", sb.toString());
            m44307a(fileOutputStream);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream3 = fileOutputStream2;
            m44307a(fileOutputStream3);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }
}
