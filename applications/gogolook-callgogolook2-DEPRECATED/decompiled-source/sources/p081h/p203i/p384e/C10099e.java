package p081h.p203i.p384e;

import com.google.gson.DefaultDateTypeAdapter;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p081h.p203i.p384e.p386w.C10123a;
import p081h.p203i.p384e.p390x.C10173a;
/* renamed from: h.i.e.e */
/* loaded from: classes2-dex2jar.jar:h/i/e/e.class */
public final class C10099e {

    /* renamed from: h */
    public String f22822h;

    /* renamed from: a */
    public Excluder f22815a = Excluder.f7825g;

    /* renamed from: b */
    public EnumC10114t f22816b = EnumC10114t.f22835a;

    /* renamed from: c */
    public AbstractC10098d f22817c = EnumC10091c.f22808a;

    /* renamed from: d */
    public final Map<Type, AbstractC10100f<?>> f22818d = new HashMap();

    /* renamed from: e */
    public final List<AbstractC10117u> f22819e = new ArrayList();

    /* renamed from: f */
    public final List<AbstractC10117u> f22820f = new ArrayList();

    /* renamed from: g */
    public boolean f22821g = false;

    /* renamed from: i */
    public int f22823i = 2;

    /* renamed from: j */
    public int f22824j = 2;

    /* renamed from: k */
    public boolean f22825k = false;

    /* renamed from: l */
    public boolean f22826l = false;

    /* renamed from: m */
    public boolean f22827m = true;

    /* renamed from: n */
    public boolean f22828n = false;

    /* renamed from: o */
    public boolean f22829o = false;

    /* renamed from: p */
    public boolean f22830p = false;

    /* renamed from: a */
    public Gson m13388a() {
        List<AbstractC10117u> arrayList = new ArrayList<>(this.f22819e.size() + this.f22820f.size() + 3);
        arrayList.addAll(this.f22819e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f22820f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        m13385a(this.f22822h, this.f22823i, this.f22824j, arrayList);
        return new Gson(this.f22815a, this.f22817c, this.f22818d, this.f22821g, this.f22825k, this.f22829o, this.f22827m, this.f22828n, this.f22830p, this.f22826l, this.f22816b, this.f22822h, this.f22823i, this.f22824j, this.f22819e, this.f22820f, arrayList);
    }

    /* renamed from: a */
    public C10099e m13387a(EnumC10091c cVar) {
        this.f22817c = cVar;
        return this;
    }

    /* renamed from: a */
    public C10099e m13386a(AbstractC10117u uVar) {
        this.f22819e.add(uVar);
        return this;
    }

    /* renamed from: a */
    public C10099e m13384a(Type type, Object obj) {
        boolean z = obj instanceof AbstractC10112r;
        C10123a.m13354a(z || (obj instanceof AbstractC10103i) || (obj instanceof AbstractC10100f) || (obj instanceof TypeAdapter));
        if (obj instanceof AbstractC10100f) {
            this.f22818d.put(type, (AbstractC10100f) obj);
        }
        if (z || (obj instanceof AbstractC10103i)) {
            this.f22819e.add(TreeTypeAdapter.m30941a(C10173a.m13278a(type), obj));
        }
        if (obj instanceof TypeAdapter) {
            this.f22819e.add(TypeAdapters.m30939a(C10173a.m13278a(type), (TypeAdapter) obj));
        }
        return this;
    }

    /* renamed from: a */
    public C10099e m13383a(int... iArr) {
        this.f22815a = this.f22815a.m30965a(iArr);
        return this;
    }

    /* renamed from: a */
    public final void m13385a(String str, int i, int i2, List<AbstractC10117u> list) {
        DefaultDateTypeAdapter defaultDateTypeAdapter;
        DefaultDateTypeAdapter defaultDateTypeAdapter2;
        DefaultDateTypeAdapter defaultDateTypeAdapter3;
        if (str != null && !"".equals(str.trim())) {
            defaultDateTypeAdapter2 = new DefaultDateTypeAdapter(Date.class, str);
            defaultDateTypeAdapter = new DefaultDateTypeAdapter(Timestamp.class, str);
            defaultDateTypeAdapter3 = new DefaultDateTypeAdapter(java.sql.Date.class, str);
        } else if (i != 2 && i2 != 2) {
            defaultDateTypeAdapter2 = new DefaultDateTypeAdapter(Date.class, i, i2);
            defaultDateTypeAdapter = new DefaultDateTypeAdapter(Timestamp.class, i, i2);
            defaultDateTypeAdapter3 = new DefaultDateTypeAdapter(java.sql.Date.class, i, i2);
        } else {
            return;
        }
        list.add(TypeAdapters.m30938a(Date.class, defaultDateTypeAdapter2));
        list.add(TypeAdapters.m30938a(Timestamp.class, defaultDateTypeAdapter));
        list.add(TypeAdapters.m30938a(java.sql.Date.class, defaultDateTypeAdapter3));
    }
}
