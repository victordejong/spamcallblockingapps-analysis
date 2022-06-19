package p135j5;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import p080e5.C2556i;
import p114h5.C3009a;
import p157l5.AbstractC3500d;
/* renamed from: j5.f */
/* loaded from: classes-dex2jar.jar:j5/f.class */
public class C3276f {

    /* renamed from: g */
    public static final Charset f11087g = Charset.forName("UTF-8");

    /* renamed from: h */
    public static final int f11088h = 15;

    /* renamed from: i */
    public static final C3009a f11089i = new C3009a();

    /* renamed from: j */
    public static final Comparator<? super File> f11090j = C3274d.f11085a;

    /* renamed from: k */
    public static final FilenameFilter f11091k = C2556i.f8932c;

    /* renamed from: a */
    public final AtomicInteger f11092a = new AtomicInteger(0);

    /* renamed from: b */
    public final File f11093b;

    /* renamed from: c */
    public final File f11094c;

    /* renamed from: d */
    public final File f11095d;

    /* renamed from: e */
    public final File f11096e;

    /* renamed from: f */
    public final AbstractC3500d f11097f;

    public C3276f(File file, AbstractC3500d abstractC3500d) {
        File file2 = new File(file, "report-persistence");
        this.f11093b = new File(file2, "sessions");
        this.f11094c = new File(file2, "priority-reports");
        this.f11095d = new File(file2, "reports");
        this.f11096e = new File(file2, "native-reports");
        this.f11097f = abstractC3500d;
    }

    /* renamed from: a */
    public static List<File> m2453a(List<File>... listArr) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (List<File> list : listArr) {
            i += list.size();
        }
        arrayList.ensureCapacity(i);
        for (List<File> list2 : listArr) {
            arrayList.addAll(list2);
        }
        return arrayList;
    }

    /* renamed from: b */
    public static List<File> m2452b(File file) {
        return m2450d(file, null);
    }

    /* renamed from: d */
    public static List<File> m2450d(File file, FileFilter fileFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    /* renamed from: e */
    public static List<File> m2449e(File file, FilenameFilter filenameFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = filenameFilter == null ? file.listFiles() : file.listFiles(filenameFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    /* renamed from: g */
    public static File m2447g(File file) throws IOException {
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        throw new IOException("Could not create directory " + file);
    }

    /* renamed from: h */
    public static String m2446h(File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), f11087g);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* renamed from: i */
    public static void m2445i(File file) {
        if (file == null) {
            return;
        }
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                m2445i(file2);
            }
        }
        file.delete();
    }

    /* renamed from: j */
    public static void m2444j(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f11087g);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: c */
    public final List<File> m2451c() {
        List[] listArr = {m2453a(m2452b(this.f11094c), m2452b(this.f11096e)), m2452b(this.f11095d)};
        for (int i = 0; i < 2; i++) {
            Collections.sort(listArr[i], f11090j);
        }
        return m2453a(listArr);
    }

    /* renamed from: f */
    public final File m2448f(String str) {
        return new File(this.f11093b, str);
    }
}
