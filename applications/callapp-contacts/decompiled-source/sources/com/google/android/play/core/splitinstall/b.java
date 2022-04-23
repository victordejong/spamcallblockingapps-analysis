package com.google.android.play.core.splitinstall;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f31514a;

    /* renamed from: b  reason: collision with root package name */
    public final List<Locale> f31515b;

    /* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final List<String> f31516a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final List<Locale> f31517b = new ArrayList();

        private a() {
        }

        public /* synthetic */ a(byte[] bArr) {
        }
    }

    public /* synthetic */ b(a aVar) {
        this.f31514a = new ArrayList(aVar.f31516a);
        this.f31515b = new ArrayList(aVar.f31517b);
    }

    public final String toString() {
        return String.format("SplitInstallRequest{modulesNames=%s,languages=%s}", this.f31514a, this.f31515b);
    }
}
