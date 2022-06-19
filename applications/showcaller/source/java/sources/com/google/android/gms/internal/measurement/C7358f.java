package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.measurement.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/f.class */
public final class C7358f extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ Activity f34422h;

    /* renamed from: i */
    final /* synthetic */ String f34423i;

    /* renamed from: j */
    final /* synthetic */ String f34424j;

    /* renamed from: k */
    final /* synthetic */ C7415j0 f34425k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7358f(C7415j0 c7415j0, Activity activity, String str, String str2) {
        super(c7415j0, true);
        this.f34425k = c7415j0;
        this.f34422h = activity;
        this.f34423i = str;
        this.f34424j = str2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34425k.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).setCurrentScreen(BinderC6255b.m16744m2(this.f34422h), this.f34423i, this.f34424j, this.f34802d);
    }
}
