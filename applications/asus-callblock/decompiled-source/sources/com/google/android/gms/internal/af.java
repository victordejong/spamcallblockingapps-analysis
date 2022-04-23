package com.google.android.gms.internal;

import com.google.android.gms.analytics.zzg;
import com.google.android.gms.common.internal.b;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/af.class */
public final class af extends zzg<af> {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, Object> f4102a = new HashMap();

    public static String a(String str) {
        b.a(str);
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (str.startsWith("&")) {
                str2 = str.substring(1);
            }
        }
        b.a(str2, (Object) "Name can not be empty or \"&\"");
        return str2;
    }

    public final String toString() {
        return zzj(this.f4102a);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(af afVar) {
        af afVar2 = afVar;
        b.a(afVar2);
        afVar2.f4102a.putAll(this.f4102a);
    }
}
