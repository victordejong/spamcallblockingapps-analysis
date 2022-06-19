package com.getkeepsafe.relinker;

import android.content.Context;
import android.util.Log;
import com.getkeepsafe.relinker.C1237b;
import com.getkeepsafe.relinker.p061f.C1250i;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* renamed from: com.getkeepsafe.relinker.c */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/c.class */
public class C1242c {

    /* renamed from: a */
    protected final Set<String> f5095a;

    /* renamed from: b */
    protected final C1237b.AbstractC1239b f5096b;

    /* renamed from: c */
    protected final C1237b.AbstractC1238a f5097c;

    /* renamed from: d */
    protected boolean f5098d;

    /* renamed from: e */
    protected boolean f5099e;

    /* renamed from: f */
    protected C1237b.AbstractC1241d f5100f;

    /* renamed from: com.getkeepsafe.relinker.c$a */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/c$a.class */
    public class RunnableC1243a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Context f5101b;

        /* renamed from: c */
        final /* synthetic */ String f5102c;

        /* renamed from: d */
        final /* synthetic */ String f5103d;

        /* renamed from: e */
        final /* synthetic */ C1237b.AbstractC1240c f5104e;

        RunnableC1243a(Context context, String str, String str2, C1237b.AbstractC1240c abstractC1240c) {
            C1242c.this = r4;
            this.f5101b = context;
            this.f5102c = str;
            this.f5103d = str2;
            this.f5104e = abstractC1240c;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C1242c.this.m9456g(this.f5101b, this.f5102c, this.f5103d);
                this.f5104e.m9465a();
            } catch (MissingLibraryException | UnsatisfiedLinkError e) {
                this.f5104e.m9464b(e);
            }
        }
    }

    /* renamed from: com.getkeepsafe.relinker.c$b */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/c$b.class */
    public class C1244b implements FilenameFilter {

        /* renamed from: a */
        final /* synthetic */ String f5106a;

        C1244b(C1242c c1242c, String str) {
            this.f5106a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.f5106a);
        }
    }

    public C1242c() {
        this(new d(), new a());
    }

    protected C1242c(C1237b.AbstractC1239b abstractC1239b, C1237b.AbstractC1238a abstractC1238a) {
        this.f5095a = new HashSet();
        if (abstractC1239b != null) {
            if (abstractC1238a == null) {
                throw new IllegalArgumentException("Cannot pass null library installer");
            }
            this.f5096b = abstractC1239b;
            this.f5097c = abstractC1238a;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null library loader");
    }

    /* renamed from: g */
    public void m9456g(Context context, String str, String str2) {
        C1250i c1250i;
        Throwable th;
        if (this.f5095a.contains(str) && !this.f5098d) {
            m9454i("%s already loaded previously!", str);
            return;
        }
        try {
            this.f5096b.m9470a(str);
            this.f5095a.add(str);
            m9454i("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e) {
            m9454i("Loading the library normally failed: %s", Log.getStackTraceString(e));
            m9454i("%s (%s) was not loaded normally, re-linking...", str, str2);
            File m9459d = m9459d(context, str, str2);
            if (!m9459d.exists() || this.f5098d) {
                if (this.f5098d) {
                    m9454i("Forcing a re-link of %s (%s)...", str, str2);
                }
                m9461b(context, str, str2);
                this.f5097c.m9471a(context, this.f5096b.m9467d(), this.f5096b.m9469b(str), m9459d, this);
            }
            try {
                if (this.f5099e) {
                    try {
                        c1250i = new C1250i(m9459d);
                        try {
                            List<String> m9441x = c1250i.m9441x();
                            c1250i.close();
                            for (String str3 : m9441x) {
                                m9458e(context, this.f5096b.m9468c(str3));
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            c1250i.close();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        c1250i = null;
                    }
                }
            } catch (IOException e2) {
            }
            this.f5096b.m9466e(m9459d.getAbsolutePath());
            this.f5095a.add(str);
            m9454i("%s (%s) was re-linked!", str, str2);
        }
    }

    /* renamed from: b */
    protected void m9461b(Context context, String str, String str2) {
        File m9460c = m9460c(context);
        File m9459d = m9459d(context, str, str2);
        File[] listFiles = m9460c.listFiles(new C1244b(this, this.f5096b.m9469b(str)));
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            if (this.f5098d || !file.getAbsolutePath().equals(m9459d.getAbsolutePath())) {
                file.delete();
            }
        }
    }

    /* renamed from: c */
    protected File m9460c(Context context) {
        return context.getDir("lib", 0);
    }

    /* renamed from: d */
    protected File m9459d(Context context, String str, String str2) {
        String m9469b = this.f5096b.m9469b(str);
        if (C1245e.m9453a(str2)) {
            return new File(m9460c(context), m9469b);
        }
        File m9460c = m9460c(context);
        return new File(m9460c, m9469b + "." + str2);
    }

    /* renamed from: e */
    public void m9458e(Context context, String str) {
        m9457f(context, str, null, null);
    }

    /* renamed from: f */
    public void m9457f(Context context, String str, String str2, C1237b.AbstractC1240c abstractC1240c) {
        if (context != null) {
            if (C1245e.m9453a(str)) {
                throw new IllegalArgumentException("Given library is either null or empty");
            }
            m9454i("Beginning load of %s...", str);
            if (abstractC1240c == null) {
                m9456g(context, str, str2);
                return;
            } else {
                new Thread(new RunnableC1243a(context, str, str2, abstractC1240c)).start();
                return;
            }
        }
        throw new IllegalArgumentException("Given context is null");
    }

    /* renamed from: h */
    public void m9455h(String str) {
        C1237b.AbstractC1241d abstractC1241d = this.f5100f;
        if (abstractC1241d != null) {
            abstractC1241d.m9463a(str);
        }
    }

    /* renamed from: i */
    public void m9454i(String str, Object... objArr) {
        m9455h(String.format(Locale.US, str, objArr));
    }
}
