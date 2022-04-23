package com.google.android.play.core.internal;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.util.IllegalFormatException;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final String f31374a;

    public h(String str) {
        int myUid = Process.myUid();
        int myPid = Process.myPid();
        StringBuilder sb = new StringBuilder(39);
        sb.append("UID: [");
        sb.append(myUid);
        sb.append("]  PID: [");
        sb.append(myPid);
        sb.append("] ");
        String valueOf = String.valueOf(sb.toString());
        String valueOf2 = String.valueOf(str);
        this.f31374a = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private final int a(int i, String str, Object[] objArr) {
        if (Log.isLoggable("PlayCore", i)) {
            return Log.i("PlayCore", a(this.f31374a, str, objArr));
        }
        return 0;
    }

    private static String a(String str, String str2, Object... objArr) {
        String str3 = str2;
        if (objArr.length > 0) {
            try {
                str3 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e) {
                String valueOf = String.valueOf(str2);
                Log.e("PlayCore", valueOf.length() != 0 ? "Unable to format ".concat(valueOf) : new String("Unable to format "), e);
                String join = TextUtils.join(", ", objArr);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 3 + String.valueOf(join).length());
                sb.append(str2);
                sb.append(" [");
                sb.append(join);
                sb.append("]");
                str3 = sb.toString();
            }
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str3).length());
        sb2.append(str);
        sb2.append(" : ");
        sb2.append(str3);
        return sb2.toString();
    }

    public final void a(String str, Object... objArr) {
        a(3, str, objArr);
    }

    public final void a(Throwable th, String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            Log.e("PlayCore", a(this.f31374a, str, objArr), th);
        }
    }

    public final void b(String str, Object... objArr) {
        a(6, str, objArr);
    }

    public final void c(String str, Object... objArr) {
        a(4, str, objArr);
    }

    public final void d(String str, Object... objArr) {
        a(5, str, objArr);
    }
}
