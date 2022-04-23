package p131c.p161d.p282e.p289l.p290d.p298l;

import com.android.volley.Request;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
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
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5276o;
import p131c.p161d.p282e.p289l.p290d.p295j.C5384v;
import p131c.p161d.p282e.p289l.p290d.p295j.p296w.C5392h;
import p131c.p161d.p282e.p289l.p290d.p304p.AbstractC5431d;
/* renamed from: c.d.e.l.d.l.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/l/g.class */
public class C5403g {

    /* renamed from: g */
    public static final Charset f18321g = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: h */
    public static final int f18322h = 15;

    /* renamed from: i */
    public static final C5392h f18323i = new C5392h();

    /* renamed from: j */
    public static final Comparator<? super File> f18324j = C5401e.m23916a();

    /* renamed from: k */
    public static final FilenameFilter f18325k = C5402f.m23915a();

    /* renamed from: a */
    public final AtomicInteger f18326a = new AtomicInteger(0);

    /* renamed from: b */
    public final File f18327b;

    /* renamed from: c */
    public final File f18328c;

    /* renamed from: d */
    public final File f18329d;

    /* renamed from: e */
    public final File f18330e;

    /* renamed from: f */
    public final AbstractC5431d f18331f;

    public C5403g(File file, AbstractC5431d dVar) {
        File file2 = new File(file, "report-persistence");
        this.f18327b = new File(file2, "sessions");
        this.f18328c = new File(file2, "priority-reports");
        this.f18329d = new File(file2, "reports");
        this.f18330e = new File(file2, "native-reports");
        this.f18331f = dVar;
    }

    /* renamed from: a */
    public static int m23909a(File file, int i) {
        List<File> a = m23903a(file, C5399c.m23918a());
        Collections.sort(a, C5400d.m23917a());
        return m23896a(a, i);
    }

    /* renamed from: a */
    public static int m23896a(List<File> list, int i) {
        int size = list.size();
        for (File file : list) {
            if (size <= i) {
                return size;
            }
            m23879e(file);
            size--;
        }
        return size;
    }

    /* renamed from: a */
    public static String m23913a(int i, boolean z) {
        String format = String.format(Locale.US, "%010d", Integer.valueOf(i));
        String str = z ? "_" : "";
        return "event" + format + str;
    }

    /* renamed from: a */
    public static List<File> m23910a(File file) {
        return m23904a(file, (FileFilter) null);
    }

