package p020b.p041h.p042e;

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
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p020b.p041h.p046h.C1556f;
/* renamed from: b.h.e.k */
/* loaded from: classes-dex2jar.jar:b/h/e/k.class */
public class C1538k {
    /* renamed from: a */
    public static void m29780a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public static ByteBuffer m29779b(Context context, Resources resources, int i) {
        File m29776e = m29776e(context);
        if (m29776e == null) {
            return null;
        }
        try {
            if (!m29778c(m29776e, resources, i)) {
                m29776e.delete();
                return null;
            }
            ByteBuffer m29774g = m29774g(m29776e);
            m29776e.delete();
            return m29774g;
        } catch (Throwable th) {
            m29776e.delete();
            throw th;
        }
    }

    /* renamed from: c */
    public static boolean m29778c(File file, Resources resources, int i) {
        InputStream inputStream;
        Throwable th;
        try {
            inputStream = resources.openRawResource(i);
            try {
                boolean m29777d = m29777d(file, inputStream);
                m29780a(inputStream);
                return m29777d;
            } catch (Throwable th2) {
                th = th2;
                m29780a(inputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* renamed from: d */
    public static boolean m29777d(File file, InputStream inputStream) {
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
                    m29780a(fileOutputStream2);
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
            m29780a(fileOutputStream);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream3 = fileOutputStream2;
            m29780a(fileOutputStream3);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    /* renamed from: e */
    public static File m29776e(Context context) {
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
    public static ByteBuffer m29775f(Context context, CancellationSignal cancellationSignal, Uri uri) {
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

    /* renamed from: g */
    private static ByteBuffer m29774g(File file) {
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

    /* renamed from: h */
    public static Map<Uri, ByteBuffer> m29773h(Context context, C1556f.C1558b[] c1558bArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (C1556f.C1558b c1558b : c1558bArr) {
            if (c1558b.m29734b() == 0) {
                Uri m29732d = c1558b.m29732d();
                if (!hashMap.containsKey(m29732d)) {
                    hashMap.put(m29732d, m29775f(context, cancellationSignal, m29732d));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }
}
