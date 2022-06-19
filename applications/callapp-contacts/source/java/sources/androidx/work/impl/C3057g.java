package androidx.work.impl;

import androidx.work.AbstractC3145k;
import androidx.work.AbstractC3150n;
import androidx.work.AbstractC3162s;
import androidx.work.AbstractC3166v;
import androidx.work.EnumC2994e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.work.impl.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/g.class */
public final class C3057g extends AbstractC3162s {

    /* renamed from: a */
    static final String f11329a = AbstractC3145k.m39275a("WorkContinuationImpl");

    /* renamed from: b */
    public final C3068j f11330b;

    /* renamed from: c */
    public final String f11331c;

    /* renamed from: d */
    public final EnumC2994e f11332d;

    /* renamed from: e */
    public final List<? extends AbstractC3166v> f11333e;

    /* renamed from: f */
    public final List<String> f11334f;

    /* renamed from: g */
    public final List<C3057g> f11335g;

    /* renamed from: h */
    public boolean f11336h;

    /* renamed from: i */
    AbstractC3150n f11337i;

    /* renamed from: j */
    private final List<String> f11338j;

    public C3057g(C3068j c3068j, String str, EnumC2994e enumC2994e, List<? extends AbstractC3166v> list) {
        this(c3068j, str, enumC2994e, list, null);
    }

    public C3057g(C3068j c3068j, String str, EnumC2994e enumC2994e, List<? extends AbstractC3166v> list, List<C3057g> list2) {
        this.f11330b = c3068j;
        this.f11331c = str;
        this.f11332d = enumC2994e;
        this.f11333e = list;
        this.f11335g = list2;
        this.f11334f = new ArrayList(list.size());
        this.f11338j = new ArrayList();
        if (list2 != null) {
            for (C3057g c3057g : list2) {
                this.f11338j.addAll(c3057g.f11338j);
            }
        }
        for (int i = 0; i < list.size(); i++) {
            String uuid = list.get(i).f11519a.toString();
            this.f11334f.add(uuid);
            this.f11338j.add(uuid);
        }
    }

    public C3057g(C3068j c3068j, List<? extends AbstractC3166v> list) {
        this(c3068j, null, EnumC2994e.KEEP, list, null);
    }

    /* renamed from: a */
    public static Set<String> m39368a(C3057g c3057g) {
        HashSet hashSet = new HashSet();
        List<C3057g> list = c3057g.f11335g;
        if (list != null && !list.isEmpty()) {
            for (C3057g c3057g2 : list) {
                hashSet.addAll(c3057g2.f11334f);
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public static boolean m39367a(C3057g c3057g, Set<String> set) {
        set.addAll(c3057g.f11334f);
        Set<String> m39368a = m39368a(c3057g);
        for (String str : set) {
            if (m39368a.contains(str)) {
                return true;
            }
        }
        List<C3057g> list = c3057g.f11335g;
        if (list != null && !list.isEmpty()) {
            for (C3057g c3057g2 : list) {
                if (m39367a(c3057g2, set)) {
                    return true;
                }
            }
        }
        set.removeAll(c3057g.f11334f);
        return false;
    }
}
