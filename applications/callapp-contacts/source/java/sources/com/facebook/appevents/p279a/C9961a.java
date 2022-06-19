package com.facebook.appevents.p279a;

import android.app.Activity;
import com.facebook.C10181g;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10234b;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.p299b.p301b.C10249a;
/* renamed from: com.facebook.appevents.a.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/a/a.class */
public final class C9961a {

    /* renamed from: a */
    private static final String f33140a = "com.facebook.appevents.a.a";

    /* renamed from: b */
    private static Boolean f33141b = Boolean.FALSE;

    /* renamed from: a */
    static /* synthetic */ Boolean m23745a(Boolean bool) {
        if (C10249a.m23108a(C9961a.class)) {
            return null;
        }
        try {
            f33141b = bool;
            return bool;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9961a.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23747a() {
        try {
            if (C10249a.m23108a(C9961a.class)) {
                return;
            }
            try {
                C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.a.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (C10249a.m23108a(this)) {
                            return;
                        }
                        try {
                            if (C10234b.m23139a(C10181g.m23290i())) {
                                return;
                            }
                            C9961a.m23744b();
                            C9961a.m23745a(Boolean.TRUE);
                        } catch (Throwable th) {
                            C10249a.m23106a(th, this);
                        }
                    }
                });
            } catch (Exception e) {
                C10213ae.m23228a(f33140a, e);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C9961a.class);
        }
    }

    /* renamed from: a */
    public static void m23746a(Activity activity) {
        if (C10249a.m23108a(C9961a.class)) {
            return;
        }
        try {
            if (f33141b.booleanValue() && !C9964c.m23737a().isEmpty()) {
                ViewTreeObserver$OnGlobalFocusChangeListenerC9965d.m23730a(activity);
            }
        } catch (Exception e) {
        } catch (Throwable th) {
            C10249a.m23106a(th, C9961a.class);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m23744b() {
        C10302p m23026a;
        String str;
        if (C10249a.m23108a(C9961a.class)) {
            return;
        }
        try {
            if (C10249a.m23108a(C9961a.class) || (m23026a = C10306q.m23026a(C10181g.m23286m(), false)) == null || (str = m23026a.f33853j) == null) {
                return;
            }
            C9964c.m23736a(str);
        } catch (Throwable th) {
            C10249a.m23106a(th, C9961a.class);
        }
    }
}
