package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
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
/* renamed from: androidx.core.graphics.i */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/i.class */
public class C0548i {
    /* renamed from: a */
    public static File m20539a(Context context) {
        File file;
        File cacheDir = context.getCacheDir();
        if (cacheDir != null) {
            String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
            int i = 0;
            while (true) {
                file = null;
                if (i >= 100) {
                    break;
                }
                file = new File(cacheDir, str + i);
                if (file.createNewFile()) {
                    break;
                }
                i++;
            }
        } else {
            file = null;
        }
        return file;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static ByteBuffer m20538a(Context context, Resources resources, int i) {
        ByteBuffer m20535a;
        File m20539a = m20539a(context);
        if (m20539a == null) {
            m20535a = null;
        } else {
            try {
                if (!m20534a(m20539a, resources, i)) {
                    m20539a.delete();
                    m20535a = null;
                } else {
                    m20535a = m20535a(m20539a);
                    m20539a.delete();
                }
            } catch (Throwable th) {
                m20539a.delete();
                throw th;
            }
        }
        return m20535a;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:53:0x00a4
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:92)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    /* renamed from: a */
    public static java.nio.ByteBuffer m20537a(android.content.Context r7, android.os.CancellationSignal r8, android.net.Uri r9) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0548i.m20537a(android.content.Context, android.os.CancellationSignal, android.net.Uri):java.nio.ByteBuffer");
    }

    /* renamed from: a */
    private static ByteBuffer m20535a(File file) {
        MappedByteBuffer mappedByteBuffer;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            FileChannel channel = fileInputStream.getChannel();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
            mappedByteBuffer = map;
            if (fileInputStream != null) {
                if (0 != 0) {
                    fileInputStream.close();
                    mappedByteBuffer = map;
                } else {
                    fileInputStream.close();
                    mappedByteBuffer = map;
                }
            }
        } catch (IOException e) {
            mappedByteBuffer = null;
        }
        return mappedByteBuffer;
    }

    /* renamed from: a */
    public static void m20536a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m20534a(File file, Resources resources, int i) {
        InputStream inputStream = null;
        try {
            InputStream openRawResource = resources.openRawResource(i);
            inputStream = openRawResource;
            boolean m20533a = m20533a(file, openRawResource);
            m20536a(openRawResource);
            return m20533a;
        } catch (Throwable th) {
            m20536a(inputStream);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Closeable] */
    /* renamed from: a */
    public static boolean m20533a(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        boolean z = false;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, false);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, read);
                    }
                    z = true;
                    m20536a(fileOutputStream2);
                    StrictMode.setThreadPolicy(allowThreadDiskWrites);
                } catch (IOException e) {
                    fileOutputStream = fileOutputStream2;
                    e = e;
                    FileOutputStream fileOutputStream3 = fileOutputStream;
                    FileOutputStream fileOutputStream4 = fileOutputStream;
                    Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
                    m20536a(fileOutputStream);
                    StrictMode.setThreadPolicy(allowThreadDiskWrites);
                    return z;
                }
            } catch (Throwable th) {
                th = th;
                m20536a((Closeable) file);
                StrictMode.setThreadPolicy(allowThreadDiskWrites);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            file = null;
            m20536a((Closeable) file);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
        return z;
    }
}
