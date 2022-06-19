package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.reward.C2391a;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cgf.class */
public final class cgf extends AbstractBinderC3478rx {

    /* renamed from: a */
    private final cfy f12921a;

    /* renamed from: b */
    private final cfa f12922b;

    /* renamed from: c */
    private final String f12923c;

    /* renamed from: d */
    private final chb f12924d;

    /* renamed from: e */
    private final Context f12925e;
    @GuardedBy("this")

    /* renamed from: f */
    private bdr f12926f;

    public cgf(String str, cfy cfyVar, Context context, cfa cfaVar, chb chbVar) {
        this.f12923c = str;
        this.f12921a = cfyVar;
        this.f12922b = cfaVar;
        this.f12924d = chbVar;
        this.f12925e = context;
    }

    /* renamed from: a */
    private final void m11383a(dya dyaVar, AbstractC3482sa abstractC3482sa, int i) {
        synchronized (this) {
            C2662s.m13974b("#008 Must be called on the main UI thread.");
            this.f12922b.m11417a(abstractC3482sa);
            C2341q.m14744c();
            if (C3567ve.m6944o(this.f12925e) && dyaVar.f16085s == null) {
                C3556uu.m6749c("Failed to load the ad because app ID is missing.");
                this.f12922b.mo11258a(8);
            } else if (this.f12926f == null) {
                cfv cfvVar = new cfv(null);
                this.f12921a.m11395a(i);
                this.f12921a.mo11391a(dyaVar, this.f12923c, cfvVar, new cgh(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7216a(AbstractC2731a abstractC2731a) {
        synchronized (this) {
            mo7215a(abstractC2731a, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7215a(AbstractC2731a abstractC2731a, boolean z) {
        synchronized (this) {
            C2662s.m13974b("#008 Must be called on the main UI thread.");
            if (this.f12926f == null) {
                C3556uu.m6745e("Rewarded can not be shown before loaded");
                this.f12922b.mo11415b(2);
            } else {
                this.f12926f.m12065a(z, (Activity) BinderC2734b.m13795a(abstractC2731a));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7214a(dya dyaVar, AbstractC3482sa abstractC3482sa) {
        synchronized (this) {
            m11383a(dyaVar, abstractC3482sa, cgy.f13019b);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7213a(eap eapVar) {
        if (eapVar == null) {
            this.f12922b.m11426a((C2391a) null);
        } else {
            this.f12922b.m11426a(new cge(this, eapVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7212a(eau eauVar) {
        C2662s.m13974b("setOnPaidEventListener must be called on the main UI thread.");
        this.f12922b.m11422a(eauVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7211a(AbstractC3479ry abstractC3479ry) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        this.f12922b.m11418a(abstractC3479ry);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7210a(AbstractC3485sd abstractC3485sd) {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        this.f12922b.m11416a(abstractC3485sd);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final void mo7209a(C3489sh c3489sh) {
        synchronized (this) {
            C2662s.m13974b("#008 Must be called on the main UI thread.");
            chb chbVar = this.f12924d;
            chbVar.f13027a = c3489sh.f17315a;
            if (((Boolean) dyx.m8158e().m7876a(edi.f16381an)).booleanValue()) {
                chbVar.f13028b = c3489sh.f17316b;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: a */
    public final boolean mo7217a() {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        return this.f12926f != null && !this.f12926f.m12066a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: b */
    public final String mo7208b() {
        String mo8095a;
        synchronized (this) {
            mo8095a = (this.f12926f == null || this.f12926f.m12946j() == null) ? null : this.f12926f.m12946j().mo8095a();
        }
        return mo8095a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: b */
    public final void mo7207b(dya dyaVar, AbstractC3482sa abstractC3482sa) {
        synchronized (this) {
            m11383a(dyaVar, abstractC3482sa, cgy.f13020c);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: c */
    public final Bundle mo7206c() {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        return this.f12926f != null ? this.f12926f.m12061e() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: d */
    public final AbstractC3474rt mo7205d() {
        C2662s.m13974b("#008 Must be called on the main UI thread.");
        return this.f12926f != null ? this.f12926f.m12064b() : null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3475ru
    /* renamed from: e */
    public final eav mo7204e() {
        return !((Boolean) dyx.m8158e().m7876a(edi.f16502dB)).booleanValue() ? null : this.f12926f != null ? this.f12926f.m12946j() : null;
    }
}
