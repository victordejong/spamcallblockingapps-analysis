package com.allinone.callerid.p144d.p154f.p155b;

import java.io.File;
/* renamed from: com.allinone.callerid.d.f.b.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/f/b/b.class */
public class C2570b {

    /* renamed from: a */
    private File f8989a;

    /* renamed from: b */
    private boolean f8990b;

    /* renamed from: c */
    private C2574f f8991c;

    public C2570b(C2574f c2574f, File file) {
        this.f8989a = file;
        this.f8991c = c2574f;
    }

    /* renamed from: a */
    public File m27092a() {
        return this.f8989a;
    }

    /* renamed from: b */
    public void m27091b(boolean z) {
        this.f8990b = z;
        if (z) {
            this.f8991c.m27086g(this);
        }
    }

    public String toString() {
        return "FileBridge{mFile=" + this.f8989a.getName() + ", mIsRecycle=" + this.f8990b + '}';
    }
}
