package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.C7781l4;
/* renamed from: com.google.android.gms.internal.measurement.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/h.class */
public final class C7386h extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ String f34493h;

    /* renamed from: i */
    final /* synthetic */ String f34494i;

    /* renamed from: j */
    final /* synthetic */ Context f34495j;

    /* renamed from: k */
    final /* synthetic */ Bundle f34496k;

    /* renamed from: l */
    final /* synthetic */ C7415j0 f34497l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7386h(C7415j0 c7415j0, String str, String str2, Context context, Bundle bundle) {
        super(c7415j0, true);
        this.f34497l = c7415j0;
        this.f34493h = str;
        this.f34494i = str2;
        this.f34495j = context;
        this.f34496k = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    public final void mo6714a() {
        boolean m7261s;
        String str;
        String str2;
        String str3;
        AbstractC7399hc abstractC7399hc;
        int m16741c;
        AbstractC7399hc abstractC7399hc2;
        String str4;
        String str5;
        try {
            C7415j0 c7415j0 = this.f34497l;
            m7261s = C7415j0.m7261s(this.f34493h, this.f34494i);
            if (m7261s) {
                str3 = this.f34494i;
                str2 = this.f34493h;
                str5 = this.f34497l.f34548b;
                str = str5;
            } else {
                str3 = null;
                str2 = null;
                str = null;
            }
            C6155o.m17018j(this.f34495j);
            C7415j0 c7415j02 = this.f34497l;
            c7415j02.f34556j = c7415j02.m7258v(this.f34495j, true);
            abstractC7399hc = this.f34497l.f34556j;
            if (abstractC7399hc == null) {
                str4 = this.f34497l.f34548b;
                Log.w(str4, "Failed to connect to measurement client.");
                return;
            }
            int m16743a = DynamiteModule.m16743a(this.f34495j, ModuleDescriptor.MODULE_ID);
            zzz zzzVar = new zzz(39065L, Math.max(m16743a, m16741c), DynamiteModule.m16741c(this.f34495j, ModuleDescriptor.MODULE_ID) < m16743a, str, str2, str3, this.f34496k, C7781l4.m6250a(this.f34495j));
            abstractC7399hc2 = this.f34497l.f34556j;
            ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc2)).initialize(BinderC6255b.m16744m2(this.f34495j), zzzVar, this.f34802d);
        } catch (Exception e) {
            this.f34497l.m7263q(e, true, false);
        }
    }
}
