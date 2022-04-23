package p131c.p161d.p354f;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.LongSerializationPolicy;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p131c.p161d.p354f.p356t.C6153c;
import p131c.p161d.p354f.p356t.p357k.C6196n;
/* renamed from: c.d.f.f */
/* loaded from: classes2-dex2jar.jar:c/d/f/f.class */
public final class C6118f {

    /* renamed from: h */
    public String f19634h;

    /* renamed from: a */
    public C6153c f19627a = C6153c.f19659g;

    /* renamed from: b */
    public LongSerializationPolicy f19628b = LongSerializationPolicy.DEFAULT;

    /* renamed from: c */
    public AbstractC6110d f19629c = FieldNamingPolicy.IDENTITY;

    /* renamed from: d */
    public final Map<Type, AbstractC6119g<?>> f19630d = new HashMap();

    /* renamed from: e */
    public final List<AbstractC6131r> f19631e = new ArrayList();

    /* renamed from: f */
    public final List<AbstractC6131r> f19632f = new ArrayList();

    /* renamed from: g */
    public boolean f19633g = false;

    /* renamed from: i */
    public int f19635i = 2;

    /* renamed from: j */
    public int f19636j = 2;

    /* renamed from: k */
    public boolean f19637k = false;

    /* renamed from: l */
    public boolean f19638l = false;

    /* renamed from: m */
    public boolean f19639m = true;

    /* renamed from: n */
    public boolean f19640n = false;

    /* renamed from: o */
    public boolean f19641o = false;

    /* renamed from: p */
    public boolean f19642p = false;

    /* renamed from: a */
    public C6111e m21968a() {
        List<AbstractC6131r> arrayList = new ArrayList<>(this.f19631e.size() + this.f19632f.size() + 3);
        arrayList.addAll(this.f19631e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f19632f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        m21965a(this.f19634h, this.f19635i, this.f19636j, arrayList);
        return new C6111e(this.f19627a, this.f19629c, this.f19630d, this.f19633g, this.f19637k, this.f19641o, this.f19639m, this.f19640n, this.f19642p, this.f19638l, this.f19628b, this.f19634h, this.f19635i, this.f19636j, this.f19631e, this.f19632f, arrayList);
    }

    /* renamed from: a */
    public C6118f m21967a(double d) {
        this.f19627a = this.f19627a.m21935a(d);
        return this;
    }

    /* renamed from: a */
    public C6118f m21966a(AbstractC6131r rVar) {
        this.f19631e.add(rVar);
        return this;
    }

    /* renamed from: a */
    public final void m21965a(String str, int i, int i2, List<AbstractC6131r> list) {
        C6107a aVar;
        C6107a aVar2;
        C6107a aVar3;
        if (str != null && !"".equals(str.trim())) {
            aVar3 = new C6107a(Date.class, str);
            aVar2 = new C6107a(Timestamp.class, str);
            aVar = new C6107a(java.sql.Date.class, str);
        } else if (i != 2 && i2 != 2) {
            aVar3 = new C6107a(Date.class, i, i2);
            aVar2 = new C6107a(Timestamp.class, i, i2);
            aVar = new C6107a(java.sql.Date.class, i, i2);
        } else {
            return;
        }
        list.add(C6196n.m21878a(Date.class, aVar3));
        list.add(C6196n.m21878a(Timestamp.class, aVar2));
        list.add(C6196n.m21878a(java.sql.Date.class, aVar));
    }
}
