package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.measurement.C3866d;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.measurement.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/g.class */
public final class C3956g extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ String f18191c;

    /* renamed from: d */
    private final /* synthetic */ String f18192d;

    /* renamed from: e */
    private final /* synthetic */ Context f18193e;

    /* renamed from: f */
    private final /* synthetic */ Bundle f18194f;

    /* renamed from: g */
    private final /* synthetic */ C3866d f18195g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3956g(C3866d c3866d, String str, String str2, Context context, Bundle bundle) {
        super(c3866d);
        this.f18195g = c3866d;
        this.f18191c = str;
        this.f18192d = str2;
        this.f18193e = context;
        this.f18194f = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    public final void mo4940b() {
        boolean m5774b;
        String str;
        String str2;
        String str3;
        Boolean bool;
        AbstractC4131mi abstractC4131mi;
        int m5759h;
        int m5761g;
        int i;
        boolean z;
        AbstractC4131mi abstractC4131mi2;
        String str4;
        String str5;
        try {
            this.f18195g.f17963f = new ArrayList();
            C3866d c3866d = this.f18195g;
            m5774b = C3866d.m5774b(this.f18191c, this.f18192d);
            if (m5774b) {
                str3 = this.f18192d;
                str2 = this.f18191c;
                str5 = this.f18195g.f17960c;
                str = str5;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            C3866d.m5757i(this.f18193e);
            bool = C3866d.f17952i;
            boolean z2 = bool.booleanValue() || str2 != null;
            this.f18195g.f17967r = this.f18195g.m5798a(this.f18193e, z2);
            abstractC4131mi = this.f18195g.f17967r;
            if (abstractC4131mi == null) {
                str4 = this.f18195g.f17960c;
                Log.w(str4, "Failed to connect to measurement client.");
                return;
            }
            m5759h = C3866d.m5759h(this.f18193e);
            m5761g = C3866d.m5761g(this.f18193e);
            if (z2) {
                i = Math.max(m5759h, m5761g);
                z = m5761g < m5759h;
            } else {
                i = m5759h > 0 ? m5759h : m5761g;
                z = m5759h > 0;
            }
            C3811b c3811b = new C3811b(28000L, i, z, str, str2, str3, this.f18194f);
            abstractC4131mi2 = this.f18195g.f17967r;
            abstractC4131mi2.initialize(BinderC2734b.m13794a(this.f18193e), c3811b, this.f17968a);
        } catch (Exception e) {
            this.f18195g.m5788a(e, true, false);
        }
    }
}
