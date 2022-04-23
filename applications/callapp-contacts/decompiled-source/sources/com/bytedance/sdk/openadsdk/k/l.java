package com.bytedance.sdk.openadsdk.k;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/l.class */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f9794a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f9795b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<a> f9796c;

    /* renamed from: d  reason: collision with root package name */
    private final int f9797d;
    private int e;
    private int f;
    private final int g;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/l$a.class */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        final String f9798a;

        /* renamed from: b  reason: collision with root package name */
        int f9799b;

        a(String str) {
            this.f9798a = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            l.f9794a.add(this.f9798a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b() {
            l.f9795b.add(this.f9798a);
        }

        public String toString() {
            return this.f9798a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(String str) {
        this.e = -1;
        ArrayList<a> arrayList = new ArrayList<>(1);
        this.f9796c = arrayList;
        arrayList.add(new a(str));
        this.f9797d = 1;
        this.g = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(List<String> list) {
        this.e = -1;
        if (!list.isEmpty()) {
            int size = list.size();
            this.f9797d = size;
            this.f9796c = new ArrayList<>(size);
            ArrayList arrayList = null;
            ArrayList arrayList2 = null;
            for (String str : list) {
                a aVar = new a(str);
                if (f9794a.contains(str)) {
                    ArrayList arrayList3 = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList3.add(aVar);
                    arrayList2 = arrayList3;
                } else if (f9795b.contains(str)) {
                    ArrayList arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                    arrayList4.add(aVar);
                    arrayList = arrayList4;
                } else {
                    this.f9796c.add(aVar);
                }
            }
            if (arrayList != null) {
                this.f9796c.addAll(arrayList);
            }
            if (arrayList2 != null) {
                this.f9796c.addAll(arrayList2);
            }
            Integer num = e.i;
            this.g = (num == null || num.intValue() <= 0) ? this.f9797d >= 2 ? 1 : 2 : num.intValue();
            return;
        }
        throw new IllegalArgumentException("urls can't be empty");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f < this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a b() {
        if (a()) {
            int i = this.e + 1;
            if (i >= this.f9797d - 1) {
                this.e = -1;
                this.f++;
            } else {
                this.e = i;
            }
            a aVar = this.f9796c.get(i);
            aVar.f9799b = (this.f * this.f9797d) + this.e;
            return aVar;
        }
        throw new NoSuchElementException();
    }
}
