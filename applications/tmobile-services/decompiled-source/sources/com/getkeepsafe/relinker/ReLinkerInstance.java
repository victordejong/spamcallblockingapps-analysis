package com.getkeepsafe.relinker;

import android.content.Context;
import android.util.Log;
import com.getkeepsafe.relinker.ReLinker;
import com.getkeepsafe.relinker.elf.ElfParser;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ReLinkerInstance.class */
public class ReLinkerInstance {

    /* renamed from: a */
    protected final Set<String> f6482a;

    /* renamed from: b */
    protected final ReLinker.LibraryLoader f6483b;

    /* renamed from: c */
    protected final ReLinker.LibraryInstaller f6484c;

    /* renamed from: d */
    protected boolean f6485d;

    /* renamed from: e */
    protected boolean f6486e;

    /* renamed from: f */
    protected ReLinker.Logger f6487f;

    /* JADX INFO: Access modifiers changed from: protected */
    public ReLinkerInstance() {
        this(new SystemLibraryLoader(), new ApkLibraryInstaller());
    }

    protected ReLinkerInstance(ReLinker.LibraryLoader libraryLoader, ReLinker.LibraryInstaller libraryInstaller) {
        this.f6482a = new HashSet();
        if (libraryLoader == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        } else if (libraryInstaller != null) {
            this.f6483b = libraryLoader;
            this.f6484c = libraryInstaller;
        } else {
            throw new IllegalArgumentException("Cannot pass null library installer");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m15582g(Context context, String str, String str2) {
        Throwable th;
        if (!this.f6482a.contains(str) || this.f6485d) {
            try {
                this.f6483b.mo15578b(str);
                this.f6482a.add(str);
                m15580i("%s (%s) was loaded normally!", str, str2);
            } catch (UnsatisfiedLinkError e) {
                m15580i("Loading the library normally failed: %s", Log.getStackTraceString(e));
                m15580i("%s (%s) was not loaded normally, re-linking...", str, str2);
                File d = m15585d(context, str, str2);
                if (!d.exists() || this.f6485d) {
                    if (this.f6485d) {
                        m15580i("Forcing a re-link of %s (%s)...", str, str2);
                    }
                    m15587b(context, str, str2);
                    this.f6484c.mo15591a(context, this.f6483b.mo15576d(), this.f6483b.mo15579a(str), d, this);
                }
                try {
                    if (this.f6486e) {
                        ElfParser elfParser = null;
                        try {
                            ElfParser elfParser2 = new ElfParser(d);
                            try {
                                List<String> d2 = elfParser2.m15568d();
                                elfParser2.close();
                                for (String str3 : d2) {
                                    m15584e(context, this.f6483b.mo15577c(str3));
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                elfParser = elfParser2;
                                elfParser.close();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                } catch (IOException e2) {
                }
                this.f6483b.mo15575e(d.getAbsolutePath());
                this.f6482a.add(str);
                m15580i("%s (%s) was re-linked!", str, str2);
            }
        } else {
            m15580i("%s already loaded previously!", str);
        }
    }

    /* renamed from: b */
    protected void m15587b(Context context, String str, String str2) {
        File c = m15586c(context);
        File d = m15585d(context, str, str2);
        final String a = this.f6483b.mo15579a(str);
        File[] listFiles = c.listFiles(new FilenameFilter(this) { // from class: com.getkeepsafe.relinker.ReLinkerInstance.2
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str3) {
                return str3.startsWith(a);
            }
        });
        if (listFiles != null) {
            for (File file : listFiles) {
                if (this.f6485d || !file.getAbsolutePath().equals(d.getAbsolutePath())) {
                    file.delete();
                }
            }
        }
    }

    /* renamed from: c */
    protected File m15586c(Context context) {
        return context.getDir("lib", 0);
    }

    /* renamed from: d */
    protected File m15585d(Context context, String str, String str2) {
        String a = this.f6483b.mo15579a(str);
        if (TextUtils.m15574a(str2)) {
            return new File(m15586c(context), a);
        }
        File c = m15586c(context);
        return new File(c, a + "." + str2);
    }

    /* renamed from: e */
    public void m15584e(Context context, String str) {
        m15583f(context, str, null, null);
    }

    /* renamed from: f */
    public void m15583f(final Context context, final String str, final String str2, final ReLinker.LoadListener loadListener) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        } else if (!TextUtils.m15574a(str)) {
            m15580i("Beginning load of %s...", str);
            if (loadListener == null) {
                m15582g(context, str, str2);
            } else {
                new Thread(new Runnable() { // from class: com.getkeepsafe.relinker.ReLinkerInstance.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            ReLinkerInstance.this.m15582g(context, str, str2);
                            loadListener.m15590a();
                        } catch (MissingLibraryException e) {
                            loadListener.m15589b(e);
                        } catch (UnsatisfiedLinkError e2) {
                            loadListener.m15589b(e2);
                        }
                    }
                }).start();
            }
        } else {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
    }

    /* renamed from: h */
    public void m15581h(String str) {
        ReLinker.Logger logger = this.f6487f;
        if (logger != null) {
            logger.log(str);
        }
    }

    /* renamed from: i */
    public void m15580i(String str, Object... objArr) {
        m15581h(String.format(Locale.US, str, objArr));
    }
}
