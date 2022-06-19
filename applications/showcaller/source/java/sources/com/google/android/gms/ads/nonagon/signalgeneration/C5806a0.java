package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.f03;
import com.google.android.gms.internal.ads.vg0;
import com.google.android.gms.internal.ads.zzcgz;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/a0.class */
final class C5806a0 implements f03<C5821i> {

    /* renamed from: a */
    final /* synthetic */ vg0 f18693a;

    /* renamed from: b */
    final /* synthetic */ BinderC5814e0 f18694b;

    public C5806a0(BinderC5814e0 binderC5814e0, vg0 vg0Var) {
        this.f18694b = binderC5814e0;
        this.f18693a = vg0Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        String message = th.getMessage();
        C5667s.m18156h().m12235k(th, "SignalGeneratorImpl.generateSignals");
        BinderC5814e0.m17799h7(this.f18694b, "sgf", "sgf_reason", message);
        try {
            vg0 vg0Var = this.f18693a;
            String valueOf = String.valueOf(message);
            vg0Var.mo10026r(valueOf.length() != 0 ? "Internal error. ".concat(valueOf) : new String("Internal error. "));
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(C5821i c5821i) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        String str3;
        String str4;
        Context context;
        zzcgz zzcgzVar;
        String str5;
        String str6;
        AtomicInteger atomicInteger;
        C5824k c5824k;
        C5821i c5821i2 = c5821i;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25836x5)).booleanValue()) {
            try {
                this.f18693a.mo10026r("QueryInfo generation has been disabled.");
                return;
            } catch (RemoteException e) {
                ei0.m15467c("QueryInfo generation has been disabled.".concat(e.toString()));
                return;
            }
        }
        try {
            if (c5821i2 == null) {
                this.f18693a.mo10027N1(null, null, null);
                BinderC5814e0.m17799h7(this.f18694b, "sgs", "rid", "-1");
                return;
            }
            try {
                String optString = new JSONObject(c5821i2.f18752b).optString("request_id", "");
                if (TextUtils.isEmpty(optString)) {
                    ei0.m15464f("The request ID is empty in request JSON.");
                    this.f18693a.mo10026r("Internal error: request ID is empty in request JSON.");
                    BinderC5814e0.m17799h7(this.f18694b, "sgf", "sgf_reason", "rid_missing");
                    return;
                }
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25716i5)).booleanValue()) {
                    c5824k = this.f18694b.f18727s;
                    c5824k.m17789b(optString, c5821i2.f18752b);
                }
                Bundle bundle = c5821i2.f18753c;
                z = this.f18694b.f18734z;
                if (z && bundle != null) {
                    str5 = this.f18694b.f18712B;
                    if (bundle.getInt(str5, -1) == -1) {
                        str6 = this.f18694b.f18712B;
                        atomicInteger = this.f18694b.f18713C;
                        bundle.putInt(str6, atomicInteger.get());
                    }
                }
                z2 = this.f18694b.f18733y;
                if (z2 && bundle != null) {
                    str = this.f18694b.f18711A;
                    if (TextUtils.isEmpty(bundle.getString(str))) {
                        str2 = this.f18694b.f18715E;
                        if (TextUtils.isEmpty(str2)) {
                            BinderC5814e0 binderC5814e0 = this.f18694b;
                            C5679c2 m18160d = C5667s.m18160d();
                            context = this.f18694b.f18718j;
                            zzcgzVar = this.f18694b.f18714D;
                            binderC5814e0.f18715E = m18160d.m18092P(context, zzcgzVar.f33854d);
                        }
                        str3 = this.f18694b.f18711A;
                        str4 = this.f18694b.f18715E;
                        bundle.putString(str3, str4);
                    }
                }
                this.f18693a.mo10027N1(c5821i2.f18751a, c5821i2.f18752b, bundle);
                BinderC5814e0.m17799h7(this.f18694b, "sgs", "rid", optString);
            } catch (JSONException e2) {
                ei0.m15464f("Failed to create JSON object from the request string.");
                vg0 vg0Var = this.f18693a;
                String obj = e2.toString();
                StringBuilder sb = new StringBuilder(obj.length() + 33);
                sb.append("Internal error for request JSON: ");
                sb.append(obj);
                vg0Var.mo10026r(sb.toString());
                BinderC5814e0.m17799h7(this.f18694b, "sgf", "sgf_reason", "request_invalid");
            }
        } catch (RemoteException e3) {
            ei0.m15466d("", e3);
        }
    }
}
