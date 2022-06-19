package p193e.p194a.p1146q2;

import android.content.Context;
import android.location.LocationManager;
import javax.inject.Inject;
/* renamed from: e.a.q2.h0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/h0.class */
public class C19508h0 implements AbstractC19506g0 {

    /* renamed from: a */
    public final Context f54128a;

    /* renamed from: b */
    public final LocationManager f54129b;

    @Inject
    public C19508h0(Context context, LocationManager locationManager) {
        this.f54128a = context;
        this.f54129b = locationManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005c, code lost:
        if ((r0.getElapsedRealtimeNanos() - r7.getElapsedRealtimeNanos()) > 0) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x002d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // p193e.p194a.p1146q2.AbstractC19506g0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.location.Location mo13261a() {
        /*
            r5 = this;
            r0 = r5
            android.content.Context r0 = r0.f54128a     // Catch: java.lang.RuntimeException -> L64
            java.lang.String r1 = "android.permission.ACCESS_FINE_LOCATION"
            int r0 = p1727n3.p1807k.p1809b.C26467a.m1801a(r0, r1)     // Catch: java.lang.RuntimeException -> L64
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L1b
            r0 = r5
            android.location.LocationManager r0 = r0.f54129b     // Catch: java.lang.RuntimeException -> L64 java.lang.SecurityException -> L67
            java.lang.String r1 = "gps"
            android.location.Location r0 = r0.getLastKnownLocation(r1)     // Catch: java.lang.RuntimeException -> L64 java.lang.SecurityException -> L67
            r7 = r0
            goto L1d
        L1b:
            r0 = 0
            r7 = r0
        L1d:
            r0 = r5
            android.content.Context r0 = r0.f54128a     // Catch: java.lang.RuntimeException -> L64
            java.lang.String r1 = "android.permission.ACCESS_COARSE_LOCATION"
            int r0 = p1727n3.p1807k.p1809b.C26467a.m1801a(r0, r1)     // Catch: java.lang.RuntimeException -> L64
            r6 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 != 0) goto L62
            r0 = r5
            android.location.LocationManager r0 = r0.f54129b     // Catch: java.lang.RuntimeException -> L64 java.lang.SecurityException -> L6b
            java.lang.String r1 = "network"
            android.location.Location r0 = r0.getLastKnownLocation(r1)     // Catch: java.lang.RuntimeException -> L64 java.lang.SecurityException -> L6b
            r9 = r0
            r0 = r7
            if (r0 != 0) goto L3f
            goto L5f
        L3f:
            r0 = r7
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L62
            r0 = r9
            long r0 = r0.getElapsedRealtimeNanos()     // Catch: java.lang.RuntimeException -> L64 java.lang.SecurityException -> L6b
            r10 = r0
            r0 = r7
            long r0 = r0.getElapsedRealtimeNanos()     // Catch: java.lang.RuntimeException -> L64 java.lang.SecurityException -> L6b
            r12 = r0
            r0 = r7
            r8 = r0
            r0 = r10
            r1 = r12
            long r0 = r0 - r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L62
        L5f:
            r0 = r9
            r8 = r0
        L62:
            r0 = r8
            return r0
        L64:
            r7 = move-exception
            r0 = 0
            return r0
        L67:
            r7 = move-exception
            goto L1b
        L6b:
            r8 = move-exception
            r0 = r7
            r8 = r0
            goto L62
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.C19508h0.mo13261a():android.location.Location");
    }
}
