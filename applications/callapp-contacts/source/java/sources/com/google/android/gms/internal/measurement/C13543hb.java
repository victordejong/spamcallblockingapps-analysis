package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.hb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hb.class */
final class C13543hb extends AbstractC13545hd {

    /* renamed from: a */
    private static final Class<?> f50778a = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private C13543hb() {
        super(null);
    }

    public /* synthetic */ C13543hb(C13542ha c13542ha) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13545hd
    /* renamed from: a */
    public final void mo12733a(Object obj, long j) {
        AbstractC13540gz abstractC13540gz;
        List list = (List) C13592ix.m12512f(obj, j);
        if (list instanceof AbstractC13540gz) {
            abstractC13540gz = ((AbstractC13540gz) list).mo12552e();
        } else if (f50778a.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof AbstractC13564hw) && (list instanceof AbstractC13533gs)) {
                AbstractC13533gs abstractC13533gs = (AbstractC13533gs) list;
                if (!abstractC13533gs.mo12750a()) {
                    return;
                }
                abstractC13533gs.mo12749b();
                return;
            }
            abstractC13540gz = Collections.unmodifiableList(list);
        }
        C13592ix.m12531a(obj, j, abstractC13540gz);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x013c  */
    @Override // com.google.android.gms.internal.measurement.AbstractC13545hd
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <E> void mo12732a(java.lang.Object r6, java.lang.Object r7, long r8) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C13543hb.mo12732a(java.lang.Object, java.lang.Object, long):void");
    }
}
