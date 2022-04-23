package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/d.class */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    protected final DataHolder f22802a;

    /* renamed from: b  reason: collision with root package name */
    protected int f22803b;

    /* renamed from: c  reason: collision with root package name */
    private int f22804c;

    public d(DataHolder dataHolder, int i) {
        this.f22802a = (DataHolder) o.a(dataHolder);
        a(i);
    }

    private void a(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i < this.f22802a.getCount()) {
                z = true;
            }
        }
        o.a(z);
        this.f22803b = i;
        this.f22804c = this.f22802a.getWindowIndex(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(String str) {
        return this.f22802a.getInteger(str, this.f22803b, this.f22804c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String b(String str) {
        return this.f22802a.getString(str, this.f22803b, this.f22804c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final byte[] c(String str) {
        return this.f22802a.getByteArray(str, this.f22803b, this.f22804c);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return m.a(Integer.valueOf(dVar.f22803b), Integer.valueOf(this.f22803b)) && m.a(Integer.valueOf(dVar.f22804c), Integer.valueOf(this.f22804c)) && dVar.f22802a == this.f22802a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f22803b), Integer.valueOf(this.f22804c), this.f22802a});
    }
}
