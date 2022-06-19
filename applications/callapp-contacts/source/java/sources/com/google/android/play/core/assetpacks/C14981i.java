package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC15060bx;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.assetpacks.i */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/i.class */
final class C14981i extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ int f54670a;

    /* renamed from: b */
    final /* synthetic */ String f54671b;

    /* renamed from: c */
    final /* synthetic */ String f54672c;

    /* renamed from: d */
    final /* synthetic */ int f54673d;

    /* renamed from: e */
    final /* synthetic */ C15192p f54674e;

    /* renamed from: f */
    final /* synthetic */ C14989p f54675f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14981i(C14989p c14989p, C15192p c15192p, int i, String str, String str2, int i2, C15192p c15192p2) {
        super(c15192p);
        this.f54675f = c14989p;
        this.f54670a = i;
        this.f54671b = str;
        this.f54672c = str2;
        this.f54673d = i2;
        this.f54674e = c15192p2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        C15082r c15082r;
        String str;
        Bundle m9672e;
        try {
            c15082r = this.f54675f.f54692e;
            AbstractC15060bx abstractC15060bx = (AbstractC15060bx) c15082r.f54792e;
            str = this.f54675f.f54690c;
            Bundle m9676c = C14989p.m9676c(this.f54670a, this.f54671b, this.f54672c, this.f54673d);
            m9672e = C14989p.m9672e();
            abstractC15060bx.mo9535d(str, m9676c, m9672e, new BinderC14984l(this.f54675f, this.f54674e));
        } catch (RemoteException e) {
            c15072h = C14989p.f54688a;
            c15072h.m9509b("getChunkFileDescriptor(%s, %s, %d, session=%d)", this.f54671b, this.f54672c, Integer.valueOf(this.f54673d), Integer.valueOf(this.f54670a));
            this.f54674e.m9322b(new RuntimeException(e));
        }
    }
}
