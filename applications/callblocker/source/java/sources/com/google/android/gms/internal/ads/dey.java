package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dey.class */
public final class dey {

    /* renamed from: a */
    private final ArrayDeque<dbi> f14182a;

    private dey() {
        this.f14182a = new ArrayDeque<>();
    }

    public /* synthetic */ dey(dez dezVar) {
        this();
    }

    /* renamed from: a */
    private static int m9858a(int i) {
        int binarySearch = Arrays.binarySearch(dew.f14176b, i);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (-(binarySearch + 1)) - 1;
        }
        return i2;
    }

    /* renamed from: a */
    public final dbi m9856a(dbi dbiVar, dbi dbiVar2) {
        m9857a(dbiVar);
        m9857a(dbiVar2);
        dbi pop = this.f14182a.pop();
        while (true) {
            dbi dbiVar3 = pop;
            if (!this.f14182a.isEmpty()) {
                pop = new dew(this.f14182a.pop(), dbiVar3, null);
            } else {
                return dbiVar3;
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ dbi m9855a(dey deyVar, dbi dbiVar, dbi dbiVar2) {
        return deyVar.m9856a(dbiVar, dbiVar2);
    }

    /* renamed from: a */
    private final void m9857a(dbi dbiVar) {
        dbi dbiVar2;
        dew dewVar;
        dbi dbiVar3;
        dbi dbiVar4;
        while (!dbiVar.mo9901j()) {
            if (!(dbiVar instanceof dew)) {
                String valueOf = String.valueOf(dbiVar.getClass());
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 49).append("Has a new type of ByteString been created? Found ").append(valueOf).toString());
            }
            dew dewVar2 = (dew) dbiVar;
            dbiVar3 = dewVar2.f14178d;
            m9857a(dbiVar3);
            dbiVar4 = dewVar2.f14179e;
            dbiVar = dbiVar4;
        }
        int m9858a = m9858a(dbiVar.mo9911b());
        int m9905d = dew.m9905d(m9858a + 1);
        if (this.f14182a.isEmpty() || this.f14182a.peek().mo9911b() >= m9905d) {
            this.f14182a.push(dbiVar);
            return;
        }
        int m9905d2 = dew.m9905d(m9858a);
        dbi pop = this.f14182a.pop();
        while (true) {
            dbiVar2 = pop;
            if (this.f14182a.isEmpty() || this.f14182a.peek().mo9911b() >= m9905d2) {
                break;
            }
            pop = new dew(this.f14182a.pop(), dbiVar2, null);
        }
        dew dewVar3 = new dew(dbiVar2, dbiVar, null);
        while (true) {
            dewVar = dewVar3;
            if (this.f14182a.isEmpty()) {
                break;
            }
            if (this.f14182a.peek().mo9911b() >= dew.m9905d(m9858a(dewVar.mo9911b()) + 1)) {
                break;
            }
            dewVar3 = new dew(this.f14182a.pop(), dewVar, null);
        }
        this.f14182a.push(dewVar);
    }
}
