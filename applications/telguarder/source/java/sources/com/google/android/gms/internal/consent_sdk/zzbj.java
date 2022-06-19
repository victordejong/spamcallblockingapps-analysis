package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.facebook.internal.NativeProtocol;
import java.io.ByteArrayOutputStream;
import java.util.Locale;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbj.class */
public final class zzbj implements zzi {
    private final Application zza;
    private final zzbh zzb;
    private final Handler zzc;
    private final Executor zzd;
    private final zze zze;
    private final zzaj zzf;
    private final zzat zzg;

    public zzbj(Application application, zzbh zzbhVar, Handler handler, Executor executor, zze zzeVar, zzaj zzajVar, zzat zzatVar) {
        this.zza = application;
        this.zzb = zzbhVar;
        this.zzc = handler;
        this.zzd = executor;
        this.zze = zzeVar;
        this.zzf = zzajVar;
        this.zzg = zzatVar;
    }

    private static JSONObject zza(Context context) {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING, context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString());
            Drawable applicationIcon = context.getPackageManager().getApplicationIcon(context.getApplicationInfo());
            if (applicationIcon == null) {
                str = null;
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                applicationIcon.draw(canvas);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                String valueOf = String.valueOf(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0));
                str = valueOf.length() != 0 ? "data:image/png;base64,".concat(valueOf) : new String("data:image/png;base64,");
            }
            jSONObject.put("app_icon", str);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzi
    public final Executor zza() {
        Handler handler = this.zzc;
        handler.getClass();
        return zzbm.zza(handler);
    }

    public final void zza(int i, String str, String str2) {
        this.zzg.zza(new zzk(2, String.format(Locale.US, "WebResourceError(%d, %s): %s", Integer.valueOf(i), str2, str)));
    }

    public final void zza(String str) {
        String valueOf = String.valueOf(str);
        Log.d("UserMessagingPlatform", valueOf.length() != 0 ? "Receive consent action: ".concat(valueOf) : new String("Receive consent action: "));
        Uri parse = Uri.parse(str);
        this.zze.zza(parse.getQueryParameter("action"), parse.getQueryParameter("args"), this, this.zzf);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.consent_sdk.zzi
    public final boolean zza(String str, JSONObject jSONObject) {
        boolean z;
        boolean z2;
        str.hashCode();
        int i = 2;
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
        switch (z) {
            case false:
                this.zzg.zzb();
                return true;
            case true:
                this.zzd.execute(new Runnable(this) { // from class: com.google.android.gms.internal.consent_sdk.zzbl
                    private final zzbj zza;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zza = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzb();
                    }
                });
                return true;
            case true:
                String optString = jSONObject.optString("url");
                if (TextUtils.isEmpty(optString)) {
                    Log.d("UserMessagingPlatform", "Action[browser]: empty url.");
                }
                Uri parse = Uri.parse(optString);
                if (parse.getScheme() == null) {
                    String valueOf = String.valueOf(optString);
                    Log.d("UserMessagingPlatform", valueOf.length() != 0 ? "Action[browser]: empty scheme: ".concat(valueOf) : new String("Action[browser]: empty scheme: "));
                }
                try {
                    this.zzb.startActivity(new Intent("android.intent.action.VIEW", parse));
                    return true;
                } catch (ActivityNotFoundException e) {
                    String valueOf2 = String.valueOf(optString);
                    zzca.zza(valueOf2.length() != 0 ? "Action[browser]: can not open url: ".concat(valueOf2) : new String("Action[browser]: can not open url: "), e);
                    return true;
                }
            case true:
                String optString2 = jSONObject.optString("status");
                optString2.hashCode();
                switch (optString2.hashCode()) {
                    case -954325659:
                        if (optString2.equals("CONSENT_SIGNAL_NON_PERSONALIZED_ADS")) {
                            z2 = false;
                            break;
                        } else {
                            z2 = true;
                            break;
                        }
                    case -258041904:
                        if (optString2.equals("personalized")) {
                            z2 = true;
                            break;
                        } else {
                            z2 = true;
                            break;
                        }
                    case 429411856:
                        if (optString2.equals("CONSENT_SIGNAL_SUFFICIENT")) {
                            z2 = true;
                            break;
                        } else {
                            z2 = true;
                            break;
                        }
                    case 467888915:
                        if (optString2.equals("CONSENT_SIGNAL_PERSONALIZED_ADS")) {
                            z2 = true;
                            break;
                        } else {
                            z2 = true;
                            break;
                        }
                    case 1666911234:
                        if (optString2.equals("non_personalized")) {
                            z2 = true;
                            break;
                        } else {
                            z2 = true;
                            break;
                        }
                    default:
                        z2 = true;
                        break;
                }
                switch (z2) {
                    case false:
                    case true:
                        i = 1;
                        break;
                    case true:
                    case true:
                        break;
                    case true:
                        i = 0;
                        break;
                    default:
                        this.zzg.zzb(new zzk(1, "We are getting something wrong with the webview."));
                        return true;
                }
                this.zzg.zza(3, i);
                return true;
            default:
                return false;
        }
    }

    public final /* synthetic */ void zzb() {
        this.zzg.zza().zza("UMP_configureFormWithAppAssets", zza(this.zza));
    }
}
