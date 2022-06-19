package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8505n0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Properties;
/* renamed from: com.google.android.play.core.assetpacks.w1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/w1.class */
final class C8451w1 {

    /* renamed from: a */
    private static final C8466a f37970a = new C8466a("SliceMetadataManager");

    /* renamed from: c */
    private final C8446v f37972c;

    /* renamed from: d */
    private final String f37973d;

    /* renamed from: e */
    private final int f37974e;

    /* renamed from: f */
    private final long f37975f;

    /* renamed from: g */
    private final String f37976g;

    /* renamed from: b */
    private final byte[] f37971b = new byte[8192];

    /* renamed from: h */
    private int f37977h = -1;

    public C8451w1(C8446v c8446v, String str, int i, long j, String str2) {
        this.f37972c = c8446v;
        this.f37973d = str;
        this.f37974e = i;
        this.f37975f = j;
        this.f37976g = str2;
    }

    /* renamed from: n */
    private final File m3617n() {
        File m3670C = this.f37972c.m3670C(this.f37973d, this.f37974e, this.f37975f, this.f37976g);
        if (!m3670C.exists()) {
            m3670C.mkdirs();
        }
        return m3670C;
    }

    /* renamed from: o */
    private final File m3616o() {
        File m3672A = this.f37972c.m3672A(this.f37973d, this.f37974e, this.f37975f, this.f37976g);
        m3672A.getParentFile().mkdirs();
        m3672A.createNewFile();
        return m3672A;
    }

    /* renamed from: a */
    public final void m3630a(String str, long j, long j2, int i) {
        Properties properties = new Properties();
        properties.put("fileStatus", "1");
        properties.put("fileName", str);
        properties.put("fileOffset", String.valueOf(j));
        properties.put("remainingBytes", String.valueOf(j2));
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f37977h));
        FileOutputStream fileOutputStream = new FileOutputStream(m3616o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C8505n0.m3487a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: b */
    public final void m3629b(byte[] bArr, int i) {
        Properties properties = new Properties();
        properties.put("fileStatus", "2");
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f37977h));
        FileOutputStream fileOutputStream = new FileOutputStream(m3616o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
            File m3671B = this.f37972c.m3671B(this.f37973d, this.f37974e, this.f37975f, this.f37976g);
            if (m3671B.exists()) {
                m3671B.delete();
            }
            fileOutputStream = new FileOutputStream(m3671B);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } finally {
            }
        } finally {
        }
    }

    /* renamed from: c */
    public final void m3628c(int i) {
        Properties properties = new Properties();
        properties.put("fileStatus", "3");
        properties.put("fileOffset", String.valueOf(m3621j().length()));
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f37977h));
        FileOutputStream fileOutputStream = new FileOutputStream(m3616o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C8505n0.m3487a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: d */
    public final void m3627d(int i) {
        Properties properties = new Properties();
        properties.put("fileStatus", "4");
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f37977h));
        FileOutputStream fileOutputStream = new FileOutputStream(m3616o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C8505n0.m3487a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: e */
    public final C8448v1 m3626e() {
        File m3672A = this.f37972c.m3672A(this.f37973d, this.f37974e, this.f37975f, this.f37976g);
        if (m3672A.exists()) {
            Properties properties = new Properties();
            FileInputStream fileInputStream = new FileInputStream(m3672A);
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
                if (properties.getProperty("fileStatus") == null || properties.getProperty("previousChunk") == null) {
                    throw new C8369bk("Slice checkpoint file corrupt.");
                }
                try {
                    int parseInt = Integer.parseInt(properties.getProperty("fileStatus"));
                    String property = properties.getProperty("fileName");
                    long parseLong = Long.parseLong(properties.getProperty("fileOffset", "-1"));
                    long parseLong2 = Long.parseLong(properties.getProperty("remainingBytes", "-1"));
                    int parseInt2 = Integer.parseInt(properties.getProperty("previousChunk"));
                    this.f37977h = Integer.parseInt(properties.getProperty("metadataFileCounter", "0"));
                    return new C8448v1(parseInt, property, parseLong, parseLong2, parseInt2);
                } catch (NumberFormatException e) {
                    throw new C8369bk("Slice checkpoint file corrupt.", e);
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    C8505n0.m3487a(th, th2);
                }
                throw th;
            }
        }
        throw new C8369bk("Slice checkpoint file does not exist.");
    }

    /* renamed from: f */
    public final void m3625f(InputStream inputStream, long j) {
        int read;
        RandomAccessFile randomAccessFile = new RandomAccessFile(m3621j(), "rw");
        try {
            randomAccessFile.seek(j);
            do {
                read = inputStream.read(this.f37971b);
                if (read > 0) {
                    randomAccessFile.write(this.f37971b, 0, read);
                }
            } while (read == 8192);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                C8505n0.m3487a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: g */
    public final void m3624g(byte[] bArr) {
        this.f37977h++;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(m3617n(), String.format("%s-LFH.dat", Integer.valueOf(this.f37977h))));
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (IOException e) {
            throw new C8369bk("Could not write metadata file.", e);
        }
    }

    /* renamed from: h */
    public final void m3623h(byte[] bArr, InputStream inputStream) {
        this.f37977h++;
        FileOutputStream fileOutputStream = new FileOutputStream(m3621j());
        try {
            fileOutputStream.write(bArr);
            int read = inputStream.read(this.f37971b);
            while (read > 0) {
                fileOutputStream.write(this.f37971b, 0, read);
                read = inputStream.read(this.f37971b);
            }
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C8505n0.m3487a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: i */
    public final void m3622i(long j, byte[] bArr, int i, int i2) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(m3621j(), "rw");
        try {
            randomAccessFile.seek(j);
            randomAccessFile.write(bArr, i, i2);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                C8505n0.m3487a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: j */
    public final File m3621j() {
        return new File(m3617n(), String.format("%s-NAM.dat", Integer.valueOf(this.f37977h)));
    }

    /* renamed from: k */
    public final int m3620k() {
        File m3672A = this.f37972c.m3672A(this.f37973d, this.f37974e, this.f37975f, this.f37976g);
        if (!m3672A.exists()) {
            return 0;
        }
        FileInputStream fileInputStream = new FileInputStream(m3672A);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            fileInputStream.close();
            if (Integer.parseInt(properties.getProperty("fileStatus", "-1")) == 4) {
                return -1;
            }
            if (properties.getProperty("previousChunk") == null) {
                throw new C8369bk("Slice checkpoint file corrupt.");
            }
            return Integer.parseInt(properties.getProperty("previousChunk")) + 1;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                C8505n0.m3487a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: l */
    public final boolean m3619l() {
        File m3672A = this.f37972c.m3672A(this.f37973d, this.f37974e, this.f37975f, this.f37976g);
        if (!m3672A.exists()) {
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(m3672A);
            Properties properties = new Properties();
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("fileStatus") != null) {
                return Integer.parseInt(properties.getProperty("fileStatus")) == 4;
            }
            f37970a.m3566b("Slice checkpoint file corrupt while checking if extraction finished.", new Object[0]);
            return false;
        } catch (IOException e) {
            f37970a.m3566b("Could not read checkpoint while checking if extraction finished. %s", e);
            return false;
        }
    }

    /* renamed from: m */
    public final void m3618m(byte[] bArr, int i) {
        this.f37977h++;
        FileOutputStream fileOutputStream = new FileOutputStream(m3621j());
        try {
            fileOutputStream.write(bArr, 0, i);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C8505n0.m3487a(th, th2);
            }
            throw th;
        }
    }
}
