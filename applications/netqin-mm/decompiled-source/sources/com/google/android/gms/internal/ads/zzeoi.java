package com.google.android.gms.internal.ads;

import com.facebook.ads.ExtraHints;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import p131c.p161d.p170b.p224d.p252g.p253a.va0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeoi.class */
public class zzeoi implements zzbs, Closeable, Iterator<zzbp> {

    /* renamed from: g */
    public static final zzbp f28112g = new va0("eof ");

    /* renamed from: a */
    public zzbo f28113a;

    /* renamed from: b */
    public zzeok f28114b;

    /* renamed from: c */
    public zzbp f28115c = null;

    /* renamed from: d */
    public long f28116d = 0;

    /* renamed from: e */
    public long f28117e = 0;

    /* renamed from: f */
    public List<zzbp> f28118f = new ArrayList();

    static {
        zzeoq.m12204a(zzeoi.class);
    }

    /* renamed from: a */
    public final List<zzbp> m12211a() {
        return (this.f28114b == null || this.f28115c == f28112g) ? this.f28118f : new zzeoo(this.f28118f, this);
    }

    /* renamed from: a */
    public void mo12210a(zzeok zzeokVar, long j, zzbo zzboVar) throws IOException {
        this.f28114b = zzeokVar;
        this.f28116d = zzeokVar.position();
        zzeokVar.mo12207b(zzeokVar.position() + j);
        this.f28117e = zzeokVar.position();
        this.f28113a = zzboVar;
    }

    /* renamed from: b */
    public final zzbp next() {
        zzbp a;
        zzbp zzbpVar = this.f28115c;
        if (zzbpVar == null || zzbpVar == f28112g) {
            zzeok zzeokVar = this.f28114b;
            if (zzeokVar == null || this.f28116d >= this.f28117e) {
                this.f28115c = f28112g;
                throw new NoSuchElementException();
            }
            try {
                synchronized (zzeokVar) {
                    this.f28114b.mo12207b(this.f28116d);
                    a = this.f28113a.mo15250a(this.f28114b, this);
                    this.f28116d = this.f28114b.position();
                }
                return a;
            } catch (EOFException e) {
                throw new NoSuchElementException();
            } catch (IOException e2) {
                throw new NoSuchElementException();
            }
        } else {
            this.f28115c = null;
            return zzbpVar;
        }
    }

    public void close() throws IOException {
        this.f28114b.close();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        zzbp zzbpVar = this.f28115c;
        if (zzbpVar == f28112g) {
            return false;
        }
        if (zzbpVar != null) {
            return true;
        }
        try {
            this.f28115c = (zzbp) next();
            return true;
        } catch (NoSuchElementException e) {
            this.f28115c = f28112g;
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
        for (int i = 0; i < this.f28118f.size(); i++) {
            if (i > 0) {
                sb.append(ExtraHints.KEYWORD_SEPARATOR);
            }
            sb.append(this.f28118f.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
