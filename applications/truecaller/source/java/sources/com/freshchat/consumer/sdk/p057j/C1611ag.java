package com.freshchat.consumer.sdk.p057j;

import android.content.Intent;
import android.os.Bundle;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.ag */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ag.class */
public class C1611ag {
    public static final String TAG = "com.freshchat.consumer.sdk.j.ag";

    /* renamed from: a */
    public static void m40301a(String str, Intent intent) {
        if (intent == null || intent.getExtras() == null) {
            return;
        }
        String str2 = str;
        if (C1626as.isEmpty(str)) {
            str2 = TAG;
        }
        Bundle extras = intent.getExtras();
        Set<String> keySet = extras.keySet();
        StringBuilder m8728C = C22128a.m8728C("************* Printing Intent (has ");
        m8728C.append(keySet.size());
        m8728C.append("extras) **********");
        C1613ai.m40284d(str2, m8728C.toString());
        C1613ai.m40284d(str2, "Action : " + intent.getAction());
        StringBuilder sb = new StringBuilder();
        for (String str3 : keySet) {
            Object obj = extras.get(str3);
            sb.setLength(0);
            sb.append("Name: ");
            sb.append(str3);
            sb.append(", Value: ");
            sb.append(obj != null ? obj.toString() : null);
            sb.append(" (Type: ");
            String str4 = null;
            if (obj != null) {
                str4 = obj.getClass().getSimpleName();
            }
            sb.append(str4);
            sb.append(" )");
            C1613ai.m40284d(str2, sb.toString());
        }
        C1613ai.m40284d(str2, "************* Done with intent **************");
    }

    /* renamed from: b */
    public static String m40300b(Intent intent, String str) {
        return intent.getStringExtra(str);
    }

    /* renamed from: c */
    public static boolean m40299c(Intent intent, String str) {
        return intent.getBooleanExtra(str, false);
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* renamed from: d */
    public static long m40298d(Intent intent, String str) {
        char c = 0;
        if (intent != null) {
            if (C1626as.isEmpty(str)) {
                c = 0;
            } else {
                try {
                    String stringExtra = intent.getStringExtra(str);
                    c = 0;
                    if (!C1626as.isEmpty(stringExtra)) {
                        c = Long.valueOf(stringExtra).longValue();
                    }
                } catch (Exception e) {
                    C1613ai.m40282e("FRESHCHAT", "Found invalid value for " + str, e);
                    c = (char) 0;
                }
            }
        }
        return c;
    }

    /* renamed from: e */
    public static int m40297e(Intent intent, String str) {
        int i = 0;
        if (intent != null) {
            if (C1626as.isEmpty(str)) {
                i = 0;
            } else {
                try {
                    String stringExtra = intent.getStringExtra(str);
                    i = 0;
                    if (!C1626as.isEmpty(stringExtra)) {
                        i = Integer.valueOf(stringExtra).intValue();
                    }
                } catch (Exception e) {
                    C1613ai.m40282e("FRESHCHAT", "Found invalid value for " + str, e);
                    i = 0;
                }
            }
        }
        return i;
    }
}
