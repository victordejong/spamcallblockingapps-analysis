package com.android.contacts.link;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/link/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    List<Long> f1652a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    List<Integer> f1653b = new ArrayList();

    public final int a() {
        return this.f1652a.size();
    }

    public final long a(int i) {
        return this.f1652a.get(i).longValue();
    }

    public final void a(long j, int i) {
        int size = this.f1652a.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f1652a.get(i2).longValue() == j && this.f1653b.get(i2).intValue() == i) {
                return;
            }
        }
        this.f1652a.add(Long.valueOf(j));
        this.f1653b.add(Integer.valueOf(i));
    }

    public final int b(int i) {
        return this.f1653b.get(i).intValue();
    }

    public final void b() {
        this.f1652a.clear();
        this.f1653b.clear();
    }

    public final void b(long j, int i) {
        int size = this.f1652a.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f1652a.get(i2).longValue() == j && this.f1653b.get(i2).intValue() == i) {
                this.f1652a.remove(i2);
                this.f1653b.remove(i2);
                return;
            }
        }
    }
}
