package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
/* renamed from: com.google.android.gms.internal.ads.wm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wm.class */
public final class C13017wm implements AbstractC13037xd {

    /* renamed from: a */
    private Context f49977a;

    /* renamed from: b */
    private zzf f49978b;

    /* renamed from: c */
    private C13019wo f49979c;

    /* JADX INFO: Access modifiers changed from: private */
    public C13017wm() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13037xd
    /* renamed from: a */
    public final /* synthetic */ AbstractC13037xd mo14017a(Context context) {
        this.f49977a = (Context) dso.m15767a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13037xd
    /* renamed from: a */
    public final /* synthetic */ AbstractC13037xd mo14016a(zzf zzfVar) {
        this.f49978b = (zzf) dso.m15767a(zzfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13037xd
    /* renamed from: a */
    public final /* synthetic */ AbstractC13037xd mo14015a(C13019wo c13019wo) {
        this.f49979c = (C13019wo) dso.m15767a(c13019wo);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13037xd
    /* renamed from: a */
    public final AbstractC13038xe mo14018a() {
        dso.m15766a(this.f49977a, Context.class);
        dso.m15766a(this.f49978b, zzf.class);
        dso.m15766a(this.f49979c, C13019wo.class);
        return new C13014wj(this.f49977a, this.f49978b, this.f49979c);
    }
}
