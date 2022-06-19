package com.google.android.gms.internal.ads;

import com.allinone.callerid.bean.ShortCut;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n10.class */
public final class n10 implements n20<Object> {

    /* renamed from: a */
    private final o10 f26946a;

    public n10(o10 o10Var) {
        this.f26946a = o10Var;
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map<String, String> map) {
        String str = map.get(ShortCut.NAME);
        if (str == null) {
            ei0.m15464f("App event with no name parameter.");
        } else {
            this.f26946a.mo8902g0(str, map.get("info"));
        }
    }
}
