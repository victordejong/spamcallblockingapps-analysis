package com.android.contacts.j;

import android.content.Context;
import android.preference.PreferenceManager;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/l.class */
public final class l {
    private static l f = null;
    private final String e = "SmartDialUnbundle";
    public int d = 3;

    /* renamed from: a  reason: collision with root package name */
    int f1555a = 1;

    /* renamed from: b  reason: collision with root package name */
    boolean f1556b = true;
    boolean c = false;
    private boolean g = true;

    private l() {
    }

    public static l a() {
        l lVar;
        synchronized (l.class) {
            try {
                if (f == null) {
                    f = new l();
                }
                lVar = f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x008a, code lost:
        if (r4.d == false) goto L_0x0090;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.android.contacts.j.a r4, int r5) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.j.l.a(com.android.contacts.j.a, int):boolean");
    }

    public final void a(Context context) {
        this.f1556b = PreferenceManager.getDefaultSharedPreferences(context).getBoolean("dialer_search_rule1", true);
    }

    public final void b(Context context) {
        this.c = PreferenceManager.getDefaultSharedPreferences(context).getBoolean("dialer_search_rule2", false);
    }
}
