package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC8515s0;
import com.google.android.play.core.internal.C8513r0;
/* renamed from: com.google.android.play.core.assetpacks.m1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/m1.class */
public final class C8412m1 implements AbstractC8515s0<C8408l1> {

    /* renamed from: a */
    private final AbstractC8515s0 f37853a;

    /* renamed from: b */
    private final /* synthetic */ int f37854b = 0;

    public C8412m1(AbstractC8515s0<C8446v> abstractC8515s0) {
        this.f37853a = abstractC8515s0;
    }

    public C8412m1(AbstractC8515s0<AbstractC8433r2> abstractC8515s0, byte[] bArr) {
        this.f37853a = abstractC8515s0;
    }

    public C8412m1(AbstractC8515s0<Context> abstractC8515s0, char[] cArr) {
        this.f37853a = abstractC8515s0;
    }

    public C8412m1(AbstractC8515s0<C8446v> abstractC8515s0, short[] sArr) {
        this.f37853a = abstractC8515s0;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.play.core.assetpacks.c0, com.google.android.play.core.assetpacks.l1] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.play.core.assetpacks.s1, com.google.android.play.core.assetpacks.l1] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.play.core.assetpacks.l1, com.google.android.play.core.assetpacks.a2] */
    @Override // com.google.android.play.core.internal.AbstractC8515s0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C8408l1 mo3471a() {
        int i = this.f37854b;
        return i != 0 ? i != 1 ? i != 2 ? new C8364a2((C8446v) this.f37853a.mo3471a()) : new C8436s1(((C8417n2) this.f37853a).mo3471a()) : new C8371c0(C8513r0.m3472c(this.f37853a)) : new C8408l1((C8446v) this.f37853a.mo3471a());
    }
}
