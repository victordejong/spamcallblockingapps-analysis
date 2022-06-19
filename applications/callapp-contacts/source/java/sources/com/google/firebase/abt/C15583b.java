package com.google.firebase.abt;

import android.content.Context;
import android.text.TextUtils;
import com.google.firebase.analytics.connector.AbstractC15587a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.firebase.abt.b */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/abt/b.class */
public final class C15583b {

    /* renamed from: a */
    private final AbstractC15587a f55924a;

    /* renamed from: b */
    private final String f55925b;

    /* renamed from: c */
    private Integer f55926c = null;

    public C15583b(Context context, AbstractC15587a abstractC15587a, String str) {
        this.f55924a = abstractC15587a;
        this.f55925b = str;
    }

    /* renamed from: a */
    private static ArrayList<AbstractC15587a.C15590c> m8627a(List<AbstractC15587a.C15590c> list, Set<String> set) {
        ArrayList<AbstractC15587a.C15590c> arrayList = new ArrayList<>();
        for (AbstractC15587a.C15590c c15590c : list) {
            if (!set.contains(c15590c.f55935b)) {
                arrayList.add(c15590c);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m8630a(String str) {
        this.f55924a.mo8600a(str);
    }

    /* renamed from: a */
    private void m8629a(Collection<AbstractC15587a.C15590c> collection) {
        for (AbstractC15587a.C15590c c15590c : collection) {
            m8630a(c15590c.f55935b);
        }
    }

    /* renamed from: b */
    private static ArrayList<C15582a> m8624b(List<C15582a> list, Set<String> set) {
        ArrayList<C15582a> arrayList = new ArrayList<>();
        for (C15582a c15582a : list) {
            if (!set.contains(c15582a.f55918b)) {
                arrayList.add(c15582a);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    private List<AbstractC15587a.C15590c> m8626b() {
        return this.f55924a.mo8598a(this.f55925b, "");
    }

    /* renamed from: b */
    public static List<C15582a> m8625b(List<Map<String, String>> list) throws AbtException {
        ArrayList arrayList = new ArrayList();
        for (Map<String, String> map : list) {
            arrayList.add(C15582a.m8632a(map));
        }
        return arrayList;
    }

    /* renamed from: c */
    private void m8623c(List<C15582a> list) {
        ArrayDeque arrayDeque = new ArrayDeque(m8626b());
        if (this.f55926c == null) {
            this.f55926c = Integer.valueOf(this.f55924a.mo8595b(this.f55925b));
        }
        int intValue = this.f55926c.intValue();
        for (C15582a c15582a : list) {
            while (arrayDeque.size() >= intValue) {
                m8630a(((AbstractC15587a.C15590c) arrayDeque.pollFirst()).f55935b);
            }
            String str = this.f55925b;
            AbstractC15587a.C15590c c15590c = new AbstractC15587a.C15590c();
            c15590c.f55934a = str;
            c15590c.f55946m = c15582a.f55921e.getTime();
            c15590c.f55935b = c15582a.f55918b;
            c15590c.f55936c = c15582a.f55919c;
            c15590c.f55937d = TextUtils.isEmpty(c15582a.f55920d) ? null : c15582a.f55920d;
            c15590c.f55938e = c15582a.f55922f;
            c15590c.f55943j = c15582a.f55923g;
            this.f55924a.mo8603a(c15590c);
            arrayDeque.offer(c15590c);
        }
    }

    /* renamed from: a */
    public final void m8631a() throws AbtException {
        if (this.f55924a != null) {
            return;
        }
        throw new AbtException("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
    }

    /* renamed from: a */
    public final void m8628a(List<C15582a> list) throws AbtException {
        if (list.isEmpty()) {
            m8631a();
            m8629a(m8626b());
            return;
        }
        HashSet hashSet = new HashSet();
        for (C15582a c15582a : list) {
            hashSet.add(c15582a.f55918b);
        }
        List<AbstractC15587a.C15590c> m8626b = m8626b();
        HashSet hashSet2 = new HashSet();
        for (AbstractC15587a.C15590c c15590c : m8626b) {
            hashSet2.add(c15590c.f55935b);
        }
        m8629a((Collection<AbstractC15587a.C15590c>) m8627a(m8626b, hashSet));
        m8623c(m8624b(list, hashSet2));
    }
}
