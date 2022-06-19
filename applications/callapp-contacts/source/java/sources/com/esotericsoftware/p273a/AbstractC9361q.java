package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.q */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/q.class */
public abstract class AbstractC9361q {

    /* renamed from: a */
    protected final int f32111a;

    /* renamed from: b */
    protected AbstractC9361q f32112b;

    public AbstractC9361q(int i) {
        this(i, null);
    }

    public AbstractC9361q(int i, AbstractC9361q abstractC9361q) {
        if (i == 262144 || i == 327680) {
            this.f32111a = i;
            this.f32112b = abstractC9361q;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public AbstractC9345a mo24557a() {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            return abstractC9361q.mo24557a();
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC9345a mo24550a(int i, C9365u c9365u, String str, boolean z) {
        if (this.f32111a >= 327680) {
            AbstractC9361q abstractC9361q = this.f32112b;
            if (abstractC9361q == null) {
                return null;
            }
            return abstractC9361q.mo24550a(i, c9365u, str, z);
        }
        throw new RuntimeException();
    }

    /* renamed from: a */
    public AbstractC9345a mo24549a(int i, C9365u c9365u, C9360p[] c9360pArr, C9360p[] c9360pArr2, int[] iArr, String str, boolean z) {
        if (this.f32111a >= 327680) {
            AbstractC9361q abstractC9361q = this.f32112b;
            if (abstractC9361q == null) {
                return null;
            }
            return abstractC9361q.mo24549a(i, c9365u, c9360pArr, c9360pArr2, iArr, str, z);
        }
        throw new RuntimeException();
    }

    /* renamed from: a */
    public AbstractC9345a mo24545a(int i, String str, boolean z) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            return abstractC9361q.mo24545a(i, str, z);
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC9345a mo24533a(String str, boolean z) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            return abstractC9361q.mo24533a(str, z);
        }
        return null;
    }

    /* renamed from: a */
    public void mo24556a(int i) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24556a(i);
        }
    }

    /* renamed from: a */
    public void mo24555a(int i, int i2) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24555a(i, i2);
        }
    }

    /* renamed from: a */
    public void mo24553a(int i, int i2, C9360p c9360p, C9360p... c9360pArr) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24553a(i, i2, c9360p, c9360pArr);
        }
    }

    /* renamed from: a */
    public void mo24552a(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24552a(i, i2, objArr, i3, objArr2);
        }
    }

    /* renamed from: a */
    public void mo24551a(int i, C9360p c9360p) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24551a(i, c9360p);
        }
    }

    /* renamed from: a */
    public void mo24548a(int i, String str) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24548a(i, str);
        }
    }

    /* renamed from: a */
    public void mo24547a(int i, String str, String str2, String str3) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24547a(i, str, str2, str3);
        }
    }

    /* renamed from: a */
    public void mo24546a(int i, String str, String str2, String str3, boolean z) {
        if (this.f32111a < 327680) {
            if (z != (i == 185)) {
                throw new IllegalArgumentException("INVOKESPECIAL/STATIC on interfaces require ASM 5");
            }
            m24558b(i, str, str2, str3);
            return;
        }
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q == null) {
            return;
        }
        abstractC9361q.mo24546a(i, str, str2, str3, z);
    }

    /* renamed from: a */
    public void mo24544a(C9347c c9347c) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24544a(c9347c);
        }
    }

    /* renamed from: a */
    public void mo24541a(C9360p c9360p) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24541a(c9360p);
        }
    }

    /* renamed from: a */
    public void mo24540a(C9360p c9360p, C9360p c9360p2, C9360p c9360p3, String str) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24540a(c9360p, c9360p2, c9360p3, str);
        }
    }

    /* renamed from: a */
    public void mo24539a(C9360p c9360p, int[] iArr, C9360p[] c9360pArr) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24539a(c9360p, iArr, c9360pArr);
        }
    }

    /* renamed from: a */
    public void mo24537a(Object obj) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24537a(obj);
        }
    }

    /* renamed from: a */
    public void mo24536a(String str, int i) {
        if (this.f32111a >= 327680) {
            AbstractC9361q abstractC9361q = this.f32112b;
            if (abstractC9361q == null) {
                return;
            }
            abstractC9361q.mo24536a(str, i);
            return;
        }
        throw new RuntimeException();
    }

    /* renamed from: a */
    public void mo24535a(String str, String str2, C9357m c9357m, Object... objArr) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24535a(str, str2, c9357m, objArr);
        }
    }

    /* renamed from: a */
    public void mo24534a(String str, String str2, String str3, C9360p c9360p, C9360p c9360p2, int i) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24534a(str, str2, str3, c9360p, c9360p2, i);
        }
    }

    /* renamed from: b */
    public AbstractC9345a mo24525b(int i, C9365u c9365u, String str, boolean z) {
        if (this.f32111a >= 327680) {
            AbstractC9361q abstractC9361q = this.f32112b;
            if (abstractC9361q == null) {
                return null;
            }
            return abstractC9361q.mo24525b(i, c9365u, str, z);
        }
        throw new RuntimeException();
    }

    /* renamed from: b */
    public void mo24527b(int i, int i2) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24527b(i, i2);
        }
    }

    /* renamed from: b */
    public void mo24526b(int i, C9360p c9360p) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24526b(i, c9360p);
        }
    }

    /* renamed from: b */
    public final void m24558b(int i, String str, String str2, String str3) {
        AbstractC9361q abstractC9361q = this;
        while (abstractC9361q.f32111a < 327680) {
            abstractC9361q = abstractC9361q.f32112b;
            if (abstractC9361q == null) {
                return;
            }
        }
        abstractC9361q.mo24546a(i, str, str2, str3, i == 185);
    }

    /* renamed from: b */
    public void mo24523b(String str, int i) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24523b(str, i);
        }
    }

    /* renamed from: c */
    public AbstractC9345a mo24518c(int i, C9365u c9365u, String str, boolean z) {
        if (this.f32111a >= 327680) {
            AbstractC9361q abstractC9361q = this.f32112b;
            if (abstractC9361q == null) {
                return null;
            }
            return abstractC9361q.mo24518c(i, c9365u, str, z);
        }
        throw new RuntimeException();
    }

    /* renamed from: c */
    public void mo24520c(int i, int i2) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24520c(i, i2);
        }
    }

    /* renamed from: d */
    public void mo24515d(int i, int i2) {
        AbstractC9361q abstractC9361q = this.f32112b;
        if (abstractC9361q != null) {
            abstractC9361q.mo24515d(i, i2);
        }
    }
}
