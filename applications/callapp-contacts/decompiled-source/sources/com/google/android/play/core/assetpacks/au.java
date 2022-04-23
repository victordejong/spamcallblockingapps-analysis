package com.google.android.play.core.assetpacks;

import java.util.HashMap;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/au.class */
public final /* synthetic */ class au implements ba {

    /* renamed from: a  reason: collision with root package name */
    private final bb f31137a;

    /* renamed from: b  reason: collision with root package name */
    private final List f31138b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ int f31139c = 0;

    au(bb bbVar, List list) {
        this.f31137a = bbVar;
        this.f31138b = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(bb bbVar, List list, byte[] bArr) {
        this.f31137a = bbVar;
        this.f31138b = list;
    }

    @Override // com.google.android.play.core.assetpacks.ba
    public final Object a() {
        if (this.f31139c == 0) {
            return this.f31137a.c(this.f31138b);
        }
        bb bbVar = this.f31137a;
        List list = this.f31138b;
        HashMap hashMap = new HashMap();
        for (ay ayVar : bbVar.e.values()) {
            String str = ayVar.f31149c.f31143a;
            if (list.contains(str)) {
                ay ayVar2 = (ay) hashMap.get(str);
                if ((ayVar2 == null ? -1 : ayVar2.f31147a) < ayVar.f31147a) {
                    hashMap.put(str, ayVar);
                }
            }
        }
        return hashMap;
    }
}
