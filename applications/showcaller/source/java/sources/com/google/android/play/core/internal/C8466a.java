package com.google.android.play.core.internal;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.util.IllegalFormatException;
import java.util.Locale;
/* renamed from: com.google.android.play.core.internal.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/a.class */
public final class C8466a {

    /* renamed from: a */
    private final String f38023a;

    public C8466a(String str) {
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
        this.f38023a = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    /* renamed from: f */
    private final int m3562f(int i, String str, Object[] objArr) {
        if (Log.isLoggable("PlayCore", i)) {
            return Log.i("PlayCore", m3561g(this.f38023a, str, objArr));
        }
        return 0;
    }

    /* renamed from: g */
    private static String m3561g(String str, String str2, Object... objArr) {
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

    /* renamed from: a */
    public final void m3567a(String str, Object... objArr) {
        m3562f(3, str, objArr);
    }

    /* renamed from: b */
    public final void m3566b(String str, Object... objArr) {
        m3562f(6, str, objArr);
    }

    /* renamed from: c */
    public final void m3565c(Throwable th, String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            Log.e("PlayCore", m3561g(this.f38023a, str, objArr), th);
        }
    }

    /* renamed from: d */
    public final void m3564d(String str, Object... objArr) {
        m3562f(4, str, objArr);
    }

    /* renamed from: e */
    public final void m3563e(String str, Object... objArr) {
        m3562f(5, str, objArr);
    }
}
