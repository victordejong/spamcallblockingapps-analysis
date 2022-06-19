package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Comparator;
/* renamed from: com.google.firebase.crashlytics.internal.common.a0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/a0.class */
public final /* synthetic */ class C9076a0 implements Comparator {

    /* renamed from: d */
    private static final C9076a0 f39274d = new C9076a0();

    private C9076a0() {
    }

    /* renamed from: a */
    public static Comparator m1947a() {
        return f39274d;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((AbstractC9004v.AbstractC9006b) obj).mo2286b().compareTo(((AbstractC9004v.AbstractC9006b) obj2).mo2286b());
        return compareTo;
    }
}
