package com.google.android.gms.internal.ads;

import android.content.Context;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.AbstractC12111o;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.jw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jw.class */
public final class C12675jw implements AbstractC12668jp, AbstractC12673ju {

    /* renamed from: a */
    final adt f49401a;

    public C12675jw(Context context, zzbar zzbarVar, die dieVar, zzb zzbVar) throws zzbfu {
        zzr.zzkw();
        adt m18830a = aeb.m18830a(context, afh.m18777a(), "", false, false, dieVar, null, zzbarVar, null, null, new ehk(), null, null);
        this.f49401a = m18830a;
        m18830a.mo13731s().setWillNotDraw(true);
    }

    /* renamed from: a */
    private static void m14567a(Runnable runnable) {
        ekb.m14835a();
        if (C13077yq.m13938b()) {
            runnable.run();
        } else {
            zzj.zzegq.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12673ju
    /* renamed from: a */
    public final void mo14569a() {
        this.f49401a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12673ju
    /* renamed from: a */
    public final void mo14568a(AbstractC12672jt abstractC12672jt) {
        afe mo13808B = this.f49401a.mo13808B();
        abstractC12672jt.getClass();
        mo13808B.mo18788a(new afg(abstractC12672jt) { // from class: com.google.android.gms.internal.ads.kd

            /* renamed from: a */
            private final AbstractC12672jt f49412a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49412a = abstractC12672jt;
            }

            @Override // com.google.android.gms.internal.ads.afg
            /* renamed from: a */
            public final void mo14557a() {
                this.f49412a.mo14554a();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12668jp, com.google.android.gms.internal.ads.AbstractC12685kf
    /* renamed from: a */
    public final void mo13775a(String str) {
        m14567a(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.jv

            /* renamed from: a */
            private final C12675jw f49399a;

            /* renamed from: b */
            private final String f49400b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49399a = this;
                this.f49400b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C12675jw c12675jw = this.f49399a;
                c12675jw.f49401a.mo13775a(this.f49400b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12709lc
    /* renamed from: a */
    public final void mo14533a(String str, AbstractC12607hi<? super AbstractC12709lc> abstractC12607hi) {
        this.f49401a.mo13772a(str, new C12682kc(this, abstractC12607hi));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12668jp
    /* renamed from: a */
    public final void mo14532a(String str, String str2) {
        C12671js.m14573a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12669jq
    /* renamed from: a */
    public final void mo13770a(String str, Map map) {
        C12671js.m14572a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12668jp, com.google.android.gms.internal.ads.AbstractC12669jq
    /* renamed from: a */
    public final void mo13769a(String str, JSONObject jSONObject) {
        C12671js.m14570b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12673ju
    /* renamed from: b */
    public final void mo14565b(String str) {
        m14567a(new Runnable(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str)) { // from class: com.google.android.gms.internal.ads.jy

            /* renamed from: a */
            private final C12675jw f49404a;

            /* renamed from: b */
            private final String f49405b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49404a = this;
                this.f49405b = format;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C12675jw c12675jw = this.f49404a;
                c12675jw.f49401a.loadData(this.f49405b, Mimetypes.MIMETYPE_HTML, "UTF-8");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12709lc
    /* renamed from: b */
    public final void mo14531b(String str, AbstractC12607hi<? super AbstractC12709lc> abstractC12607hi) {
        this.f49401a.mo13774a(str, new AbstractC12111o(abstractC12607hi) { // from class: com.google.android.gms.internal.ads.ka

            /* renamed from: a */
            private final AbstractC12607hi f49407a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49407a = abstractC12607hi;
            }

            @Override // com.google.android.gms.common.util.AbstractC12111o
            /* renamed from: a */
            public final boolean mo14558a(Object obj) {
                AbstractC12607hi abstractC12607hi2 = (AbstractC12607hi) obj;
                return (abstractC12607hi2 instanceof C12682kc) && ((C12682kc) abstractC12607hi2).f49410a.equals(this.f49407a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12685kf
    /* renamed from: b */
    public final void mo13757b(String str, JSONObject jSONObject) {
        C12671js.m14571a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12673ju
    /* renamed from: b */
    public final boolean mo14566b() {
        return this.f49401a.mo13802H();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12673ju
    /* renamed from: c */
    public final AbstractC12712lf mo14564c() {
        return new C12711le(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12673ju
    /* renamed from: c */
    public final void mo14563c(String str) {
        m14567a(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.kb

            /* renamed from: a */
            private final C12675jw f49408a;

            /* renamed from: b */
            private final String f49409b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49408a = this;
                this.f49409b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C12675jw c12675jw = this.f49408a;
                c12675jw.f49401a.loadUrl(this.f49409b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12673ju
    /* renamed from: d */
    public final void mo14562d(String str) {
        m14567a(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.jx

            /* renamed from: a */
            private final C12675jw f49402a;

            /* renamed from: b */
            private final String f49403b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49402a = this;
                this.f49403b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C12675jw c12675jw = this.f49402a;
                c12675jw.f49401a.loadData(this.f49403b, Mimetypes.MIMETYPE_HTML, "UTF-8");
            }
        });
    }
}
