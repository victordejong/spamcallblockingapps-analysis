package com.google.android.gms.internal.ads;

import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jw1.class */
public final class jw1 {

    /* renamed from: d */
    private static boolean f6940d;

    /* renamed from: a */
    private final String f6941a;

    /* renamed from: b */
    private final iw1 f6942b;

    /* renamed from: c */
    private iw1 f6943c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ jw1(String str, hw1 hw1Var) {
        iw1 iw1Var = new iw1(null);
        this.f6942b = iw1Var;
        this.f6943c = iw1Var;
        if (!f6940d) {
            synchronized (jw1.class) {
                try {
                    if (!f6940d) {
                        f6940d = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        str.getClass();
        this.f6941a = str;
    }

    /* renamed from: a */
    public final jw1 m6908a(@NullableDecl Object obj) {
        iw1 iw1Var = new iw1(null);
        this.f6943c.f6870b = iw1Var;
        this.f6943c = iw1Var;
        iw1Var.f6869a = obj;
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f6941a);
        sb.append('{');
        iw1 iw1Var = this.f6942b.f6870b;
        String str = "";
        while (iw1Var != null) {
            Object obj = iw1Var.f6869a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            iw1Var = iw1Var.f6870b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
