package com.google.firebase.crashlytics.p293d.p296g;

import android.content.Context;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.p293d.C8898b;
import java.io.File;
/* renamed from: com.google.firebase.crashlytics.d.g.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/g/b.class */
public class C8913b {

    /* renamed from: a */
    private static final C8916c f38883a = new C8916c();

    /* renamed from: b */
    private final Context f38884b;

    /* renamed from: c */
    private final AbstractC8915b f38885c;

    /* renamed from: d */
    private AbstractC8912a f38886d;

    /* renamed from: com.google.firebase.crashlytics.d.g.b$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/g/b$b.class */
    public interface AbstractC8915b {
        /* renamed from: a */
        File mo1828a();
    }

    /* renamed from: com.google.firebase.crashlytics.d.g.b$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/g/b$c.class */
    public static final class C8916c implements AbstractC8912a {
        private C8916c() {
        }

        @Override // com.google.firebase.crashlytics.p293d.p296g.AbstractC8912a
        /* renamed from: a */
        public void mo2339a() {
        }

        @Override // com.google.firebase.crashlytics.p293d.p296g.AbstractC8912a
        /* renamed from: b */
        public String mo2338b() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.p293d.p296g.AbstractC8912a
        /* renamed from: c */
        public byte[] mo2337c() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.p293d.p296g.AbstractC8912a
        /* renamed from: d */
        public void mo2336d() {
        }

        @Override // com.google.firebase.crashlytics.p293d.p296g.AbstractC8912a
        /* renamed from: e */
        public void mo2335e(long j, String str) {
        }
    }

    public C8913b(Context context, AbstractC8915b abstractC8915b) {
        this(context, abstractC8915b, null);
    }

    public C8913b(Context context, AbstractC8915b abstractC8915b, String str) {
        this.f38884b = context;
        this.f38885c = abstractC8915b;
        this.f38886d = f38883a;
        m2368e(str);
    }

    /* renamed from: d */
    private File m2369d(String str) {
        return new File(this.f38885c.mo1828a(), "crashlytics-userlog-" + str + ".temp");
    }

    /* renamed from: a */
    public void m2372a() {
        this.f38886d.mo2336d();
    }

    /* renamed from: b */
    public byte[] m2371b() {
        return this.f38886d.mo2337c();
    }

    /* renamed from: c */
    public String m2370c() {
        return this.f38886d.mo2338b();
    }

    /* renamed from: e */
    public final void m2368e(String str) {
        this.f38886d.mo2339a();
        this.f38886d = f38883a;
        if (str == null) {
            return;
        }
        if (!CommonUtils.m1964k(this.f38884b, "com.crashlytics.CollectCustomLogs", true)) {
            C8898b.m2397f().m2401b("Preferences requested no custom logs. Aborting log file creation.");
        } else {
            m2367f(m2369d(str), 65536);
        }
    }

    /* renamed from: f */
    void m2367f(File file, int i) {
        this.f38886d = new C8922d(file, i);
    }

    /* renamed from: g */
    public void m2366g(long j, String str) {
        this.f38886d.mo2335e(j, str);
    }
}
