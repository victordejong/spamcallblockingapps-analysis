package com.google.android.play.core.assetpacks;

import java.util.HashMap;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.au */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/au.class */
public final /* synthetic */ class C14920au implements AbstractC14927ba {

    /* renamed from: a */
    private final C14928bb f54474a;

    /* renamed from: b */
    private final List f54475b;

    /* renamed from: c */
    private final /* synthetic */ int f54476c = 0;

    C14920au(C14928bb c14928bb, List list) {
        this.f54474a = c14928bb;
        this.f54475b = list;
    }

    public C14920au(C14928bb c14928bb, List list, byte[] bArr) {
        this.f54474a = c14928bb;
        this.f54475b = list;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14927ba
    /* renamed from: a */
    public final Object mo9764a() {
        if (this.f54476c != 0) {
            C14928bb c14928bb = this.f54474a;
            List list = this.f54475b;
            HashMap hashMap = new HashMap();
            for (C14924ay c14924ay : c14928bb.f54498e.values()) {
                String str = c14924ay.f54487c.f54480a;
                if (list.contains(str)) {
                    C14924ay c14924ay2 = (C14924ay) hashMap.get(str);
                    if ((c14924ay2 == null ? -1 : c14924ay2.f54485a) < c14924ay.f54485a) {
                        hashMap.put(str, c14924ay);
                    }
                }
            }
            return hashMap;
        }
        return this.f54474a.m9756c(this.f54475b);
    }
}
