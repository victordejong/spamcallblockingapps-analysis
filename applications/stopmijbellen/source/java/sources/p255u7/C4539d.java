package p255u7;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import java.util.Random;
import p291y.C4951d;
/* renamed from: u7.d */
/* loaded from: classes2-dex2jar.jar:u7/d.class */
public class C4539d {

    /* renamed from: i */
    public static String f13952i = "MD5";

    /* renamed from: j */
    public static MessageDigest f13953j;

    /* renamed from: a */
    public boolean f13954a;

    /* renamed from: e */
    public File f13958e;

    /* renamed from: f */
    public long f13959f;

    /* renamed from: h */
    public boolean f13961h;

    /* renamed from: b */
    public Random f13955b = new Random();

    /* renamed from: c */
    public long f13956c = 4096;

    /* renamed from: g */
    public Comparator<File> f13960g = new C4540a(this);

    /* renamed from: d */
    public C4542c f13957d = new C4542c();

    /* renamed from: u7.d$a */
    /* loaded from: classes2-dex2jar.jar:u7/d$a.class */
    public class C4540a implements Comparator<File> {
        public C4540a(C4539d c4539d) {
        }

        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            long lastModified = file.lastModified();
            long lastModified2 = file2.lastModified();
            return lastModified < lastModified2 ? -1 : lastModified2 > lastModified ? 1 : 0;
        }
    }

    /* renamed from: u7.d$b */
    /* loaded from: classes2-dex2jar.jar:u7/d$b.class */
    public class C4541b {

        /* renamed from: a */
        public final long f13962a;

        public C4541b(C4539d c4539d, File file) {
            this.f13962a = file.length();
        }
    }

    /* renamed from: u7.d$c */
    /* loaded from: classes2-dex2jar.jar:u7/d$c.class */
    public class C4542c extends C4544f<String, C4541b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4542c() {
            super(r5.f13959f);
            C4539d.this = r5;
        }

        @Override // p255u7.C4544f
        /* renamed from: a */
        public void mo138a(boolean z, String str, C4541b c4541b, C4541b c4541b2) {
            String str2 = str;
            if (c4541b2 == null && !C4539d.this.f13961h) {
                new File(C4539d.this.f13958e, str2).delete();
            }
        }

        @Override // p255u7.C4544f
        /* renamed from: e */
        public long mo137e(String str, C4541b c4541b) {
            return Math.max(C4539d.this.f13956c, c4541b.f13962a);
        }
    }

    static {
        MessageDigest messageDigest;
        try {
            f13953j = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            if ("MD5".equals(f13952i)) {
                loop0: for (Provider provider : Security.getProviders()) {
                    for (Provider.Service service : provider.getServices()) {
                        String algorithm = service.getAlgorithm();
                        f13952i = algorithm;
                        try {
                            messageDigest = MessageDigest.getInstance(algorithm);
                        } catch (NoSuchAlgorithmException e2) {
                        }
                        if (messageDigest != null) {
                            break loop0;
                        }
                    }
                }
            }
            messageDigest = null;
            f13953j = messageDigest;
            if (messageDigest == null) {
                throw new RuntimeException(e);
            }
        }
        try {
            f13953j = (MessageDigest) f13953j.clone();
        } catch (CloneNotSupportedException e3) {
        }
    }

    public C4539d(File file, long j, boolean z) {
        this.f13958e = file;
        this.f13959f = j;
        this.f13954a = z;
        file.mkdirs();
        if (this.f13954a) {
            new C4543e(this).start();
        } else {
            m854d();
        }
    }

    /* renamed from: f */
    public static String m852f(Object... objArr) {
        String bigInteger;
        synchronized (C4539d.class) {
            try {
                f13953j.reset();
                for (Object obj : objArr) {
                    f13953j.update(obj.toString().getBytes());
                }
                bigInteger = new BigInteger(1, f13953j.digest()).toString(16);
            } catch (Throwable th) {
                throw th;
            }
        }
        return bigInteger;
    }

    /* renamed from: a */
    public FileInputStream[] m857a(String str, int i) throws IOException {
        FileInputStream[] fileInputStreamArr = new FileInputStream[i];
        for (int i2 = 0; i2 < i; i2++) {
            try {
                File m856b = m856b(str, i2);
                this.f13957d.m851b(m856b.getName());
                m856b.setLastModified(System.currentTimeMillis());
                fileInputStreamArr[i2] = new FileInputStream(m856b);
            } catch (IOException e) {
                for (int i3 = 0; i3 < i; i3++) {
                    C4951d.m198e(fileInputStreamArr[i3]);
                }
                m853e(str);
                throw e;
            }
        }
        return fileInputStreamArr;
    }

    /* renamed from: b */
    public File m856b(String str, int i) {
        return new File(this.f13958e, m855c(str, i));
    }

    /* renamed from: c */
    public String m855c(String str, int i) {
        return str + "." + i;
    }

    /* renamed from: d */
    public void m854d() {
        this.f13961h = true;
        try {
            File[] listFiles = this.f13958e.listFiles();
            if (listFiles == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, listFiles);
            Collections.sort(arrayList, this.f13960g);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                File file = (File) it2.next();
                String name = file.getName();
                this.f13957d.m850c(name, new C4541b(this, file));
                this.f13957d.m851b(name);
            }
        } finally {
            this.f13961h = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public void m853e(String str) {
        Object remove;
        int i;
        int i2 = 0;
        while (true) {
            C4542c c4542c = this.f13957d;
            String m855c = m855c(str, i2);
            Objects.requireNonNull(c4542c);
            Objects.requireNonNull(m855c, "key == null");
            synchronized (c4542c) {
                remove = c4542c.f13965a.remove(m855c);
                if (remove != null) {
                    c4542c.f13966b -= c4542c.m849d(m855c, remove);
                }
            }
            if (remove != null) {
                c4542c.mo138a(false, m855c, remove, null);
            }
            i = 0;
            if (remove != null) {
                i2++;
            }
        }
        while (true) {
            File m856b = m856b(str, i);
            if (m856b.exists()) {
                m856b.delete();
                i++;
            } else {
                return;
            }
        }
    }
}
