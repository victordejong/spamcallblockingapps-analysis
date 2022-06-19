package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.f */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/f.class */
public abstract class AbstractC9350f {

    /* renamed from: a */
    protected final int f31993a;

    /* renamed from: b */
    protected AbstractC9350f f31994b;

    public AbstractC9350f(int i) {
        this(i, null);
    }

    public AbstractC9350f(int i, AbstractC9350f abstractC9350f) {
        if (i == 262144 || i == 327680) {
            this.f31993a = i;
            this.f31994b = abstractC9350f;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public AbstractC9345a mo24614a(int i, C9365u c9365u, String str, boolean z) {
        if (this.f31993a >= 327680) {
            AbstractC9350f abstractC9350f = this.f31994b;
            if (abstractC9350f == null) {
                return null;
            }
            return abstractC9350f.mo24614a(i, c9365u, str, z);
        }
        throw new RuntimeException();
    }

    /* renamed from: a */
    public AbstractC9345a mo24600a(String str, boolean z) {
        AbstractC9350f abstractC9350f = this.f31994b;
        if (abstractC9350f != null) {
            return abstractC9350f.mo24600a(str, z);
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC9354j mo24613a(int i, String str, String str2, String str3, Object obj) {
        AbstractC9350f abstractC9350f = this.f31994b;
        if (abstractC9350f != null) {
            return abstractC9350f.mo24613a(i, str, str2, str3, obj);
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC9361q mo24611a(int i, String str, String str2, String str3, String[] strArr) {
        AbstractC9350f abstractC9350f = this.f31994b;
        if (abstractC9350f != null) {
            return abstractC9350f.mo24611a(i, str, str2, str3, strArr);
        }
        return null;
    }

    /* renamed from: a */
    public void mo24615a(int i, int i2, String str, String str2, String str3, String[] strArr) {
        AbstractC9350f abstractC9350f = this.f31994b;
        if (abstractC9350f != null) {
            abstractC9350f.mo24615a(i, i2, str, str2, str3, strArr);
        }
    }

    /* renamed from: a */
    public void mo24609a(C9347c c9347c) {
        AbstractC9350f abstractC9350f = this.f31994b;
        if (abstractC9350f != null) {
            abstractC9350f.mo24609a(c9347c);
        }
    }

    /* renamed from: a */
    public void mo24604a(String str, String str2) {
        AbstractC9350f abstractC9350f = this.f31994b;
        if (abstractC9350f != null) {
            abstractC9350f.mo24604a(str, str2);
        }
    }

    /* renamed from: a */
    public void mo24603a(String str, String str2, String str3) {
        AbstractC9350f abstractC9350f = this.f31994b;
        if (abstractC9350f != null) {
            abstractC9350f.mo24603a(str, str2, str3);
        }
    }

    /* renamed from: a */
    public void mo24602a(String str, String str2, String str3, int i) {
        AbstractC9350f abstractC9350f = this.f31994b;
        if (abstractC9350f != null) {
            abstractC9350f.mo24602a(str, str2, str3, i);
        }
    }
}
