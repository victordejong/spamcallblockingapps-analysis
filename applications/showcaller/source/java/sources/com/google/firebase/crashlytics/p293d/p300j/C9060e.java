package com.google.firebase.crashlytics.p293d.p300j;

import java.io.File;
import java.util.Comparator;
/* renamed from: com.google.firebase.crashlytics.d.j.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/j/e.class */
final /* synthetic */ class C9060e implements Comparator {

    /* renamed from: d */
    private static final C9060e f39212d = new C9060e();

    private C9060e() {
    }

    /* renamed from: a */
    public static Comparator m2033a() {
        return f39212d;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((File) obj2).getName().compareTo(((File) obj).getName());
        return compareTo;
    }
}
