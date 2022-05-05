package com.flurry.sdk;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.flurry.sdk.ft */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ft.class */
public final class C3114ft {

    /* renamed from: a */
    public C3106fo f5044a;

    /* renamed from: b */
    public C3112fs f5045b;

    public C3114ft(List<C2930da> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (list != null) {
            for (C2930da daVar : list) {
                if (daVar.f4557f == 1) {
                    arrayList2.add(daVar);
                } else {
                    arrayList.add(daVar);
                }
            }
        }
        this.f5044a = new C3106fo(arrayList);
        this.f5045b = new C3112fs(arrayList2);
    }
}
