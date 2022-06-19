package com.google.gson;

import com.google.gson.internal.C15977a;
import com.google.gson.internal.C16065d;
import com.google.gson.internal.bind.C16010j;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.p399a.C15950a;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.gson.g */
/* loaded from: classes4-dex2jar.jar:com/google/gson/g.class */
public final class C15972g {

    /* renamed from: a */
    private C16065d f56622a;

    /* renamed from: b */
    private EnumC15974i f56623b;

    /* renamed from: c */
    private AbstractC15964e f56624c;

    /* renamed from: d */
    private final Map<Type, AbstractC15973h<?>> f56625d;

    /* renamed from: e */
    private final List<AbstractC16090k> f56626e;

    /* renamed from: f */
    private final List<AbstractC16090k> f56627f;

    /* renamed from: g */
    private boolean f56628g;

    /* renamed from: h */
    private String f56629h;

    /* renamed from: i */
    private int f56630i;

    /* renamed from: j */
    private int f56631j;

    /* renamed from: k */
    private boolean f56632k;

    /* renamed from: l */
    private boolean f56633l;

    /* renamed from: m */
    private boolean f56634m;

    /* renamed from: n */
    private boolean f56635n;

    /* renamed from: o */
    private boolean f56636o;

    /* renamed from: p */
    private boolean f56637p;

    public C15972g() {
        this.f56622a = C16065d.f56799a;
        this.f56623b = EnumC15974i.DEFAULT;
        this.f56624c = EnumC15957d.IDENTITY;
        this.f56625d = new HashMap();
        this.f56626e = new ArrayList();
        this.f56627f = new ArrayList();
        this.f56628g = false;
        this.f56630i = 2;
        this.f56631j = 2;
        this.f56632k = false;
        this.f56633l = false;
        this.f56634m = true;
        this.f56635n = false;
        this.f56636o = false;
        this.f56637p = false;
    }

    C15972g(C15965f c15965f) {
        this.f56622a = C16065d.f56799a;
        this.f56623b = EnumC15974i.DEFAULT;
        this.f56624c = EnumC15957d.IDENTITY;
        HashMap hashMap = new HashMap();
        this.f56625d = hashMap;
        ArrayList arrayList = new ArrayList();
        this.f56626e = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.f56627f = arrayList2;
        this.f56628g = false;
        this.f56630i = 2;
        this.f56631j = 2;
        this.f56632k = false;
        this.f56633l = false;
        this.f56634m = true;
        this.f56635n = false;
        this.f56636o = false;
        this.f56637p = false;
        this.f56622a = c15965f.f56601g;
        this.f56624c = c15965f.f56602h;
        hashMap.putAll(c15965f.f56603i);
        this.f56628g = c15965f.f56604j;
        this.f56632k = c15965f.f56605k;
        this.f56636o = c15965f.f56606l;
        this.f56634m = c15965f.f56607m;
        this.f56635n = c15965f.f56608n;
        this.f56637p = c15965f.f56609o;
        this.f56633l = c15965f.f56610p;
        this.f56623b = c15965f.f56614t;
        this.f56629h = c15965f.f56611q;
        this.f56630i = c15965f.f56612r;
        this.f56631j = c15965f.f56613s;
        arrayList.addAll(c15965f.f56615u);
        arrayList2.addAll(c15965f.f56616v);
    }

    /* renamed from: a */
    private static void m7958a(String str, int i, int i2, List<AbstractC16090k> list) {
        C15949a c15949a;
        C15949a c15949a2;
        C15949a c15949a3;
        if (str != null && !"".equals(str.trim())) {
            C15949a c15949a4 = new C15949a(Date.class, str);
            c15949a2 = new C15949a(Timestamp.class, str);
            c15949a = new C15949a(java.sql.Date.class, str);
            c15949a3 = c15949a4;
        } else if (i == 2 || i2 == 2) {
            return;
        } else {
            c15949a3 = new C15949a(Date.class, i, i2);
            c15949a2 = new C15949a(Timestamp.class, i, i2);
            c15949a = new C15949a(java.sql.Date.class, i, i2);
        }
        list.add(C16010j.m7915a(Date.class, c15949a3));
        list.add(C16010j.m7915a(Timestamp.class, c15949a2));
        list.add(C16010j.m7915a(java.sql.Date.class, c15949a));
    }

    /* renamed from: a */
    public final C15965f m7960a() {
        ArrayList arrayList = new ArrayList(this.f56626e.size() + this.f56627f.size() + 3);
        arrayList.addAll(this.f56626e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f56627f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        m7958a(this.f56629h, this.f56630i, this.f56631j, arrayList);
        return new C15965f(this.f56622a, this.f56624c, this.f56625d, this.f56628g, this.f56632k, this.f56636o, this.f56634m, this.f56635n, this.f56637p, this.f56633l, this.f56623b, this.f56629h, this.f56630i, this.f56631j, this.f56626e, this.f56627f, arrayList);
    }

    /* renamed from: a */
    public final C15972g m7959a(AbstractC16090k abstractC16090k) {
        this.f56626e.add(abstractC16090k);
        return this;
    }

    /* renamed from: a */
    public final C15972g m7957a(Type type, Object obj) {
        boolean z = true;
        C15977a.m7954a(true);
        if (obj instanceof AbstractC15973h) {
            this.f56625d.put(type, (AbstractC15973h) obj);
        }
        C15950a<?> c15950a = C15950a.get(type);
        List<AbstractC16090k> list = this.f56626e;
        if (c15950a.getType() != c15950a.getRawType()) {
            z = false;
        }
        list.add(new TreeTypeAdapter.C15988a(obj, c15950a, z, null));
        if (obj instanceof AbstractC16088j) {
            this.f56626e.add(C16010j.m7916a(C15950a.get(type), (AbstractC16088j) obj));
        }
        return this;
    }
}
