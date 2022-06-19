package com.liulishuo.filedownloader.services;

import p078c.p122d.p123a.p128i0.C2031c;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: com.liulishuo.filedownloader.services.b */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/b.class */
public class C9382b implements C2031c.AbstractC2034c {
    @Override // p078c.p122d.p123a.p128i0.C2031c.AbstractC2034c
    /* renamed from: a */
    public int mo808a(String str, String str2, boolean z) {
        return z ? C2040f.m28227O(C2040f.m28206o("%sp%s@dir", str, str2)).hashCode() : C2040f.m28227O(C2040f.m28206o("%sp%s", str, str2)).hashCode();
    }

    @Override // p078c.p122d.p123a.p128i0.C2031c.AbstractC2034c
    /* renamed from: b */
    public int mo807b(int i, String str, String str2, boolean z) {
        return mo808a(str, str2, z);
    }
}
