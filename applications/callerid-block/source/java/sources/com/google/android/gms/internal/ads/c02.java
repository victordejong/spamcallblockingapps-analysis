package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/c02.class */
final class c02<V> implements Runnable {
    @NullableDecl

    /* renamed from: b */
    d02<V> f6230b;

    c02(d02<V> d02Var) {
        this.f6230b = d02Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rz1 G;
        d02<V> d02Var = this.f6230b;
        if (d02Var == null || (G = d02.G(d02Var)) == null) {
            return;
        }
        this.f6230b = null;
        if (G.isDone()) {
            d02Var.o(G);
            return;
        }
        try {
            ScheduledFuture H = d02.H(d02Var);
            d02.I(d02Var, (ScheduledFuture) null);
            String str = "Timed out";
            if (H != null) {
                long abs = Math.abs(H.getDelay(TimeUnit.MILLISECONDS));
                str = "Timed out";
                if (abs > 10) {
                    StringBuilder sb = new StringBuilder(75);
                    sb.append("Timed out");
                    sb.append(" (timeout delayed by ");
                    sb.append(abs);
                    sb.append(" ms after scheduled time)");
                    str = sb.toString();
                }
            }
            String valueOf = String.valueOf(str);
            String str2 = str;
            String valueOf2 = String.valueOf(G);
            String str3 = str;
            int length = String.valueOf(valueOf).length();
            String str4 = str;
            int length2 = String.valueOf(valueOf2).length();
            String str5 = str;
            String str6 = str;
            StringBuilder sb2 = new StringBuilder(length + 2 + length2);
            String str7 = str;
            sb2.append(valueOf);
            String str8 = str;
            sb2.append(": ");
            String str9 = str;
            sb2.append(valueOf2);
            String str10 = str;
            d02Var.n(new zzegh(sb2.toString(), null));
        } finally {
            G.cancel(true);
        }
    }
}
