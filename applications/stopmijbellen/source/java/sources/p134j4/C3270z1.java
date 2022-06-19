package p134j4;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Objects;
import java.util.Properties;
import p201p6.C4018c;
/* renamed from: j4.z1 */
/* loaded from: classes-dex2jar.jar:j4/z1.class */
public final class C3270z1 {

    /* renamed from: h */
    public static final C4018c f11074h = new C4018c("SliceMetadataManager");

    /* renamed from: b */
    public final C3259w f11076b;

    /* renamed from: c */
    public final String f11077c;

    /* renamed from: d */
    public final int f11078d;

    /* renamed from: e */
    public final long f11079e;

    /* renamed from: f */
    public final String f11080f;

    /* renamed from: a */
    public final byte[] f11075a = new byte[8192];

    /* renamed from: g */
    public int f11081g = -1;

    public C3270z1(C3259w c3259w, String str, int i, long j, String str2) {
        this.f11076b = c3259w;
        this.f11077c = str;
        this.f11078d = i;
        this.f11079e = j;
        this.f11080f = str2;
    }

    /* renamed from: a */
    public final int m2466a() throws IOException {
        File m2486q = this.f11076b.m2486q(this.f11077c, this.f11078d, this.f11079e, this.f11080f);
        if (!m2486q.exists()) {
            return 0;
        }
        FileInputStream fileInputStream = new FileInputStream(m2486q);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            fileInputStream.close();
            if (Integer.parseInt(properties.getProperty("fileStatus", "-1")) == 4) {
                return -1;
            }
            if (properties.getProperty("previousChunk") == null) {
                throw new C3233n0("Slice checkpoint file corrupt.");
            }
            return Integer.parseInt(properties.getProperty("previousChunk")) + 1;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    /* renamed from: b */
    public final AbstractC3267y1 m2465b() throws IOException {
        File m2486q = this.f11076b.m2486q(this.f11077c, this.f11078d, this.f11079e, this.f11080f);
        if (m2486q.exists()) {
            Properties properties = new Properties();
            FileInputStream fileInputStream = new FileInputStream(m2486q);
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
                if (properties.getProperty("fileStatus") == null || properties.getProperty("previousChunk") == null) {
                    throw new C3233n0("Slice checkpoint file corrupt.");
                }
                try {
                    int parseInt = Integer.parseInt(properties.getProperty("fileStatus"));
                    String property = properties.getProperty("fileName");
                    long parseLong = Long.parseLong(properties.getProperty("fileOffset", "-1"));
                    long parseLong2 = Long.parseLong(properties.getProperty("remainingBytes", "-1"));
                    int parseInt2 = Integer.parseInt(properties.getProperty("previousChunk"));
                    this.f11081g = Integer.parseInt(properties.getProperty("metadataFileCounter", "0"));
                    return new C3186b0(parseInt, property, parseLong, parseLong2, parseInt2);
                } catch (NumberFormatException e) {
                    throw new C3233n0("Slice checkpoint file corrupt.", e);
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        }
        throw new C3233n0("Slice checkpoint file does not exist.");
    }

    /* renamed from: c */
    public final File m2464c() {
        return new File(m2455l(), String.format("%s-NAM.dat", Integer.valueOf(this.f11081g)));
    }

    /* renamed from: d */
    public final void m2463d(long j, byte[] bArr, int i, int i2) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(m2464c(), "rw");
        try {
            randomAccessFile.seek(j);
            randomAccessFile.write(bArr, i, i2);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    /* renamed from: e */
    public final void m2462e(int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "3");
        properties.put("fileOffset", String.valueOf(m2464c().length()));
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f11081g));
        FileOutputStream fileOutputStream = new FileOutputStream(m2454m());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    /* renamed from: f */
    public final void m2461f(String str, long j, long j2, int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "1");
        properties.put("fileName", str);
        properties.put("fileOffset", String.valueOf(j));
        properties.put("remainingBytes", String.valueOf(j2));
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f11081g));
        FileOutputStream fileOutputStream = new FileOutputStream(m2454m());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    /* renamed from: g */
    public final void m2460g(byte[] bArr, int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "2");
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f11081g));
        FileOutputStream fileOutputStream = new FileOutputStream(m2454m());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
            C3259w c3259w = this.f11076b;
            String str = this.f11077c;
            int i2 = this.f11078d;
            long j = this.f11079e;
            String str2 = this.f11080f;
            Objects.requireNonNull(c3259w);
            File file = new File(c3259w.m2485r(str, i2, j, str2), "checkpoint_ext.dat");
            if (file.exists()) {
                file.delete();
            }
            fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } finally {
                try {
                    fileOutputStream.close();
                } catch (Throwable th) {
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* renamed from: h */
    public final void m2459h(int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "4");
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f11081g));
        FileOutputStream fileOutputStream = new FileOutputStream(m2454m());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    /* renamed from: i */
    public final void m2458i(byte[] bArr) throws IOException {
        this.f11081g++;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(m2455l(), String.format("%s-LFH.dat", Integer.valueOf(this.f11081g))));
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (IOException e) {
            throw new C3233n0("Could not write metadata file.", e);
        }
    }

    /* renamed from: j */
    public final void m2457j(byte[] bArr, InputStream inputStream) throws IOException {
        this.f11081g++;
        FileOutputStream fileOutputStream = new FileOutputStream(m2464c());
        try {
            fileOutputStream.write(bArr);
            int read = inputStream.read(this.f11075a);
            while (read > 0) {
                fileOutputStream.write(this.f11075a, 0, read);
                read = inputStream.read(this.f11075a);
            }
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    /* renamed from: k */
    public final void m2456k(byte[] bArr, int i, int i2) throws IOException {
        this.f11081g++;
        FileOutputStream fileOutputStream = new FileOutputStream(m2464c());
        try {
            fileOutputStream.write(bArr, 0, i2);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    /* renamed from: l */
    public final File m2455l() {
        File m2485r = this.f11076b.m2485r(this.f11077c, this.f11078d, this.f11079e, this.f11080f);
        if (!m2485r.exists()) {
            m2485r.mkdirs();
        }
        return m2485r;
    }

    /* renamed from: m */
    public final File m2454m() throws IOException {
        File m2486q = this.f11076b.m2486q(this.f11077c, this.f11078d, this.f11079e, this.f11080f);
        m2486q.getParentFile().mkdirs();
        m2486q.createNewFile();
        return m2486q;
    }
}
