package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/h.class */
final class h extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4411b = com.google.android.gms.internal.h.DEVICE_NAME.toString();

    public h() {
        super(f4411b, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        String str3 = str2;
        if (!str2.startsWith(str)) {
            str3 = str2;
            if (!str.equals("unknown")) {
                str3 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()).append(str).append(" ").append(str2).toString();
            }
        }
        return cn.a((Object) str3);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
