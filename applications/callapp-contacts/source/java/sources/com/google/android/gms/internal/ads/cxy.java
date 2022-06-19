package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxy.class */
public final class cxy {

    /* renamed from: a */
    cyb f46746a;

    /* renamed from: b */
    private final String f46747b;

    /* renamed from: c */
    private final cyb f46748c;

    /* renamed from: d */
    private boolean f46749d;

    /* JADX INFO: Access modifiers changed from: private */
    public cxy(String str) {
        cyb cybVar = new cyb();
        this.f46748c = cybVar;
        this.f46746a = cybVar;
        this.f46749d = false;
        this.f46747b = (String) cyg.m17060a(str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f46747b);
        sb.append('{');
        cyb cybVar = this.f46748c.f46754b;
        String str = "";
        while (true) {
            String str2 = str;
            if (cybVar == null) {
                sb.append('}');
                return sb.toString();
            }
            Object obj = cybVar.f46753a;
            sb.append(str2);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            cybVar = cybVar.f46754b;
            str = ", ";
        }
    }
}
