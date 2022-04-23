package com.google.android.gms.internal.ads;

import android.content.Context;
import com.amazonaws.services.s3.util.Mimetypes;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.o;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jw.class */
public final class jw implements jp, ju {

    /* renamed from: a  reason: collision with root package name */
    final adt f28089a;

    public jw(Context context, zzbar zzbarVar, die dieVar, zzb zzbVar) throws zzbfu {
        zzr.zzkw();
        adt a2 = aeb.a(context, afh.a(), "", false, false, dieVar, null, zzbarVar, null, null, new ehk(), null, null);
        this.f28089a = a2;
        a2.s().setWillNotDraw(true);
    }

    private static void a(Runnable runnable) {
        ekb.a();
        if (yq.b()) {
            runnable.run();
        } else {
            zzj.zzegq.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.ju
    public final void a() {
        this.f28089a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.ju
    public final void a(final jt jtVar) {
        afe B = this.f28089a.B();
        jtVar.getClass();
        B.a(new afg(jtVar) { // from class: com.google.android.gms.internal.ads.kd

            /* renamed from: a  reason: collision with root package name */
            private final jt f28100a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28100a = jtVar;
            }

            @Override // com.google.android.gms.internal.ads.afg
            public final void a() {
                this.f28100a.a();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.jp, com.google.android.gms.internal.ads.kf
    public final void a(final String str) {
        a(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.jv

            /* renamed from: a  reason: collision with root package name */
            private final jw f28087a;

            /* renamed from: b  reason: collision with root package name */
            private final String f28088b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28087a = this;
                this.f28088b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                jw jwVar = this.f28087a;
                jwVar.f28089a.a(this.f28088b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.lc
    public final void a(String str, hi<? super lc> hiVar) {
        this.f28089a.a(str, new kc(this, hiVar));
    }

    @Override // com.google.android.gms.internal.ads.jp
    public final void a(String str, String str2) {
        js.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.jq
    public final void a(String str, Map map) {
        js.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.jp, com.google.android.gms.internal.ads.jq
    public final void a(String str, JSONObject jSONObject) {
        js.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.ju
    public final void b(String str) {
        final String format = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str);
        a(new Runnable(this, format) { // from class: com.google.android.gms.internal.ads.jy

            /* renamed from: a  reason: collision with root package name */
            private final jw f28092a;

            /* renamed from: b  reason: collision with root package name */
            private final String f28093b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28092a = this;
                this.f28093b = format;
            }

            @Override // java.lang.Runnable
            public final void run() {
                jw jwVar = this.f28092a;
                jwVar.f28089a.loadData(this.f28093b, Mimetypes.MIMETYPE_HTML, "UTF-8");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.lc
    public final void b(String str, final hi<? super lc> hiVar) {
        this.f28089a.a(str, new o(hiVar) { // from class: com.google.android.gms.internal.ads.ka

            /* renamed from: a  reason: collision with root package name */
            private final hi f28095a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28095a = hiVar;
            }

            @Override // com.google.android.gms.common.util.o
            public final boolean a(Object obj) {
                hi hiVar2 = (hi) obj;
                return (hiVar2 instanceof kc) && ((kc) hiVar2).f28098a.equals(this.f28095a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.kf
    public final void b(String str, JSONObject jSONObject) {
        js.a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.ju
    public final boolean b() {
        return this.f28089a.H();
    }

    @Override // com.google.android.gms.internal.ads.ju
    public final lf c() {
        return new le(this);
    }

    @Override // com.google.android.gms.internal.ads.ju
    public final void c(final String str) {
        a(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.kb

            /* renamed from: a  reason: collision with root package name */
            private final jw f28096a;

            /* renamed from: b  reason: collision with root package name */
            private final String f28097b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28096a = this;
                this.f28097b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                jw jwVar = this.f28096a;
                jwVar.f28089a.loadUrl(this.f28097b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ju
    public final void d(final String str) {
        a(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.jx

            /* renamed from: a  reason: collision with root package name */
            private final jw f28090a;

            /* renamed from: b  reason: collision with root package name */
            private final String f28091b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28090a = this;
                this.f28091b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                jw jwVar = this.f28090a;
                jwVar.f28089a.loadData(this.f28091b, Mimetypes.MIMETYPE_HTML, "UTF-8");
            }
        });
    }
}
