package com.flurry.sdk;

import java.io.File;
/* renamed from: com.flurry.sdk.kn */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/kn.class */
public class C0469kn<T> {

    /* renamed from: a */
    private static final String f3485a = "kn";

    /* renamed from: b */
    private final File f3486b;

    /* renamed from: c */
    private final AbstractC0494lo<T> f3487c;

    public C0469kn(File file, String str, int i, AbstractC0495lr<T> abstractC0495lr) {
        this.f3486b = file;
        this.f3487c = new lm(new lq(str, i, abstractC0495lr));
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00b1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m4623a() {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C0469kn.m4623a():java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4622a(T r6) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C0469kn.m4622a(java.lang.Object):void");
    }

    /* renamed from: b */
    public final boolean m4621b() {
        File file = this.f3486b;
        if (file == null) {
            return false;
        }
        return file.delete();
    }
}
