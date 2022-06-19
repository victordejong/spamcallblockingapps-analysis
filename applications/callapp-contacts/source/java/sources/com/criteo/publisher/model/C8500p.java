package com.criteo.publisher.model;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import com.criteo.publisher.C8532x;
import com.criteo.publisher.context.C8264a;
import com.criteo.publisher.context.C8266b;
import com.criteo.publisher.context.C8268c;
import com.criteo.publisher.context.C8269d;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.p243c.C8262d;
import com.criteo.publisher.p249i.C8350c;
import com.criteo.publisher.p252k.C8380c;
import com.criteo.publisher.p256m0.C8424b;
import com.criteo.publisher.p256m0.C8433g;
import com.criteo.publisher.p256m0.C8442m;
import com.criteo.publisher.p256m0.C8448s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
/* renamed from: com.criteo.publisher.model.p */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/p.class */
public class C8500p {

    /* renamed from: a */
    private final Context f30330a;

    /* renamed from: b */
    private final String f30331b;

    /* renamed from: c */
    private final C8509u f30332c;

    /* renamed from: d */
    private final C8424b f30333d;

    /* renamed from: e */
    private final C8380c f30334e;

    /* renamed from: f */
    private final C8262d f30335f;

    /* renamed from: g */
    private final C8433g f30336g;

    /* renamed from: h */
    private final C8350c f30337h;

    /* renamed from: i */
    private final C8266b f30338i;

    /* renamed from: j */
    private final C8269d f30339j;

    public C8500p(Context context, String str, C8509u c8509u, C8424b c8424b, C8380c c8380c, C8262d c8262d, C8433g c8433g, C8350c c8350c, C8266b c8266b, C8269d c8269d) {
        this.f30330a = context;
        this.f30331b = str;
        this.f30332c = c8509u;
        this.f30333d = c8424b;
        this.f30334e = c8380c;
        this.f30335f = c8262d;
        this.f30336g = c8433g;
        this.f30337h = c8350c;
        this.f30338i = c8266b;
        this.f30339j = c8269d;
    }

    /* renamed from: a */
    private AbstractC8501q m25571a(C8498n c8498n) {
        return AbstractC8501q.m25564a(this.f30335f.m25957a(), c8498n.m25583b(), c8498n.m25584a(), c8498n.m25582c());
    }

    /* renamed from: a */
    private List<AbstractC8501q> m25570a(List<C8498n> list) {
        ArrayList arrayList = new ArrayList();
        for (C8498n c8498n : list) {
            arrayList.add(m25571a(c8498n));
        }
        return arrayList;
    }

    /* renamed from: a */
    private boolean m25568a(String[] strArr) {
        for (String str : strArr) {
            if (str.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public AbstractC8499o m25569a(List<C8498n> list, ContextData contextData) {
        String str;
        String str2;
        AbstractC8512v m25510a = AbstractC8512v.m25510a(this.f30330a.getPackageName(), this.f30331b, m25567a(C8268c.m25947a(contextData)));
        C8266b c8266b = this.f30338i;
        String str3 = Build.MANUFACTURER;
        if (!(!C18524p.m3850a((Object) str, (Object) "unknown"))) {
            str3 = null;
        }
        C18538n m1103a = C20126t.m1103a("device.make", str3);
        String str4 = Build.MODEL;
        if (!(!C18524p.m3850a((Object) str2, (Object) "unknown"))) {
            str4 = null;
        }
        C18538n m1103a2 = C20126t.m1103a("device.model", str4);
        C8264a.EnumC8265a m25953a = c8266b.f29828a.m25953a();
        C18538n m1103a3 = C20126t.m1103a("device.contype", m25953a != null ? Integer.valueOf(m25953a.m25951a()) : null);
        Point m25949b = c8266b.m25949b();
        C18538n m1103a4 = C20126t.m1103a("device.w", m25949b != null ? Integer.valueOf(m25949b.x) : null);
        Point m25949b2 = c8266b.m25949b();
        C18538n m1103a5 = C20126t.m1103a("device.h", m25949b2 != null ? Integer.valueOf(m25949b2.y) : null);
        int m25697a = c8266b.f29829b.m25697a();
        C18538n m1103a6 = C20126t.m1103a("data.orientation", m25697a != 1 ? m25697a != 2 ? null : "Landscape" : "Portrait");
        List<Locale> m25950a = C8266b.m25950a();
        ArrayList arrayList = new ArrayList();
        for (Locale locale : m25950a) {
            String it2 = locale.getCountry();
            C18524p.m3849a((Object) it2, "it");
            String str5 = it2;
            if (!(!C18425p.m3966a((CharSequence) it2))) {
                str5 = null;
            }
            if (str5 != null) {
                arrayList.add(str5);
            }
        }
        C18538n m1103a7 = C20126t.m1103a("user.geo.country", (String) C18282n.m4121f((List<? extends Object>) arrayList));
        C18538n m1103a8 = C20126t.m1103a("data.inputLanguage", C8266b.m25948c());
        C8532x c8532x = c8266b.f29830c;
        Map<String, Object> m25679a = C8442m.m25679a(C18247ai.m4251a(m1103a, m1103a2, m1103a3, m1103a4, m1103a5, m1103a6, m1103a7, m1103a8, C20126t.m1103a("data.sessionDuration", Integer.valueOf((int) ((c8532x.f30396c.mo25381a() - c8532x.f30394a) / 1000)))));
        UserData userData = this.f30339j.f29832a.get();
        C18524p.m3849a((Object) userData, "valueRef.get()");
        return AbstractC8499o.m25579a(this.f30335f.m25957a(), m25510a, AbstractC8516z.m25483a(this.f30333d.m25707a().f30186a, C8448s.m25668a(this.f30334e.m25754c()), C8448s.m25668a(this.f30334e.m25758a()), C8448s.m25668a(this.f30334e.m25755b()), m25567a(m25679a, C8268c.m25947a(userData))), C8433g.m25694a(), this.f30337h.m25808a().m25812a(), this.f30334e.f30070d.m25769a(), m25570a(list));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r0v48, types: [java.util.Map] */
    @SafeVarargs
    /* renamed from: a */
    public final Map<String, Object> m25567a(Map<String, Object>... mapArr) {
        ?? r0;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        for (Map<String, Object> map : mapArr) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String[] split = entry.getKey().split("\\.", -1);
                if (!m25568a(split)) {
                    LinkedHashMap linkedHashMap2 = linkedHashMap;
                    for (int i = 0; i < split.length - 1; i++) {
                        String str = split[i];
                        if (linkedHashMap2.containsKey(str)) {
                            Object obj = linkedHashMap2.get(str);
                            if (!newSetFromMap.contains(obj)) {
                                break;
                            }
                            r0 = (Map) obj;
                        } else {
                            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                            newSetFromMap.add(linkedHashMap3);
                            linkedHashMap2.put(str, linkedHashMap3);
                            r0 = linkedHashMap3;
                        }
                        linkedHashMap2 = r0;
                    }
                    String str2 = split[split.length - 1];
                    if (!linkedHashMap2.containsKey(str2)) {
                        linkedHashMap2.put(str2, entry.getValue());
                    }
                }
            }
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    public Future<String> m25572a() {
        return this.f30332c.mo25380b();
    }
}
