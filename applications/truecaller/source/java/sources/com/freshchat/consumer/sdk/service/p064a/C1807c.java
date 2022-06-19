package com.freshchat.consumer.sdk.service.p064a;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p049c.C1488a;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.p068e.C1923y;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.a.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/a/c.class */
public class C1807c {
    /* renamed from: a */
    public static AbstractC1806b m39527a(Context context, C1805a c1805a) {
        int type = c1805a.getType();
        if (type != 1) {
            if (type == 2) {
                return new C1811f(context, c1805a);
            }
            if (type == 3) {
                return new C1822n(context, c1805a);
            }
            if (type == 4) {
                return new C1819j(context, c1805a);
            }
            if (type == 6) {
                return new C1820k(context, c1805a);
            }
            if (type == 7) {
                return new C1817i(context, c1805a);
            }
            if (type == 9) {
                return new C1813g(context, c1805a);
            }
            if (type == 11) {
                return new C1815h(context, c1805a);
            }
            C1594aa.m40338l(context, c1805a.m39528dr());
            throw new RuntimeException(C22128a.m8611i2("Unknown type ", type));
        }
        return new C1809e(context, c1805a);
    }

    /* renamed from: a */
    public static void m39526a(Context context, C1923y c1923y) {
        try {
            String m40966bj = C1466e.m40905i(context).m40966bj();
            C1613ai.m40284d("FRESHCHAT", "Failed to send FCM device token for user " + m40966bj);
            C1594aa.m40346c(context, new C1805a(4, c1923y.m39312dP()));
            C1613ai.m40284d("FRESHCHAT", "Adding FCM device token to backlog for user " + m40966bj);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: b */
    public static void m39525b(Context context, C1805a c1805a) {
        if (context == null || c1805a == null) {
            return;
        }
        C1488a c1488a = new C1488a(context);
        int type = c1805a.getType();
        if (type != 1) {
            if (type != 2 && type != 3) {
                if (type != 4) {
                    if (type == 6) {
                        c1488a.m40812d(c1805a);
                        return;
                    } else if (type == 7) {
                        c1488a.m40815b(c1805a);
                        return;
                    } else if (type != 9 && type != 11) {
                        return;
                    }
                }
            }
            c1488a.m40810f(c1805a);
            return;
        }
        c1488a.m40816a(c1805a);
    }

    /* renamed from: bd */
    public static boolean m39524bd(Context context) {
        return m39522f(context, 2);
    }

    /* renamed from: d */
    public static void m39523d(Context context, Message message) {
        try {
            C1594aa.m40346c(context, new C1805a(2, message.getAlias()));
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: f */
    public static boolean m39522f(Context context, int i) {
        if (context == null) {
            return false;
        }
        return new C1488a(context).m40808l(i);
    }

    /* renamed from: f */
    public static boolean m39521f(Context context, String str) {
        if (context == null || C1626as.isEmpty(str)) {
            return false;
        }
        return new C1488a(context).m40820S(str);
    }

    /* renamed from: m */
    public static C1805a m39520m(Context context, int i) {
        C1488a c1488a = new C1488a(context);
        return c1488a.m40808l(i) ? c1488a.m40822C(i) : null;
    }

    /* renamed from: s */
    public static boolean m39519s(Context context) {
        if (context == null) {
            return false;
        }
        C1466e m40905i = C1466e.m40905i(context);
        C1488a c1488a = new C1488a(context);
        if (m40905i.m40964bl()) {
            return C1716k.m39902a(c1488a.m40814cp());
        }
        boolean z = false;
        if (m39518t(context)) {
            z = false;
            if (m39524bd(context)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: t */
    public static boolean m39518t(Context context) {
        return m39522f(context, 1);
    }
}
