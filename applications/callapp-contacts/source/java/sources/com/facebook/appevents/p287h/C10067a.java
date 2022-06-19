package com.facebook.appevents.p287h;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.C10181g;
import com.facebook.appevents.C10002c;
import com.facebook.internal.C10213ae;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.facebook.appevents.h.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/a.class */
public class C10067a {

    /* renamed from: a */
    private static final Set<String> f33386a = new HashSet(Arrays.asList("fb_mobile_purchase", "StartTrial", "Subscribe"));

    /* renamed from: a */
    public static void m23469a(final String str, final C10002c c10002c) {
        if (C10249a.m23108a(C10067a.class)) {
            return;
        }
        try {
            if (!m23470a(c10002c)) {
                return;
            }
            C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.h.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        C10071c.m23460a(str, Arrays.asList(c10002c));
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10067a.class);
        }
    }

    /* renamed from: a */
    public static void m23468a(final String str, final String str2) {
        if (C10249a.m23108a(C10067a.class)) {
            return;
        }
        try {
            final Context m23290i = C10181g.m23290i();
            if (m23290i == null || str == null) {
                return;
            }
            C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.h.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        SharedPreferences sharedPreferences = m23290i.getSharedPreferences(str2, 0);
                        String str3 = str + "pingForOnDevice";
                        if (sharedPreferences.getLong(str3, 0L) != 0) {
                            return;
                        }
                        C10071c.m23461a(str);
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        edit.putLong(str3, System.currentTimeMillis());
                        edit.apply();
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10067a.class);
        }
    }

    /* renamed from: a */
    public static boolean m23471a() {
        if (C10249a.m23108a(C10067a.class)) {
            return false;
        }
        try {
            if (!(!C10181g.m23300b(C10181g.m23290i()) && !C10213ae.m23186h())) {
                return false;
            }
            return C10071c.m23464a();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10067a.class);
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m23470a(C10002c c10002c) {
        if (C10249a.m23108a(C10067a.class)) {
            return false;
        }
        try {
            return (c10002c.f33250b ^ true) || (c10002c.f33250b && f33386a.contains(c10002c.f33251c));
        } catch (Throwable th) {
            C10249a.m23106a(th, C10067a.class);
            return false;
        }
    }
}
