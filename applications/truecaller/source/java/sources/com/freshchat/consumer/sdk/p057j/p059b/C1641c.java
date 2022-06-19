package com.freshchat.consumer.sdk.p057j.p059b;

import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1723q;
import java.util.GregorianCalendar;
import java.util.TimeZone;
/* renamed from: com.freshchat.consumer.sdk.j.b.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/b/c.class */
public class C1641c {
    public static final String TAG = "com.freshchat.consumer.sdk.j.b.c";

    /* renamed from: kq */
    public static volatile String f4390kq;

    /* renamed from: kr */
    private static C1639a f4391kr;

    /* renamed from: ks */
    private static long f4392ks = -1;

    /* renamed from: kt */
    private static long f4393kt = 43200000;

    /* renamed from: a */
    public static void m40130a(C1639a c1639a) {
        synchronized (C1639a.class) {
            try {
                f4391kr = c1639a;
                f4392ks = System.currentTimeMillis();
                String str = TAG;
                C1613ai.m40284d(str, "NTP Recalculated at " + f4392ks);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: fC */
    public static C1639a m40129fC() {
        return f4391kr;
    }

    /* renamed from: fD */
    public static void m40128fD() {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            long j = currentTimeMillis - f4392ks;
            boolean z = j > f4393kt || j <= 0;
            String str = TAG;
            C1613ai.m40284d(str, "NTP c: " + currentTimeMillis + " lntp: " + f4392ks + " d: " + j + " int: " + f4393kt + " calc: " + z);
            if (m40129fC() != null && !z) {
                return;
            }
            C1613ai.m40284d(str, "Re-initing network time");
            new Thread(new RunnableC1640b()).start();
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: fE */
    public static long m40127fE() {
        C1639a m40129fC = m40129fC();
        ?? timeInMillis = new GregorianCalendar(TimeZone.getTimeZone("GMT")).getTimeInMillis();
        char c = timeInMillis;
        if (m40129fC != null) {
            long m40131fB = m40129fC.m40131fB();
            c = timeInMillis;
            if (m40131fB != -2147483648L) {
                String str = TAG;
                C1613ai.m40284d(str, "Adjustment offset for time " + m40131fB);
                c = timeInMillis + m40131fB;
            }
        }
        return c;
    }
}
