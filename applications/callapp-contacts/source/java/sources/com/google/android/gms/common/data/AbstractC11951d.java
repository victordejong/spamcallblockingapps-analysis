package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.data.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/d.class */
public abstract class AbstractC11951d {

    /* renamed from: a */
    protected final DataHolder f39441a;

    /* renamed from: b */
    protected int f39442b;

    /* renamed from: c */
    private int f39443c;

    public AbstractC11951d(DataHolder dataHolder, int i) {
        this.f39441a = (DataHolder) C12045o.m19162a(dataHolder);
        m19256a(i);
    }

    /* renamed from: a */
    private void m19256a(int i) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i < this.f39441a.getCount()) {
                z = true;
            }
        }
        C12045o.m19158a(z);
        this.f39442b = i;
        this.f39443c = this.f39441a.getWindowIndex(i);
    }

    /* renamed from: a */
    public final int m19255a(String str) {
        return this.f39441a.getInteger(str, this.f39442b, this.f39443c);
    }

    /* renamed from: b */
    public final String m19254b(String str) {
        return this.f39441a.getString(str, this.f39442b, this.f39443c);
    }

    /* renamed from: c */
    public final byte[] m19253c(String str) {
        return this.f39441a.getByteArray(str, this.f39442b, this.f39443c);
    }

    public boolean equals(Object obj) {
        if (obj instanceof AbstractC11951d) {
            AbstractC11951d abstractC11951d = (AbstractC11951d) obj;
            return C12041m.m19168a(Integer.valueOf(abstractC11951d.f39442b), Integer.valueOf(this.f39442b)) && C12041m.m19168a(Integer.valueOf(abstractC11951d.f39443c), Integer.valueOf(this.f39443c)) && abstractC11951d.f39441a == this.f39441a;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f39442b), Integer.valueOf(this.f39443c), this.f39441a});
    }
}
