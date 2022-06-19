package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ru2.class */
public final class ru2 {

    /* renamed from: a */
    private final String f29240a;

    /* renamed from: b */
    private final qu2 f29241b;

    /* renamed from: c */
    private qu2 f29242c;

    public /* synthetic */ ru2(String str, pu2 pu2Var) {
        qu2 qu2Var = new qu2(null);
        this.f29241b = qu2Var;
        this.f29242c = qu2Var;
        Objects.requireNonNull(str);
        this.f29240a = str;
    }

    /* renamed from: a */
    public final ru2 m11268a(Object obj) {
        qu2 qu2Var = new qu2(null);
        this.f29242c.f28634b = qu2Var;
        this.f29242c = qu2Var;
        qu2Var.f28633a = obj;
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f29240a);
        sb.append('{');
        qu2 qu2Var = this.f29241b.f28634b;
        String str = "";
        while (true) {
            String str2 = str;
            if (qu2Var == null) {
                sb.append('}');
                return sb.toString();
            }
            Object obj = qu2Var.f28633a;
            sb.append(str2);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            qu2Var = qu2Var.f28634b;
            str = ", ";
        }
    }
}
