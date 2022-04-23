package com.flurry.sdk;

import android.location.Location;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.flurry.sdk.dx */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dx.class */
public final class C3010dx {

    /* renamed from: a */
    public static final AtomicInteger f4693a = new AtomicInteger(0);

    /* renamed from: a */
    public static int m33317a() {
        return f4693a.incrementAndGet();
    }

    /* renamed from: a */
    public static List<C3013e> m33316a(C2904ca caVar, C3192h hVar) {
        ArrayList arrayList = new ArrayList();
        List<C2912ci> list = caVar.f4370e;
        String str = hVar.f5300a.f4289an;
        for (C2912ci ciVar : list) {
            if (ciVar.f4474a.equals(str)) {
                for (String str2 : ciVar.f4475b) {
                    HashMap hashMap = new HashMap();
                    String charSequence = str2.toString();
                    int indexOf = charSequence.indexOf(63);
                    String str3 = charSequence;
                    if (indexOf != -1) {
                        str3 = charSequence.substring(0, indexOf);
                        String substring = charSequence.substring(indexOf + 1);
                        String str4 = substring;
                        if (substring.contains("%{eventParams}")) {
                            str4 = substring.replace("%{eventParams}", "");
                            hashMap.putAll(hVar.f5301b);
                        }
                        hashMap.putAll(C3445la.m32451g(str4));
                    }
                    arrayList.add(new C3013e(C3013e.m33300a(str3), hashMap, hVar));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static List<C2925cv> m33315a(List<C2862bd> list) {
        ArrayList arrayList = new ArrayList();
        for (C2862bd bdVar : list) {
            C2925cv cvVar = new C2925cv();
            cvVar.f4535a = bdVar.f4160b;
            String str = bdVar.f4161c;
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            cvVar.f4536b = str2;
            ArrayList arrayList2 = new ArrayList();
            synchronized (bdVar) {
                for (C2857bb bbVar : bdVar.f4162d) {
                    if (bbVar.f4142c) {
                        C2924cu cuVar = new C2924cu();
                        cuVar.f4532a = bbVar.f4141b;
                        cuVar.f4534c = bbVar.f4143d;
                        Map<String, String> map = bbVar.f4144e;
                        HashMap hashMap = new HashMap();
                        hashMap.putAll(map);
                        cuVar.f4533b = hashMap;
                        arrayList2.add(cuVar);
                    }
                }
            }
            cvVar.f4537c = arrayList2;
            if (arrayList2.size() > 0) {
                arrayList.add(cvVar);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static EnumC2923ct m33314b() {
        int c = C3442ky.m32482c();
        return c == 1 ? EnumC2923ct.PORTRAIT : c == 2 ? EnumC2923ct.LANDSCAPE : EnumC2923ct.UNKNOWN;
    }

    /* renamed from: c */
    public static C2918co m33313c() {
        C2918co coVar = new C2918co();
        Location g = C3306ip.m32731a().m32718g();
        if (g != null) {
            double latitude = (float) g.getLatitude();
            double longitude = (float) g.getLongitude();
            double accuracy = g.getAccuracy();
            int c = C3306ip.m32723c();
            coVar.f4503a = (float) C3445la.m32469a(latitude, c);
            coVar.f4504b = (float) C3445la.m32469a(longitude, c);
            coVar.f4505c = (float) C3445la.m32469a(accuracy, c);
        }
        return coVar;
    }

    /* renamed from: d */
    public static List<String> m33312d() {
        ArrayList arrayList = new ArrayList();
        HashMap<String, Map<String, String>> b = C3333jd.m32671a().m32669b();
        if (!b.isEmpty()) {
            for (String str : b.keySet()) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public static List<C2905cb> m33311e() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : Collections.unmodifiableMap(C3296il.m32745a().f5577a).entrySet()) {
            C2905cb cbVar = new C2905cb();
            cbVar.f4376a = ((EnumC3313it) entry.getKey()).f5627d;
            if (((EnumC3313it) entry.getKey()).f5628e) {
                cbVar.f4377b = new String((byte[]) entry.getValue());
            } else {
                cbVar.f4377b = C3445la.m32457b((byte[]) entry.getValue());
            }
            arrayList.add(cbVar);
        }
        return arrayList;
    }

    /* renamed from: f */
    public static List<C2915cl> m33310f() {
        ArrayList arrayList = new ArrayList();
        C3484p.m32358a().f6005g.m33477a();
        for (C2877bl blVar : C3484p.m32358a().f6005g.m33472b()) {
            C2915cl clVar = new C2915cl();
            clVar.f4481a = blVar.f4298a;
            clVar.f4482b = blVar.f4299b;
            clVar.f4484d = blVar.f4301d;
            clVar.f4483c = blVar.f4300c;
            clVar.f4485e = blVar.f4307j;
            clVar.f4486f = blVar.f4302e;
            clVar.f4487g = blVar.f4306i;
            clVar.f4488h = blVar.f4303f;
            clVar.f4489i = blVar.f4304g;
            clVar.f4490j = blVar.f4305h;
            arrayList.add(clVar);
        }
        return arrayList;
    }

    /* renamed from: g */
    public static List<C2928cy> m33309g() {
        ArrayList arrayList = new ArrayList();
        C3484p.m32358a();
        if (C3484p.m32349c() == null) {
            return arrayList;
        }
        C3484p.m32358a();
        C3484p.m32349c().m33470a();
        C3484p.m32358a();
        for (C2884bn bnVar : C3484p.m32349c().m33468b()) {
            C2928cy cyVar = new C2928cy();
            cyVar.f4546a = bnVar.f4310a;
            cyVar.f4547b = bnVar.f4315f;
            cyVar.f4548c = bnVar.f4313d;
            arrayList.add(cyVar);
        }
        return arrayList;
    }
}
