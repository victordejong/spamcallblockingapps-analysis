package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.gms.common.internal.ImagesContract;
import java.io.ByteArrayOutputStream;
import java.util.Locale;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbm.class */
public final class zzbm implements zzg {
    private final Application zza;
    private final zzbi zzb;
    private final Handler zzc;
    private final Executor zzd;
    private final zzh zze;
    private final zzak zzf;
    private final zzay zzg;
    private final zzam zzh;

    public zzbm(Application application, zzbi zzbiVar, Handler handler, Executor executor, zzh zzhVar, zzak zzakVar, zzay zzayVar, zzam zzamVar) {
        this.zza = application;
        this.zzb = zzbiVar;
        this.zzc = handler;
        this.zzd = executor;
        this.zze = zzhVar;
        this.zzf = zzakVar;
        this.zzg = zzayVar;
        this.zzh = zzamVar;
    }

    private final void zzf(JSONObject jSONObject) {
        String optString = jSONObject.optString(ImagesContract.URL);
        TextUtils.isEmpty(optString);
        Uri parse = Uri.parse(optString);
        if (parse.getScheme() == null) {
            String valueOf = String.valueOf(optString);
            if (valueOf.length() != 0) {
                "Action[browser]: empty scheme: ".concat(valueOf);
            }
        }
        try {
            this.zzb.startActivity(new Intent("android.intent.action.VIEW", parse));
        } catch (ActivityNotFoundException e) {
            String valueOf2 = String.valueOf(optString);
            if (valueOf2.length() == 0) {
                return;
            }
            "Action[browser]: can not open url: ".concat(valueOf2);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzg
    public final Executor zza() {
        final Handler handler = this.zzc;
        return new Executor() { // from class: com.google.android.gms.internal.consent_sdk.zzbl
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.consent_sdk.zzg
    public final boolean zzb(String str, JSONObject jSONObject) {
        boolean z;
        boolean z2;
        switch (str.hashCode()) {
            case -1370505102:
                if (str.equals("load_complete")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -278739366:
                if (str.equals("configure_app_assets")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 150940456:
                if (str.equals("browser")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1671672458:
                if (str.equals("dismiss")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        if (!z) {
            this.zzg.zze();
            return true;
        } else if (!z) {
            if (z) {
                zzf(jSONObject);
                return true;
            } else if (!z) {
                return false;
            } else {
                this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbk
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbm.this.zzc();
                    }
                });
                return true;
            }
        } else {
            String optString = jSONObject.optString("status");
            switch (optString.hashCode()) {
                case -954325659:
                    z2 = true;
                    if (optString.equals("CONSENT_SIGNAL_NON_PERSONALIZED_ADS")) {
                        z2 = true;
                        break;
                    }
                    break;
                case -258041904:
                    z2 = true;
                    if (optString.equals("personalized")) {
                        z2 = false;
                        break;
                    }
                    break;
                case 429411856:
                    z2 = true;
                    if (optString.equals("CONSENT_SIGNAL_SUFFICIENT")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 467888915:
                    z2 = true;
                    if (optString.equals("CONSENT_SIGNAL_PERSONALIZED_ADS")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 1666911234:
                    z2 = true;
                    if (optString.equals("non_personalized")) {
                        z2 = true;
                        break;
                    }
                    break;
                default:
                    z2 = true;
                    break;
            }
            if (!z2 || z2 || z2 || z2 || z2) {
                this.zzg.zzc(3);
                return true;
            }
            this.zzg.zzd(new zzj(1, "We are getting something wrong with the webview."));
            return true;
        }
    }

    public final /* synthetic */ void zzc() {
        String str;
        Application application = this.zza;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", application.getPackageManager().getApplicationLabel(application.getApplicationInfo()).toString());
            Drawable applicationIcon = application.getPackageManager().getApplicationIcon(application.getApplicationInfo());
            if (applicationIcon == null) {
                str = null;
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                applicationIcon.draw(canvas);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                String valueOf = String.valueOf(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2));
                str = valueOf.length() != 0 ? "data:image/png;base64,".concat(valueOf) : new String("data:image/png;base64,");
            }
            jSONObject.put("app_icon", str);
            jSONObject.put("stored_infos_map", this.zzh.zzb());
        } catch (JSONException e) {
        }
        this.zzg.zza().zzb("UMP_configureFormWithAppAssets", jSONObject.toString());
    }

    public final void zzd(String str) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Receive consent action: ".concat(valueOf);
        }
        Uri parse = Uri.parse(str);
        this.zze.zzb(parse.getQueryParameter("action"), parse.getQueryParameter("args"), this, this.zzf);
    }

    public final void zze(int i, String str, String str2) {
        this.zzg.zzf(new zzj(2, String.format(Locale.US, "WebResourceError(%d, %s): %s", Integer.valueOf(i), str2, str)));
    }
}
