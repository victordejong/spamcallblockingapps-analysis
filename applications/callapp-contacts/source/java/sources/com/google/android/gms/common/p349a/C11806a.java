package com.google.android.gms.common.p349a;

import android.util.Log;
import com.google.android.gms.common.internal.C12035h;
import java.util.Locale;
/* renamed from: com.google.android.gms.common.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/a/a.class */
public final class C11806a {

    /* renamed from: a */
    private final String f39163a;

    /* renamed from: b */
    private final String f39164b;

    /* renamed from: c */
    private final C12035h f39165c;

    /* renamed from: d */
    private final int f39166d;

    public C11806a(String str, String... strArr) {
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
        this.f39164b = str2;
        this.f39163a = str;
        this.f39165c = new C12035h(str);
        int i = 2;
        while (i <= 7 && !Log.isLoggable(this.f39163a, i)) {
            i++;
        }
        this.f39166d = i;
    }

    /* renamed from: a */
    public final void m19476a(String str, Object... objArr) {
        if (this.f39166d <= 3) {
            m19473d(str, objArr);
        }
    }

    /* renamed from: b */
    public final void m19475b(String str, Object... objArr) {
        Log.w(this.f39163a, m19473d(str, objArr));
    }

    /* renamed from: c */
    public final void m19474c(String str, Object... objArr) {
        Log.e(this.f39163a, m19473d(str, objArr));
    }

    /* renamed from: d */
    public String m19473d(String str, Object... objArr) {
        String str2 = str;
        if (objArr != null) {
            str2 = str;
            if (objArr.length > 0) {
                str2 = String.format(Locale.US, str, objArr);
            }
        }
        return this.f39164b.concat(str2);
    }
}
