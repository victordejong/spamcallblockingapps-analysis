package com.bytedance.sdk.openadsdk.p176k;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: com.bytedance.sdk.openadsdk.k.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/l.class */
public class C5041l {

    /* renamed from: a */
    private static final Set<String> f18244a = new HashSet();

    /* renamed from: b */
    private static final Set<String> f18245b = new HashSet();

    /* renamed from: c */
    private final ArrayList<C5042a> f18246c;

    /* renamed from: d */
    private final int f18247d;

    /* renamed from: e */
    private int f18248e;

    /* renamed from: f */
    private int f18249f;

    /* renamed from: g */
    private final int f18250g;

    /* renamed from: com.bytedance.sdk.openadsdk.k.l$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/l$a.class */
    public class C5042a {

        /* renamed from: a */
        final String f18251a;

        /* renamed from: b */
        int f18252b;

        C5042a(String str) {
            C5041l.this = r4;
            this.f18251a = str;
        }

        /* renamed from: a */
        public void m33195a() {
            C5041l.f18244a.add(this.f18251a);
        }

        /* renamed from: b */
        public void m33194b() {
            C5041l.f18245b.add(this.f18251a);
        }

        public String toString() {
            return this.f18251a;
        }
    }

    public C5041l(String str) {
        this.f18248e = -1;
        ArrayList<C5042a> arrayList = new ArrayList<>(1);
        this.f18246c = arrayList;
        arrayList.add(new C5042a(str));
        this.f18247d = 1;
        this.f18250g = 1;
    }

    public C5041l(List<String> list) {
        this.f18248e = -1;
        if (!list.isEmpty()) {
            int size = list.size();
            this.f18247d = size;
            this.f18246c = new ArrayList<>(size);
            ArrayList arrayList = null;
            ArrayList arrayList2 = null;
            for (String str : list) {
                C5042a c5042a = new C5042a(str);
                if (f18244a.contains(str)) {
                    ArrayList arrayList3 = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList3.add(c5042a);
                    arrayList2 = arrayList3;
                } else if (f18245b.contains(str)) {
                    ArrayList arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                    arrayList4.add(c5042a);
                    arrayList = arrayList4;
                } else {
                    this.f18246c.add(c5042a);
                }
            }
            if (arrayList != null) {
                this.f18246c.addAll(arrayList);
            }
            if (arrayList2 != null) {
                this.f18246c.addAll(arrayList2);
            }
            Integer num = C5001e.f18146i;
            this.f18250g = (num == null || num.intValue() <= 0) ? this.f18247d >= 2 ? 1 : 2 : num.intValue();
            return;
        }
        throw new IllegalArgumentException("urls can't be empty");
    }

    /* renamed from: a */
    public boolean m33199a() {
        return this.f18249f < this.f18250g;
    }

    /* renamed from: b */
    public C5042a m33198b() {
        if (m33199a()) {
            int i = this.f18248e + 1;
            if (i >= this.f18247d - 1) {
                this.f18248e = -1;
                this.f18249f++;
            } else {
                this.f18248e = i;
            }
            C5042a c5042a = this.f18246c.get(i);
            c5042a.f18252b = (this.f18249f * this.f18247d) + this.f18248e;
            return c5042a;
        }
        throw new NoSuchElementException();
    }
}
