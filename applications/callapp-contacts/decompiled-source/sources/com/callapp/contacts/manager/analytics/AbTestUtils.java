package com.callapp.contacts.manager.analytics;

import com.callapp.contacts.manager.preferences.Prefs;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/AbTestUtils.class */
public class AbTestUtils {

    /* renamed from: a  reason: collision with root package name */
    public static int f14954a = 12;

    /* renamed from: b  reason: collision with root package name */
    private static Integer f14955b;

    private static int a() {
        int intValue;
        synchronized (AbTestUtils.class) {
            try {
                Integer num = Prefs.bC.get();
                Integer num2 = num;
                if (num == null) {
                    num2 = Integer.valueOf(new Random().nextInt(f14954a));
                    Prefs.bC.set(num2);
                }
                intValue = num2.intValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return intValue;
    }

    public static int getGroupDimension() {
        if (f14955b == null) {
            f14955b = Prefs.bC.get();
        }
        if (f14955b == null) {
            f14955b = Integer.valueOf(a());
        }
        return f14955b.intValue() % f14954a;
    }
}
