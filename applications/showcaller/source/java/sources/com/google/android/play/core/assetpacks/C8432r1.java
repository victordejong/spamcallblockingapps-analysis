package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.common.C8461a;
import com.google.android.play.core.internal.AbstractC8515s0;
import com.google.android.play.core.internal.C8513r0;
import java.io.File;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.r1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/r1.class */
public final class C8432r1 implements AbstractC8515s0<C8428q1> {

    /* renamed from: a */
    private final AbstractC8515s0 f37903a;

    /* renamed from: b */
    private final AbstractC8515s0 f37904b;

    /* renamed from: c */
    private final AbstractC8515s0 f37905c;

    /* renamed from: d */
    private final AbstractC8515s0 f37906d;

    /* renamed from: e */
    private final AbstractC8515s0 f37907e;

    /* renamed from: f */
    private final AbstractC8515s0 f37908f;

    /* renamed from: g */
    private final /* synthetic */ int f37909g = 0;

    public C8432r1(AbstractC8515s0<C8446v> abstractC8515s0, AbstractC8515s0<AbstractC8433r2> abstractC8515s02, AbstractC8515s0<C8459z0> abstractC8515s03, AbstractC8515s0<Executor> abstractC8515s04, AbstractC8515s0<C8415n0> abstractC8515s05, AbstractC8515s0<C8461a> abstractC8515s06) {
        this.f37903a = abstractC8515s0;
        this.f37904b = abstractC8515s02;
        this.f37905c = abstractC8515s03;
        this.f37906d = abstractC8515s04;
        this.f37907e = abstractC8515s05;
        this.f37908f = abstractC8515s06;
    }

    public C8432r1(AbstractC8515s0<String> abstractC8515s0, AbstractC8515s0<C8434s> abstractC8515s02, AbstractC8515s0<C8415n0> abstractC8515s03, AbstractC8515s0<Context> abstractC8515s04, AbstractC8515s0<C8436s1> abstractC8515s05, AbstractC8515s0<Executor> abstractC8515s06, byte[] bArr) {
        this.f37908f = abstractC8515s0;
        this.f37904b = abstractC8515s02;
        this.f37907e = abstractC8515s03;
        this.f37906d = abstractC8515s04;
        this.f37905c = abstractC8515s05;
        this.f37903a = abstractC8515s06;
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [com.google.android.play.core.assetpacks.g1, com.google.android.play.core.assetpacks.q1] */
    @Override // com.google.android.play.core.internal.AbstractC8515s0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C8428q1 mo3471a() {
        if (this.f37909g == 0) {
            Object mo3471a = this.f37903a.mo3471a();
            return new C8428q1((C8446v) mo3471a, C8513r0.m3472c(this.f37904b), (C8459z0) this.f37905c.mo3471a(), C8513r0.m3472c(this.f37906d), (C8415n0) this.f37907e.mo3471a(), (C8461a) this.f37908f.mo3471a());
        }
        String str = (String) this.f37908f.mo3471a();
        Object mo3471a2 = this.f37904b.mo3471a();
        Object mo3471a3 = this.f37907e.mo3471a();
        Context mo3471a4 = ((C8417n2) this.f37906d).mo3471a();
        Object mo3471a5 = this.f37905c.mo3471a();
        return new C8388g1(str != null ? new File(mo3471a4.getExternalFilesDir(null), str) : mo3471a4.getExternalFilesDir(null), (C8434s) mo3471a2, (C8415n0) mo3471a3, mo3471a4, (C8436s1) mo3471a5, C8513r0.m3472c(this.f37903a));
    }
}
