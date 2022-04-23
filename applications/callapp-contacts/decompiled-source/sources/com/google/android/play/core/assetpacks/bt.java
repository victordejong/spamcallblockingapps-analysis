package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.common.c;
import com.google.android.play.core.internal.bc;
import com.google.android.play.core.internal.be;
import java.io.File;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bt.class */
public final class bt implements be<bs> {

    /* renamed from: a  reason: collision with root package name */
    private final be f31199a;

    /* renamed from: b  reason: collision with root package name */
    private final be f31200b;

    /* renamed from: c  reason: collision with root package name */
    private final be f31201c;

    /* renamed from: d  reason: collision with root package name */
    private final be f31202d;
    private final be e;
    private final be f;
    private final /* synthetic */ int g = 0;

    public bt(be<w> beVar, be<cs> beVar2, be<bb> beVar3, be<Executor> beVar4, be<ap> beVar5, be<c> beVar6) {
        this.f31199a = beVar;
        this.f31200b = beVar2;
        this.f31201c = beVar3;
        this.f31202d = beVar4;
        this.e = beVar5;
        this.f = beVar6;
    }

    public bt(be<String> beVar, be<t> beVar2, be<ap> beVar3, be<Context> beVar4, be<bu> beVar5, be<Executor> beVar6, byte[] bArr) {
        this.f = beVar;
        this.f31200b = beVar2;
        this.e = beVar3;
        this.f31202d = beVar4;
        this.f31201c = beVar5;
        this.f31199a = beVar6;
    }

    /* JADX WARN: Type inference failed for: r0v50, types: [com.google.android.play.core.assetpacks.bi, com.google.android.play.core.assetpacks.bs] */
    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ bs a() {
        if (this.g != 0) {
            String str = (String) this.f.a();
            Object a2 = this.f31200b.a();
            Object a3 = this.e.a();
            Context a4 = co.a(((co) this.f31202d).f31256a);
            Object a5 = this.f31201c.a();
            return new bi(str != null ? new File(a4.getExternalFilesDir(null), str) : a4.getExternalFilesDir(null), (t) a2, (ap) a3, a4, (bu) a5, bc.b(this.f31199a));
        }
        Object a6 = this.f31199a.a();
        return new bs((w) a6, bc.b(this.f31200b), (bb) this.f31201c.a(), bc.b(this.f31202d), (ap) this.e.a(), (c) this.f.a());
    }
}
