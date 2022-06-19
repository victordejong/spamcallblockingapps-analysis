package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.hy */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/hy.class */
public class C0403hy {

    /* renamed from: b */
    private static final String f3181b = "hy";

    /* renamed from: a */
    public boolean f3182a;

    /* renamed from: c */
    private final C0404hz f3183c;

    /* renamed from: d */
    private final File f3184d;

    /* renamed from: e */
    private String f3185e;

    public C0403hy() {
        this(C0462kg.m4652a().f3460a);
    }

    public C0403hy(Context context) {
        this.f3183c = new C0404hz();
        File fileStreamPath = context.getFileStreamPath(".flurryinstallreceiver.");
        this.f3184d = fileStreamPath;
        String str = f3181b;
        C0478ku.m4596a(3, str, "Referrer file name if it exists:  " + fileStreamPath);
    }

    /* renamed from: b */
    private void m4765b(String str) {
        if (str == null) {
            return;
        }
        this.f3185e = str;
    }

    /* renamed from: c */
    private void m4764c() {
        if (this.f3182a) {
            return;
        }
        this.f3182a = true;
        String str = f3181b;
        C0478ku.m4596a(4, str, "Loading referrer info from file: " + this.f3184d.getAbsolutePath());
        String m4493c = C0504mc.m4493c(this.f3184d);
        C0478ku.m4594a(str, "Referrer file contents: " + m4493c);
        m4765b(m4493c);
    }

    /* renamed from: a */
    public final Map<String, List<String>> m4768a() {
        Map<String, List<String>> m4763a;
        synchronized (this) {
            m4764c();
            m4763a = C0404hz.m4763a(this.f3185e);
        }
        return m4763a;
    }

    /* renamed from: a */
    public final void m4767a(String str) {
        synchronized (this) {
            this.f3182a = true;
            m4765b(str);
            C0504mc.m4496a(this.f3184d, this.f3185e);
        }
    }

    /* renamed from: b */
    public final String m4766b() {
        String str;
        synchronized (this) {
            m4764c();
            str = this.f3185e;
        }
        return str;
    }
}
