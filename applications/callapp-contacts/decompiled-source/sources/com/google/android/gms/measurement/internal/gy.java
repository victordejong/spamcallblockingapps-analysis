package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gy.class */
public final class gy implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final String f29736a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gz f29737b;

    /* renamed from: c  reason: collision with root package name */
    final eq f29738c;

    /* renamed from: d  reason: collision with root package name */
    private final URL f29739d;

    public gy(gz gzVar, String str, URL url, byte[] bArr, Map map, eq eqVar, byte[] bArr2) {
        this.f29737b = gzVar;
        o.a(str);
        o.a(url);
        o.a(eqVar);
        this.f29739d = url;
        this.f29738c = eqVar;
        this.f29736a = str;
    }

    private final void a(final int i, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) {
        this.f29737b.t.d().a(new Runnable(this, i, exc, bArr, map) { // from class: com.google.android.gms.measurement.internal.gx

            /* renamed from: a  reason: collision with root package name */
            private final gy f29732a;

            /* renamed from: b  reason: collision with root package name */
            private final int f29733b;

            /* renamed from: c  reason: collision with root package name */
            private final Exception f29734c;

            /* renamed from: d  reason: collision with root package name */
            private final byte[] f29735d;
            private final Map e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29732a = this;
                this.f29733b = i;
                this.f29734c = exc;
                this.f29735d = bArr;
                this.e = map;
            }

            @Override // java.lang.Runnable
            public final void run() {
                gy gyVar = this.f29732a;
                gyVar.f29738c.f29580a.a(this.f29733b, this.f29734c, this.f29735d);
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.gy.run():void");
    }
}
