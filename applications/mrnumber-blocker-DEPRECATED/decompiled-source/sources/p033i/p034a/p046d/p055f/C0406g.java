package p033i.p034a.p046d.p055f;

import p033i.p034a.p035a.p036f.AbstractC0299l;
import p033i.p034a.p035a.p036f.AbstractC0300m;
import p033i.p034a.p035a.p036f.C0298k;
/* renamed from: i.a.d.f.g */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/g.class */
final class C0406g {
    /* renamed from: a */
    static AbstractC0299l m233a(String str) {
        if (str == null) {
            return C0298k.m459b();
        }
        AbstractC0300m a = C0298k.m460a();
        for (String str2 : str.split(",", -1)) {
            String[] split = str2.split("=", -1);
            if (split.length == 2) {
                a.put(split[0].trim(), split[1].trim().replaceAll("^\"|\"$", ""));
            }
        }
        return a.m454c();
    }
}
