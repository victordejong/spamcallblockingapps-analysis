package com.callapp.contacts.manager.analytics;

import com.callapp.contacts.manager.preferences.Prefs;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/AbTestUtils.class */
public class AbTestUtils {

    /* renamed from: a */
    public static int f25861a = 12;

    /* renamed from: b */
    private static Integer f25862b;

    /* renamed from: a */
    private static int m28451a() {
        int intValue;
        synchronized (AbTestUtils.class) {
            try {
                Integer num = Prefs.f26279bC.get();
                Integer num2 = num;
                if (num == null) {
                    num2 = Integer.valueOf(new Random().nextInt(f25861a));
                    Prefs.f26279bC.set(num2);
                }
                intValue = num2.intValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return intValue;
    }

    public static int getGroupDimension() {
        if (f25862b == null) {
            f25862b = Prefs.f26279bC.get();
        }
        if (f25862b == null) {
            f25862b = Integer.valueOf(m28451a());
        }
        return f25862b.intValue() % f25861a;
    }
}
