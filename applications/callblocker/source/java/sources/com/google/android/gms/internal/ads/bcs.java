package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.p013b.C0386g;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bcs.class */
public final class bcs extends AbstractBinderC2900cu {

    /* renamed from: a */
    private final Context f10962a;

    /* renamed from: b */
    private final ayx f10963b;

    /* renamed from: c */
    private azv f10964c;

    /* renamed from: d */
    private aym f10965d;

    public bcs(Context context, ayx ayxVar, azv azvVar, aym aymVar) {
        this.f10962a = context;
        this.f10963b = ayxVar;
        this.f10964c = azvVar;
        this.f10965d = aymVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: a */
    public final String mo10715a(String str) {
        return this.f10963b.m12285B().get(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: a */
    public final List<String> mo10717a() {
        int i;
        int i2;
        C0386g<String, BinderC2831bh> m12232y = this.f10963b.m12232y();
        C0386g<String, String> m12285B = this.f10963b.m12285B();
        String[] strArr = new String[m12232y.size() + m12285B.size()];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = 0;
            i2 = i4;
            if (i3 < m12232y.size()) {
                strArr[i4] = m12232y.m21085b(i3);
                i4++;
                i3++;
            }
        }
        while (i < m12285B.size()) {
            strArr[i2] = m12285B.m21085b(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: a */
    public final boolean mo10716a(AbstractC2731a abstractC2731a) {
        boolean z;
        Object m13795a = BinderC2734b.m13795a(abstractC2731a);
        if (!(m13795a instanceof ViewGroup)) {
            z = false;
        } else {
            if (!(this.f10964c != null && this.f10964c.m12192a((ViewGroup) m13795a))) {
                z = false;
            } else {
                this.f10963b.m12235v().mo13467a(new bcr(this));
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: b */
    public final AbstractC2844bu mo10712b(String str) {
        return this.f10963b.m12232y().get(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: b */
    public final String mo10714b() {
        return this.f10963b.m12236u();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: b */
    public final void mo10713b(AbstractC2731a abstractC2731a) {
        Object m13795a = BinderC2734b.m13795a(abstractC2731a);
        if (!(m13795a instanceof View) || this.f10963b.m12233x() == null || this.f10965d == null) {
            return;
        }
        this.f10965d.m12304c((View) m13795a);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: c */
    public final void mo10711c() {
        if (this.f10965d != null) {
            this.f10965d.m12324a();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: c */
    public final void mo10710c(String str) {
        if (this.f10965d != null) {
            this.f10965d.m12313a(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: d */
    public final eba mo10709d() {
        return this.f10963b.m12263b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: e */
    public final void mo10708e() {
        if (this.f10965d != null) {
            this.f10965d.mo12297k();
        }
        this.f10965d = null;
        this.f10964c = null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: f */
    public final AbstractC2731a mo10707f() {
        return BinderC2734b.m13794a(this.f10962a);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: g */
    public final AbstractC2731a mo10706g() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: h */
    public final boolean mo10705h() {
        boolean z;
        if (this.f10965d == null || this.f10965d.m12298h()) {
            z = false;
            if (this.f10963b.m12234w() != null) {
                z = false;
                if (this.f10963b.m12235v() == null) {
                    z = true;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: i */
    public final boolean mo10704i() {
        boolean z;
        AbstractC2731a m12233x = this.f10963b.m12233x();
        if (m12233x != null) {
            C2341q.m14729r().m7393a(m12233x);
            z = true;
        } else {
            C3556uu.m6745e("Trying to start OMID session before creation.");
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2893cr
    /* renamed from: j */
    public final void mo10703j() {
        String m12286A = this.f10963b.m12286A();
        if ("Google".equals(m12286A)) {
            C3556uu.m6745e("Illegal argument specified for omid partner name.");
        } else if (this.f10965d == null) {
        } else {
            this.f10965d.m12312a(m12286A, false);
        }
    }
}
