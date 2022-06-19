package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.gy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gy.class */
public final class RunnableC14039gy implements Runnable {

    /* renamed from: a */
    final String f51757a;

    /* renamed from: b */
    final /* synthetic */ C14040gz f51758b;

    /* renamed from: c */
    final C13977eq f51759c;

    /* renamed from: d */
    private final URL f51760d;

    public RunnableC14039gy(C14040gz c14040gz, String str, URL url, byte[] bArr, Map map, C13977eq c13977eq, byte[] bArr2) {
        this.f51758b = c14040gz;
        C12045o.m19160a(str);
        C12045o.m19162a(url);
        C12045o.m19162a(c13977eq);
        this.f51760d = url;
        this.f51759c = c13977eq;
        this.f51757a = str;
    }

    /* renamed from: a */
    private final void m11835a(int i, Exception exc, byte[] bArr, Map<String, List<String>> map) {
        this.f51758b.f51637t.mo11658d().m12011a(new Runnable(this, i, exc, bArr, map) { // from class: com.google.android.gms.measurement.internal.gx

            /* renamed from: a */
            private final RunnableC14039gy f51752a;

            /* renamed from: b */
            private final int f51753b;

            /* renamed from: c */
            private final Exception f51754c;

            /* renamed from: d */
            private final byte[] f51755d;

            /* renamed from: e */
            private final Map f51756e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f51752a = this;
                this.f51753b = i;
                this.f51754c = exc;
                this.f51755d = bArr;
                this.f51756e = map;
            }

            @Override // java.lang.Runnable
            public final void run() {
                RunnableC14039gy runnableC14039gy = this.f51752a;
                runnableC14039gy.f51759c.f51510a.m11998a(this.f51753b, this.f51754c, this.f51755d);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0113  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.RunnableC14039gy.run():void");
    }
}
