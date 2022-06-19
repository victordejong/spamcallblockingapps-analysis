package com.google.firebase.crashlytics.p293d.p301k;

import com.google.android.datatransport.AbstractC4645d;
import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.nio.charset.Charset;
/* renamed from: com.google.firebase.crashlytics.d.k.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/k/b.class */
final /* synthetic */ class C9066b implements AbstractC4645d {

    /* renamed from: a */
    private static final C9066b f39228a = new C9066b();

    private C9066b() {
    }

    /* renamed from: b */
    public static AbstractC4645d m1987b() {
        return f39228a;
    }

    @Override // com.google.android.datatransport.AbstractC4645d
    /* renamed from: a */
    public Object mo1135a(Object obj) {
        byte[] bytes;
        bytes = C9067c.f39229a.m2073E((AbstractC9004v) obj).getBytes(Charset.forName("UTF-8"));
        return bytes;
    }
}
