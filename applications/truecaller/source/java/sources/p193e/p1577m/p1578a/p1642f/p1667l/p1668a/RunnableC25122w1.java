package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzfp;
import com.google.android.gms.measurement.internal.zzia;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import e.m.a.f.l.a.v0;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1577m.p1578a.p1642f.p1667l.p1668a.RunnableC25122w1;
/* renamed from: e.m.a.f.l.a.w1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/w1.class */
public final class RunnableC25122w1 implements Runnable {

    /* renamed from: a */
    public final URL f70328a;

    /* renamed from: b */
    public final String f70329b;

    /* renamed from: c */
    public final /* synthetic */ zzia f70330c;

    /* renamed from: d */
    public final zzfp f70331d;

    public RunnableC25122w1(zzia zziaVar, String str, URL url, zzfp zzfpVar) {
        this.f70330c = zziaVar;
        Preconditions.m38901g(str);
        Objects.requireNonNull(url, "null reference");
        this.f70328a = url;
        this.f70331d = zzfpVar;
        this.f70329b = str;
    }

    /* renamed from: a */
    public final void m4161a(final int i, final Exception exc, final byte[] bArr, final Map map) {
        ((v0) this.f70330c).a.a().n(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhy
            @Override // java.lang.Runnable
            public final void run() {
                List<ResolveInfo> queryIntentActivities;
                RunnableC25122w1 runnableC25122w1 = RunnableC25122w1.this;
                int i2 = i;
                Exception exc2 = exc;
                byte[] bArr2 = bArr;
                zzfr zzfrVar = runnableC25122w1.f70331d.f6404a;
                int i3 = i2;
                if (i2 != 200) {
                    i3 = i2;
                    if (i2 != 204) {
                        i3 = i2;
                        if (i2 == 304) {
                            i3 = 304;
                        }
                        zzfrVar.zzay().i.m38588c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i3), exc2);
                    }
                }
                if (exc2 == null) {
                    zzfrVar.p().r.m38584a(true);
                    if (bArr2 == null || bArr2.length == 0) {
                        zzfrVar.zzay().m.m38590a("Deferred Deep Link response empty.");
                        return;
                    }
                    try {
                        JSONObject jSONObject = new JSONObject(new String(bArr2));
                        String optString = jSONObject.optString("deeplink", "");
                        String optString2 = jSONObject.optString("gclid", "");
                        double optDouble = jSONObject.optDouble("timestamp", PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
                        if (TextUtils.isEmpty(optString)) {
                            zzfrVar.zzay().m.m38590a("Deferred Deep Link is empty.");
                        } else {
                            zzkw w = zzfrVar.w();
                            zzfr zzfrVar2 = ((v0) w).a;
                            if (!TextUtils.isEmpty(optString) && (queryIntentActivities = ((v0) w).a.a.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0)) != null && !queryIntentActivities.isEmpty()) {
                                Bundle bundle = new Bundle();
                                bundle.putString("gclid", optString2);
                                bundle.putString("_cis", "ddp");
                                zzfrVar.p.k("auto", "_cmp", bundle);
                                zzkw w2 = zzfrVar.w();
                                if (!TextUtils.isEmpty(optString)) {
                                    try {
                                        SharedPreferences.Editor edit = ((v0) w2).a.a.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                                        edit.putString("deeplink", optString);
                                        edit.putLong("timestamp", Double.doubleToRawLongBits(optDouble));
                                        if (edit.commit()) {
                                            ((v0) w2).a.a.sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                                        }
                                    } catch (RuntimeException e) {
                                        ((v0) w2).a.zzay().f.m38589b("Failed to persist Deferred Deep Link. exception", e);
                                    }
                                }
                            }
                            zzfrVar.zzay().i.m38588c("Deferred Deep Link validation failed. gclid, deep link", optString2, optString);
                        }
                        return;
                    } catch (JSONException e2) {
                        zzfrVar.zzay().f.m38589b("Failed to parse the Deferred Deep Link response. exception", e2);
                        return;
                    }
                }
                zzfrVar.zzay().i.m38588c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i3), exc2);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0101  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1642f.p1667l.p1668a.RunnableC25122w1.run():void");
    }
}
