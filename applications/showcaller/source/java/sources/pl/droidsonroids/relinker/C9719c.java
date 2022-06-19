package pl.droidsonroids.relinker;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import pl.droidsonroids.relinker.C9714b;
import pl.droidsonroids.relinker.p346f.C9732i;
/* renamed from: pl.droidsonroids.relinker.c */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/c.class */
public class C9719c {

    /* renamed from: a */
    protected final Set<String> f40982a;

    /* renamed from: b */
    protected final C9714b.AbstractC9716b f40983b;

    /* renamed from: c */
    protected final C9714b.AbstractC9715a f40984c;

    /* renamed from: d */
    protected boolean f40985d;

    /* renamed from: e */
    protected boolean f40986e;

    /* renamed from: f */
    protected C9714b.AbstractC9718d f40987f;

    /* renamed from: pl.droidsonroids.relinker.c$a */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/c$a.class */
    public class RunnableC9720a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f40988d;

        /* renamed from: e */
        final /* synthetic */ String f40989e;

        /* renamed from: f */
        final /* synthetic */ String f40990f;

        /* renamed from: g */
        final /* synthetic */ C9714b.AbstractC9717c f40991g;

        RunnableC9720a(Context context, String str, String str2, C9714b.AbstractC9717c abstractC9717c) {
            C9719c.this = r4;
            this.f40988d = context;
            this.f40989e = str;
            this.f40990f = str2;
            this.f40991g = abstractC9717c;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C9719c.this.m20g(this.f40988d, this.f40989e, this.f40990f);
                this.f40991g.m29a();
            } catch (UnsatisfiedLinkError e) {
                this.f40991g.m28b(e);
            } catch (MissingLibraryException e2) {
                this.f40991g.m28b(e2);
            }
        }
    }

    /* renamed from: pl.droidsonroids.relinker.c$b */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/c$b.class */
    public class C9721b implements FilenameFilter {

        /* renamed from: a */
        final /* synthetic */ String f40993a;

        C9721b(String str) {
            C9719c.this = r4;
            this.f40993a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.f40993a);
        }
    }

    public C9719c() {
        this(new C9722d(), new C9712a());
    }

    protected C9719c(C9714b.AbstractC9716b abstractC9716b, C9714b.AbstractC9715a abstractC9715a) {
        this.f40982a = new HashSet();
        if (abstractC9716b != null) {
            if (abstractC9715a == null) {
                throw new IllegalArgumentException("Cannot pass null library installer");
            }
            this.f40983b = abstractC9716b;
            this.f40984c = abstractC9715a;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null library loader");
    }

    /* renamed from: g */
    public void m20g(Context context, String str, String str2) {
        Throwable th;
        if (this.f40982a.contains(str) && !this.f40985d) {
            m18i("%s already loaded previously!", str);
            return;
        }
        try {
            this.f40983b.mo17a(str);
            this.f40982a.add(str);
            m18i("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e) {
            m18i("Loading the library normally failed: %s", Log.getStackTraceString(e));
            m18i("%s (%s) was not loaded normally, re-linking...", str, str2);
            File m23d = m23d(context, str, str2);
            if (!m23d.exists() || this.f40985d) {
                if (this.f40985d) {
                    m18i("Forcing a re-link of %s (%s)...", str, str2);
                }
                m25b(context, str, str2);
                this.f40984c.mo30a(context, this.f40983b.mo14d(), this.f40983b.mo16b(str), m23d, this);
            }
            try {
                if (this.f40986e) {
                    C9732i c9732i = null;
                    try {
                        C9732i c9732i2 = new C9732i(m23d);
                        try {
                            List<String> m6f = c9732i2.m6f();
                            c9732i2.close();
                            for (String str3 : m6f) {
                                m22e(context, this.f40983b.mo15c(str3));
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            c9732i = c9732i2;
                            c9732i.close();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            } catch (IOException e2) {
            }
            this.f40983b.mo13e(m23d.getAbsolutePath());
            this.f40982a.add(str);
            m18i("%s (%s) was re-linked!", str, str2);
        }
    }

    /* renamed from: b */
    protected void m25b(Context context, String str, String str2) {
        File m24c = m24c(context);
        File m23d = m23d(context, str, str2);
        File[] listFiles = m24c.listFiles(new C9721b(this.f40983b.mo16b(str)));
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            if (this.f40985d || !file.getAbsolutePath().equals(m23d.getAbsolutePath())) {
                file.delete();
            }
        }
    }

    /* renamed from: c */
    protected File m24c(Context context) {
        return context.getDir("lib", 0);
    }

    /* renamed from: d */
    protected File m23d(Context context, String str, String str2) {
        String mo16b = this.f40983b.mo16b(str);
        if (C9723e.m12a(str2)) {
            return new File(m24c(context), mo16b);
        }
        File m24c = m24c(context);
        return new File(m24c, mo16b + "." + str2);
    }

    /* renamed from: e */
    public void m22e(Context context, String str) {
        m21f(context, str, null, null);
    }

    /* renamed from: f */
    public void m21f(Context context, String str, String str2, C9714b.AbstractC9717c abstractC9717c) {
        if (context != null) {
            if (C9723e.m12a(str)) {
                throw new IllegalArgumentException("Given library is either null or empty");
            }
            m18i("Beginning load of %s...", str);
            if (abstractC9717c == null) {
                m20g(context, str, str2);
                return;
            } else {
                new Thread(new RunnableC9720a(context, str, str2, abstractC9717c)).start();
                return;
            }
        }
        throw new IllegalArgumentException("Given context is null");
    }

    /* renamed from: h */
    public void m19h(String str) {
        C9714b.AbstractC9718d abstractC9718d = this.f40987f;
        if (abstractC9718d != null) {
            abstractC9718d.m27a(str);
        }
    }

    /* renamed from: i */
    public void m18i(String str, Object... objArr) {
        m19h(String.format(Locale.US, str, objArr));
    }
}
