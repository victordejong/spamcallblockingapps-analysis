package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drr.class */
public class drr implements apo, Closeable, Iterator<aqp> {

    /* renamed from: f */
    private static final aqp f47476f = new dru("eof ");

    /* renamed from: g */
    private static drz f47477g = drz.m15790a(drr.class);

    /* renamed from: a */
    protected alm f47478a;

    /* renamed from: b */
    protected drt f47479b;

    /* renamed from: h */
    private aqp f47483h = null;

    /* renamed from: c */
    long f47480c = 0;

    /* renamed from: d */
    long f47481d = 0;

    /* renamed from: e */
    long f47482e = 0;

    /* renamed from: i */
    private List<aqp> f47484i = new ArrayList();

    /* renamed from: a */
    public final aqp next() {
        aqp mo18581a;
        aqp aqpVar = this.f47483h;
        if (aqpVar != null && aqpVar != f47476f) {
            this.f47483h = null;
            return aqpVar;
        }
        drt drtVar = this.f47479b;
        if (drtVar == null || this.f47480c >= this.f47482e) {
            this.f47483h = f47476f;
            throw new NoSuchElementException();
        }
        try {
            synchronized (drtVar) {
                this.f47479b.mo15796a(this.f47480c);
                mo18581a = this.f47478a.mo18581a(this.f47479b, this);
                this.f47480c = this.f47479b.mo15793b();
            }
            return mo18581a;
        } catch (EOFException e) {
            throw new NoSuchElementException();
        } catch (IOException e2) {
            throw new NoSuchElementException();
        }
    }

    /* renamed from: a */
    public void mo15801a(drt drtVar, long j, alm almVar) throws IOException {
        this.f47479b = drtVar;
        long mo15793b = drtVar.mo15793b();
        this.f47481d = mo15793b;
        this.f47480c = mo15793b;
        drtVar.mo15796a(drtVar.mo15793b() + j);
        this.f47482e = drtVar.mo15793b();
        this.f47478a = almVar;
    }

    /* renamed from: b */
    public final List<aqp> m15800b() {
        return (this.f47479b == null || this.f47483h == f47476f) ? this.f47484i : new drx(this.f47484i, this);
    }

    public void close() throws IOException {
        this.f47479b.close();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        aqp aqpVar = this.f47483h;
        if (aqpVar == f47476f) {
            return false;
        }
        if (aqpVar != null) {
            return true;
        }
        try {
            this.f47483h = (aqp) next();
            return true;
        } catch (NoSuchElementException e) {
            this.f47483h = f47476f;
            return false;
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i = 0; i < this.f47484i.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.f47484i.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
