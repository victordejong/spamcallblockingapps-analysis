package com.google.firebase.crashlytics.p293d.p300j;

import com.google.firebase.crashlytics.internal.common.AbstractC9115n;
import com.google.firebase.crashlytics.internal.settings.AbstractC9136d;
import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import com.google.firebase.crashlytics.p293d.p297h.C9043w;
import com.google.firebase.crashlytics.p293d.p297h.p298x.C9051h;
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
/* renamed from: com.google.firebase.crashlytics.d.j.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/j/g.class */
public class C9062g {

    /* renamed from: a */
    private static final Charset f39214a = Charset.forName("UTF-8");

    /* renamed from: b */
    private static final int f39215b = 15;

    /* renamed from: c */
    private static final C9051h f39216c = new C9051h();

    /* renamed from: d */
    private static final Comparator<? super File> f39217d = C9060e.m2033a();

    /* renamed from: e */
    private static final FilenameFilter f39218e = C9061f.m2032a();

    /* renamed from: f */
    private final AtomicInteger f39219f = new AtomicInteger(0);

    /* renamed from: g */
    private final File f39220g;

    /* renamed from: h */
    private final File f39221h;

    /* renamed from: i */
    private final File f39222i;

    /* renamed from: j */
    private final File f39223j;

    /* renamed from: k */
    private final AbstractC9136d f39224k;

    public C9062g(File file, AbstractC9136d abstractC9136d) {
        File file2 = new File(file, "report-persistence");
        this.f39220g = new File(file2, "sessions");
        this.f39221h = new File(file2, "priority-reports");
        this.f39222i = new File(file2, "reports");
        this.f39223j = new File(file2, "native-reports");
        this.f39224k = abstractC9136d;
    }

    /* renamed from: A */
    private static boolean m2031A(File file) {
        return file.exists() || file.mkdirs();
    }

    /* renamed from: B */
    public static int m2030B(File file, File file2) {
        return m2005n(file.getName()).compareTo(m2005n(file2.getName()));
    }

    /* renamed from: E */
    private static File m2027E(File file) {
        if (m2031A(file)) {
            return file;
        }
        throw new IOException("Could not create directory " + file);
    }

