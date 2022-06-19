package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.C8461a;
import com.google.android.play.core.internal.AbstractC8515s0;
import com.google.android.play.core.internal.C8513r0;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.a1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/a1.class */
public final class C8363a1 implements AbstractC8515s0<C8459z0> {

    /* renamed from: a */
    private final AbstractC8515s0 f37659a;

    /* renamed from: b */
    private final AbstractC8515s0 f37660b;

    /* renamed from: c */
    private final AbstractC8515s0 f37661c;

    /* renamed from: d */
    private final AbstractC8515s0 f37662d;

    /* renamed from: e */
    private final /* synthetic */ int f37663e = 0;

    public C8363a1(AbstractC8515s0<C8446v> abstractC8515s0, AbstractC8515s0<AbstractC8433r2> abstractC8515s02, AbstractC8515s0<C8415n0> abstractC8515s03, AbstractC8515s0<Executor> abstractC8515s04) {
        this.f37659a = abstractC8515s0;
        this.f37660b = abstractC8515s02;
        this.f37661c = abstractC8515s03;
        this.f37662d = abstractC8515s04;
    }

    public C8363a1(AbstractC8515s0<C8446v> abstractC8515s0, AbstractC8515s0<AbstractC8433r2> abstractC8515s02, AbstractC8515s0<C8434s> abstractC8515s03, AbstractC8515s0<C8415n0> abstractC8515s04, byte[] bArr) {
        this.f37659a = abstractC8515s0;
        this.f37660b = abstractC8515s02;
        this.f37661c = abstractC8515s03;
        this.f37662d = abstractC8515s04;
    }

    public C8363a1(AbstractC8515s0<C8459z0> abstractC8515s0, AbstractC8515s0<C8446v> abstractC8515s02, AbstractC8515s0<C8371c0> abstractC8515s03, AbstractC8515s0<C8461a> abstractC8515s04, char[] cArr) {
        this.f37661c = abstractC8515s0;
        this.f37660b = abstractC8515s02;
        this.f37659a = abstractC8515s03;
        this.f37662d = abstractC8515s04;
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [com.google.android.play.core.assetpacks.j0, com.google.android.play.core.assetpacks.z0] */
    /* JADX WARN: Type inference failed for: r0v43, types: [com.google.android.play.core.assetpacks.c1, com.google.android.play.core.assetpacks.z0] */
    @Override // com.google.android.play.core.internal.AbstractC8515s0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C8459z0 mo3471a() {
        int i = this.f37663e;
        if (i == 0) {
            Object mo3471a = this.f37659a.mo3471a();
            return new C8459z0((C8446v) mo3471a, C8513r0.m3472c(this.f37660b), (C8415n0) this.f37661c.mo3471a(), C8513r0.m3472c(this.f37662d));
        } else if (i == 1) {
            return new C8399j0((C8446v) this.f37659a.mo3471a(), C8513r0.m3472c(this.f37660b), C8513r0.m3472c(this.f37661c), (C8415n0) this.f37662d.mo3471a());
        } else {
            Object mo3471a2 = this.f37661c.mo3471a();
            Object mo3471a3 = this.f37660b.mo3471a();
            return new C8372c1((C8459z0) mo3471a2, (C8446v) mo3471a3, (C8371c0) this.f37659a.mo3471a(), (C8461a) this.f37662d.mo3471a());
        }
    }
}
