package androidx.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
/* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDexExtractor.class */
final class MultiDexExtractor implements Closeable {

    /* renamed from: b */
    private final File f2141b;

    /* renamed from: c */
    private final long f2142c;

    /* renamed from: d */
    private final File f2143d;

    /* renamed from: e */
    private final RandomAccessFile f2144e;

    /* renamed from: f */
    private final FileChannel f2145f;

    /* renamed from: g */
    private final FileLock f2146g;

    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDexExtractor$ExtractedDex.class */
    public static class ExtractedDex extends File {
        public long crc = -1;

        public ExtractedDex(File file, String str) {
            super(file, str);
        }
    }

    /* renamed from: androidx.multidex.MultiDexExtractor$a */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDexExtractor$a.class */
    public class C0402a implements FileFilter {
        C0402a(MultiDexExtractor multiDexExtractor) {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.getName().equals("MultiDex.lock");
        }
    }

    public MultiDexExtractor(File file, File file2) {
        Log.i("MultiDex", "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")");
        this.f2141b = file;
        this.f2143d = file2;
        this.f2142c = m12898F(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.f2144e = randomAccessFile;
        try {
            FileChannel channel = randomAccessFile.getChannel();
            this.f2145f = channel;
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.f2146g = channel.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException | Error | RuntimeException e) {
                m12891p(this.f2145f);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e2) {
            m12891p(this.f2144e);
            throw e2;
        }
    }

    /* renamed from: B */
    private static SharedPreferences m12900B(Context context) {
        return context.getSharedPreferences("multidex.version", Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: C */
    private static long m12899C(File file) {
        ?? lastModified = file.lastModified();
        char c = lastModified;
        if (lastModified == -1) {
            c = lastModified - 1;
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: F */
    private static long m12898F(File file) {
        ?? m12866c = C0408b.m12866c(file);
        char c = m12866c;
        if (m12866c == -1) {
            c = m12866c - 1;
        }
        return c;
    }

    /* renamed from: K */
    private static boolean m12897K(Context context, File file, long j, String str) {
        boolean z;
        SharedPreferences m12900B = m12900B(context);
        if (m12900B.getLong(str + "timestamp", -1L) == m12899C(file)) {
            if (m12900B.getLong(str + "crc", -1L) == j) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: U */
    private List<ExtractedDex> m12895U(Context context, String str) {
        Log.i("MultiDex", "loading existing secondary dex files");
        String str2 = this.f2141b.getName() + ".classes";
        SharedPreferences m12900B = m12900B(context);
        int i = m12900B.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i - 1);
        for (int i2 = 2; i2 <= i; i2++) {
            ExtractedDex extractedDex = new ExtractedDex(this.f2143d, str2 + i2 + ".zip");
            if (!extractedDex.isFile()) {
                throw new IOException("Missing extracted secondary dex file '" + extractedDex.getPath() + "'");
            }
            extractedDex.crc = m12898F(extractedDex);
            long j = m12900B.getLong(str + "dex.crc." + i2, -1L);
            long j2 = m12900B.getLong(str + "dex.time." + i2, -1L);
            long lastModified = extractedDex.lastModified();
            if (j2 != lastModified || j != extractedDex.crc) {
                throw new IOException("Invalid extracted dex: " + extractedDex + " (key \"" + str + "\"), expected modification time: " + j2 + ", modification time: " + lastModified + ", expected crc: " + j + ", file crc: " + extractedDex.crc);
            }
            arrayList.add(extractedDex);
        }
        return arrayList;
    }

    /* renamed from: V */
    private List<ExtractedDex> m12894V() {
        String str = this.f2141b.getName() + ".classes";
        m12892a();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f2141b);
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            int i = 2;
            while (entry != null) {
                ExtractedDex extractedDex = new ExtractedDex(this.f2143d, str + i + ".zip");
                arrayList.add(extractedDex);
                Log.i("MultiDex", "Extraction is needed for file " + extractedDex);
                boolean z = false;
                for (int i2 = 0; i2 < 3 && !z; i2++) {
                    m12890x(zipFile, entry, extractedDex, str);
                    try {
                        extractedDex.crc = m12898F(extractedDex);
                        z = true;
                    } catch (IOException e) {
                        Log.w("MultiDex", "Failed to read crc from " + extractedDex.getAbsolutePath(), e);
                        z = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z ? "succeeded" : "failed");
                    sb.append(" '");
                    sb.append(extractedDex.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(extractedDex.length());
                    sb.append(" - crc: ");
                    sb.append(extractedDex.crc);
                    Log.i("MultiDex", sb.toString());
                    if (!z) {
                        extractedDex.delete();
                        if (extractedDex.exists()) {
                            Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + extractedDex.getPath() + "'");
                        }
                    }
                }
                if (!z) {
                    throw new IOException("Could not create zip file " + extractedDex.getAbsolutePath() + " for secondary dex (" + i + ")");
                }
                i++;
                entry = zipFile.getEntry("classes" + i + ".dex");
            }
            return arrayList;
        } finally {
            try {
                zipFile.close();
            } catch (IOException e2) {
                Log.w("MultiDex", "Failed to close resource", e2);
            }
        }
    }

    /* renamed from: W */
    private static void m12893W(Context context, String str, long j, long j2, List<ExtractedDex> list) {
        SharedPreferences.Editor edit = m12900B(context).edit();
        edit.putLong(str + "timestamp", j);
        edit.putLong(str + "crc", j2);
        edit.putInt(str + "dex.number", list.size() + 1);
        int i = 2;
        for (ExtractedDex extractedDex : list) {
            edit.putLong(str + "dex.crc." + i, extractedDex.crc);
            edit.putLong(str + "dex.time." + i, extractedDex.lastModified());
            i++;
        }
        edit.commit();
    }

    /* renamed from: a */
    private void m12892a() {
        File[] listFiles = this.f2143d.listFiles(new C0402a(this));
        if (listFiles == null) {
            Log.w("MultiDex", "Failed to list secondary dex dir content (" + this.f2143d.getPath() + ").");
            return;
        }
        for (File file : listFiles) {
            Log.i("MultiDex", "Trying to delete old file " + file.getPath() + " of size " + file.length());
            if (!file.delete()) {
                Log.w("MultiDex", "Failed to delete old file " + file.getPath());
            } else {
                Log.i("MultiDex", "Deleted old file " + file.getPath());
            }
        }
    }

    /* renamed from: p */
    private static void m12891p(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("MultiDex", "Failed to close resource", e);
        }
    }

    /* renamed from: x */
    private static void m12890x(ZipFile zipFile, ZipEntry zipEntry, File file, String str) {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile("tmp-" + str, ".zip", file.getParentFile());
        Log.i("MultiDex", "Extracting " + createTempFile.getPath());
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(createTempFile)));
            ZipEntry zipEntry2 = new ZipEntry("classes.dex");
            zipEntry2.setTime(zipEntry.getTime());
            zipOutputStream.putNextEntry(zipEntry2);
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                zipOutputStream.write(bArr, 0, read);
            }
            zipOutputStream.closeEntry();
            zipOutputStream.close();
            if (!createTempFile.setReadOnly()) {
                throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
            }
            Log.i("MultiDex", "Renaming to " + file.getPath());
            if (createTempFile.renameTo(file)) {
                m12891p(inputStream);
                createTempFile.delete();
                return;
            }
            throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
        } catch (Throwable th) {
            m12891p(inputStream);
            createTempFile.delete();
            throw th;
        }
    }

    /* renamed from: O */
    public List<? extends File> m12896O(Context context, String str, boolean z) {
        List<ExtractedDex> list;
        Log.i("MultiDex", "MultiDexExtractor.load(" + this.f2141b.getPath() + ", " + z + ", " + str + ")");
        if (this.f2146g.isValid()) {
            if (!z && !m12897K(context, this.f2141b, this.f2142c, str)) {
                try {
                    list = m12895U(context, str);
                } catch (IOException e) {
                    Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", e);
                }
                Log.i("MultiDex", "load found " + list.size() + " secondary dex files");
                return list;
            }
            Log.i("MultiDex", z ? "Forced extraction must be performed." : "Detected that extraction must be performed.");
            List<ExtractedDex> m12894V = m12894V();
            m12893W(context, str, m12899C(this.f2141b), this.f2142c, m12894V);
            list = m12894V;
            Log.i("MultiDex", "load found " + list.size() + " secondary dex files");
            return list;
        }
        throw new IllegalStateException("MultiDexExtractor was closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2146g.release();
        this.f2145f.close();
        this.f2144e.close();
    }
}