    /* renamed from: F */
    private static String m2026F(File file) {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), f39214a);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        }
    }

    /* renamed from: G */
    private static void m2025G(File file) {
        if (file == null) {
            return;
        }
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                m2025G(file2);
            }
        }
        file.delete();
    }

    /* renamed from: H */
    private static List<File> m2024H(List<File>... listArr) {
        for (List<File> list : listArr) {
            Collections.sort(list, f39217d);
        }
        return m2013f(listArr);
    }

    /* renamed from: I */
    private static void m2023I(File file, File file2, AbstractC9004v.AbstractC9008c abstractC9008c, String str) {
        try {
            C9051h c9051h = f39216c;
            m2019M(new File(m2027E(file2), str), c9051h.m2073E(c9051h.m2074D(m2026F(file)).m2298m(abstractC9008c)));
        } catch (IOException e) {
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2391l("Could not synthesize final native report file for " + file, e);
        }
    }

    /* renamed from: J */
    private void m2022J(File file, long j) {
        boolean z;
        List<File> m2003p = m2003p(file, f39218e);
        if (m2003p.isEmpty()) {
            C8898b.m2397f().m2394i("Session " + file.getName() + " has no events.");
            return;
        }
        Collections.sort(m2003p);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z = false;
            for (File file2 : m2003p) {
                try {
                    arrayList.add(f39216c.m2065h(m2026F(file2)));
                } catch (IOException e) {
                    C8898b.m2397f().m2391l("Could not add event to report for " + file2, e);
                }
                if (z || m2000s(file2.getName())) {
                    z = true;
                }
            }
        }
        if (arrayList.isEmpty()) {
            C8898b.m2397f().m2392k("Could not parse event files for session " + file.getName());
            return;
        }
        File file3 = new File(file, "user");
        String str = null;
        if (file3.isFile()) {
            try {
                str = m2026F(file3);
            } catch (IOException e2) {
                C8898b.m2397f().m2391l("Could not read user ID file in " + file.getName(), e2);
                str = null;
            }
        }
        m2021K(new File(file, "report"), z ? this.f39221h : this.f39222i, arrayList, j, z, str);
    }

    /* renamed from: K */
    private static void m2021K(File file, File file2, List<AbstractC9004v.AbstractC9012d.AbstractC9019d> list, long j, boolean z, String str) {
        try {
            C9051h c9051h = f39216c;
            AbstractC9004v m2299l = c9051h.m2074D(m2026F(file)).m2297n(j, z, str).m2299l(C9043w.m2086c(list));
            AbstractC9004v.AbstractC9012d mo2301j = m2299l.mo2301j();
            if (mo2301j == null) {
                return;
            }
            m2019M(new File(m2027E(file2), mo2301j.mo2262h()), c9051h.m2073E(m2299l));
        } catch (IOException e) {
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2391l("Could not synthesize final report file for " + file, e);
        }
    }

    /* renamed from: L */
    private static int m2020L(File file, int i) {
        List<File> m2003p = m2003p(file, C9058c.m2035a());
        Collections.sort(m2003p, C9059d.m2034a());
        return m2015d(m2003p, i);
    }

    /* renamed from: M */
    private static void m2019M(File file, String str) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f39214a);
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

    /* renamed from: c */
    private List<File> m2016c(String str) {
        List<File> m2004o = m2004o(this.f39220g, C9057b.m2036a(str));
        Collections.sort(m2004o, f39217d);
        if (m2004o.size() <= 8) {
            return m2004o;
        }
        for (File file : m2004o.subList(8, m2004o.size())) {
            m2025G(file);
        }
        return m2004o.subList(0, 8);
    }

    /* renamed from: d */
    private static int m2015d(List<File> list, int i) {
        int size = list.size();
        for (File file : list) {
            if (size <= i) {
                return size;
            }
            m2025G(file);
            size--;
        }
        return size;
    }

    /* renamed from: e */
    private void m2014e() {
        int i = this.f39224k.mo1735b().mo1726b().f39438b;
        List<File> m2006m = m2006m();
        int size = m2006m.size();
        if (size <= i) {
            return;
        }
        for (File file : m2006m.subList(i, size)) {
            file.delete();
        }
    }

    /* renamed from: f */
    private static List<File> m2013f(List<File>... listArr) {
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

    /* renamed from: k */
    private static String m2008k(int i, boolean z) {
        String format = String.format(Locale.US, "%010d", Integer.valueOf(i));
        String str = z ? "_" : "";
        return "event" + format + str;
    }

    /* renamed from: l */
    private static List<File> m2007l(File file) {
        return m2004o(file, null);
    }

    /* renamed from: m */
    private List<File> m2006m() {
        return m2024H(m2013f(m2007l(this.f39221h), m2007l(this.f39223j)), m2007l(this.f39222i));
    }

    /* renamed from: n */
    private static String m2005n(String str) {
        return str.substring(0, f39215b);
    }

    /* renamed from: o */
    private static List<File> m2004o(File file, FileFilter fileFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    /* renamed from: p */
    private static List<File> m2003p(File file, FilenameFilter filenameFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = filenameFilter == null ? file.listFiles() : file.listFiles(filenameFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    /* renamed from: q */
    private File m2002q(String str) {
        return new File(this.f39220g, str);
    }

    /* renamed from: s */
    private static boolean m2000s(String str) {
        return str.startsWith("event") && str.endsWith("_");
    }

    /* renamed from: t */
    public static boolean m1999t(File file, String str) {
        return str.startsWith("event") && !str.endsWith("_");
    }

    /* renamed from: u */
    public static /* synthetic */ boolean m1998u(String str, File file) {
        return file.isDirectory() && !file.getName().equals(str);
    }

    /* renamed from: C */
    public void m2029C(AbstractC9004v.AbstractC9012d.AbstractC9019d abstractC9019d, String str, boolean z) {
        int i = this.f39224k.mo1735b().mo1726b().f39437a;
        File m2002q = m2002q(str);
        try {
            m2019M(new File(m2002q, m2008k(this.f39219f.getAndIncrement(), z)), f39216c.m2064i(abstractC9019d));
        } catch (IOException e) {
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2391l("Could not persist event for session " + str, e);
        }
        m2020L(m2002q, i);
    }

    /* renamed from: D */
    public void m2028D(AbstractC9004v abstractC9004v) {
        AbstractC9004v.AbstractC9012d mo2301j = abstractC9004v.mo2301j();
        if (mo2301j == null) {
            C8898b.m2397f().m2401b("Could not get session for report");
            return;
        }
        String mo2262h = mo2301j.mo2262h();
        try {
            File m2027E = m2027E(m2002q(mo2262h));
            m2019M(new File(m2027E, "report"), f39216c.m2073E(abstractC9004v));
        } catch (IOException e) {
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2400c("Could not persist report for session " + mo2262h, e);
        }
    }

    /* renamed from: g */
    public void m2012g() {
        for (File file : m2006m()) {
            file.delete();
        }
    }

    /* renamed from: h */
    public void m2011h(String str) {
        FilenameFilter m2037a = C9056a.m2037a(str);
        for (File file : m2013f(m2003p(this.f39221h, m2037a), m2003p(this.f39223j, m2037a), m2003p(this.f39222i, m2037a))) {
            file.delete();
        }
    }

    /* renamed from: i */
    public void m2010i(String str, long j) {
        for (File file : m2016c(str)) {
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2394i("Finalizing report for session " + file.getName());
            m2022J(file, j);
            m2025G(file);
        }
        m2014e();
    }

    /* renamed from: j */
    public void m2009j(String str, AbstractC9004v.AbstractC9008c abstractC9008c) {
        m2023I(new File(m2002q(str), "report"), this.f39223j, abstractC9008c, str);
    }

    /* renamed from: r */
    public boolean m2001r() {
        return !m2006m().isEmpty();
    }

    /* renamed from: y */
    public List<String> m1994y() {
        List<File> m2007l = m2007l(this.f39220g);
        Collections.sort(m2007l, f39217d);
        ArrayList arrayList = new ArrayList();
        for (File file : m2007l) {
            arrayList.add(file.getName());
        }
        return arrayList;
    }

    /* renamed from: z */
    public List<AbstractC9115n> m1993z() {
        List<File> m2006m = m2006m();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(m2006m.size());
        for (File file : m2006m()) {
            try {
                arrayList.add(AbstractC9115n.m1802a(f39216c.m2074D(m2026F(file)), file.getName()));
            } catch (IOException e) {
                C8898b m2397f = C8898b.m2397f();
                m2397f.m2391l("Could not load report file " + file + "; deleting", e);
                file.delete();
            }
        }
        return arrayList;
    }
}
