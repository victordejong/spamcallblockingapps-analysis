package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC15060bx;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.assetpacks.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/e.class */
final class C14977e extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ int f54654a;

    /* renamed from: b */
    final /* synthetic */ String f54655b;

    /* renamed from: c */
    final /* synthetic */ String f54656c;

    /* renamed from: d */
    final /* synthetic */ int f54657d;

    /* renamed from: e */
    final /* synthetic */ C15192p f54658e;

    /* renamed from: f */
    final /* synthetic */ C14989p f54659f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14977e(C14989p c14989p, C15192p c15192p, int i, String str, String str2, int i2, C15192p c15192p2) {
        super(c15192p);
        this.f54659f = c14989p;
        this.f54654a = i;
        this.f54655b = str;
        this.f54656c = str2;
        this.f54657d = i2;
        this.f54658e = c15192p2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        C15082r c15082r;
        String str;
        Bundle m9672e;
        try {
            c15082r = this.f54659f.f54692e;
            AbstractC15060bx abstractC15060bx = (AbstractC15060bx) c15082r.f54792e;
            str = this.f54659f.f54690c;
            Bundle m9676c = C14989p.m9676c(this.f54654a, this.f54655b, this.f54656c, this.f54657d);
            m9672e = C14989p.m9672e();
            abstractC15060bx.mo9541a(str, m9676c, m9672e, new BinderC14983k(this.f54659f, this.f54658e, (char[]) null));
        } catch (RemoteException e) {
            c15072h = C14989p.f54688a;
            c15072h.m9510a(e, "notifyChunkTransferred", new Object[0]);
        }
    }
}
