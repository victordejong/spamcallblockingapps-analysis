package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpo.class */
public final class dpo {

    /* renamed from: a */
    final ArrayDeque<dlw> f47378a;

    private dpo() {
        this.f47378a = new ArrayDeque<>();
    }

    public /* synthetic */ dpo(dpl dplVar) {
        this();
    }

    /* renamed from: a */
    private static int m16126a(int i) {
        int binarySearch = Arrays.binarySearch(dpm.f47370b, i);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (-(binarySearch + 1)) - 1;
        }
        return i2;
    }

    /* renamed from: a */
    public final void m16125a(dlw dlwVar) {
        dlw dlwVar2;
        dpm dpmVar;
        dlw dlwVar3;
        dlw dlwVar4;
        while (!dlwVar.mo16128j()) {
            if (!(dlwVar instanceof dpm)) {
                String valueOf = String.valueOf(dlwVar.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
                sb.append("Has a new type of ByteString been created? Found ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
            dpm dpmVar2 = (dpm) dlwVar;
            dlwVar3 = dpmVar2.f47372d;
            m16125a(dlwVar3);
            dlwVar4 = dpmVar2.f47373e;
            dlwVar = dlwVar4;
        }
        int m16126a = m16126a(dlwVar.mo16138b());
        int m16132d = dpm.m16132d(m16126a + 1);
        if (this.f47378a.isEmpty() || this.f47378a.peek().mo16138b() >= m16132d) {
            this.f47378a.push(dlwVar);
            return;
        }
        int m16132d2 = dpm.m16132d(m16126a);
        dlw pop = this.f47378a.pop();
        while (true) {
            dlwVar2 = pop;
            if (this.f47378a.isEmpty() || this.f47378a.peek().mo16138b() >= m16132d2) {
                break;
            }
            pop = new dpm(this.f47378a.pop(), dlwVar2, null);
        }
        dpm dpmVar3 = new dpm(dlwVar2, dlwVar, null);
        while (true) {
            dpmVar = dpmVar3;
            if (this.f47378a.isEmpty()) {
                break;
            }
            if (this.f47378a.peek().mo16138b() >= dpm.m16132d(m16126a(dpmVar.mo16138b()) + 1)) {
                break;
            }
            dpmVar3 = new dpm(this.f47378a.pop(), dpmVar, null);
        }
        this.f47378a.push(dpmVar);
    }
}
