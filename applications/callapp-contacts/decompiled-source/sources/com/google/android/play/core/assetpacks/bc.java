package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.c;
import com.google.android.play.core.internal.be;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bc.class */
public final class bc implements be<bb> {

    /* renamed from: a  reason: collision with root package name */
    private final be f31158a;

    /* renamed from: b  reason: collision with root package name */
    private final be f31159b;

    /* renamed from: c  reason: collision with root package name */
    private final be f31160c;

    /* renamed from: d  reason: collision with root package name */
    private final be f31161d;
    private final /* synthetic */ int e = 0;

    public bc(be<w> beVar, be<cs> beVar2, be<ap> beVar3, be<Executor> beVar4) {
        this.f31158a = beVar;
        this.f31159b = beVar2;
        this.f31160c = beVar3;
        this.f31161d = beVar4;
    }

    public bc(be<w> beVar, be<cs> beVar2, be<t> beVar3, be<ap> beVar4, byte[] bArr) {
        this.f31158a = beVar;
        this.f31159b = beVar2;
        this.f31160c = beVar3;
        this.f31161d = beVar4;
    }

    public bc(be<bb> beVar, be<w> beVar2, be<ad> beVar3, be<c> beVar4, char[] cArr) {
        this.f31160c = beVar;
        this.f31159b = beVar2;
        this.f31158a = beVar3;
        this.f31161d = beVar4;
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [com.google.android.play.core.assetpacks.ak, com.google.android.play.core.assetpacks.bb] */
    /* JADX WARN: Type inference failed for: r0v43, types: [com.google.android.play.core.assetpacks.bb, com.google.android.play.core.assetpacks.be] */
    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ bb a() {
        int i = this.e;
        if (i == 0) {
            Object a2 = this.f31158a.a();
            return new bb((w) a2, com.google.android.play.core.internal.bc.b(this.f31159b), (ap) this.f31160c.a(), com.google.android.play.core.internal.bc.b(this.f31161d));
        } else if (i != 1) {
            Object a3 = this.f31160c.a();
            Object a4 = this.f31159b.a();
            return new be((bb) a3, (w) a4, (ad) this.f31158a.a(), (c) this.f31161d.a());
        } else {
            return new ak((w) this.f31158a.a(), com.google.android.play.core.internal.bc.b(this.f31159b), com.google.android.play.core.internal.bc.b(this.f31160c), (ap) this.f31161d.a());
        }
    }
}
