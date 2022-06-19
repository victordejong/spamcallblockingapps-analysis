package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.C15034ay;
import com.google.android.play.core.internal.C15072h;
import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Properties;
/* renamed from: com.google.android.play.core.assetpacks.by */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/by.class */
final class C14951by {

    /* renamed from: a */
    private static final C15072h f54584a = new C15072h("SliceMetadataManager");

    /* renamed from: c */
    private final C14996w f54586c;

    /* renamed from: d */
    private final String f54587d;

    /* renamed from: e */
    private final int f54588e;

    /* renamed from: f */
    private final long f54589f;

    /* renamed from: g */
    private final String f54590g;

    /* renamed from: b */
    private final byte[] f54585b = new byte[PropertyFlags.UNSIGNED];

    /* renamed from: h */
    private int f54591h = -1;

    public C14951by(C14996w c14996w, String str, int i, long j, String str2) {
        this.f54586c = c14996w;
        this.f54587d = str;
        this.f54588e = i;
        this.f54589f = j;
        this.f54590g = str2;
    }

    /* renamed from: e */
    private final File m9719e() {
        File m9646e = this.f54586c.m9646e(this.f54587d, this.f54588e, this.f54589f, this.f54590g);
        if (!m9646e.exists()) {
            m9646e.mkdirs();
        }
        return m9646e;
    }

    /* renamed from: f */
    private final File m9718f() throws IOException {
        File m9652c = this.f54586c.m9652c(this.f54587d, this.f54588e, this.f54589f, this.f54590g);
        m9652c.getParentFile().mkdirs();
        m9652c.createNewFile();
        return m9652c;
    }

    /* renamed from: a */
    public final C14950bx m9732a() throws IOException {
        File m9652c = this.f54586c.m9652c(this.f54587d, this.f54588e, this.f54589f, this.f54590g);
        if (m9652c.exists()) {
            Properties properties = new Properties();
            FileInputStream fileInputStream = new FileInputStream(m9652c);
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
                if (properties.getProperty("fileStatus") == null || properties.getProperty("previousChunk") == null) {
                    throw new C14911al("Slice checkpoint file corrupt.");
                }
                try {
                    int parseInt = Integer.parseInt(properties.getProperty("fileStatus"));
                    String property = properties.getProperty("fileName");
                    long parseLong = Long.parseLong(properties.getProperty("fileOffset", "-1"));
                    long parseLong2 = Long.parseLong(properties.getProperty("remainingBytes", "-1"));
                    int parseInt2 = Integer.parseInt(properties.getProperty("previousChunk"));
                    this.f54591h = Integer.parseInt(properties.getProperty("metadataFileCounter", "0"));
                    return new C14950bx(parseInt, property, parseLong, parseLong2, parseInt2);
                } catch (NumberFormatException e) {
                    throw new C14911al("Slice checkpoint file corrupt.", e);
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    C15034ay.m9577a(th, th2);
                }
                throw th;
            }
        }
        throw new C14911al("Slice checkpoint file does not exist.");
    }

    /* renamed from: a */
    public final void m9731a(int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "3");
        properties.put("fileOffset", String.valueOf(m9724b().length()));
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f54591h));
        FileOutputStream fileOutputStream = new FileOutputStream(m9718f());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C15034ay.m9577a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final void m9730a(long j, byte[] bArr, int i, int i2) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(m9724b(), "rw");
        try {
            randomAccessFile.seek(j);
            randomAccessFile.write(bArr, i, i2);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                C15034ay.m9577a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final void m9729a(InputStream inputStream, long j) throws IOException {
        int read;
        RandomAccessFile randomAccessFile = new RandomAccessFile(m9724b(), "rw");
        try {
            randomAccessFile.seek(j);
            do {
                read = inputStream.read(this.f54585b);
                if (read > 0) {
                    randomAccessFile.write(this.f54585b, 0, read);
                }
            } while (read == 8192);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                C15034ay.m9577a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final void m9728a(String str, long j, long j2, int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "1");
        properties.put("fileName", str);
        properties.put("fileOffset", String.valueOf(j));
        properties.put("remainingBytes", String.valueOf(j2));
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f54591h));
        FileOutputStream fileOutputStream = new FileOutputStream(m9718f());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C15034ay.m9577a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final void m9727a(byte[] bArr) throws IOException {
        this.f54591h++;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(m9719e(), String.format("%s-LFH.dat", Integer.valueOf(this.f54591h))));
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (IOException e) {
            throw new C14911al("Could not write metadata file.", e);
        }
    }

    /* renamed from: a */
    public final void m9726a(byte[] bArr, int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "2");
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f54591h));
        FileOutputStream fileOutputStream = new FileOutputStream(m9718f());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
            File m9649d = this.f54586c.m9649d(this.f54587d, this.f54588e, this.f54589f, this.f54590g);
            if (m9649d.exists()) {
                m9649d.delete();
            }
            fileOutputStream = new FileOutputStream(m9649d);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } finally {
            }
        } finally {
        }
    }

    /* renamed from: a */
    public final void m9725a(byte[] bArr, InputStream inputStream) throws IOException {
        this.f54591h++;
        FileOutputStream fileOutputStream = new FileOutputStream(m9724b());
        try {
            fileOutputStream.write(bArr);
            int read = inputStream.read(this.f54585b);
            while (read > 0) {
                fileOutputStream.write(this.f54585b, 0, read);
                read = inputStream.read(this.f54585b);
            }
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C15034ay.m9577a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: b */
    public final File m9724b() {
        return new File(m9719e(), String.format("%s-NAM.dat", Integer.valueOf(this.f54591h)));
    }

    /* renamed from: b */
    public final void m9723b(int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "4");
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f54591h));
        FileOutputStream fileOutputStream = new FileOutputStream(m9718f());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C15034ay.m9577a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: b */
    public final void m9722b(byte[] bArr, int i) throws IOException {
        this.f54591h++;
        FileOutputStream fileOutputStream = new FileOutputStream(m9724b());
        try {
            fileOutputStream.write(bArr, 0, i);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C15034ay.m9577a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: c */
    public final int m9721c() throws IOException {
        File m9652c = this.f54586c.m9652c(this.f54587d, this.f54588e, this.f54589f, this.f54590g);
        if (!m9652c.exists()) {
            return 0;
        }
        FileInputStream fileInputStream = new FileInputStream(m9652c);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            fileInputStream.close();
            if (Integer.parseInt(properties.getProperty("fileStatus", "-1")) == 4) {
                return -1;
            }
            if (properties.getProperty("previousChunk") == null) {
                throw new C14911al("Slice checkpoint file corrupt.");
            }
            return Integer.parseInt(properties.getProperty("previousChunk")) + 1;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                C15034ay.m9577a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: d */
    public final boolean m9720d() {
        File m9652c = this.f54586c.m9652c(this.f54587d, this.f54588e, this.f54589f, this.f54590g);
        if (!m9652c.exists()) {
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(m9652c);
            Properties properties = new Properties();
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("fileStatus") != null) {
                return Integer.parseInt(properties.getProperty("fileStatus")) == 4;
            }
            f54584a.m9509b("Slice checkpoint file corrupt while checking if extraction finished.", new Object[0]);
            return false;
        } catch (IOException e) {
            f54584a.m9509b("Could not read checkpoint while checking if extraction finished. %s", e);
            return false;
        }
    }
}
