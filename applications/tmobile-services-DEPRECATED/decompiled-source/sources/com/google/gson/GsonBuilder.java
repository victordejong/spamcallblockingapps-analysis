package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.TypeAdapters;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/gson/GsonBuilder.class */
public final class GsonBuilder {

    /* renamed from: h */
    private String f11945h;

    /* renamed from: a */
    private Excluder f11938a = Excluder.f11980l;

    /* renamed from: b */
    private LongSerializationPolicy f11939b = LongSerializationPolicy.DEFAULT;

    /* renamed from: c */
    private FieldNamingStrategy f11940c = FieldNamingPolicy.IDENTITY;

    /* renamed from: d */
    private final Map<Type, InstanceCreator<?>> f11941d = new HashMap();

    /* renamed from: e */
    private final List<TypeAdapterFactory> f11942e = new ArrayList();

    /* renamed from: f */
    private final List<TypeAdapterFactory> f11943f = new ArrayList();

    /* renamed from: g */
    private boolean f11944g = false;

    /* renamed from: i */
    private int f11946i = 2;

    /* renamed from: j */
    private int f11947j = 2;

    /* renamed from: k */
    private boolean f11948k = false;

    /* renamed from: l */
    private boolean f11949l = false;

    /* renamed from: m */
    private boolean f11950m = true;

    /* renamed from: n */
    private boolean f11951n = false;

    /* renamed from: o */
    private boolean f11952o = false;

    /* renamed from: p */
    private boolean f11953p = false;

    /* renamed from: a */
    private void m8400a(String str, int i, int i2, List<TypeAdapterFactory> list) {
        DefaultDateTypeAdapter defaultDateTypeAdapter;
        DefaultDateTypeAdapter defaultDateTypeAdapter2;
        DefaultDateTypeAdapter defaultDateTypeAdapter3;
        if (str != null && !"".equals(str.trim())) {
            defaultDateTypeAdapter3 = new DefaultDateTypeAdapter(Date.class, str);
            defaultDateTypeAdapter2 = new DefaultDateTypeAdapter(Timestamp.class, str);
            defaultDateTypeAdapter = new DefaultDateTypeAdapter(java.sql.Date.class, str);
        } else if (i != 2 && i2 != 2) {
            defaultDateTypeAdapter3 = new DefaultDateTypeAdapter(Date.class, i, i2);
            defaultDateTypeAdapter2 = new DefaultDateTypeAdapter(Timestamp.class, i, i2);
            defaultDateTypeAdapter = new DefaultDateTypeAdapter(java.sql.Date.class, i, i2);
        } else {
            return;
        }
        list.add(TypeAdapters.m8238a(Date.class, defaultDateTypeAdapter3));
        list.add(TypeAdapters.m8238a(Timestamp.class, defaultDateTypeAdapter2));
        list.add(TypeAdapters.m8238a(java.sql.Date.class, defaultDateTypeAdapter));
    }

    /* renamed from: b */
    public Gson m8399b() {
        List<TypeAdapterFactory> arrayList = new ArrayList<>(this.f11942e.size() + this.f11943f.size() + 3);
        arrayList.addAll(this.f11942e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f11943f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        m8400a(this.f11945h, this.f11946i, this.f11947j, arrayList);
        return new Gson(this.f11938a, this.f11940c, this.f11941d, this.f11944g, this.f11948k, this.f11952o, this.f11950m, this.f11951n, this.f11953p, this.f11949l, this.f11939b, this.f11945h, this.f11946i, this.f11947j, this.f11942e, this.f11943f, arrayList);
    }

    /* renamed from: c */
    public GsonBuilder m8398c() {
        this.f11950m = false;
        return this;
    }

    /* renamed from: d */
    public GsonBuilder m8397d() {
        this.f11951n = true;
        return this;
    }
}
