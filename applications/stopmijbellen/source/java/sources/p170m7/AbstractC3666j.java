package p170m7;

import p277w7.C4766p;
/* renamed from: m7.j */
/* loaded from: classes2-dex2jar.jar:m7/j.class */
public abstract class AbstractC3666j<T, F> extends C3661g<T> implements AbstractC3656d<F> {
    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public void mo99a(Exception exc, F f) {
        if (isCancelled()) {
            return;
        }
        if (exc != null) {
            C4766p.C4767a c4767a = (C4766p.C4767a) this;
            C4766p.m495g(C4766p.this, c4767a, exc, null);
            return;
        }
        try {
            mo496u(f);
        } catch (Exception e) {
            C4766p.C4767a c4767a2 = (C4766p.C4767a) this;
            C4766p.m495g(C4766p.this, c4767a2, e, null);
        }
    }

    /* renamed from: u */
    public abstract void mo496u(F f) throws Exception;
}
