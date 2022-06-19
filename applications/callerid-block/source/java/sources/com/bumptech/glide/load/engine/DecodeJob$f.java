package com.bumptech.glide.load.engine;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$f.class */
class DecodeJob$f {

    /* renamed from: a */
    private boolean f3546a;

    /* renamed from: b */
    private boolean f3547b;

    /* renamed from: c */
    private boolean f3548c;

    DecodeJob$f() {
    }

    /* renamed from: a */
    private boolean m11155a(boolean z) {
        return (this.f3548c || z || this.f3547b) && this.f3546a;
    }

    /* renamed from: b */
    boolean m11154b() {
        boolean m11155a;
        synchronized (this) {
            this.f3547b = true;
            m11155a = m11155a(false);
        }
        return m11155a;
    }

    /* renamed from: c */
    boolean m11153c() {
        boolean m11155a;
        synchronized (this) {
            this.f3548c = true;
            m11155a = m11155a(false);
        }
        return m11155a;
    }

    /* renamed from: d */
    boolean m11152d(boolean z) {
        boolean m11155a;
        synchronized (this) {
            this.f3546a = true;
            m11155a = m11155a(z);
        }
        return m11155a;
    }

    /* renamed from: e */
    void m11151e() {
        synchronized (this) {
            this.f3547b = false;
            this.f3546a = false;
            this.f3548c = false;
        }
    }
}
