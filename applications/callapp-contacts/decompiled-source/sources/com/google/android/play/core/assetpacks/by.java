package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.ay;
import com.google.android.play.core.internal.h;
import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Properties;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/by.class */
final class by {

    /* renamed from: a  reason: collision with root package name */
    private static final h f31217a = new h("SliceMetadataManager");

    /* renamed from: c  reason: collision with root package name */
    private final w f31219c;

    /* renamed from: d  reason: collision with root package name */
    private final String f31220d;
    private final int e;
    private final long f;
    private final String g;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f31218b = new byte[PropertyFlags.UNSIGNED];
    private int h = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public by(w wVar, String str, int i, long j, String str2) {
        this.f31219c = wVar;
        this.f31220d = str;
        this.e = i;
        this.f = j;
        this.g = str2;
    }

    private final File e() {
        File e = this.f31219c.e(this.f31220d, this.e, this.f, this.g);
        if (!e.exists()) {
            e.mkdirs();
        }
        return e;
    }

    private final File f() throws IOException {
        File c2 = this.f31219c.c(this.f31220d, this.e, this.f, this.g);
        c2.getParentFile().mkdirs();
        c2.createNewFile();
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final bx a() throws IOException {
        File c2 = this.f31219c.c(this.f31220d, this.e, this.f, this.g);
        if (c2.exists()) {
            Properties properties = new Properties();
            FileInputStream fileInputStream = new FileInputStream(c2);
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
                if (properties.getProperty("fileStatus") == null || properties.getProperty("previousChunk") == null) {
                    throw new al("Slice checkpoint file corrupt.");
                }
                try {
                    int parseInt = Integer.parseInt(properties.getProperty("fileStatus"));
                    String property = properties.getProperty("fileName");
                    long parseLong = Long.parseLong(properties.getProperty("fileOffset", "-1"));
                    long parseLong2 = Long.parseLong(properties.getProperty("remainingBytes", "-1"));
                    int parseInt2 = Integer.parseInt(properties.getProperty("previousChunk"));
                    this.h = Integer.parseInt(properties.getProperty("metadataFileCounter", "0"));
                    return new bx(parseInt, property, parseLong, parseLong2, parseInt2);
                } catch (NumberFormatException e) {
                    throw new al("Slice checkpoint file corrupt.", e);
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    ay.a(th, th2);
                }
                throw th;
            }
        } else {
            throw new al("Slice checkpoint file does not exist.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "3");
        properties.put("fileOffset", String.valueOf(b().length()));
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.h));
        FileOutputStream fileOutputStream = new FileOutputStream(f());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                ay.a(th, th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, byte[] bArr, int i, int i2) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(b(), "rw");
        try {
            randomAccessFile.seek(j);
            randomAccessFile.write(bArr, i, i2);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                ay.a(th, th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(InputStream inputStream, long j) throws IOException {
        int read;
        RandomAccessFile randomAccessFile = new RandomAccessFile(b(), "rw");
        try {
            randomAccessFile.seek(j);
            do {
                read = inputStream.read(this.f31218b);
                if (read > 0) {
                    randomAccessFile.write(this.f31218b, 0, read);
                }
            } while (read == 8192);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                ay.a(th, th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, long j, long j2, int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "1");
        properties.put("fileName", str);
        properties.put("fileOffset", String.valueOf(j));
        properties.put("remainingBytes", String.valueOf(j2));
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.h));
        FileOutputStream fileOutputStream = new FileOutputStream(f());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                ay.a(th, th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(byte[] bArr) throws IOException {
        this.h++;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(e(), String.format("%s-LFH.dat", Integer.valueOf(this.h))));
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (IOException e) {
            throw new al("Could not write metadata file.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(byte[] bArr, int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "2");
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.h));
        FileOutputStream fileOutputStream = new FileOutputStream(f());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
            File d2 = this.f31219c.d(this.f31220d, this.e, this.f, this.g);
            if (d2.exists()) {
                d2.delete();
            }
            fileOutputStream = new FileOutputStream(d2);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } finally {
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(byte[] bArr, InputStream inputStream) throws IOException {
        this.h++;
        FileOutputStream fileOutputStream = new FileOutputStream(b());
        try {
            fileOutputStream.write(bArr);
            int read = inputStream.read(this.f31218b);
            while (read > 0) {
                fileOutputStream.write(this.f31218b, 0, read);
                read = inputStream.read(this.f31218b);
            }
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                ay.a(th, th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File b() {
        return new File(e(), String.format("%s-NAM.dat", Integer.valueOf(this.h)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "4");
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.h));
        FileOutputStream fileOutputStream = new FileOutputStream(f());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                ay.a(th, th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(byte[] bArr, int i) throws IOException {
        this.h++;
        FileOutputStream fileOutputStream = new FileOutputStream(b());
        try {
            fileOutputStream.write(bArr, 0, i);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                ay.a(th, th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c() throws IOException {
        File c2 = this.f31219c.c(this.f31220d, this.e, this.f, this.g);
        if (!c2.exists()) {
            return 0;
        }
        FileInputStream fileInputStream = new FileInputStream(c2);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            fileInputStream.close();
            if (Integer.parseInt(properties.getProperty("fileStatus", "-1")) == 4) {
                return -1;
            }
            if (properties.getProperty("previousChunk") != null) {
                return Integer.parseInt(properties.getProperty("previousChunk")) + 1;
            }
            throw new al("Slice checkpoint file corrupt.");
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                ay.a(th, th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d() {
        File c2 = this.f31219c.c(this.f31220d, this.e, this.f, this.g);
        if (!c2.exists()) {
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(c2);
            Properties properties = new Properties();
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("fileStatus") != null) {
                return Integer.parseInt(properties.getProperty("fileStatus")) == 4;
            }
            f31217a.b("Slice checkpoint file corrupt while checking if extraction finished.", new Object[0]);
            return false;
        } catch (IOException e) {
            f31217a.b("Could not read checkpoint while checking if extraction finished. %s", e);
            return false;
        }
    }
}
