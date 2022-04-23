package com.google.firebase.abt;

import android.content.Context;
import android.text.TextUtils;
import com.google.firebase.analytics.connector.a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/abt/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final a f32175a;

    /* renamed from: b  reason: collision with root package name */
    private final String f32176b;

    /* renamed from: c  reason: collision with root package name */
    private Integer f32177c = null;

    public b(Context context, a aVar, String str) {
        this.f32175a = aVar;
        this.f32176b = str;
    }

    private static ArrayList<a.c> a(List<a.c> list, Set<String> set) {
        ArrayList<a.c> arrayList = new ArrayList<>();
        for (a.c cVar : list) {
            if (!set.contains(cVar.f32186b)) {
                arrayList.add(cVar);
            }
        }
        return arrayList;
    }

    private void a(String str) {
        this.f32175a.a(str);
    }

    private void a(Collection<a.c> collection) {
        for (a.c cVar : collection) {
            a(cVar.f32186b);
        }
    }

    private static ArrayList<a> b(List<a> list, Set<String> set) {
        ArrayList<a> arrayList = new ArrayList<>();
        for (a aVar : list) {
            if (!set.contains(aVar.f32172b)) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    private List<a.c> b() {
        return this.f32175a.a(this.f32176b, "");
    }

    public static List<a> b(List<Map<String, String>> list) throws AbtException {
        ArrayList arrayList = new ArrayList();
        for (Map<String, String> map : list) {
            arrayList.add(a.a(map));
        }
        return arrayList;
    }

    private void c(List<a> list) {
        ArrayDeque arrayDeque = new ArrayDeque(b());
        if (this.f32177c == null) {
            this.f32177c = Integer.valueOf(this.f32175a.b(this.f32176b));
        }
        int intValue = this.f32177c.intValue();
        for (a aVar : list) {
            while (arrayDeque.size() >= intValue) {
                a(((a.c) arrayDeque.pollFirst()).f32186b);
            }
            String str = this.f32176b;
            a.c cVar = new a.c();
            cVar.f32185a = str;
            cVar.m = aVar.e.getTime();
            cVar.f32186b = aVar.f32172b;
            cVar.f32187c = aVar.f32173c;
            cVar.f32188d = TextUtils.isEmpty(aVar.f32174d) ? null : aVar.f32174d;
            cVar.e = aVar.f;
            cVar.j = aVar.g;
            this.f32175a.a(cVar);
            arrayDeque.offer(cVar);
        }
    }

    public final void a() throws AbtException {
        if (this.f32175a == null) {
            throw new AbtException("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
    }

    public final void a(List<a> list) throws AbtException {
        if (list.isEmpty()) {
            a();
            a(b());
            return;
        }
        HashSet hashSet = new HashSet();
        for (a aVar : list) {
            hashSet.add(aVar.f32172b);
        }
        List<a.c> b2 = b();
        HashSet hashSet2 = new HashSet();
        for (a.c cVar : b2) {
            hashSet2.add(cVar.f32186b);
        }
        a((Collection<a.c>) a(b2, hashSet));
        c(b(list, hashSet2));
    }
}
