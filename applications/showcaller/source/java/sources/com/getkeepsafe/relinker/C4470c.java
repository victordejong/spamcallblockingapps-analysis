package com.getkeepsafe.relinker;

import android.content.Context;
import android.util.Log;
import com.getkeepsafe.relinker.C4465b;
import com.getkeepsafe.relinker.p231f.C4483i;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* renamed from: com.getkeepsafe.relinker.c */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/c.class */
public class C4470c {

    /* renamed from: a */
    protected final Set<String> f13600a;

    /* renamed from: b */
    protected final C4465b.AbstractC4467b f13601b;

    /* renamed from: c */
    protected final C4465b.AbstractC4466a f13602c;

    /* renamed from: d */
    protected boolean f13603d;

    /* renamed from: e */
    protected boolean f13604e;

    /* renamed from: f */
    protected C4465b.AbstractC4469d f13605f;

    /* renamed from: com.getkeepsafe.relinker.c$a */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/c$a.class */
    public class RunnableC4471a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f13606d;

        /* renamed from: e */
        final /* synthetic */ String f13607e;

        /* renamed from: f */
        final /* synthetic */ String f13608f;

        /* renamed from: g */
        final /* synthetic */ C4465b.AbstractC4468c f13609g;

        RunnableC4471a(Context context, String str, String str2, C4465b.AbstractC4468c abstractC4468c) {
            C4470c.this = r4;
            this.f13606d = context;
            this.f13607e = str;
            this.f13608f = str2;
            this.f13609g = abstractC4468c;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C4470c.this.m22401g(this.f13606d, this.f13607e, this.f13608f);
                this.f13609g.m22410a();
            } catch (MissingLibraryException e) {
                this.f13609g.m22409b(e);
            } catch (UnsatisfiedLinkError e2) {
                this.f13609g.m22409b(e2);
            }
        }
    }

    /* renamed from: com.getkeepsafe.relinker.c$b */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/c$b.class */
    public class C4472b implements FilenameFilter {

        /* renamed from: a */
        final /* synthetic */ String f13611a;

        C4472b(String str) {
            C4470c.this = r4;
            this.f13611a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.f13611a);
        }
    }

    public C4470c() {
        this(new C4473d(), new C4463a());
    }

    protected C4470c(C4465b.AbstractC4467b abstractC4467b, C4465b.AbstractC4466a abstractC4466a) {
        this.f13600a = new HashSet();
        if (abstractC4467b != null) {
            if (abstractC4466a == null) {
                throw new IllegalArgumentException("Cannot pass null library installer");
            }
            this.f13601b = abstractC4467b;
            this.f13602c = abstractC4466a;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null library loader");
    }

    /* renamed from: g */
    public void m22401g(Context context, String str, String str2) {
        Throwable th;
        if (this.f13600a.contains(str) && !this.f13603d) {
            m22399i("%s already loaded previously!", str);
            return;
        }
        try {
            this.f13601b.mo22398a(str);
            this.f13600a.add(str);
            m22399i("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e) {
            m22399i("Loading the library normally failed: %s", Log.getStackTraceString(e));
            m22399i("%s (%s) was not loaded normally, re-linking...", str, str2);
            File m22404d = m22404d(context, str, str2);
            if (!m22404d.exists() || this.f13603d) {
                if (this.f13603d) {
                    m22399i("Forcing a re-link of %s (%s)...", str, str2);
                }
                m22406b(context, str, str2);
                this.f13602c.mo22411a(context, this.f13601b.mo22395d(), this.f13601b.mo22397b(str), m22404d, this);
            }
            try {
                if (this.f13604e) {
                    C4483i c4483i = null;
                    try {
                        C4483i c4483i2 = new C4483i(m22404d);
                        try {
                            List<String> m22387f = c4483i2.m22387f();
                            c4483i2.close();
                            for (String str3 : m22387f) {
                                m22403e(context, this.f13601b.mo22396c(str3));
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            c4483i = c4483i2;
                            c4483i.close();
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            } catch (IOException e2) {
            }
            this.f13601b.mo22394e(m22404d.getAbsolutePath());
            this.f13600a.add(str);
            m22399i("%s (%s) was re-linked!", str, str2);
        }
    }

    /* renamed from: b */
    protected void m22406b(Context context, String str, String str2) {
        File m22405c = m22405c(context);
        File m22404d = m22404d(context, str, str2);
        File[] listFiles = m22405c.listFiles(new C4472b(this.f13601b.mo22397b(str)));
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            if (this.f13603d || !file.getAbsolutePath().equals(m22404d.getAbsolutePath())) {
                file.delete();
            }
        }
    }

    /* renamed from: c */
    protected File m22405c(Context context) {
        return context.getDir("lib", 0);
    }

    /* renamed from: d */
    protected File m22404d(Context context, String str, String str2) {
        String mo22397b = this.f13601b.mo22397b(str);
        if (C4474e.m22393a(str2)) {
            return new File(m22405c(context), mo22397b);
        }
        File m22405c = m22405c(context);
        return new File(m22405c, mo22397b + "." + str2);
    }

    /* renamed from: e */
    public void m22403e(Context context, String str) {
        m22402f(context, str, null, null);
    }

    /* renamed from: f */
    public void m22402f(Context context, String str, String str2, C4465b.AbstractC4468c abstractC4468c) {
        if (context != null) {
            if (C4474e.m22393a(str)) {
                throw new IllegalArgumentException("Given library is either null or empty");
            }
            m22399i("Beginning load of %s...", str);
            if (abstractC4468c == null) {
                m22401g(context, str, str2);
                return;
            } else {
                new Thread(new RunnableC4471a(context, str, str2, abstractC4468c)).start();
                return;
            }
        }
        throw new IllegalArgumentException("Given context is null");
    }

    /* renamed from: h */
    public void m22400h(String str) {
        C4465b.AbstractC4469d abstractC4469d = this.f13605f;
        if (abstractC4469d != null) {
            abstractC4469d.m22408a(str);
        }
    }

    /* renamed from: i */
    public void m22399i(String str, Object... objArr) {
        m22400h(String.format(Locale.US, str, objArr));
    }
}
