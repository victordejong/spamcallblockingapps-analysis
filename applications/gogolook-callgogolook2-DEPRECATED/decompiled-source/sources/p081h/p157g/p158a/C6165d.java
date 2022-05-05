package p081h.p157g.p158a;

import android.content.Context;
import android.util.Log;
import androidx.media2.session.MediaSessionImplBase;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import p081h.p157g.p158a.C6160c;
import p081h.p157g.p158a.p159g.C6179f;
/* renamed from: h.g.a.d */
/* loaded from: classes2-dex2jar.jar:h/g/a/d.class */
public class C6165d {

    /* renamed from: a */
    public final Set<String> f15318a;

    /* renamed from: b */
    public final C6160c.AbstractC6162b f15319b;

    /* renamed from: c */
    public final C6160c.AbstractC6161a f15320c;

    /* renamed from: d */
    public boolean f15321d;

    /* renamed from: e */
    public boolean f15322e;

    /* renamed from: f */
    public C6160c.AbstractC6164d f15323f;

    /* renamed from: h.g.a.d$a */
    /* loaded from: classes2-dex2jar.jar:h/g/a/d$a.class */
    public class RunnableC6166a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f15324a;

        /* renamed from: b */
        public final /* synthetic */ String f15325b;

        /* renamed from: c */
        public final /* synthetic */ String f15326c;

        /* renamed from: d */
        public final /* synthetic */ C6160c.AbstractC6163c f15327d;

        public RunnableC6166a(Context context, String str, String str2, C6160c.AbstractC6163c cVar) {
            this.f15324a = context;
            this.f15325b = str;
            this.f15326c = str2;
            this.f15327d = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C6165d.this.m23654c(this.f15324a, this.f15325b, this.f15326c);
                this.f15327d.m23664a();
            } catch (C6159b e) {
                this.f15327d.m23663a(e);
            } catch (UnsatisfiedLinkError e2) {
                this.f15327d.m23663a(e2);
            }
        }
    }

    /* renamed from: h.g.a.d$b */
    /* loaded from: classes2-dex2jar.jar:h/g/a/d$b.class */
    public class C6167b implements FilenameFilter {

        /* renamed from: a */
        public final /* synthetic */ String f15329a;

        public C6167b(C6165d dVar, String str) {
            this.f15329a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.f15329a);
        }
    }

    public C6165d() {
        this(new C6168e(), new C6157a());
    }

    public C6165d(C6160c.AbstractC6162b bVar, C6160c.AbstractC6161a aVar) {
        this.f15318a = new HashSet();
        if (bVar == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        } else if (aVar != null) {
            this.f15319b = bVar;
            this.f15320c = aVar;
        } else {
            throw new IllegalArgumentException("Cannot pass null library installer");
        }
    }

    /* renamed from: a */
    public File m23662a(Context context) {
        return context.getDir("lib", 0);
    }

    /* renamed from: a */
    public void m23661a(Context context, String str) {
        m23659a(context, str, (String) null, (C6160c.AbstractC6163c) null);
    }

    /* renamed from: a */
    public void m23660a(Context context, String str, String str2) {
        File a = m23662a(context);
        File b = m23655b(context, str, str2);
        File[] listFiles = a.listFiles(new C6167b(this, this.f15319b.mo23651b(str)));
        if (listFiles != null) {
            for (File file : listFiles) {
                if (this.f15321d || !file.getAbsolutePath().equals(b.getAbsolutePath())) {
                    file.delete();
                }
            }
        }
    }

    /* renamed from: a */
    public void m23659a(Context context, String str, String str2, C6160c.AbstractC6163c cVar) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        } else if (!C6169f.m23648a(str)) {
            m23656a("Beginning load of %s...", str);
            if (cVar == null) {
                m23654c(context, str, str2);
            } else {
                new Thread(new RunnableC6166a(context, str, str2, cVar)).start();
            }
        } else {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
    }

    /* renamed from: a */
    public void m23657a(String str) {
        C6160c.AbstractC6164d dVar = this.f15323f;
        if (dVar != null) {
            dVar.log(str);
        }
    }

    /* renamed from: a */
    public void m23656a(String str, Object... objArr) {
        m23657a(String.format(Locale.US, str, objArr));
    }

    /* renamed from: b */
    public File m23655b(Context context, String str, String str2) {
        String b = this.f15319b.mo23651b(str);
        if (C6169f.m23648a(str2)) {
            return new File(m23662a(context), b);
        }
        File a = m23662a(context);
        return new File(a, b + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + str2);
    }

    /* renamed from: c */
    public final void m23654c(Context context, String str, String str2) {
        Throwable th;
        if (!this.f15318a.contains(str) || this.f15321d) {
            try {
                this.f15319b.mo23652a(str);
                this.f15318a.add(str);
                m23656a("%s (%s) was loaded normally!", str, str2);
            } catch (UnsatisfiedLinkError e) {
                m23656a("Loading the library normally failed: %s", Log.getStackTraceString(e));
                m23656a("%s (%s) was not loaded normally, re-linking...", str, str2);
                File b = m23655b(context, str, str2);
                if (!b.exists() || this.f15321d) {
                    if (this.f15321d) {
                        m23656a("Forcing a re-link of %s (%s)...", str, str2);
                    }
                    m23660a(context, str, str2);
                    this.f15320c.mo23665a(context, this.f15319b.mo23653a(), this.f15319b.mo23651b(str), b, this);
                }
                try {
                    if (this.f15322e) {
                        C6179f fVar = null;
                        try {
                            C6179f fVar2 = new C6179f(b);
                            try {
                                List<String> b2 = fVar2.m23640b();
                                fVar2.close();
                                for (String str3 : b2) {
                                    m23661a(context, this.f15319b.mo23650c(str3));
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                fVar = fVar2;
                                fVar.close();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                } catch (IOException e2) {
                }
                this.f15319b.mo23649d(b.getAbsolutePath());
                this.f15318a.add(str);
                m23656a("%s (%s) was re-linked!", str, str2);
            }
        } else {
            m23656a("%s already loaded previously!", str);
        }
    }
}
