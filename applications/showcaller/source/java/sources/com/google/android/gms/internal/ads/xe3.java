package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xe3.class */
final class xe3 extends af3 {

    /* renamed from: c */
    private static final Class<?> f32029c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public /* synthetic */ xe3(ze3 ze3Var) {
        super(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    private static <L> List<L> m9228f(Object obj, long j, int i) {
        ve3 ve3Var;
        ve3 ve3Var2;
        List<L> list = (List) bh3.m16341v(obj, j);
        if (list.isEmpty()) {
            ve3 ve3Var3 = list instanceof we3 ? new ve3(i) : (!(list instanceof tf3) || !(list instanceof re3)) ? new ArrayList(i) : ((re3) list).mo8859a(i);
            bh3.m16340w(obj, j, ve3Var3);
            ve3Var = ve3Var3;
        } else {
            if (f32029c.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i);
                arrayList.addAll(list);
                bh3.m16340w(obj, j, arrayList);
                ve3Var2 = arrayList;
            } else if (list instanceof wg3) {
                ve3 ve3Var4 = new ve3(list.size() + i);
                ve3Var4.addAll(ve3Var4.size(), (wg3) list);
                bh3.m16340w(obj, j, ve3Var4);
                ve3Var2 = ve3Var4;
            } else {
                ve3Var = list;
                if (list instanceof tf3) {
                    ve3Var = list;
                    if (list instanceof re3) {
                        re3 re3Var = (re3) list;
                        if (!re3Var.zza()) {
                            re3 mo8859a = re3Var.mo8859a(list.size() + i);
                            bh3.m16340w(obj, j, mo8859a);
                            return mo8859a;
                        }
                        ve3Var = list;
                    }
                }
            }
            ve3Var = ve3Var2;
        }
        return ve3Var;
    }

    @Override // com.google.android.gms.internal.ads.af3
    /* renamed from: a */
    public final <L> List<L> mo8840a(Object obj, long j) {
        return m9228f(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.af3
    /* renamed from: b */
    public final void mo8839b(Object obj, long j) {
        we3 we3Var;
        List list = (List) bh3.m16341v(obj, j);
        if (list instanceof we3) {
            we3Var = ((we3) list).zzi();
        } else if (f32029c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof tf3) && (list instanceof re3)) {
                re3 re3Var = (re3) list;
                if (!re3Var.zza()) {
                    return;
                }
                re3Var.mo10354b();
                return;
            }
            we3Var = Collections.unmodifiableList(list);
        }
        bh3.m16340w(obj, j, we3Var);
    }

    @Override // com.google.android.gms.internal.ads.af3
    /* renamed from: c */
    public final <E> void mo8838c(Object obj, Object obj2, long j) {
        List list = (List) bh3.m16341v(obj2, j);
        List m9228f = m9228f(obj, j, list.size());
        int size = m9228f.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            m9228f.addAll(list);
        }
        if (size > 0) {
            list = m9228f;
        }
        bh3.m16340w(obj, j, list);
    }
}
