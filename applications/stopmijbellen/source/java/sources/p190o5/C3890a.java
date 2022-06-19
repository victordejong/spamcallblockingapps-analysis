package p190o5;

import android.content.Context;
import android.util.Log;
import p080e5.C2546e;
/* renamed from: o5.a */
/* loaded from: classes-dex2jar.jar:o5/a.class */
public class C3890a {

    /* renamed from: a */
    public final Context f12382a;

    /* renamed from: b */
    public boolean f12383b = false;

    /* renamed from: c */
    public String f12384c;

    public C3890a(Context context) {
        this.f12382a = context;
    }

    /* renamed from: a */
    public String m1729a() {
        String str;
        if (!this.f12383b) {
            Context context = this.f12382a;
            int m3452f = C2546e.m3452f(context, "com.google.firebase.crashlytics.unity_version", "string");
            if (m3452f != 0) {
                str = context.getResources().getString(m3452f);
                Log.isLoggable("FirebaseCrashlytics", 2);
            } else {
                str = null;
            }
            this.f12384c = str;
            this.f12383b = true;
        }
        String str2 = this.f12384c;
        if (str2 != null) {
            return str2;
        }
        return null;
    }
}