    /* renamed from: a */
    public static List<File> m23904a(File file, FileFilter fileFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    /* renamed from: a */
    public static List<File> m23903a(File file, FilenameFilter filenameFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = filenameFilter == null ? file.listFiles() : file.listFiles(filenameFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    /* renamed from: a */
    public static List<File> m23895a(List<File>... listArr) {
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

    /* renamed from: a */
    public static void m23906a(File file, File file2, CrashlyticsReport.AbstractC7781c cVar, String str) {
        try {
            CrashlyticsReport a = f18323i.m23959b(m23882d(file)).m7635a(cVar);
            m23887c(file2);
            m23881d(new File(file2, str), f18323i.m23962a(a));
        } catch (IOException e) {
            C5192b a2 = C5192b.m24319a();
            a2.m24316a("Could not synthesize final native report file for " + file, e);
        }
    }

    /* renamed from: a */
    public static void m23905a(File file, File file2, List<CrashlyticsReport.AbstractC7785d.AbstractC7792d> list, long j, boolean z, String str) {
        try {
            CrashlyticsReport a = f18323i.m23959b(m23882d(file)).m7637a(j, z, str).m7636a(C5384v.m23974a(list));
            CrashlyticsReport.AbstractC7785d h = a.mo7628h();
            if (h != null) {
                m23887c(file2);
                m23881d(new File(file2, h.mo7588g()), f18323i.m23962a(a));
            }
        } catch (IOException e) {
            C5192b a2 = C5192b.m24319a();
            a2.m24316a("Could not synthesize final report file for " + file, e);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m23898a(String str, File file) {
        return file.isDirectory() && !file.getName().equals(str);
    }

    /* renamed from: b */
    public static List<File> m23889b(List<File>... listArr) {
        for (List<File> list : listArr) {
            Collections.sort(list, f18324j);
        }
        return m23895a(listArr);
    }

    /* renamed from: b */
    public static boolean m23893b(File file) {
        return file.exists() || file.mkdirs();
    }

    /* renamed from: b */
    public static boolean m23891b(File file, String str) {
        return str.startsWith("event") && !str.endsWith("_");
    }

    /* renamed from: c */
    public static int m23886c(File file, File file2) {
        return m23880d(file.getName()).compareTo(m23880d(file2.getName()));
    }

    /* renamed from: c */
    public static File m23887c(File file) throws IOException {
        if (m23893b(file)) {
            return file;
        }
        throw new IOException("Could not create directory " + file);
    }

    /* renamed from: d */
    public static String m23882d(File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), f18321g);
                    fileInputStream.close();
                    return str;
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        }
    }

    /* renamed from: d */
    public static String m23880d(String str) {
        return str.substring(0, f18322h);
    }

    /* renamed from: d */
    public static void m23881d(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f18321g);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    /* renamed from: e */
    public static void m23879e(File file) {
        if (file != null) {
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    m23879e(file2);
                }
            }
            file.delete();
        }
    }

    /* renamed from: e */
    public static boolean m23878e(String str) {
        return str.startsWith("event") && str.endsWith("_");
    }

    /* renamed from: a */
    public final List<File> m23901a(String str) {
        List<File> a = m23904a(this.f18327b, C5398b.m23919a(str));
        Collections.sort(a, f18324j);
        if (a.size() <= 8) {
            return a;
        }
        for (File file : a.subList(8, a.size())) {
            m23879e(file);
        }
        return a.subList(0, 8);
    }

    /* renamed from: a */
    public final void m23914a() {
        int i = this.f18331f.mo23783b().mo23773b().f18407b;
        List<File> c = m23888c();
        int size = c.size();
        if (size > i) {
            for (File file : c.subList(i, size)) {
                file.delete();
            }
        }
    }

    /* renamed from: a */
    public void m23912a(CrashlyticsReport.AbstractC7785d.AbstractC7792d dVar, String str, boolean z) {
        int i = this.f18331f.mo23783b().mo23773b().f18406a;
        File c = m23884c(str);
        try {
            m23881d(new File(c, m23913a(this.f18326a.getAndIncrement(), z)), f18323i.m23963a(dVar));
        } catch (IOException e) {
            C5192b a = C5192b.m24319a();
            a.m24316a("Could not persist event for session " + str, e);
        }
        m23909a(c, i);
    }

    /* renamed from: a */
    public void m23911a(CrashlyticsReport crashlyticsReport) {
        CrashlyticsReport.AbstractC7785d h = crashlyticsReport.mo7628h();
        if (h == null) {
            C5192b.m24319a().m24317a("Could not get session for report");
            return;
        }
        String g = h.mo7588g();
        try {
            File c = m23884c(g);
            m23887c(c);
            m23881d(new File(c, "report"), f18323i.m23962a(crashlyticsReport));
        } catch (IOException e) {
            C5192b a = C5192b.m24319a();
            a.m24316a("Could not persist report for session " + g, e);
        }
    }

    /* renamed from: a */
    public final void m23908a(File file, long j) {
        boolean z;
        List<File> a = m23903a(file, f18325k);
        if (a.isEmpty()) {
            C5192b.m24319a().m24317a("Session " + file.getName() + " has no events.");
            return;
        }
        Collections.sort(a);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z = false;
            for (File file2 : a) {
                try {
                    arrayList.add(f18323i.m23961a(m23882d(file2)));
                } catch (IOException e) {
                    C5192b.m24319a().m24316a("Could not add event to report for " + file2, e);
                }
                if (z || m23878e(file2.getName())) {
                    z = true;
                }
            }
        }
        if (arrayList.isEmpty()) {
            C5192b.m24319a().m24317a("Could not parse event files for session " + file.getName());
            return;
        }
        File file3 = new File(file, "user");
        String str = null;
        if (file3.isFile()) {
            try {
                str = m23882d(file3);
            } catch (IOException e2) {
                C5192b.m24319a().m24316a("Could not read user ID file in " + file.getName(), e2);
                str = null;
            }
        }
        m23905a(new File(file, "report"), z ? this.f18328c : this.f18329d, arrayList, j, z, str);
    }

    /* renamed from: a */
    public void m23900a(String str, long j) {
        for (File file : m23901a(str)) {
            C5192b a = C5192b.m24319a();
            a.m24317a("Finalizing report for session " + file.getName());
            m23908a(file, j);
            m23879e(file);
        }
        m23914a();
    }

    /* renamed from: a */
    public void m23899a(String str, CrashlyticsReport.AbstractC7781c cVar) {
        m23906a(new File(m23884c(str), "report"), this.f18330e, cVar, str);
    }

    /* renamed from: b */
    public void m23894b() {
        for (File file : m23888c()) {
            file.delete();
        }
    }

    /* renamed from: b */
    public void m23890b(String str) {
        FilenameFilter a = C5397a.m23920a(str);
        for (File file : m23895a(m23903a(this.f18328c, a), m23903a(this.f18330e, a), m23903a(this.f18329d, a))) {
            file.delete();
        }
    }

    /* renamed from: c */
    public final File m23884c(String str) {
        return new File(this.f18327b, str);
    }

    /* renamed from: c */
    public final List<File> m23888c() {
        return m23889b(m23895a(m23910a(this.f18328c), m23910a(this.f18330e)), m23910a(this.f18329d));
    }

    /* renamed from: d */
    public List<AbstractC5276o> m23883d() {
        List<File> c = m23888c();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(c.size());
        for (File file : m23888c()) {
            try {
                arrayList.add(AbstractC5276o.m24080a(f18323i.m23959b(m23882d(file)), file.getName()));
            } catch (IOException e) {
                C5192b a = C5192b.m24319a();
                a.m24316a("Could not load report file " + file + "; deleting", e);
                file.delete();
            }
        }
        return arrayList;
    }
}
