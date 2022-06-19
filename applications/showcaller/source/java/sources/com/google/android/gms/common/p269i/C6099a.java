package com.google.android.gms.common.p269i;

import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6131h;
import java.util.Locale;
/* renamed from: com.google.android.gms.common.i.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/i/a.class */
public class C6099a {

    /* renamed from: a */
    private final String f19424a;

    /* renamed from: b */
    private final String f19425b;

    /* renamed from: c */
    private final C6131h f19426c;

    /* renamed from: d */
    private final int f19427d;

    public C6099a(@RecentlyNonNull String str, @RecentlyNonNull String... strArr) {
        String str2;
        if (strArr.length == 0) {
            str2 = "";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str3 : strArr) {
                if (sb.length() > 1) {
                    sb.append(",");
                }
                sb.append(str3);
            }
            sb.append("] ");
            str2 = sb.toString();
        }
        this.f19425b = str2;
        this.f19424a = str;
        this.f19426c = new C6131h(str);
        int i = 2;
        while (i <= 7 && !Log.isLoggable(this.f19424a, i)) {
            i++;
        }
        this.f19427d = i;
    }

    /* renamed from: a */
    public void m17183a(@RecentlyNonNull String str, Object... objArr) {
        if (m17179e(3)) {
            Log.d(this.f19424a, m17181c(str, objArr));
        }
    }

    /* renamed from: b */
    public void m17182b(@RecentlyNonNull String str, Object... objArr) {
        Log.e(this.f19424a, m17181c(str, objArr));
    }

    @RecentlyNonNull
    /* renamed from: c */
    protected String m17181c(@RecentlyNonNull String str, Object... objArr) {
        String str2 = str;
        if (objArr != null) {
            str2 = str;
            if (objArr.length > 0) {
                str2 = String.format(Locale.US, str, objArr);
            }
        }
        return this.f19425b.concat(str2);
    }

    /* renamed from: d */
    public void m17180d(@RecentlyNonNull String str, Object... objArr) {
        Log.i(this.f19424a, m17181c(str, objArr));
    }

    /* renamed from: e */
    public boolean m17179e(int i) {
        return this.f19427d <= i;
    }

    /* renamed from: f */
    public void m17178f(@RecentlyNonNull String str, Object... objArr) {
        Log.w(this.f19424a, m17181c(str, objArr));
    }
}
