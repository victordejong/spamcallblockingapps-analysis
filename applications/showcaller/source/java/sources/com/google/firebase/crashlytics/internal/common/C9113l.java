package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.p293d.C8898b;
import com.google.firebase.crashlytics.p293d.p300j.AbstractC9063h;
import java.io.File;
import java.io.IOException;
/* renamed from: com.google.firebase.crashlytics.internal.common.l */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/l.class */
public class C9113l {

    /* renamed from: a */
    private final String f39369a;

    /* renamed from: b */
    private final AbstractC9063h f39370b;

    public C9113l(String str, AbstractC9063h abstractC9063h) {
        this.f39369a = str;
        this.f39370b = abstractC9063h;
    }

    /* renamed from: b */
    private File m1826b() {
        return new File(this.f39370b.mo1991b(), this.f39369a);
    }

    /* renamed from: a */
    public boolean m1827a() {
        boolean z;
        try {
            z = m1826b().createNewFile();
        } catch (IOException e) {
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2398e("Error creating marker: " + this.f39369a, e);
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m1825c() {
        return m1826b().exists();
    }

    /* renamed from: d */
    public boolean m1824d() {
        return m1826b().delete();
    }
}
