package com.android.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    protected static final Comparator<byte[]> f2320a = new Comparator<byte[]>() { // from class: com.android.volley.toolbox.b.1
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private List<byte[]> f2321b = new LinkedList();
    private List<byte[]> c = new ArrayList(64);
    private int d = 0;
    private final int e;

    public b(int i) {
        this.e = i;
    }

    private void a() {
        synchronized (this) {
            while (this.d > this.e) {
                byte[] remove = this.f2321b.remove(0);
                this.c.remove(remove);
                this.d -= remove.length;
            }
        }
    }

    public final void a(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.e) {
                    this.f2321b.add(bArr);
                    int binarySearch = Collections.binarySearch(this.c, bArr, f2320a);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.c.add(i, bArr);
                    this.d += bArr.length;
                    a();
                }
            }
        }
    }

    public final byte[] a(int i) {
        byte[] bArr;
        synchronized (this) {
            int i2 = 0;
            while (true) {
                if (i2 >= this.c.size()) {
                    bArr = new byte[i];
                    break;
                }
                bArr = this.c.get(i2);
                if (bArr.length >= i) {
                    this.d -= bArr.length;
                    this.c.remove(i2);
                    this.f2321b.remove(bArr);
                    break;
                }
                i2++;
            }
        }
        return bArr;
    }
}
