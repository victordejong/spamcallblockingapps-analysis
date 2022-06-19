package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import android.database.SQLException;
import android.os.ConditionVariable;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1599d1.AbstractC24250b;
import p193e.p1577m.p1578a.p1596c.p1599d1.C24249a;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24789n;
/* renamed from: e.m.a.c.p1.h0.v */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/v.class */
public final class C24733v implements AbstractC24705c {

    /* renamed from: k */
    public static final HashSet<File> f69309k = new HashSet<>();

    /* renamed from: a */
    public final File f69310a;

    /* renamed from: b */
    public final AbstractC24714h f69311b;

    /* renamed from: c */
    public final C24723o f69312c;

    /* renamed from: d */
    public final C24716j f69313d;

    /* renamed from: e */
    public final HashMap<String, ArrayList<AbstractC24705c.AbstractC24707b>> f69314e;

    /* renamed from: f */
    public final Random f69315f;

    /* renamed from: g */
    public final boolean f69316g;

    /* renamed from: h */
    public long f69317h;

    /* renamed from: i */
    public long f69318i;

    /* renamed from: j */
    public AbstractC24705c.C24706a f69319j;

    public C24733v(File file, AbstractC24714h abstractC24714h, AbstractC24250b abstractC24250b) {
        boolean add;
        C24723o c24723o = new C24723o(abstractC24250b, file, null, false, false);
        C24716j c24716j = abstractC24250b != null ? new C24716j(abstractC24250b) : null;
        synchronized (C24733v.class) {
            try {
                add = f69309k.add(file.getAbsoluteFile());
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!add) {
            throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
        }
        this.f69310a = file;
        this.f69311b = abstractC24714h;
        this.f69312c = c24723o;
        this.f69313d = c24716j;
        this.f69314e = new HashMap<>();
        this.f69315f = new Random();
        this.f69316g = true;
        this.f69317h = -1L;
        ConditionVariable conditionVariable = new ConditionVariable();
        new C24732u(this, "SimpleCache.initialize()", conditionVariable).start();
        conditionVariable.block();
    }

    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: l */
    public static void m4700l(C24733v c24733v) {
        char c;
        if (!c24733v.f69310a.exists() && !c24733v.f69310a.mkdirs()) {
            StringBuilder m8728C = C22128a.m8728C("Failed to create cache directory: ");
            m8728C.append(c24733v.f69310a);
            c24733v.f69319j = new AbstractC24705c.C24706a(m8728C.toString());
            return;
        }
        File[] listFiles = c24733v.f69310a.listFiles();
        if (listFiles == null) {
            StringBuilder m8728C2 = C22128a.m8728C("Failed to list cache directory files: ");
            m8728C2.append(c24733v.f69310a);
            c24733v.f69319j = new AbstractC24705c.C24706a(m8728C2.toString());
            return;
        }
        int length = listFiles.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                c = 65535;
                break;
            }
            File file = listFiles[i];
            String name = file.getName();
            if (name.endsWith(".uid")) {
                try {
                    c = Long.parseLong(name.substring(0, name.indexOf(46)), 16);
                    break;
                } catch (NumberFormatException e) {
                    String str = "Malformed UID file: " + file;
                    file.delete();
                }
            }
            i++;
        }
        c24733v.f69317h = c;
        if (c == -1) {
            try {
                c24733v.f69317h = m4697o(c24733v.f69310a);
            } catch (IOException e2) {
                StringBuilder m8728C3 = C22128a.m8728C("Failed to create cache UID: ");
                m8728C3.append(c24733v.f69310a);
                String sb = m8728C3.toString();
                C24789n.m4576a(sb, e2);
                c24733v.f69319j = new AbstractC24705c.C24706a(sb, e2);
                return;
            }
        }
        try {
            c24733v.f69312c.m4737e(c24733v.f69317h);
            C24716j c24716j = c24733v.f69313d;
            if (c24716j != null) {
                c24716j.m4753b(c24733v.f69317h);
                Map<String, C24715i> m4754a = c24733v.f69313d.m4754a();
                c24733v.m4695q(c24733v.f69310a, true, listFiles, m4754a);
                c24733v.f69313d.m4752c(((HashMap) m4754a).keySet());
            } else {
                c24733v.m4695q(c24733v.f69310a, true, listFiles, null);
            }
            C24723o c24723o = c24733v.f69312c;
            int size = c24723o.f69281a.size();
            String[] strArr = new String[size];
            c24723o.f69281a.keySet().toArray(strArr);
            for (int i2 = 0; i2 < size; i2++) {
                c24723o.m4736f(strArr[i2]);
            }
            try {
                c24733v.f69312c.m4735g();
            } catch (IOException e3) {
                C24789n.m4576a("Storing index file failed", e3);
            }
        } catch (IOException e4) {
            StringBuilder m8728C4 = C22128a.m8728C("Failed to initialize cache indices: ");
            m8728C4.append(c24733v.f69310a);
            String sb2 = m8728C4.toString();
            C24789n.m4576a(sb2, e4);
            c24733v.f69319j = new AbstractC24705c.C24706a(sb2, e4);
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* renamed from: o */
    public static long m4697o(File file) throws IOException {
        long nextLong = new SecureRandom().nextLong();
        char abs = nextLong == Long.MIN_VALUE ? (char) 0 : Math.abs(nextLong);
        File file2 = new File(file, C22128a.m8543z2(Long.toString(abs, 16), ".uid"));
        if (file2.createNewFile()) {
            return abs;
        }
        throw new IOException("Failed to create UID file: " + file2);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c
    /* renamed from: a */
    public AbstractC24728q mo4711a(String str) {
        C24730s c24730s;
        synchronized (this) {
            C26232y.m2286x(true);
            C24722n c24722n = this.f69312c.f69281a.get(str);
            c24730s = c24722n != null ? c24722n.f69279d : C24730s.f69301c;
        }
        return c24730s;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c
    /* renamed from: b */
    public void mo4710b(String str, C24729r c24729r) throws AbstractC24705c.C24706a {
        synchronized (this) {
            C26232y.m2286x(true);
            m4698n();
            C24723o c24723o = this.f69312c;
            C24722n m4738d = c24723o.m4738d(str);
            C24730s c24730s = m4738d.f69279d;
            C24730s m4720a = c24730s.m4720a(c24729r);
            m4738d.f69279d = m4720a;
            if (!m4720a.equals(c24730s)) {
                c24723o.f69285e.mo4724g(m4738d);
            }
            try {
                this.f69312c.m4735g();
            } catch (IOException e) {
                throw new AbstractC24705c.C24706a(e);
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c
    /* renamed from: c */
    public void mo4709c(C24718l c24718l) {
        synchronized (this) {
            C26232y.m2286x(true);
            m4694r(c24718l);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c
    /* renamed from: d */
    public C24718l mo4708d(String str, long j) throws InterruptedException, AbstractC24705c.C24706a {
        C24718l mo4703i;
        synchronized (this) {
            C26232y.m2286x(true);
            m4698n();
            while (true) {
                mo4703i = mo4703i(str, j);
                if (mo4703i == null) {
                    wait();
                }
            }
        }
        return mo4703i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c
    /* renamed from: e */
    public File mo4707e(String str, long j, long j2) throws AbstractC24705c.C24706a {
        File m4690d;
        synchronized (this) {
            C26232y.m2286x(true);
            m4698n();
            C24722n c24722n = this.f69312c.f69281a.get(str);
            Objects.requireNonNull(c24722n);
            C26232y.m2286x(c24722n.f69280e);
            if (!this.f69310a.exists()) {
                this.f69310a.mkdirs();
                m4693s();
            }
            this.f69311b.mo4716b(this, str, j, j2);
            File file = new File(this.f69310a, Integer.toString(this.f69315f.nextInt(10)));
            if (!file.exists()) {
                file.mkdir();
            }
            m4690d = C24734w.m4690d(file, c24722n.f69276a, j, System.currentTimeMillis());
        }
        return m4690d;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c
    /* renamed from: f */
    public long mo4706f(String str, long j, long j2) {
        char m4743a;
        synchronized (this) {
            C26232y.m2286x(true);
            C24722n c24722n = this.f69312c.f69281a.get(str);
            m4743a = c24722n != null ? c24722n.m4743a(j, j2) : -j2;
        }
        return m4743a;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c
    /* renamed from: g */
    public long mo4705g() {
        long j;
        synchronized (this) {
            C26232y.m2286x(true);
            j = this.f69318i;
        }
        return j;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c
    /* renamed from: h */
    public void mo4704h(C24718l c24718l) {
        synchronized (this) {
            C26232y.m2286x(true);
            C24722n m4739c = this.f69312c.m4739c(c24718l.f69266a);
            Objects.requireNonNull(m4739c);
            C26232y.m2286x(m4739c.f69280e);
            m4739c.f69280e = false;
            this.f69312c.m4736f(m4739c.f69277b);
            notifyAll();
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c
    /* renamed from: i */
    public C24718l mo4703i(String str, long j) throws AbstractC24705c.C24706a {
        C24734w c24734w;
        synchronized (this) {
            C26232y.m2286x(true);
            m4698n();
            C24722n c24722n = this.f69312c.f69281a.get(str);
            if (c24722n != null) {
                while (true) {
                    c24734w = c24722n.m4742b(j);
                    if (!c24734w.f69269d || c24734w.f69270e.length() == c24734w.f69268c) {
                        break;
                    }
                    m4693s();
                }
            } else {
                c24734w = new C24734w(str, j, -1L, -9223372036854775807L, null);
            }
            if (c24734w.f69269d) {
                return m4692t(str, c24734w);
            }
            C24722n m4738d = this.f69312c.m4738d(str);
            if (m4738d.f69280e) {
                return null;
            }
            m4738d.f69280e = true;
            return c24734w;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c
    /* renamed from: j */
    public void mo4702j(File file, long j) throws AbstractC24705c.C24706a {
        synchronized (this) {
            boolean z = true;
            C26232y.m2286x(true);
            if (!file.exists()) {
                return;
            }
            if (j == 0) {
                file.delete();
                return;
            }
            C24734w m4691c = C24734w.m4691c(file, j, -9223372036854775807L, this.f69312c);
            Objects.requireNonNull(m4691c);
            C24722n m4739c = this.f69312c.m4739c(m4691c.f69266a);
            Objects.requireNonNull(m4739c);
            C26232y.m2286x(m4739c.f69280e);
            long m4722a = C24727p.m4722a(m4739c.f69279d);
            if (m4722a != -1) {
                if (m4691c.f69267b + m4691c.f69268c > m4722a) {
                    z = false;
                }
                C26232y.m2286x(z);
            }
            if (this.f69313d != null) {
                try {
                    this.f69313d.m4751d(file.getName(), m4691c.f69268c, m4691c.f69271f);
                } catch (IOException e) {
                    throw new AbstractC24705c.C24706a(e);
                }
            }
            m4699m(m4691c);
            try {
                this.f69312c.m4735g();
                notifyAll();
            } catch (IOException e2) {
                throw new AbstractC24705c.C24706a(e2);
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c
    /* renamed from: k */
    public NavigableSet<C24718l> mo4701k(String str) {
        TreeSet treeSet;
        synchronized (this) {
            C26232y.m2286x(true);
            C24722n c24722n = this.f69312c.f69281a.get(str);
            if (c24722n != null && !c24722n.f69278c.isEmpty()) {
                treeSet = new TreeSet((Collection) c24722n.f69278c);
            }
            treeSet = new TreeSet();
        }
        return treeSet;
    }

    /* renamed from: m */
    public final void m4699m(C24734w c24734w) {
        this.f69312c.m4738d(c24734w.f69266a).f69278c.add(c24734w);
        this.f69318i += c24734w.f69268c;
        ArrayList<AbstractC24705c.AbstractC24707b> arrayList = this.f69314e.get(c24734w.f69266a);
        if (arrayList != null) {
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                arrayList.get(size).mo4717a(this, c24734w);
            }
        }
        this.f69311b.mo4717a(this, c24734w);
    }

    /* renamed from: n */
    public void m4698n() throws AbstractC24705c.C24706a {
        synchronized (this) {
            AbstractC24705c.C24706a c24706a = this.f69319j;
            if (c24706a != null) {
                throw c24706a;
            }
        }
    }

    /* renamed from: p */
    public Set<String> m4696p() {
        HashSet hashSet;
        synchronized (this) {
            C26232y.m2286x(true);
            hashSet = new HashSet(this.f69312c.f69281a.keySet());
        }
        return hashSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: q */
    public final void m4695q(File file, boolean z, File[] fileArr, Map<String, C24715i> map) {
        if (fileArr == null || fileArr.length == 0) {
            if (z) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z && name.indexOf(46) == -1) {
                m4695q(file2, false, file2.listFiles(), map);
            } else if (!z || (!name.startsWith("cached_content_index.exi") && !name.endsWith(".uid"))) {
                ?? r15 = true;
                ?? r17 = true;
                C24715i remove = map != null ? map.remove(name) : null;
                if (remove != null) {
                    r15 = remove.f69261a;
                    r17 = remove.f69262b;
                }
                C24734w m4691c = C24734w.m4691c(file2, r15 == true ? 1L : 0L, r17 == true ? 1L : 0L, this.f69312c);
                if (m4691c != null) {
                    m4699m(m4691c);
                } else {
                    file2.delete();
                }
            }
        }
    }

    /* renamed from: r */
    public final void m4694r(C24718l c24718l) {
        boolean z;
        C24722n m4739c = this.f69312c.m4739c(c24718l.f69266a);
        if (m4739c != null) {
            if (m4739c.f69278c.remove(c24718l)) {
                c24718l.f69270e.delete();
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return;
            }
            this.f69318i -= c24718l.f69268c;
            if (this.f69313d != null) {
                String name = c24718l.f69270e.getName();
                try {
                    C24716j c24716j = this.f69313d;
                    Objects.requireNonNull(c24716j.f69265b);
                    try {
                        c24716j.f69264a.getWritableDatabase().delete(c24716j.f69265b, "name = ?", new String[]{name});
                    } catch (SQLException e) {
                        throw new C24249a(e);
                    }
                } catch (IOException e2) {
                }
            }
            this.f69312c.m4736f(m4739c.f69277b);
            ArrayList<AbstractC24705c.AbstractC24707b> arrayList = this.f69314e.get(c24718l.f69266a);
            if (arrayList != null) {
                int size = arrayList.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    arrayList.get(size).mo4714d(this, c24718l);
                }
            }
            this.f69311b.mo4714d(this, c24718l);
        }
    }

    /* renamed from: s */
    public final void m4693s() {
        ArrayList arrayList = new ArrayList();
        for (C24722n c24722n : this.f69312c.f69281a.values()) {
            Iterator<C24734w> it = c24722n.f69278c.iterator();
            while (it.hasNext()) {
                C24734w next = it.next();
                if (next.f69270e.length() != next.f69268c) {
                    arrayList.add(next);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            m4694r((C24718l) arrayList.get(i));
        }
    }

    /* renamed from: t */
    public final C24734w m4692t(String str, C24734w c24734w) {
        if (!this.f69316g) {
            return c24734w;
        }
        File file = c24734w.f69270e;
        Objects.requireNonNull(file);
        String name = file.getName();
        long j = c24734w.f69268c;
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = false;
        C24716j c24716j = this.f69313d;
        if (c24716j != null) {
            try {
                c24716j.m4751d(name, j, currentTimeMillis);
            } catch (IOException e) {
            }
        } else {
            z = true;
        }
        C24722n c24722n = this.f69312c.f69281a.get(str);
        C26232y.m2286x(c24722n.f69278c.remove(c24734w));
        File file2 = c24734w.f69270e;
        if (z) {
            File m4690d = C24734w.m4690d(file2.getParentFile(), c24722n.f69276a, c24734w.f69267b, currentTimeMillis);
            if (file2.renameTo(m4690d)) {
                file2 = m4690d;
            } else {
                String str2 = "Failed to rename " + file2 + " to " + m4690d;
            }
        }
        C26232y.m2286x(c24734w.f69269d);
        C24734w c24734w2 = new C24734w(c24734w.f69266a, c24734w.f69267b, c24734w.f69268c, currentTimeMillis, file2);
        c24722n.f69278c.add(c24734w2);
        ArrayList<AbstractC24705c.AbstractC24707b> arrayList = this.f69314e.get(c24734w.f69266a);
        if (arrayList != null) {
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                arrayList.get(size).mo4713e(this, c24734w, c24734w2);
            }
        }
        this.f69311b.mo4713e(this, c24734w, c24734w2);
        return c24734w2;
    }
}
