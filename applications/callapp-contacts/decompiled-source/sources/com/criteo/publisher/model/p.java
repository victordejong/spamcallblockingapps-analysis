package com.criteo.publisher.model;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import com.criteo.publisher.c.d;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.context.a;
import com.criteo.publisher.k.c;
import com.criteo.publisher.m0.b;
import com.criteo.publisher.m0.g;
import com.criteo.publisher.m0.m;
import com.criteo.publisher.m0.s;
import com.criteo.publisher.x;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Future;
import kotlin.a.ai;
import kotlin.n;
import kotlin.t;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/p.class */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17622a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17623b;

    /* renamed from: c  reason: collision with root package name */
    private final u f17624c;

    /* renamed from: d  reason: collision with root package name */
    private final b f17625d;
    private final c e;
    private final d f;
    private final g g;
    private final com.criteo.publisher.i.c h;
    private final com.criteo.publisher.context.b i;
    private final com.criteo.publisher.context.d j;

    public p(Context context, String str, u uVar, b bVar, c cVar, d dVar, g gVar, com.criteo.publisher.i.c cVar2, com.criteo.publisher.context.b bVar2, com.criteo.publisher.context.d dVar2) {
        this.f17622a = context;
        this.f17623b = str;
        this.f17624c = uVar;
        this.f17625d = bVar;
        this.e = cVar;
        this.f = dVar;
        this.g = gVar;
        this.h = cVar2;
        this.i = bVar2;
        this.j = dVar2;
    }

    private q a(n nVar) {
        return q.a(this.f.a(), nVar.b(), nVar.a(), nVar.c());
    }

    private List<q> a(List<n> list) {
        ArrayList arrayList = new ArrayList();
        for (n nVar : list) {
            arrayList.add(a(nVar));
        }
        return arrayList;
    }

    private boolean a(String[] strArr) {
        for (String str : strArr) {
            if (str.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public o a(List<n> list, ContextData contextData) {
        v a2 = v.a(this.f17622a.getPackageName(), this.f17623b, a(com.criteo.publisher.context.c.a(contextData)));
        com.criteo.publisher.context.b bVar = this.i;
        String str = Build.MANUFACTURER;
        String str2 = str;
        if (!(!kotlin.jvm.internal.p.a((Object) str, (Object) "unknown"))) {
            str2 = null;
        }
        n a3 = t.a("device.make", str2);
        String str3 = Build.MODEL;
        String str4 = str3;
        if (!(!kotlin.jvm.internal.p.a((Object) str3, (Object) "unknown"))) {
            str4 = null;
        }
        n a4 = t.a("device.model", str4);
        a.EnumC0340a a5 = bVar.f17217a.a();
        n a6 = t.a("device.contype", a5 != null ? Integer.valueOf(a5.a()) : null);
        Point b2 = bVar.b();
        n a7 = t.a("device.w", b2 != null ? Integer.valueOf(b2.x) : null);
        Point b3 = bVar.b();
        n a8 = t.a("device.h", b3 != null ? Integer.valueOf(b3.y) : null);
        int a9 = bVar.f17218b.a();
        n a10 = t.a("data.orientation", a9 != 1 ? a9 != 2 ? null : "Landscape" : "Portrait");
        List<Locale> a11 = com.criteo.publisher.context.b.a();
        ArrayList arrayList = new ArrayList();
        for (Locale locale : a11) {
            String it2 = locale.getCountry();
            kotlin.jvm.internal.p.a((Object) it2, "it");
            String str5 = it2;
            if (!(!kotlin.h.p.a((CharSequence) it2))) {
                str5 = null;
            }
            if (str5 != null) {
                arrayList.add(str5);
            }
        }
        n a12 = t.a("user.geo.country", (String) kotlin.a.n.f((List<? extends Object>) arrayList));
        n a13 = t.a("data.inputLanguage", com.criteo.publisher.context.b.c());
        x xVar = bVar.f17219c;
        Map<String, Object> a14 = m.a(ai.a(a3, a4, a6, a7, a8, a10, a12, a13, t.a("data.sessionDuration", Integer.valueOf((int) ((xVar.f17666c.a() - xVar.f17664a) / 1000)))));
        UserData userData = this.j.f17221a.get();
        kotlin.jvm.internal.p.a((Object) userData, "valueRef.get()");
        return o.a(this.f.a(), a2, z.a(this.f17625d.a().f17503a, s.a(this.e.c()), s.a(this.e.a()), s.a(this.e.b()), a(a14, com.criteo.publisher.context.c.a(userData))), g.a(), this.h.a().a(), this.e.f17408d.a(), a(list));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r0v48, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    @java.lang.SafeVarargs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.lang.Object> a(java.util.Map<java.lang.String, java.lang.Object>... r5) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.p.a(java.util.Map[]):java.util.Map");
    }

    public Future<String> a() {
        return this.f17624c.b();
    }
}
