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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDexExtractor.class */
public final class MultiDexExtractor implements Closeable {

    /* renamed from: d */
    private final File f3890d;

    /* renamed from: e */
    private final long f3891e;

    /* renamed from: f */
    private final File f3892f;

    /* renamed from: g */
    private final RandomAccessFile f3893g;

    /* renamed from: h */
    private final FileChannel f3894h;

    /* renamed from: i */
    private final FileLock f3895i;

    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDexExtractor$ExtractedDex.class */
    public static class ExtractedDex extends File {
        public long crc = -1;

        public ExtractedDex(File file, String str) {
            super(file, str);
        }
    }

    /* renamed from: androidx.multidex.MultiDexExtractor$a */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDexExtractor$a.class */
    public class C0884a implements FileFilter {
        C0884a() {
            MultiDexExtractor.this = r4;
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.getName().equals("MultiDex.lock");
        }
    }

    public MultiDexExtractor(File file, File file2) {
        Log.i("MultiDex", "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")");
        this.f3890d = file;
        this.f3892f = file2;
        this.f3891e = m32221p(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.f3893g = randomAccessFile;
        try {
            FileChannel channel = randomAccessFile.getChannel();
            this.f3894h = channel;
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.f3895i = channel.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException | Error | RuntimeException e) {
                m32225e(this.f3894h);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e2) {
            m32225e(this.f3893g);
            throw e2;
        }
    }

    /* renamed from: A */
    private static void m32227A(Context context, String str, long j, long j2, List<ExtractedDex> list) {
        SharedPreferences.Editor edit = m32223g(context).edit();
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
    private void m32226a() {
        File[] listFiles = this.f3892f.listFiles(new C0884a());
        if (listFiles == null) {
            Log.w("MultiDex", "Failed to list secondary dex dir content (" + this.f3892f.getPath() + ").");
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

    /* renamed from: e */
    private static void m32225e(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("MultiDex", "Failed to close resource", e);
        }
    }

    /* renamed from: f */
    private static void m32224f(ZipFile zipFile, ZipEntry zipEntry, File file, String str) {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile("tmp-" + str, ".zip", file.getParentFile());
        Log.i("MultiDex", "Extracting " + createTempFile.getPath());
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(createTempFile)));
            ZipEntry zipEntry2 = new ZipEntry("classes.dex");
            zipEntry2.setTime(zipEntry.getTime());
            zipOutputStream.putNextEntry(zipEntry2);
            byte[] bArr = new byte[16384];
            for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                zipOutputStream.write(bArr, 0, read);
            }
            zipOutputStream.closeEntry();
            zipOutputStream.close();
            if (!createTempFile.setReadOnly()) {
                throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
            }
            Log.i("MultiDex", "Renaming to " + file.getPath());
            if (createTempFile.renameTo(file)) {
                return;
            }
            throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
        } finally {
            m32225e(inputStream);
            createTempFile.delete();
        }
    }

    /* renamed from: g */
    private static SharedPreferences m32223g(Context context) {
        return context.getSharedPreferences("multidex.version", Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: k */
    private static long m32222k(File file) {
        ?? lastModified = file.lastModified();
        char c = lastModified;
        if (lastModified == -1) {
            c = lastModified - 1;
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: p */
    private static long m32221p(File file) {
        ?? m32192c = C0893b.m32192c(file);
        char c = m32192c;
        if (m32192c == -1) {
            c = m32192c - 1;
        }
        return c;
    }

    /* renamed from: q */
    private static boolean m32220q(Context context, File file, long j, String str) {
        boolean z;
        SharedPreferences m32223g = m32223g(context);
        if (m32223g.getLong(str + "timestamp", -1L) == m32222k(file)) {
            if (m32223g.getLong(str + "crc", -1L) == j) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: y */
    private List<ExtractedDex> m32218y(Context context, String str) {
        Log.i("MultiDex", "loading existing secondary dex files");
        String str2 = this.f3890d.getName() + ".classes";
        SharedPreferences m32223g = m32223g(context);
        int i = m32223g.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i - 1);
        for (int i2 = 2; i2 <= i; i2++) {
            ExtractedDex extractedDex = new ExtractedDex(this.f3892f, str2 + i2 + ".zip");
            if (!extractedDex.isFile()) {
                throw new IOException("Missing extracted secondary dex file '" + extractedDex.getPath() + "'");
            }
            extractedDex.crc = m32221p(extractedDex);
            long j = m32223g.getLong(str + "dex.crc." + i2, -1L);
            long j2 = m32223g.getLong(str + "dex.time." + i2, -1L);
            long lastModified = extractedDex.lastModified();
            if (j2 != lastModified || j != extractedDex.crc) {
                throw new IOException("Invalid extracted dex: " + extractedDex + " (key \"" + str + "\"), expected modification time: " + j2 + ", modification time: " + lastModified + ", expected crc: " + j + ", file crc: " + extractedDex.crc);
            }
            arrayList.add(extractedDex);
        }
        return arrayList;
    }

    /* renamed from: z */
    private List<ExtractedDex> m32217z() {
        String str = this.f3890d.getName() + ".classes";
        m32226a();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f3890d);
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            int i = 2;
            while (entry != null) {
                ExtractedDex extractedDex = new ExtractedDex(this.f3892f, str + i + ".zip");
                arrayList.add(extractedDex);
                Log.i("MultiDex", "Extraction is needed for file " + extractedDex);
                boolean z = false;
                for (int i2 = 0; i2 < 3 && !z; i2++) {
                    m32224f(zipFile, entry, extractedDex, str);
                    try {
                        extractedDex.crc = m32221p(extractedDex);
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

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3895i.release();
        this.f3894h.close();
        this.f3893g.close();
    }

    /* renamed from: u */
    public List<? extends File> m32219u(Context context, String str, boolean z) {
        List<ExtractedDex> list;
        Log.i("MultiDex", "MultiDexExtractor.load(" + this.f3890d.getPath() + ", " + z + ", " + str + ")");
        if (this.f3895i.isValid()) {
            if (z || m32220q(context, this.f3890d, this.f3891e, str)) {
                if (z) {
                    Log.i("MultiDex", "Forced extraction must be performed.");
                } else {
                    Log.i("MultiDex", "Detected that extraction must be performed.");
                }
                List<ExtractedDex> m32217z = m32217z();
                m32227A(context, str, m32222k(this.f3890d), this.f3891e, m32217z);
                list = m32217z;
            } else {
                try {
                    list = m32218y(context, str);
                } catch (IOException e) {
                    Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", e);
                    List<ExtractedDex> m32217z2 = m32217z();
                    m32227A(context, str, m32222k(this.f3890d), this.f3891e, m32217z2);
                    list = m32217z2;
                }
            }
            Log.i("MultiDex", "load found " + list.size() + " secondary dex files");
            return list;
        }
        throw new IllegalStateException("MultiDexExtractor was closed");
    }
}
