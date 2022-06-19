package p193e.p194a.p1114o5;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import s1.z.c.l;
/* renamed from: e.a.o5.t1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/t1.class */
public final class C19106t1 implements AbstractC19102s1 {

    /* renamed from: a */
    public final Context f53322a;

    /* renamed from: b */
    public final AbstractC19219a0 f53323b;

    /* renamed from: c */
    public final AbstractC19230g f53324c;

    public C19106t1(Context context, AbstractC19219a0 abstractC19219a0, AbstractC19230g abstractC19230g) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f53322a = context;
        this.f53323b = abstractC19219a0;
        this.f53324c = abstractC19230g;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19102s1
    /* renamed from: a */
    public boolean mo14095a(int i) {
        boolean z = true;
        if ((i & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c2  */
    @Override // p193e.p194a.p1114o5.AbstractC19102s1
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo14094b() {
        /*
            r6 = this;
            r0 = r6
            android.content.Context r0 = r0.f53322a
            r7 = r0
            r0 = r6
            e.a.p5.a0 r0 = r0.f53323b
            r1 = 1
            java.lang.String[] r1 = new java.lang.String[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "android.permission.READ_PHONE_STATE"
            r2[r3] = r4
            boolean r0 = r0.mo13825h(r1)
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L24
        L1e:
            r0 = 0
            r10 = r0
            goto Lbb
        L24:
            r0 = r7
            java.lang.String r1 = "telecom"
            java.lang.Object r0 = r0.getSystemService(r1)
            r11 = r0
            r0 = r11
            r7 = r0
            r0 = r11
            boolean r0 = r0 instanceof android.telecom.TelecomManager
            if (r0 != 0) goto L39
            r0 = 0
            r7 = r0
        L39:
            r0 = r7
            android.telecom.TelecomManager r0 = (android.telecom.TelecomManager) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1e
            r0 = r7
            java.util.List r0 = r0.getCallCapablePhoneAccounts()     // Catch: java.lang.SecurityException -> Lb1
            r11 = r0
            r0 = r11
            java.lang.String r1 = "telecomManager.callCapablePhoneAccounts"
            s1.z.c.l.d(r0, r1)     // Catch: java.lang.SecurityException -> Lb1
            r0 = r11
            java.util.Iterator r0 = r0.iterator()
            r11 = r0
        L58:
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L1e
            r0 = r7
            r1 = r11
            java.lang.Object r1 = r1.next()
            android.telecom.PhoneAccountHandle r1 = (android.telecom.PhoneAccountHandle) r1
            android.telecom.PhoneAccount r0 = r0.getPhoneAccount(r1)
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L58
            r0 = r12
            r1 = 8
            boolean r0 = r0.hasCapabilities(r1)
            if (r0 == 0) goto L58
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 24
            if (r0 < r1) goto L8f
            r0 = 1
            r10 = r0
            goto L92
        L8f:
            r0 = 0
            r10 = r0
        L92:
            r0 = r10
            if (r0 != 0) goto L9a
            goto Lab
        L9a:
            r0 = r12
            r1 = 256(0x100, float:3.59E-43)
            boolean r0 = r0.hasCapabilities(r1)
            if (r0 == 0) goto Lab
            r0 = 3
            r10 = r0
            goto Lbb
        Lab:
            r0 = 1
            r10 = r0
            goto Lbb
        Lb1:
            r7 = move-exception
            r0 = r7
            java.lang.String r1 = "Couldn't get video calling availability"
            p193e.p194a.p437c.p578p.C10480a.m26057J1(r0, r1)
            goto L1e
        Lbb:
            r0 = r10
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto Lc4
            r0 = 1
            r9 = r0
        Lc4:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1114o5.C19106t1.mo14094b():boolean");
    }
}
