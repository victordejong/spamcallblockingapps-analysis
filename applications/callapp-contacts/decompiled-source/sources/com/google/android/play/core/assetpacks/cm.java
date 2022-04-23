package com.google.android.play.core.assetpacks;

import android.content.ComponentName;
import android.content.Context;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.internal.ah;
import com.google.android.play.core.internal.bc;
import com.google.android.play.core.internal.be;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cm.class */
public final class cm implements be<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final be f31250a;

    /* renamed from: b  reason: collision with root package name */
    private final be f31251b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ int f31252c = 0;

    public cm(be<ch> beVar, be<Context> beVar2) {
        this.f31250a = beVar;
        this.f31251b = beVar2;
    }

    public cm(be<Context> beVar, be<w> beVar2, byte[] bArr) {
        this.f31251b = beVar;
        this.f31250a = beVar2;
    }

    public cm(be<Context> beVar, be<ap> beVar2, char[] cArr) {
        this.f31250a = beVar;
        this.f31251b = beVar2;
    }

    public cm(be<w> beVar, be<cs> beVar2, int[] iArr) {
        this.f31251b = beVar;
        this.f31250a = beVar2;
    }

    public cm(be<Context> beVar, be<bu> beVar2, short[] sArr) {
        this.f31250a = beVar;
        this.f31251b = beVar2;
    }

    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ Object a() {
        int i = this.f31252c;
        if (i == 0) {
            Object a2 = this.f31250a.a();
            Context a3 = co.a(((co) this.f31251b).f31256a);
            ch chVar = (ch) a2;
            ah.a(a3.getPackageManager(), new ComponentName(a3.getPackageName(), "com.google.android.play.core.assetpacks.AssetPackExtractionService"), 4);
            ah.a(a3.getPackageManager(), new ComponentName(a3.getPackageName(), "com.google.android.play.core.assetpacks.ExtractionForegroundService"), 4);
            PlayCoreDialogWrapperActivity.a(a3);
            ah.a(chVar);
            return chVar;
        } else if (i == 1) {
            return new ab(co.a(((co) this.f31251b).f31256a), (w) this.f31250a.a());
        } else {
            if (i == 2) {
                return new p(co.a(((co) this.f31250a).f31256a), (ap) this.f31251b.a());
            }
            if (i == 3) {
                return new w(co.a(((co) this.f31250a).f31256a), (bu) this.f31251b.a());
            }
            return new bw((w) this.f31251b.a(), bc.b(this.f31250a));
        }
    }
}
