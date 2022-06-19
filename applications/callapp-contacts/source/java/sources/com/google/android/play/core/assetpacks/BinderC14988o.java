package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.assetpacks.o */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/o.class */
final class BinderC14988o extends BinderC14983k<Void> {

    /* renamed from: c */
    final int f54684c;

    /* renamed from: d */
    final String f54685d;

    /* renamed from: e */
    final int f54686e;

    /* renamed from: f */
    final /* synthetic */ C14989p f54687f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC14988o(C14989p c14989p, C15192p<Void> c15192p, int i, String str, int i2) {
        super(c14989p, c15192p);
        this.f54687f = c14989p;
        this.f54684c = i;
        this.f54685d = str;
        this.f54686e = i2;
    }

    @Override // com.google.android.play.core.assetpacks.BinderC14983k, com.google.android.play.core.internal.AbstractC15062bz
    /* renamed from: a */
    public final void mo9532a(Bundle bundle) {
        C15082r c15082r;
        C15072h c15072h;
        c15082r = this.f54687f.f54692e;
        c15082r.m9505a();
        int i = bundle.getInt("error_code");
        c15072h = C14989p.f54688a;
        c15072h.m9509b("onError(%d), retrying notifyModuleCompleted...", Integer.valueOf(i));
        int i2 = this.f54686e;
        if (i2 > 0) {
            this.f54687f.m9693a(this.f54684c, this.f54685d, i2 - 1);
        }
    }
}
