package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpo.class */
public final class dpo {

    /* renamed from: a  reason: collision with root package name */
    final ArrayDeque<dlw> f27074a;

    private dpo() {
        this.f27074a = new ArrayDeque<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dpo(dpl dplVar) {
        this();
    }

    private static int a(int i) {
        int binarySearch = Arrays.binarySearch(dpm.f27069b, i);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (-(binarySearch + 1)) - 1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(dlw dlwVar) {
        dlw dlwVar2;
        while (!dlwVar.j()) {
            if (dlwVar instanceof dpm) {
                dpm dpmVar = (dpm) dlwVar;
                dlwVar2 = dpmVar.f27071d;
                a(dlwVar2);
                dlwVar = dpmVar.e;
            } else {
                String valueOf = String.valueOf(dlwVar.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
                sb.append("Has a new type of ByteString been created? Found ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        int a2 = a(dlwVar.b());
        int d2 = dpm.d(a2 + 1);
        if (this.f27074a.isEmpty() || this.f27074a.peek().b() >= d2) {
            this.f27074a.push(dlwVar);
            return;
        }
        int d3 = dpm.d(a2);
        dlw pop = this.f27074a.pop();
        while (!this.f27074a.isEmpty() && this.f27074a.peek().b() < d3) {
            pop = new dpm(this.f27074a.pop(), pop, null);
        }
        dpm dpmVar2 = new dpm(pop, dlwVar, null);
        while (!this.f27074a.isEmpty()) {
            if (this.f27074a.peek().b() >= dpm.d(a(dpmVar2.b()) + 1)) {
                break;
            }
            dpmVar2 = new dpm(this.f27074a.pop(), dpmVar2, null);
        }
        this.f27074a.push(dpmVar2);
    }
}
