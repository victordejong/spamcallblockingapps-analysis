package com.bytedance.sdk.openadsdk.preload.p193a;

import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5118a;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5211d;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5144l;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5149n;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/g.class */
public final class C5257g {

    /* renamed from: h */
    private String f18689h;

    /* renamed from: a */
    private C5211d f18682a = C5211d.f18558a;

    /* renamed from: b */
    private EnumC5271u f18683b = EnumC5271u.DEFAULT;

    /* renamed from: c */
    private AbstractC5249e f18684c = EnumC5237d.IDENTITY;

    /* renamed from: d */
    private final Map<Type, AbstractC5258h<?>> f18685d = new HashMap();

    /* renamed from: e */
    private final List<AbstractC5276w> f18686e = new ArrayList();

    /* renamed from: f */
    private final List<AbstractC5276w> f18687f = new ArrayList();

    /* renamed from: g */
    private boolean f18688g = false;

    /* renamed from: i */
    private int f18690i = 2;

    /* renamed from: j */
    private int f18691j = 2;

    /* renamed from: k */
    private boolean f18692k = false;

    /* renamed from: l */
    private boolean f18693l = false;

    /* renamed from: m */
    private boolean f18694m = true;

    /* renamed from: n */
    private boolean f18695n = false;

    /* renamed from: o */
    private boolean f18696o = false;

    /* renamed from: p */
    private boolean f18697p = false;

    /* renamed from: a */
    private void m32702a(String str, int i, int i2, List<AbstractC5276w> list) {
        C5111a c5111a;
        C5111a c5111a2;
        C5111a c5111a3;
        if (str != null && !"".equals(str.trim())) {
            C5111a c5111a4 = new C5111a(Date.class, str);
            c5111a2 = new C5111a(Timestamp.class, str);
            c5111a = new C5111a(java.sql.Date.class, str);
            c5111a3 = c5111a4;
        } else if (i == 2 || i2 == 2) {
            return;
        } else {
            c5111a3 = new C5111a(Date.class, i, i2);
            c5111a2 = new C5111a(Timestamp.class, i, i2);
            c5111a = new C5111a(java.sql.Date.class, i, i2);
        }
        list.add(C5149n.m32946a(Date.class, c5111a3));
        list.add(C5149n.m32946a(Timestamp.class, c5111a2));
        list.add(C5149n.m32946a(java.sql.Date.class, c5111a));
    }

    /* renamed from: a */
    public final C5250f m32703a() {
        List<AbstractC5276w> arrayList = new ArrayList<>(this.f18686e.size() + this.f18687f.size() + 3);
        arrayList.addAll(this.f18686e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f18687f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        m32702a(this.f18689h, this.f18690i, this.f18691j, arrayList);
        return new C5250f(this.f18682a, this.f18684c, this.f18685d, this.f18688g, this.f18692k, this.f18696o, this.f18694m, this.f18695n, this.f18697p, this.f18693l, this.f18683b, this.f18689h, this.f18690i, this.f18691j, this.f18686e, this.f18687f, arrayList);
    }

    /* renamed from: a */
    public final C5257g m32701a(Type type, Object obj) {
        boolean z = obj instanceof AbstractC5269s;
        C5118a.m32986a(z || (obj instanceof AbstractC5261k) || (obj instanceof AbstractC5258h) || (obj instanceof AbstractC5274v));
        if (obj instanceof AbstractC5258h) {
            this.f18685d.put(type, (AbstractC5258h) obj);
        }
        if (z || (obj instanceof AbstractC5261k)) {
            this.f18686e.add(C5144l.m32950a(C5236a.m32806a(type), obj));
        }
        if (obj instanceof AbstractC5274v) {
            this.f18686e.add(C5149n.m32947a(C5236a.m32806a(type), (AbstractC5274v) obj));
        }
        return this;
    }
}
