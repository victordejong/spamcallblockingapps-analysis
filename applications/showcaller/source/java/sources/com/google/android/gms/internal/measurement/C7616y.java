package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.measurement.y */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/y.class */
public final class C7616y extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ String f34769h;

    /* renamed from: i */
    final /* synthetic */ String f34770i;

    /* renamed from: j */
    final /* synthetic */ Object f34771j;

    /* renamed from: k */
    final /* synthetic */ boolean f34772k;

    /* renamed from: l */
    final /* synthetic */ C7415j0 f34773l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7616y(C7415j0 c7415j0, String str, String str2, Object obj, boolean z) {
        super(c7415j0, true);
        this.f34773l = c7415j0;
        this.f34769h = str;
        this.f34770i = str2;
        this.f34771j = obj;
        this.f34772k = z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34773l.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).setUserProperty(this.f34769h, this.f34770i, BinderC6255b.m16744m2(this.f34771j), this.f34772k, this.f34802d);
    }
}
