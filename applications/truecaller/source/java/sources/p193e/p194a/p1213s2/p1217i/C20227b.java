package p193e.p194a.p1213s2.p1217i;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.s2.i.b */
/* loaded from: classes5-dex2jar.jar:e/a/s2/i/b.class */
public final class C20227b implements AbstractC20226a {

    /* renamed from: a */
    public final Context f56975a;

    @Inject
    public C20227b(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f56975a = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x009b, code lost:
        if ((r0 != null && r0.isEnabled() && r0.getProfileConnectionState(1) == 2) != false) goto L33;
     */
    @Override // p193e.p194a.p1213s2.p1217i.AbstractC20226a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo11317a() {
        /*
            r3 = this;
            r0 = r3
            android.content.Context r0 = r0.f56975a
            android.media.AudioManager r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13630F(r0)
            r1 = 2
            android.media.AudioDeviceInfo[] r0 = r0.getDevices(r1)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "devices"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            int r0 = r0.length
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
        L1a:
            r0 = r7
            r1 = r5
            if (r0 >= r1) goto L5e
            r0 = r4
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r8
            java.lang.String r1 = "it"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            int r0 = r0.getType()
            r9 = r0
            r0 = r9
            r1 = 3
            if (r0 == r1) goto L4d
            r0 = r9
            r1 = 4
            if (r0 == r1) goto L4d
            r0 = r9
            r1 = 22
            if (r0 == r1) goto L4d
            r0 = 0
            r9 = r0
            goto L50
        L4d:
            r0 = 1
            r9 = r0
        L50:
            r0 = r9
            if (r0 == 0) goto L58
            goto L61
        L58:
            int r7 = r7 + 1
            goto L1a
        L5e:
            r0 = 0
            r8 = r0
        L61:
            r0 = r8
            if (r0 == 0) goto L6c
            r0 = 1
            r7 = r0
            goto L6f
        L6c:
            r0 = 0
            r7 = r0
        L6f:
            r0 = r7
            if (r0 != 0) goto L9e
            android.bluetooth.BluetoothAdapter r0 = android.bluetooth.BluetoothAdapter.getDefaultAdapter()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L96
            r0 = r8
            boolean r0 = r0.isEnabled()
            if (r0 == 0) goto L96
            r0 = r8
            r1 = 1
            int r0 = r0.getProfileConnectionState(r1)
            r1 = 2
            if (r0 != r1) goto L96
            r0 = 1
            r7 = r0
            goto L99
        L96:
            r0 = 0
            r7 = r0
        L99:
            r0 = r7
            if (r0 == 0) goto La0
        L9e:
            r0 = 1
            r6 = r0
        La0:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1213s2.p1217i.C20227b.mo11317a():boolean");
    }
}
