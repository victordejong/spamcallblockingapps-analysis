package androidx.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
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
public final class MultiDexExtractor implements Closeable {

    /* renamed from: a */
    public final File f2424a;

    /* renamed from: b */
    public final long f2425b;

    /* renamed from: c */
    public final File f2426c;

    /* renamed from: d */
    public final RandomAccessFile f2427d;

    /* renamed from: e */
    public final FileChannel f2428e;

    /* renamed from: f */
    public final FileLock f2429f;

    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDexExtractor$ExtractedDex.class */
    public static class ExtractedDex extends File {
        public long crc = -1;

        public ExtractedDex(File file, String str) {
            super(file, str);
        }
    }

    /* renamed from: androidx.multidex.MultiDexExtractor$a */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDexExtractor$a.class */
    public class C0484a implements FileFilter {
        public C0484a() {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.getName().equals("MultiDex.lock");
        }
    }

    public MultiDexExtractor(File file, File file2) throws IOException {
        Log.i("MultiDex", "MultiDexExtractor(" + file.getPath() + ", " + file2.getPath() + ")");
        this.f2424a = file;
        this.f2426c = file2;
        this.f2425b = m37627b(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.f2427d = randomAccessFile;
        try {
            this.f2428e = randomAccessFile.getChannel();
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.f2429f = this.f2428e.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException | Error | RuntimeException e) {
                m37631a(this.f2428e);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e2) {
            m37631a(this.f2427d);
            throw e2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m37630a(java.io.File r5) {
        /*
            r0 = r5
            long r0 = r0.lastModified()
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0013
            r0 = r6
            r1 = 1
            long r0 = r0 - r1
            r8 = r0
        L_0x0013:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.multidex.MultiDexExtractor.m37630a(java.io.File):long");
    }

    /* renamed from: a */
    public static SharedPreferences m37636a(Context context) {
        return context.getSharedPreferences("multidex.version", Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    /* renamed from: a */
    public static void m37633a(Context context, String str, long j, long j2, List<ExtractedDex> list) {
        SharedPreferences.Editor edit = m37636a(context).edit();
        edit.putLong(str + AvidJSONUtil.KEY_TIMESTAMP, j);
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
    public static void m37631a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("MultiDex", "Failed to close resource", e);
        }
    }

    /* renamed from: a */
    public static void m37629a(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException, FileNotFoundException {
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
            if (createTempFile.setReadOnly()) {
                Log.i("MultiDex", "Renaming to " + file.getPath());
                if (createTempFile.renameTo(file)) {
                    m37631a(inputStream);
                    createTempFile.delete();
                    return;
                }
                throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            }
            throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
        } catch (Throwable th) {
            m37631a(inputStream);
            createTempFile.delete();
            throw th;
        }
    }

    /* renamed from: a */
    public static boolean m37635a(Context context, File file, long j, String str) {
        boolean z;
        SharedPreferences a = m37636a(context);
        if (a.getLong(str + AvidJSONUtil.KEY_TIMESTAMP, -1L) == m37630a(file)) {
            if (a.getLong(str + "crc", -1L) == j) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m37627b(java.io.File r5) throws java.io.IOException {
        /*
            r0 = r5
            long r0 = p012b.p119t.C1888b.m31815a(r0)
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0013
            r0 = r6
            r1 = 1
            long r0 = r0 - r1
            r8 = r0
        L_0x0013:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.multidex.MultiDexExtractor.m37627b(java.io.File):long");
    }

    /* renamed from: a */
    public final List<ExtractedDex> m37634a(Context context, String str) throws IOException {
        Log.i("MultiDex", "loading existing secondary dex files");
        String str2 = this.f2424a.getName() + ".classes";
        SharedPreferences a = m37636a(context);
        int i = a.getInt(str + "dex.number", 1);
        ArrayList arrayList = new ArrayList(i - 1);
        for (int i2 = 2; i2 <= i; i2++) {
            ExtractedDex extractedDex = new ExtractedDex(this.f2426c, str2 + i2 + ".zip");
            if (extractedDex.isFile()) {
                extractedDex.crc = m37627b(extractedDex);
                long j = a.getLong(str + "dex.crc." + i2, -1L);
                long j2 = a.getLong(str + "dex.time." + i2, -1L);
                long lastModified = extractedDex.lastModified();
                if (j2 == lastModified && j == extractedDex.crc) {
                    arrayList.add(extractedDex);
                } else {
                    throw new IOException("Invalid extracted dex: " + extractedDex + " (key \"" + str + "\"), expected modification time: " + j2 + ", modification time: " + lastModified + ", expected crc: " + j + ", file crc: " + extractedDex.crc);
                }
            } else {
                throw new IOException("Missing extracted secondary dex file '" + extractedDex.getPath() + "'");
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public List<? extends File> m37632a(Context context, String str, boolean z) throws IOException {
        List<ExtractedDex> list;
        Log.i("MultiDex", "MultiDexExtractor.load(" + this.f2424a.getPath() + ", " + z + ", " + str + ")");
        if (this.f2429f.isValid()) {
            if (z || m37635a(context, this.f2424a, this.f2425b, str)) {
                if (z) {
                    Log.i("MultiDex", "Forced extraction must be performed.");
                } else {
                    Log.i("MultiDex", "Detected that extraction must be performed.");
                }
                List<ExtractedDex> b = m37628b();
                m37633a(context, str, m37630a(this.f2424a), this.f2425b, b);
                list = b;
            } else {
                try {
                    list = m37634a(context, str);
                } catch (IOException e) {
                    Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", e);
                    List<ExtractedDex> b2 = m37628b();
                    m37633a(context, str, m37630a(this.f2424a), this.f2425b, b2);
                    list = b2;
                }
            }
            Log.i("MultiDex", "load found " + list.size() + " secondary dex files");
            return list;
        }
        throw new IllegalStateException("MultiDexExtractor was closed");
    }

    /* renamed from: a */
    public final void m37637a() {
        File[] listFiles = this.f2426c.listFiles(new C0484a());
        if (listFiles == null) {
            Log.w("MultiDex", "Failed to list secondary dex dir content (" + this.f2426c.getPath() + ").");
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

    /* renamed from: b */
    public final List<ExtractedDex> m37628b() throws IOException {
        String str = this.f2424a.getName() + ".classes";
        m37637a();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f2424a);
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            int i = 2;
            while (entry != null) {
                ExtractedDex extractedDex = new ExtractedDex(this.f2426c, str + i + ".zip");
                arrayList.add(extractedDex);
                Log.i("MultiDex", "Extraction is needed for file " + extractedDex);
                boolean z = false;
                for (int i2 = 0; i2 < 3 && !z; i2++) {
                    m37629a(zipFile, entry, extractedDex, str);
                    try {
                        extractedDex.crc = m37627b(extractedDex);
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
                if (z) {
                    i++;
                    entry = zipFile.getEntry("classes" + i + ".dex");
                } else {
                    throw new IOException("Could not create zip file " + extractedDex.getAbsolutePath() + " for secondary dex (" + i + ")");
                }
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
    public void close() throws IOException {
        this.f2429f.release();
        this.f2428e.close();
        this.f2427d.close();
    }
}
