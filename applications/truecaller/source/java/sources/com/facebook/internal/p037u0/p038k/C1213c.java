package com.facebook.internal.p037u0.p038k;

import com.facebook.internal.p037u0.C1205i;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.util.Comparator;
import s1.z.c.l;
/* renamed from: com.facebook.internal.u0.k.c */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/k/c.class */
public final /* synthetic */ class C1213c implements Comparator {

    /* renamed from: a */
    public static final /* synthetic */ C1213c f3284a = new C1213c();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        C1205i c1205i = (C1205i) obj;
        C1205i c1205i2 = (C1205i) obj2;
        C1215e c1215e = C1215e.f3290a;
        int i = 0;
        if (!C1220a.m41623b(C1215e.class)) {
            try {
                l.d(c1205i2, "o2");
                i = c1205i.m41637a(c1205i2);
            } catch (Throwable th) {
                C1220a.m41624a(th, C1215e.class);
            }
        }
        return i;
    }
}
