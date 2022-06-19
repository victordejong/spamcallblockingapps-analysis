package p068d2;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
/* renamed from: d2.d1 */
/* loaded from: classes-dex2jar.jar:d2/d1.class */
public class C2194d1 {

    /* renamed from: a */
    public ScheduledExecutorService f8004a;

    /* renamed from: b */
    public ScheduledFuture<?> f8005b;

    /* renamed from: c */
    public String f8006c;

    /* renamed from: a */
    public final void m3773a() {
        String m3772b = m3772b();
        if (!m3772b.equals(this.f8006c)) {
            this.f8006c = m3772b;
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3744i(c2267f4, "network_type", m3772b);
            new C2410t0("Network.on_status_change", 1, c2267f4).m3586b();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        if (r0 >= 2) goto L20;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m3772b() {
        /*
            r3 = this;
            android.content.Context r0 = p068d2.C2408t.f8531a
            r4 = r0
            java.lang.String r0 = "none"
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L10
            r0 = r5
            r4 = r0
            goto Lc8
        L10:
            r0 = r4
            android.content.Context r0 = r0.getApplicationContext()     // Catch: java.lang.Exception -> L55 java.lang.SecurityException -> L90
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: java.lang.Exception -> L55 java.lang.SecurityException -> L90
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0     // Catch: java.lang.Exception -> L55 java.lang.SecurityException -> L90
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L26
            r0 = 0
            r4 = r0
            goto L2b
        L26:
            r0 = r4
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()     // Catch: java.lang.Exception -> L55 java.lang.SecurityException -> L90
            r4 = r0
        L2b:
            r0 = r4
            if (r0 != 0) goto L34
            r0 = r5
            r4 = r0
            goto Lc8
        L34:
            r0 = r4
            int r0 = r0.getType()     // Catch: java.lang.Exception -> L55 java.lang.SecurityException -> L90
            r6 = r0
            r0 = r6
            r1 = 1
            if (r0 != r1) goto L44
            java.lang.String r0 = "wifi"
            r4 = r0
            goto Lc8
        L44:
            r0 = r6
            if (r0 == 0) goto L4f
            r0 = r5
            r4 = r0
            r0 = r6
            r1 = 2
            if (r0 < r1) goto Lc8
        L4f:
            java.lang.String r0 = "cell"
            r4 = r0
            goto Lc8
        L55:
            r7 = move-exception
            d2.u$a r0 = new d2.u$a
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.StringBuilder r0 = r0.f8564a
            java.lang.String r1 = "Exception occurred when retrieving activeNetworkInfo in "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            java.lang.StringBuilder r0 = r0.f8564a
            java.lang.String r1 = "ADCNetwork.getConnectivityStatus(): "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r7 = r0
            r0 = r4
            java.lang.StringBuilder r0 = r0.f8564a
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            d2.u r1 = p068d2.C2415u.f8561f
            r0.m3580a(r1)
            r0 = r5
            r4 = r0
            goto Lc8
        L90:
            r7 = move-exception
            d2.u$a r0 = new d2.u$a
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.StringBuilder r0 = r0.f8564a
            java.lang.String r1 = "SecurityException - please ensure you added the "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            java.lang.StringBuilder r0 = r0.f8564a
            java.lang.String r1 = "ACCESS_NETWORK_STATE permission: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r7 = r0
            r0 = r4
            java.lang.StringBuilder r0 = r0.f8564a
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            d2.u r1 = p068d2.C2415u.f8560e
            r0.m3580a(r1)
            r0 = r5
            r4 = r0
        Lc8:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p068d2.C2194d1.m3772b():java.lang.String");
    }
}
