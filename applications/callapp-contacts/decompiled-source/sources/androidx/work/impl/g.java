package androidx.work.impl;

import androidx.work.e;
import androidx.work.k;
import androidx.work.n;
import androidx.work.s;
import androidx.work.v;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/g.class */
public final class g extends s {

    /* renamed from: a  reason: collision with root package name */
    static final String f6104a = k.a("WorkContinuationImpl");

    /* renamed from: b  reason: collision with root package name */
    public final j f6105b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6106c;

    /* renamed from: d  reason: collision with root package name */
    public final e f6107d;
    public final List<? extends v> e;
    public final List<String> f;
    public final List<g> g;
    public boolean h;
    n i;
    private final List<String> j;

    public g(j jVar, String str, e eVar, List<? extends v> list) {
        this(jVar, str, eVar, list, null);
    }

    public g(j jVar, String str, e eVar, List<? extends v> list, List<g> list2) {
        this.f6105b = jVar;
        this.f6106c = str;
        this.f6107d = eVar;
        this.e = list;
        this.g = list2;
        this.f = new ArrayList(list.size());
        this.j = new ArrayList();
        if (list2 != null) {
            for (g gVar : list2) {
                this.j.addAll(gVar.j);
            }
        }
        for (int i = 0; i < list.size(); i++) {
            String uuid = ((v) list.get(i)).f6239a.toString();
            this.f.add(uuid);
            this.j.add(uuid);
        }
    }

    public g(j jVar, List<? extends v> list) {
        this(jVar, null, e.KEEP, list, null);
    }

    public static Set<String> a(g gVar) {
        HashSet hashSet = new HashSet();
        List<g> list = gVar.g;
        if (list != null && !list.isEmpty()) {
            for (g gVar2 : list) {
                hashSet.addAll(gVar2.f);
            }
        }
        return hashSet;
    }

    public static boolean a(g gVar, Set<String> set) {
        set.addAll(gVar.f);
        Set<String> a2 = a(gVar);
        for (String str : set) {
            if (a2.contains(str)) {
                return true;
            }
        }
        List<g> list = gVar.g;
        if (list != null && !list.isEmpty()) {
            for (g gVar2 : list) {
                if (a(gVar2, set)) {
                    return true;
                }
            }
        }
        set.removeAll(gVar.f);
        return false;
    }
}
