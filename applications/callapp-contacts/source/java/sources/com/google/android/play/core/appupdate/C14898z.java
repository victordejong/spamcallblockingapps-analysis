package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.internal.C15039bc;
/* renamed from: com.google.android.play.core.appupdate.z */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/z.class */
public final class C14898z {

    /* renamed from: a */
    public AbstractC15041be<AbstractC14874c> f54358a;

    /* renamed from: b */
    private AbstractC15041be<Context> f54359b;

    /* renamed from: c */
    private AbstractC15041be<C14892t> f54360c;

    /* renamed from: d */
    private AbstractC15041be<C14890r> f54361d;

    /* renamed from: e */
    private AbstractC15041be<C14877e> f54362e;

    /* renamed from: f */
    private AbstractC15041be<C14879g> f54363f;

    public /* synthetic */ C14898z(C14881i c14881i) {
        C14883k c14883k = new C14883k(c14881i);
        this.f54359b = c14883k;
        AbstractC15041be<C14892t> m9574a = C15039bc.m9574a(new C14882j(c14883k, (char[]) null));
        this.f54360c = m9574a;
        this.f54361d = C15039bc.m9574a(new C14891s(this.f54359b, m9574a));
        AbstractC15041be<C14877e> m9574a2 = C15039bc.m9574a(new C14882j(this.f54359b, (byte[]) null));
        this.f54362e = m9574a2;
        AbstractC15041be<C14879g> m9574a3 = C15039bc.m9574a(new C14880h(this.f54361d, m9574a2, this.f54359b));
        this.f54363f = m9574a3;
        this.f54358a = C15039bc.m9574a(new C14882j(m9574a3));
    }
}
