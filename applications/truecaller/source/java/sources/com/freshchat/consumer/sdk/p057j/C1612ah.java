package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.freshchat.consumer.sdk.p047b.C1466e;
import java.util.Locale;
/* renamed from: com.freshchat.consumer.sdk.j.ah */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ah.class */
public class C1612ah {
    /* renamed from: aO */
    public static boolean m40296aO(Context context) {
        String m40953bv = C1466e.m40905i(context).m40953bv();
        return C1626as.isEmpty(m40953bv) || C1626as.m40222p(m40953bv, m40289bc(context));
    }

    /* renamed from: aP */
    public static boolean m40295aP(Context context) {
        String m40989bE = C1466e.m40905i(context).m40989bE();
        return C1626as.isEmpty(m40989bE) || C1626as.m40222p(m40989bE, m40289bc(context));
    }

    /* renamed from: aQ */
    public static boolean m40294aQ(Context context) {
        String m40971bZ = C1466e.m40905i(context).m40971bZ();
        String m40289bc = m40289bc(context);
        if (C1626as.isEmpty(m40971bZ) || C1626as.isEmpty(m40289bc)) {
            return true;
        }
        return C1626as.m40222p(m40971bZ, m40289bc);
    }

    /* renamed from: b */
    private static String m40293b(Locale locale) {
        return locale == null ? "" : C1630aw.m40197eZ() ? locale.toLanguageTag() : C1715j.m39908a(locale);
    }

    /* renamed from: bN */
    public static void m40292bN(Context context) {
        if (context == null) {
            return;
        }
        C1466e.m40905i(context).m40982bN();
        C1719n.m39867ef();
        C1638b.m40136u(context);
    }

    /* renamed from: bU */
    public static Context m40291bU(Context context) {
        Locale m40290bb = m40290bb(context);
        Resources resources = context.getResources();
        Configuration configuration = (resources == null || resources.getConfiguration() == null) ? new Configuration() : resources.getConfiguration();
        Locale.setDefault(configuration.locale);
        configuration.setLocale(m40290bb);
        return context.createConfigurationContext(configuration);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
        if (r2 == null) goto L13;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: bb */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Locale m40290bb(android.content.Context r2) {
        /*
            r0 = r2
            android.content.Context r0 = r0.getApplicationContext()
            r2 = r0
            r0 = r2
            if (r0 == 0) goto L29
            r0 = r2
            android.content.res.Resources r0 = r0.getResources()     // Catch: java.lang.Throwable -> L17 java.lang.Exception -> L1b
            android.content.res.Configuration r0 = r0.getConfiguration()     // Catch: java.lang.Throwable -> L17 java.lang.Exception -> L1b
            java.util.Locale r0 = r0.locale     // Catch: java.lang.Throwable -> L17 java.lang.Exception -> L1b
            r2 = r0
            goto L2b
        L17:
            r2 = move-exception
            goto L23
        L1b:
            r2 = move-exception
            r0 = r2
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)     // Catch: java.lang.Throwable -> L17
            goto L31
        L23:
            java.util.Locale r0 = java.util.Locale.getDefault()
            r0 = r2
            throw r0
        L29:
            r0 = 0
            r2 = r0
        L2b:
            r0 = r2
            r3 = r0
            r0 = r2
            if (r0 != 0) goto L35
        L31:
            java.util.Locale r0 = java.util.Locale.getDefault()
            r3 = r0
        L35:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p057j.C1612ah.m40290bb(android.content.Context):java.util.Locale");
    }

    /* renamed from: bc */
    public static String m40289bc(Context context) {
        return m40293b(m40290bb(context));
    }

    public static int getTextDirection() {
        return 1;
    }
}
