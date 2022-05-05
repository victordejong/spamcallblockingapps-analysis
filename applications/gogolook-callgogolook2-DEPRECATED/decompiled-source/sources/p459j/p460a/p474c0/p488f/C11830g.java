package p459j.p460a.p474c0.p488f;

import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.f.g */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/g.class */
public class C11830g extends Exception {

    /* renamed from: a */
    public final int f26531a;

    /* renamed from: b */
    public final int f26532b;

    public C11830g(int i, int i2) {
        this.f26531a = i;
        m8171a();
        this.f26532b = i2;
    }

    public C11830g(int i, String str) {
        super(str);
        this.f26531a = i;
        m8171a();
        this.f26532b = 0;
    }

    /* renamed from: a */
    public final void m8171a() {
        int i = this.f26531a;
        boolean z = true;
        if (i != 1) {
            z = true;
            if (i != 2) {
                z = i == 3;
            }
        }
        C12151d.m6999b(z);
    }
}
