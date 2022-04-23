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
    private static final aqp f = new dru("eof ");
    private static drz g = drz.a(drr.class);

    /* renamed from: a  reason: collision with root package name */
    protected alm f27134a;

    /* renamed from: b  reason: collision with root package name */
    protected drt f27135b;
    private aqp h = null;

    /* renamed from: c  reason: collision with root package name */
    long f27136c = 0;

    /* renamed from: d  reason: collision with root package name */
    long f27137d = 0;
    long e = 0;
    private List<aqp> i = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final aqp next() {
        aqp a2;
        aqp aqpVar = this.h;
        if (aqpVar == null || aqpVar == f) {
            drt drtVar = this.f27135b;
            if (drtVar == null || this.f27136c >= this.e) {
                this.h = f;
                throw new NoSuchElementException();
            }
            try {
                synchronized (drtVar) {
                    this.f27135b.a(this.f27136c);
                    a2 = this.f27134a.a(this.f27135b, this);
                    this.f27136c = this.f27135b.b();
                }
                return a2;
            } catch (EOFException e) {
                throw new NoSuchElementException();
            } catch (IOException e2) {
                throw new NoSuchElementException();
            }
        } else {
            this.h = null;
            return aqpVar;
        }
    }

    public void a(drt drtVar, long j, alm almVar) throws IOException {
        this.f27135b = drtVar;
        long b2 = drtVar.b();
        this.f27137d = b2;
        this.f27136c = b2;
        drtVar.a(drtVar.b() + j);
        this.e = drtVar.b();
        this.f27134a = almVar;
    }

    public final List<aqp> b() {
        return (this.f27135b == null || this.h == f) ? this.i : new drx(this.i, this);
    }

    public void close() throws IOException {
        this.f27135b.close();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        aqp aqpVar = this.h;
        if (aqpVar == f) {
            return false;
        }
        if (aqpVar != null) {
            return true;
        }
        try {
            this.h = (aqp) next();
            return true;
        } catch (NoSuchElementException e) {
            this.h = f;
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
        for (int i = 0; i < this.i.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.i.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
