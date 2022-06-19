package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC8509p0;
import com.google.android.play.core.internal.AbstractC8515s0;
import com.google.android.play.core.internal.C8513r0;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.l0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/l0.class */
public final class C8407l0 implements AbstractC8515s0<C8403k0> {

    /* renamed from: a */
    private final AbstractC8515s0 f37831a;

    /* renamed from: b */
    private final AbstractC8515s0 f37832b;

    /* renamed from: c */
    private final AbstractC8515s0 f37833c;

    /* renamed from: d */
    private final AbstractC8515s0 f37834d;

    /* renamed from: e */
    private final AbstractC8515s0 f37835e;

    /* renamed from: f */
    private final AbstractC8515s0 f37836f;

    /* renamed from: g */
    private final AbstractC8515s0 f37837g;

    /* renamed from: h */
    private final AbstractC8515s0 f37838h;

    /* renamed from: i */
    private final /* synthetic */ int f37839i = 0;

    public C8407l0(AbstractC8515s0<C8459z0> abstractC8515s0, AbstractC8515s0<AbstractC8433r2> abstractC8515s02, AbstractC8515s0<C8399j0> abstractC8515s03, AbstractC8515s0<C8364a2> abstractC8515s04, AbstractC8515s0<C8408l1> abstractC8515s05, AbstractC8515s0<C8428q1> abstractC8515s06, AbstractC8515s0<C8444u1> abstractC8515s07, AbstractC8515s0<C8372c1> abstractC8515s08) {
        this.f37831a = abstractC8515s0;
        this.f37832b = abstractC8515s02;
        this.f37833c = abstractC8515s03;
        this.f37834d = abstractC8515s04;
        this.f37835e = abstractC8515s05;
        this.f37836f = abstractC8515s06;
        this.f37837g = abstractC8515s07;
        this.f37838h = abstractC8515s08;
    }

    public C8407l0(AbstractC8515s0<Context> abstractC8515s0, AbstractC8515s0<C8459z0> abstractC8515s02, AbstractC8515s0<C8403k0> abstractC8515s03, AbstractC8515s0<AbstractC8433r2> abstractC8515s04, AbstractC8515s0<C8415n0> abstractC8515s05, AbstractC8515s0<C8379e0> abstractC8515s06, AbstractC8515s0<Executor> abstractC8515s07, AbstractC8515s0<Executor> abstractC8515s08, byte[] bArr) {
        this.f37831a = abstractC8515s0;
        this.f37837g = abstractC8515s02;
        this.f37838h = abstractC8515s03;
        this.f37832b = abstractC8515s04;
        this.f37835e = abstractC8515s05;
        this.f37836f = abstractC8515s06;
        this.f37833c = abstractC8515s07;
        this.f37834d = abstractC8515s08;
    }

    /* JADX WARN: Type inference failed for: r0v52, types: [com.google.android.play.core.assetpacks.k0, com.google.android.play.core.assetpacks.s] */
    @Override // com.google.android.play.core.internal.AbstractC8515s0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C8403k0 mo3471a() {
        if (this.f37839i == 0) {
            Object mo3471a = this.f37831a.mo3471a();
            return new C8403k0((C8459z0) mo3471a, C8513r0.m3472c(this.f37832b), (C8399j0) this.f37833c.mo3471a(), (C8364a2) this.f37834d.mo3471a(), (C8408l1) this.f37835e.mo3471a(), (C8428q1) this.f37836f.mo3471a(), (C8444u1) this.f37837g.mo3471a(), (C8372c1) this.f37838h.mo3471a());
        }
        Context mo3471a2 = ((C8417n2) this.f37831a).mo3471a();
        Object mo3471a3 = this.f37837g.mo3471a();
        Object mo3471a4 = this.f37838h.mo3471a();
        AbstractC8509p0 m3472c = C8513r0.m3472c(this.f37832b);
        Object mo3471a5 = this.f37835e.mo3471a();
        return new C8434s(mo3471a2, (C8459z0) mo3471a3, (C8403k0) mo3471a4, m3472c, (C8415n0) mo3471a5, (C8379e0) this.f37836f.mo3471a(), C8513r0.m3472c(this.f37833c), C8513r0.m3472c(this.f37834d));
    }
}
