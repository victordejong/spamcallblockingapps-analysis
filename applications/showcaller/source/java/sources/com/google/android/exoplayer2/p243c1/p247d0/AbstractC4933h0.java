package com.google.android.exoplayer2.p243c1.p247d0;

import android.util.SparseArray;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.c1.d0.h0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/h0.class */
public interface AbstractC4933h0 {

    /* renamed from: com.google.android.exoplayer2.c1.d0.h0$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/h0$a.class */
    public static final class C4934a {

        /* renamed from: a */
        public final String f15171a;

        /* renamed from: b */
        public final int f15172b;

        /* renamed from: c */
        public final byte[] f15173c;

        public C4934a(String str, int i, byte[] bArr) {
            this.f15171a = str;
            this.f15172b = i;
            this.f15173c = bArr;
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.d0.h0$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/h0$b.class */
    public static final class C4935b {

        /* renamed from: a */
        public final int f15174a;

        /* renamed from: b */
        public final String f15175b;

        /* renamed from: c */
        public final List<C4934a> f15176c;

        /* renamed from: d */
        public final byte[] f15177d;

        public C4935b(int i, String str, List<C4934a> list, byte[] bArr) {
            this.f15174a = i;
            this.f15175b = str;
            this.f15176c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f15177d = bArr;
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.d0.h0$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/h0$c.class */
    public interface AbstractC4936c {
        /* renamed from: a */
        AbstractC4933h0 mo21124a(int i, C4935b c4935b);

        /* renamed from: b */
        SparseArray<AbstractC4933h0> mo21123b();
    }

    /* renamed from: com.google.android.exoplayer2.c1.d0.h0$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/h0$d.class */
    public static final class C4937d {

        /* renamed from: a */
        private final String f15178a;

        /* renamed from: b */
        private final int f15179b;

        /* renamed from: c */
        private final int f15180c;

        /* renamed from: d */
        private int f15181d;

        /* renamed from: e */
        private String f15182e;

        public C4937d(int i, int i2) {
            this(Integer.MIN_VALUE, i, i2);
        }

        public C4937d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                str = i + "/";
            } else {
                str = "";
            }
            this.f15178a = str;
            this.f15179b = i2;
            this.f15180c = i3;
            this.f15181d = Integer.MIN_VALUE;
        }

        /* renamed from: d */
        private void m21156d() {
            if (this.f15181d != Integer.MIN_VALUE) {
                return;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        /* renamed from: a */
        public void m21159a() {
            int i = this.f15181d;
            this.f15181d = i == Integer.MIN_VALUE ? this.f15179b : i + this.f15180c;
            this.f15182e = this.f15178a + this.f15181d;
        }

        /* renamed from: b */
        public String m21158b() {
            m21156d();
            return this.f15182e;
        }

        /* renamed from: c */
        public int m21157c() {
            m21156d();
            return this.f15181d;
        }
    }

    /* renamed from: a */
    void mo21061a(C5509e0 c5509e0, AbstractC4980j abstractC4980j, C4937d c4937d);

    /* renamed from: b */
    void mo21060b(C5536v c5536v, int i);

    /* renamed from: c */
    void mo21059c();
}
