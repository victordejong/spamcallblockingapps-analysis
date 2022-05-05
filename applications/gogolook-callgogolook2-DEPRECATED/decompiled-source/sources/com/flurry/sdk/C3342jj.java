package com.flurry.sdk;

import java.io.File;
/* renamed from: com.flurry.sdk.jj */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jj.class */
public class C3342jj<T> {

    /* renamed from: a */
    public static final String f5717a = "jj";

    /* renamed from: b */
    public final File f5718b;

    /* renamed from: c */
    public final AbstractC3417kl<T> f5719c;

    public C3342jj(File file, String str, int i, AbstractC3422ko<T> koVar) {
        this.f5718b = file;
        this.f5719c = new C3413kj(new C3419kn(str, i, koVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m32641a() {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3342jj.m32641a():java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32640a(T r6) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3342jj.m32640a(java.lang.Object):void");
    }

    /* renamed from: b */
    public final boolean m32639b() {
        File file = this.f5718b;
        if (file == null) {
            return false;
        }
        return file.delete();
    }
}
