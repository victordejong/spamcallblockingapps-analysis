package com.liulishuo.filedownloader.services;

import p092e.p096e.p097a.p102h0.C3056c;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: com.liulishuo.filedownloader.services.b */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/b.class */
public class C2777b implements C3056c.AbstractC3060d {
    @Override // p092e.p096e.p097a.p102h0.C3056c.AbstractC3060d
    /* renamed from: a */
    public int mo418a(String str, String str2, boolean z) {
        return C3066f.m388O(z ? C3066f.m367o("%sp%s@dir", str, str2) : C3066f.m367o("%sp%s", str, str2)).hashCode();
    }

    @Override // p092e.p096e.p097a.p102h0.C3056c.AbstractC3060d
    /* renamed from: b */
    public int mo417b(int i, String str, String str2, boolean z) {
        return mo418a(str, str2, z);
    }
}
