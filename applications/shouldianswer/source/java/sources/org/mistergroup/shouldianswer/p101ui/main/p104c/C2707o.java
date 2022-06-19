package org.mistergroup.shouldianswer.p101ui.main.p104c;

import io.fabric.sdk.android.services.p069c.AbstractC1507b;
import java.util.HashMap;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.EnumC2436k;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.main.c.o */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/o.class */
public final class C2707o {

    /* renamed from: a */
    public static final C2707o f8020a = new C2707o();

    /* renamed from: b */
    private static final HashMap<String, NumberInfo> f8021b = new HashMap<>();

    /* renamed from: c */
    private static final HashMap<String, NumberInfo> f8022c = new HashMap<>();

    private C2707o() {
    }

    /* renamed from: a */
    public final NumberInfo m568a(String str, String str2, EnumC2436k enumC2436k) {
        C1694h.m3117b(str, "number");
        C1694h.m3117b(str2, "country");
        C1694h.m3117b(enumC2436k, "callType");
        String str3 = str + AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR + str2;
        HashMap<String, NumberInfo> hashMap = C2708p.f8023a[enumC2436k.ordinal()] != 1 ? f8021b : f8022c;
        NumberInfo numberInfo = hashMap.get(str3);
        if (numberInfo != null) {
            C1694h.m3122a((Object) numberInfo, "it");
            return numberInfo;
        }
        NumberInfo numberInfo2 = new NumberInfo(str, str2, enumC2436k, false, 8, null);
        hashMap.put(str3, numberInfo2);
        return numberInfo2;
    }

    /* renamed from: a */
    public final void m569a() {
        C3104j.m157a(C3104j.f9124a, "NumberInfoCache.invalidate", (String) null, 2, (Object) null);
        f8021b.clear();
        f8022c.clear();
    }
}
