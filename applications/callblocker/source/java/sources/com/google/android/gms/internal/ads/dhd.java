package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhd.class */
public class dhd implements agj, Closeable, Iterator<adi> {

    /* renamed from: f */
    private static final adi f14348f = new dhg("eof ");

    /* renamed from: g */
    private static dhl f14349g = dhl.m9456a(dhd.class);

    /* renamed from: a */
    protected aci f14350a;

    /* renamed from: b */
    protected dhf f14351b;

    /* renamed from: h */
    private adi f14355h = null;

    /* renamed from: c */
    long f14352c = 0;

    /* renamed from: d */
    long f14353d = 0;

    /* renamed from: e */
    long f14354e = 0;

    /* renamed from: i */
    private List<adi> f14356i = new ArrayList();

    /* renamed from: a */
    public final adi next() {
        adi mo13642a;
        if (this.f14355h != null && this.f14355h != f14348f) {
            mo13642a = this.f14355h;
            this.f14355h = null;
        } else if (this.f14351b == null || this.f14352c >= this.f14354e) {
            this.f14355h = f14348f;
            throw new NoSuchElementException();
        } else {
            try {
                synchronized (this.f14351b) {
                    this.f14351b.mo9462a(this.f14352c);
                    mo13642a = this.f14350a.mo13642a(this.f14351b, this);
                    this.f14352c = this.f14351b.mo9459b();
                }
            } catch (EOFException e) {
                throw new NoSuchElementException();
            } catch (IOException e2) {
                throw new NoSuchElementException();
            }
        }
        return mo13642a;
    }

    /* renamed from: a */
    public void mo9467a(dhf dhfVar, long j, aci aciVar) {
        this.f14351b = dhfVar;
        long mo9459b = dhfVar.mo9459b();
        this.f14353d = mo9459b;
        this.f14352c = mo9459b;
        dhfVar.mo9462a(dhfVar.mo9459b() + j);
        this.f14354e = dhfVar.mo9459b();
        this.f14350a = aciVar;
    }

    /* renamed from: b */
    public final List<adi> m9466b() {
        return (this.f14351b == null || this.f14355h == f14348f) ? this.f14356i : new dhj(this.f14356i, this);
    }

    public void close() {
        this.f14351b.close();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        boolean z;
        if (this.f14355h == f14348f) {
            z = false;
        } else if (this.f14355h != null) {
            z = true;
        } else {
            try {
                this.f14355h = (adi) next();
                z = true;
            } catch (NoSuchElementException e) {
                this.f14355h = f14348f;
                z = false;
            }
        }
        return z;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName()).append("[");
        for (int i = 0; i < this.f14356i.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.f14356i.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
