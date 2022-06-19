package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bzq.class */
public final class bzq implements cah<bzr> {

    /* renamed from: a */
    private final crs f12563a;

    /* renamed from: b */
    private final Context f12564b;

    /* renamed from: c */
    private final C3647yd f12565c;

    public bzq(crs crsVar, Context context, C3647yd c3647yd) {
        this.f12563a = crsVar;
        this.f12564b = context;
        this.f12565c = c3647yd;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bzr> mo11479a() {
        return this.f12563a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.bzt

            /* renamed from: a */
            private final bzq f12576a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12576a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12576a.m11533b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ bzr m11533b() {
        boolean m14202a = C2586c.m14193a(this.f12564b).m14202a();
        C2341q.m14744c();
        boolean m6949j = C3567ve.m6949j(this.f12564b);
        String str = this.f12565c.f17636a;
        C2341q.m14742e();
        boolean m6938c = C3572vj.m6938c();
        C2341q.m14744c();
        return new bzr(m14202a, m6949j, str, m6938c, C3567ve.m6951h(this.f12564b), DynamiteModule.m13784b(this.f12564b, ModuleDescriptor.MODULE_ID), DynamiteModule.m13790a(this.f12564b, ModuleDescriptor.MODULE_ID));
    }
}
