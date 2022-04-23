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

    /* JADX INFO: Access modifiers changed from: package-private */
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

        RunnableC1243a(Context context, String str, String str2, C1237b.AbstractC1240c cVar) {
            this.f5101b = context;
            this.f5102c = str;
            this.f5103d = str2;
            this.f5104e = cVar;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.getkeepsafe.relinker.c$b */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/c$b.class */
    public class C1244b implements FilenameFilter {

        /* renamed from: a */
        final /* synthetic */ String f5106a;

        C1244b(C1242c cVar, String str) {
            this.f5106a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.f5106a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C1242c() {
        this(new d(), new a());
    }

    protected C1242c(C1237b.AbstractC1239b bVar, C1237b.AbstractC1238a aVar) {
        this.f5095a = new HashSet();
        if (bVar == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        } else if (aVar != null) {
            this.f5096b = bVar;
            this.f5097c = aVar;
        } else {
            throw new IllegalArgumentException("Cannot pass null library installer");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m9456g(Context context, String str, String str2) {
        Throwable th;
        if (!this.f5095a.contains(str) || this.f5098d) {
            try {
                this.f5096b.m9470a(str);
                this.f5095a.add(str);
                m9454i("%s (%s) was loaded normally!", str, str2);
            } catch (UnsatisfiedLinkError e) {
                m9454i("Loading the library normally failed: %s", Log.getStackTraceString(e));
                m9454i("%s (%s) was not loaded normally, re-linking...", str, str2);
                File d = m9459d(context, str, str2);
                if (!d.exists() || this.f5098d) {
                    if (this.f5098d) {
                        m9454i("Forcing a re-link of %s (%s)...", str, str2);
                    }
                    m9461b(context, str, str2);
                    this.f5097c.m9471a(context, this.f5096b.m9467d(), this.f5096b.m9469b(str), d, this);
                }
                try {
                    if (this.f5099e) {
                        C1250i iVar = null;
                        try {
                            iVar = new C1250i(d);
                            try {
                                List<String> x = iVar.m9441x();
                                iVar.close();
                                for (String str3 : x) {
                                    m9458e(context, this.f5096b.m9468c(str3));
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                iVar.close();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                } catch (IOException e2) {
                }
                this.f5096b.m9466e(d.getAbsolutePath());
                this.f5095a.add(str);
                m9454i("%s (%s) was re-linked!", str, str2);
            }
        } else {
            m9454i("%s already loaded previously!", str);
        }
    }

    /* renamed from: b */
    protected void m9461b(Context context, String str, String str2) {
        File c = m9460c(context);
        File d = m9459d(context, str, str2);
        File[] listFiles = c.listFiles(new C1244b(this, this.f5096b.m9469b(str)));
        if (listFiles != null) {
            for (File file : listFiles) {
                if (this.f5098d || !file.getAbsolutePath().equals(d.getAbsolutePath())) {
                    file.delete();
                }
            }
        }
    }

    /* renamed from: c */
    protected File m9460c(Context context) {
        return context.getDir("lib", 0);
    }

    /* renamed from: d */
    protected File m9459d(Context context, String str, String str2) {
        String b = this.f5096b.m9469b(str);
        if (C1245e.m9453a(str2)) {
            return new File(m9460c(context), b);
        }
        File c = m9460c(context);
        return new File(c, b + "." + str2);
    }

    /* renamed from: e */
    public void m9458e(Context context, String str) {
        m9457f(context, str, null, null);
    }

    /* renamed from: f */
    public void m9457f(Context context, String str, String str2, C1237b.AbstractC1240c cVar) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        } else if (!C1245e.m9453a(str)) {
            m9454i("Beginning load of %s...", str);
            if (cVar == null) {
                m9456g(context, str, str2);
            } else {
                new Thread(new RunnableC1243a(context, str, str2, cVar)).start();
            }
        } else {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
    }

    /* renamed from: h */
    public void m9455h(String str) {
        C1237b.AbstractC1241d dVar = this.f5100f;
        if (dVar != null) {
            dVar.m9463a(str);
        }
    }

    /* renamed from: i */
    public void m9454i(String str, Object... objArr) {
        m9455h(String.format(Locale.US, str, objArr));
    }
}
