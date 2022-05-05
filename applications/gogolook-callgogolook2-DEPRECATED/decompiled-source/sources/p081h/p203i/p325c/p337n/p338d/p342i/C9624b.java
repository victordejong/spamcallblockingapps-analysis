package p081h.p203i.p325c.p337n.p338d.p342i;

import android.content.Context;
import androidx.annotation.Nullable;
import java.io.File;
import java.util.Set;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p341h.C9546h;
/* renamed from: h.i.c.n.d.i.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/i/b.class */
public class C9624b {

    /* renamed from: d */
    public static final C9627c f21927d = new C9627c();

    /* renamed from: a */
    public final Context f21928a;

    /* renamed from: b */
    public final AbstractC9626b f21929b;

    /* renamed from: c */
    public AbstractC9623a f21930c;

    /* renamed from: h.i.c.n.d.i.b$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/i/b$b.class */
    public interface AbstractC9626b {
        /* renamed from: a */
        File mo14671a();
    }

    /* renamed from: h.i.c.n.d.i.b$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/i/b$c.class */
    public static final class C9627c implements AbstractC9623a {
        public C9627c() {
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p342i.AbstractC9623a
        /* renamed from: a */
        public void mo14645a() {
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p342i.AbstractC9623a
        /* renamed from: a */
        public void mo14644a(long j, String str) {
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p342i.AbstractC9623a
        /* renamed from: b */
        public String mo14643b() {
            return null;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p342i.AbstractC9623a
        /* renamed from: c */
        public byte[] mo14641c() {
            return null;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p342i.AbstractC9623a
        /* renamed from: d */
        public void mo14640d() {
        }
    }

    public C9624b(Context context, AbstractC9626b bVar) {
        this(context, bVar, null);
    }

    public C9624b(Context context, AbstractC9626b bVar, String str) {
        this.f21928a = context;
        this.f21929b = bVar;
        this.f21930c = f21927d;
        m14673b(str);
    }

    /* renamed from: a */
    public final File m14676a(String str) {
        return new File(this.f21929b.mo14671a(), "crashlytics-userlog-" + str + ".temp");
    }

    /* renamed from: a */
    public final String m14678a(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(".temp");
        return lastIndexOf == -1 ? name : name.substring(20, lastIndexOf);
    }

    /* renamed from: a */
    public void m14680a() {
        this.f21930c.mo14640d();
    }

    /* renamed from: a */
    public void m14679a(long j, String str) {
        this.f21930c.mo14644a(j, str);
    }

    /* renamed from: a */
    public void m14677a(File file, int i) {
        this.f21930c = new C9633d(file, i);
    }

    /* renamed from: a */
    public void m14675a(Set<String> set) {
        File[] listFiles = this.f21929b.mo14671a().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (!set.contains(m14678a(file))) {
                    file.delete();
                }
            }
        }
    }

    /* renamed from: b */
    public final void m14673b(String str) {
        this.f21930c.mo14645a();
        this.f21930c = f21927d;
        if (str != null) {
            if (!C9546h.m14936a(this.f21928a, "com.crashlytics.CollectCustomLogs", true)) {
                C9513b.m15015a().m15013a("Preferences requested no custom logs. Aborting log file creation.");
            } else {
                m14677a(m14676a(str), 65536);
            }
        }
    }

    /* renamed from: b */
    public byte[] m14674b() {
        return this.f21930c.mo14641c();
    }

    @Nullable
    /* renamed from: c */
    public String m14672c() {
        return this.f21930c.mo14643b();
    }
}
