package com.asus.blocklist;

import android.content.Context;
import android.provider.Telephony;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2454a = a.class.getSimpleName();

    /* renamed from: com.asus.blocklist.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/a$a.class */
    public static final class C0064a {

        /* renamed from: a  reason: collision with root package name */
        public int f2455a;

        /* renamed from: b  reason: collision with root package name */
        public String f2456b;
        public int c;
        public String d;
        public long e;
        public String f;

        public C0064a(int i, String str, int i2, String str2, long j, String str3) {
            this.f2455a = i;
            this.f2456b = str;
            this.c = i2;
            this.d = str2;
            this.e = j;
            this.f = str3;
        }

        public static boolean a(C0064a aVar, C0064a aVar2) {
            boolean z = false;
            if (aVar != null) {
                if (aVar2 == null) {
                    z = false;
                } else {
                    z = false;
                    if (aVar.f2455a == aVar2.f2455a) {
                        z = false;
                        if (aVar.f2456b != null) {
                            z = false;
                            if (aVar.f2456b.equalsIgnoreCase(aVar2.f2456b)) {
                                z = false;
                                if (aVar.c == aVar2.c) {
                                    z = false;
                                    if (aVar.d != null) {
                                        z = false;
                                        if (aVar.d.equalsIgnoreCase(aVar2.d)) {
                                            z = false;
                                            if (aVar.e == aVar2.e) {
                                                z = false;
                                                if (aVar.f != null) {
                                                    z = false;
                                                    if (aVar.f.equalsIgnoreCase(aVar2.f)) {
                                                        z = true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0051, code lost:
        if (android.provider.BlockedNumberContract.canCurrentUserBlockNumbers(r5) != false) goto L_0x0054;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r5) {
        /*
            r0 = 1
            r6 = r0
            r0 = r5
            boolean r0 = com.android.contacts.util.PhoneCapabilityTester.isInOwnerMode(r0)
            r7 = r0
            r0 = r5
            boolean r0 = com.android.contacts.util.PhoneCapabilityTester.isPhone(r0)
            r8 = r0
            boolean r0 = com.android.contacts.util.CompatUtils.isNCompatible()
            if (r0 == 0) goto L_0x008c
            boolean r0 = com.android.contacts.util.PhoneCapabilityTester.isDebug()     // Catch: Exception -> 0x0066
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = com.asus.blocklist.a.f2454a     // Catch: Exception -> 0x0066
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: Exception -> 0x0066
            r10 = r0
            r0 = r10
            java.lang.String r1 = "enable checker:"
            r0.<init>(r1)     // Catch: Exception -> 0x0066
            r0 = r9
            r1 = r10
            r2 = r5
            boolean r2 = android.provider.BlockedNumberContract.canCurrentUserBlockNumbers(r2)     // Catch: Exception -> 0x0066
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: Exception -> 0x0066
            java.lang.String r1 = r1.toString()     // Catch: Exception -> 0x0066
            int r0 = android.util.Log.d(r0, r1)     // Catch: Exception -> 0x0066
        L_0x003b:
            r0 = r5
            boolean r0 = com.android.contacts.util.TelecomUtil.isDefaultDialer(r0)     // Catch: Exception -> 0x0066
            if (r0 != 0) goto L_0x0054
            r0 = r5
            boolean r0 = com.android.contacts.util.TelecomUtil.isSystemDialer(r0)     // Catch: Exception -> 0x0066
            if (r0 == 0) goto L_0x0081
            r0 = r5
            boolean r0 = android.provider.BlockedNumberContract.canCurrentUserBlockNumbers(r0)     // Catch: Exception -> 0x0066
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0081
        L_0x0054:
            r0 = 1
            r12 = r0
        L_0x0057:
            r0 = r7
            if (r0 == 0) goto L_0x0087
            r0 = r8
            if (r0 == 0) goto L_0x0087
            r0 = r12
            if (r0 == 0) goto L_0x0087
        L_0x0064:
            r0 = r6
            return r0
        L_0x0066:
            r5 = move-exception
            java.lang.String r0 = com.asus.blocklist.a.f2454a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "fail to check BlockList enable due to: "
            r2.<init>(r3)
            r2 = r5
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.w(r0, r1)
        L_0x0081:
            r0 = 0
            r12 = r0
            goto L_0x0057
        L_0x0087:
            r0 = 0
            r6 = r0
            goto L_0x0064
        L_0x008c:
            r0 = 1
            r12 = r0
            goto L_0x0057
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.a.a(android.content.Context):boolean");
    }

    public static boolean b(Context context) {
        return CompatUtils.isNCompatible() ? PhoneCapabilityTester.isInOwnerMode(context) : PhoneCapabilityTester.isInOwnerMode(context) && PhoneCapabilityTester.IsAsusDevice() && c(context);
    }

    public static boolean c(Context context) {
        return com.asus.contacts.a.a(context, "com.asus.message") && "com.asus.message".equals(Telephony.Sms.getDefaultSmsPackage(context));
    }
}
