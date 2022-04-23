package com.google.android.gms.common.a;

import android.util.Log;
import com.google.android.gms.common.internal.h;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f22598a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22599b;

    /* renamed from: c  reason: collision with root package name */
    private final h f22600c;

    /* renamed from: d  reason: collision with root package name */
    private final int f22601d;

    public a(String str, String... strArr) {
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
        this.f22599b = str2;
        this.f22598a = str;
        this.f22600c = new h(str);
        int i = 2;
        while (i <= 7 && !Log.isLoggable(this.f22598a, i)) {
            i++;
        }
        this.f22601d = i;
    }

    public final void a(String str, Object... objArr) {
        if (this.f22601d <= 3) {
            d(str, objArr);
        }
    }

    public final void b(String str, Object... objArr) {
        Log.w(this.f22598a, d(str, objArr));
    }

    public final void c(String str, Object... objArr) {
        Log.e(this.f22598a, d(str, objArr));
    }

    public String d(String str, Object... objArr) {
        String str2 = str;
        if (objArr != null) {
            str2 = str;
            if (objArr.length > 0) {
                str2 = String.format(Locale.US, str, objArr);
            }
        }
        return this.f22599b.concat(str2);
    }
}
