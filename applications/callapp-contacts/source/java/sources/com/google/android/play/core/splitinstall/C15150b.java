package com.google.android.play.core.splitinstall;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* renamed from: com.google.android.play.core.splitinstall.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/b.class */
public final class C15150b {

    /* renamed from: a */
    public final List<String> f54950a;

    /* renamed from: b */
    public final List<Locale> f54951b;

    /* renamed from: com.google.android.play.core.splitinstall.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/b$a.class */
    public static final class C15151a {

        /* renamed from: a */
        final List<String> f54952a = new ArrayList();

        /* renamed from: b */
        public final List<Locale> f54953b = new ArrayList();

        private C15151a() {
        }

        public /* synthetic */ C15151a(byte[] bArr) {
        }
    }

    public /* synthetic */ C15150b(C15151a c15151a) {
        this.f54950a = new ArrayList(c15151a.f54952a);
        this.f54951b = new ArrayList(c15151a.f54953b);
    }

    public final String toString() {
        return String.format("SplitInstallRequest{modulesNames=%s,languages=%s}", this.f54950a, this.f54951b);
    }
}
