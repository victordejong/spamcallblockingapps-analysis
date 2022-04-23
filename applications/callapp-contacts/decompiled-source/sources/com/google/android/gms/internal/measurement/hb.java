package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hb.class */
final class hb extends hd {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f29077a = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private hb() {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ hb(ha haVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.hd
    final void a(Object obj, long j) {
        Object obj2;
        List list = (List) ix.f(obj, j);
        if (list instanceof gz) {
            obj2 = ((gz) list).e();
        } else if (!f29077a.isAssignableFrom(list.getClass())) {
            if (!(list instanceof hw) || !(list instanceof gs)) {
                obj2 = Collections.unmodifiableList(list);
            } else {
                gs gsVar = (gs) list;
                if (gsVar.a()) {
                    gsVar.b();
                    return;
                }
                return;
            }
        } else {
            return;
        }
        ix.a(obj, j, obj2);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x013c  */
    @Override // com.google.android.gms.internal.measurement.hd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final <E> void a(java.lang.Object r6, java.lang.Object r7, long r8) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.hb.a(java.lang.Object, java.lang.Object, long):void");
    }
}
