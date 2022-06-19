package p087f0;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.support.p012v4.media.C0082b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import p007a6.C0033h;
/* renamed from: f0.l */
/* loaded from: classes-dex2jar.jar:f0/l.class */
public class C2707l {
    /* renamed from: a */
    public static boolean m3222a(File file, Resources resources, int i) {
        InputStream inputStream;
        Throwable th;
        try {
            inputStream = resources.openRawResource(i);
            try {
                boolean m3221b = m3221b(file, inputStream);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                    }
                }
                return m3221b;
            } catch (Throwable th2) {
                th = th2;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* renamed from: b */
    public static boolean m3221b(File file, InputStream inputStream) {
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
                if (read != -1) {
                    fileOutputStream2.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (IOException e3) {
                    }
                }
            }
            fileOutputStream2.close();
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return true;
        } catch (IOException e4) {
            e = e4;
            fileOutputStream = fileOutputStream2;
            fileOutputStream3 = fileOutputStream;
            e.getMessage();
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e5) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream3 = fileOutputStream2;
            if (fileOutputStream3 != null) {
                try {
                    fileOutputStream3.close();
                } catch (IOException e6) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    /* renamed from: c */
    public static File m3220c(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        StringBuilder m8752j = C0082b.m8752j(".font");
        m8752j.append(Process.myPid());
        m8752j.append("-");
        m8752j.append(Process.myTid());
        m8752j.append("-");
        String sb = m8752j.toString();
        for (int i = 0; i < 100; i++) {
            File file = new File(cacheDir, C0033h.m8886k(sb, i));
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    /* renamed from: d */
    public static ByteBuffer m3219d(Context context, CancellationSignal cancellationSignal, Uri uri) {
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
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                fileInputStream.close();
                openFileDescriptor.close();
                return map;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            return null;
        }
    }
}
