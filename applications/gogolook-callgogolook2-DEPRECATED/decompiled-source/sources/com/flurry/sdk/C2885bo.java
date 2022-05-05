package com.flurry.sdk;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.flurry.sdk.bo */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bo.class */
public class C2885bo {

    /* renamed from: b */
    public final HashMap<String, C2884bn> f4316b = new HashMap<>();

    /* renamed from: a */
    public final void m33470a() {
        synchronized (this) {
            for (C2884bn bnVar : m33468b()) {
                if (System.currentTimeMillis() > bnVar.f4314e + bnVar.f4311b) {
                    this.f4316b.remove(bnVar.f4310a);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0052 A[Catch: all -> 0x00ca, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0009, B:11:0x001b, B:13:0x0023, B:15:0x002b, B:23:0x0052, B:28:0x0067, B:31:0x007d, B:33:0x0097, B:35:0x00b5, B:37:0x00bd), top: B:44:0x0009 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33469a(com.flurry.sdk.C3192h r6) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2885bo.m33469a(com.flurry.sdk.h):void");
    }

    /* renamed from: b */
    public final List<C2884bn> m33468b() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f4316b.values());
        }
        return arrayList;
    }
}
