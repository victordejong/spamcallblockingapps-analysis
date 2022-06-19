package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.C13971ek;
/* renamed from: com.google.android.gms.internal.measurement.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i.class */
public final class C13568i extends AbstractRunnableC13353aa {

    /* renamed from: a */
    final /* synthetic */ String f50824a;

    /* renamed from: b */
    final /* synthetic */ String f50825b;

    /* renamed from: c */
    final /* synthetic */ Context f50826c;

    /* renamed from: d */
    final /* synthetic */ Bundle f50827d;

    /* renamed from: e */
    final /* synthetic */ C13363ak f50828e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13568i(C13363ak c13363ak, String str, String str2, Context context, Bundle bundle) {
        super(c13363ak, true);
        this.f50828e = c13363ak;
        this.f50824a = str;
        this.f50825b = str2;
        this.f50826c = context;
        this.f50827d = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC13353aa
    /* renamed from: a */
    public final void mo12290a() {
        boolean m13287c;
        String str;
        String str2;
        String str3;
        AbstractC13702mz abstractC13702mz;
        int m18968b;
        AbstractC13702mz abstractC13702mz2;
        String str4;
        String str5;
        try {
            m13287c = C13363ak.m13287c(this.f50824a, this.f50825b);
            if (m13287c) {
                str3 = this.f50825b;
                str2 = this.f50824a;
                str5 = this.f50828e.f50601f;
                str = str5;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            C12045o.m19162a(this.f50826c);
            C13363ak c13363ak = this.f50828e;
            c13363ak.f50605j = c13363ak.m13315a(this.f50826c);
            abstractC13702mz = this.f50828e.f50605j;
            if (abstractC13702mz == null) {
                str4 = this.f50828e.f50601f;
                Log.w(str4, "Failed to connect to measurement client.");
                return;
            }
            int m18973a = DynamiteModule.m18973a(this.f50826c, ModuleDescriptor.MODULE_ID);
            zzz zzzVar = new zzz(39065L, Math.max(m18973a, m18968b), DynamiteModule.m18968b(this.f50826c, ModuleDescriptor.MODULE_ID) < m18973a, str, str2, str3, this.f50827d, C13971ek.m12018a(this.f50826c));
            abstractC13702mz2 = this.f50828e.f50605j;
            ((AbstractC13702mz) C12045o.m19162a(abstractC13702mz2)).initialize(BinderC12129d.m18979a(this.f50826c), zzzVar, this.f50574h);
        } catch (Exception e) {
            this.f50828e.m13305a(e, true, false);
        }
    }
}
