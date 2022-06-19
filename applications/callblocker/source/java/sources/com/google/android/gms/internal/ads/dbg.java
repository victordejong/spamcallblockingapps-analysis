package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbg.class */
final class dbg extends dbc<Boolean> implements dde<Boolean>, det, RandomAccess {

    /* renamed from: a */
    private static final dbg f13925a;

    /* renamed from: b */
    private boolean[] f13926b;

    /* renamed from: c */
    private int f13927c;

    static {
        dbg dbgVar = new dbg(new boolean[0], 0);
        f13925a = dbgVar;
        dbgVar.mo10038b();
    }

    dbg() {
        this(new boolean[10], 0);
    }

    private dbg(boolean[] zArr, int i) {
        this.f13926b = zArr;
        this.f13927c = i;
    }

    /* renamed from: b */
    private final void m10226b(int i) {
        if (i < 0 || i >= this.f13927c) {
            throw new IndexOutOfBoundsException(m10225c(i));
        }
    }

    /* renamed from: c */
    private final String m10225c(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f13927c).toString();
    }

    @Override // com.google.android.gms.internal.ads.dde
    /* renamed from: a */
    public final /* synthetic */ dde<Boolean> mo9923a(int i) {
        if (i < this.f13927c) {
            throw new IllegalArgumentException();
        }
        return new dbg(Arrays.copyOf(this.f13926b, i), this.f13927c);
    }

    /* renamed from: a */
    public final void m10227a(boolean z) {
        m10248c();
        if (this.f13927c == this.f13926b.length) {
            boolean[] zArr = new boolean[((this.f13927c * 3) / 2) + 1];
            System.arraycopy(this.f13926b, 0, zArr, 0, this.f13927c);
            this.f13926b = zArr;
        }
        boolean[] zArr2 = this.f13926b;
        int i = this.f13927c;
        this.f13927c = i + 1;
        zArr2[i] = z;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m10248c();
        if (i < 0 || i > this.f13927c) {
            throw new IndexOutOfBoundsException(m10225c(i));
        }
        if (this.f13927c < this.f13926b.length) {
            System.arraycopy(this.f13926b, i, this.f13926b, i + 1, this.f13927c - i);
        } else {
            boolean[] zArr = new boolean[((this.f13927c * 3) / 2) + 1];
            System.arraycopy(this.f13926b, 0, zArr, 0, i);
            System.arraycopy(this.f13926b, i, zArr, i + 1, this.f13927c - i);
            this.f13926b = zArr;
        }
        this.f13926b[i] = booleanValue;
        this.f13927c++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m10227a(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        boolean z = false;
        m10248c();
        dcz.m10047a(collection);
        if (!(collection instanceof dbg)) {
            z = super.addAll(collection);
        } else {
            dbg dbgVar = (dbg) collection;
            if (dbgVar.f13927c != 0) {
                if (Integer.MAX_VALUE - this.f13927c < dbgVar.f13927c) {
                    throw new OutOfMemoryError();
                }
                int i = this.f13927c + dbgVar.f13927c;
                if (i > this.f13926b.length) {
                    this.f13926b = Arrays.copyOf(this.f13926b, i);
                }
                System.arraycopy(dbgVar.f13926b, 0, this.f13926b, this.f13927c, dbgVar.f13927c);
                this.f13927c = i;
                this.modCount++;
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else if (!(obj instanceof dbg)) {
            z = super.equals(obj);
        } else {
            dbg dbgVar = (dbg) obj;
            z = false;
            if (this.f13927c == dbgVar.f13927c) {
                boolean[] zArr = dbgVar.f13926b;
                int i = 0;
                while (true) {
                    if (i >= this.f13927c) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (this.f13926b[i] != zArr[i]) {
                        break;
                    }
                    i++;
                }
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m10226b(i);
        return Boolean.valueOf(this.f13926b[i]);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f13927c; i2++) {
            i = (i * 31) + dcz.m10044a(this.f13926b[i2]);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m10248c();
        m10226b(i);
        boolean z = this.f13926b[i];
        if (i < this.f13927c - 1) {
            System.arraycopy(this.f13926b, i + 1, this.f13926b, i, (this.f13927c - i) - 1);
        }
        this.f13927c--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        boolean z;
        m10248c();
        int i = 0;
        while (true) {
            z = false;
            if (i >= this.f13927c) {
                break;
            } else if (obj.equals(Boolean.valueOf(this.f13926b[i]))) {
                System.arraycopy(this.f13926b, i + 1, this.f13926b, i, (this.f13927c - i) - 1);
                this.f13927c--;
                this.modCount++;
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        m10248c();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.f13926b, i2, this.f13926b, i, this.f13927c - i2);
        this.f13927c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        m10248c();
        m10226b(i);
        boolean z = this.f13926b[i];
        this.f13926b[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f13927c;
    }
}
