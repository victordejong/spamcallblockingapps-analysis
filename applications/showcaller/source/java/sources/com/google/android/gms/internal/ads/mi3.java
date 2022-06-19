package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mi3.class */
public class mi3 implements Iterator<o04>, Closeable, p04 {

    /* renamed from: d */
    private static final o04 f26616d = new li3("eof ");

    /* renamed from: e */
    private static final ti3 f26617e = ti3.m10651b(mi3.class);

    /* renamed from: f */
    protected l04 f26618f;

    /* renamed from: g */
    protected ni3 f26619g;

    /* renamed from: h */
    o04 f26620h = null;

    /* renamed from: i */
    long f26621i = 0;

    /* renamed from: j */
    long f26622j = 0;

    /* renamed from: k */
    private final List<o04> f26623k = new ArrayList();

    public void close() {
    }

    /* renamed from: f */
    public final List<o04> m13182f() {
        return (this.f26619g == null || this.f26620h == f26616d) ? this.f26623k : new si3(this.f26623k, this);
    }

    /* renamed from: g */
    public final void m13181g(ni3 ni3Var, long j, l04 l04Var) {
        this.f26619g = ni3Var;
        this.f26621i = ni3Var.mo10641c();
        ni3Var.mo10638j(ni3Var.mo10641c() + j);
        this.f26622j = ni3Var.mo10641c();
        this.f26618f = l04Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        o04 o04Var = this.f26620h;
        if (o04Var == f26616d) {
            return false;
        }
        if (o04Var != null) {
            return true;
        }
        try {
            this.f26620h = next();
            return true;
        } catch (NoSuchElementException e) {
            this.f26620h = f26616d;
            return false;
        }
    }

    /* renamed from: k */
    public final o04 next() {
        o04 mo13748a;
        o04 o04Var = this.f26620h;
        if (o04Var != null && o04Var != f26616d) {
            this.f26620h = null;
            return o04Var;
        }
        ni3 ni3Var = this.f26619g;
        if (ni3Var == null || this.f26621i >= this.f26622j) {
            this.f26620h = f26616d;
            throw new NoSuchElementException();
        }
        try {
            synchronized (ni3Var) {
                this.f26619g.mo10638j(this.f26621i);
                mo13748a = this.f26618f.mo13748a(this.f26619g, this);
                this.f26621i = this.f26619g.mo10641c();
            }
            return mo13748a;
        } catch (EOFException e) {
            throw new NoSuchElementException();
        } catch (IOException e2) {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i = 0; i < this.f26623k.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.f26623k.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
