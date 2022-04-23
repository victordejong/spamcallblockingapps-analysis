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
import com.google.android.c.b;
import java.io.ByteArrayOutputStream;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ak.class */
public final class ak implements cb {

    /* renamed from: a  reason: collision with root package name */
    final Application f28699a;

    /* renamed from: b  reason: collision with root package name */
    final u f28700b;

    /* renamed from: c  reason: collision with root package name */
    private final ai f28701c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f28702d;
    private final Executor e;
    private final bx f;
    private final k g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(Application application, ai aiVar, Handler handler, Executor executor, bx bxVar, k kVar, u uVar) {
        this.f28699a = application;
        this.f28701c = aiVar;
        this.f28702d = handler;
        this.e = executor;
        this.f = bxVar;
        this.g = kVar;
        this.f28700b = uVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a(Context context) {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString());
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

    @Override // com.google.android.gms.internal.consent_sdk.cb
    public final Executor a() {
        Handler handler = this.f28702d;
        handler.getClass();
        return an.a(handler);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Receive consent action: ".concat(valueOf);
        } else {
            new String("Receive consent action: ");
        }
        Uri parse = Uri.parse(str);
        this.f.a(parse.getQueryParameter("action"), parse.getQueryParameter("args"), this, this.g);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.consent_sdk.cb
    public final boolean a(String str, JSONObject jSONObject) {
        char c2;
        char c3;
        str.hashCode();
        int i = 2;
        switch (str.hashCode()) {
            case -1370505102:
                if (str.equals("load_complete")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -278739366:
                if (str.equals("configure_app_assets")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 150940456:
                if (str.equals("browser")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1671672458:
                if (str.equals("dismiss")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                u uVar = this.f28700b;
                y andSet = uVar.f.getAndSet(null);
                if (andSet == null) {
                    return true;
                }
                andSet.a(uVar);
                return true;
            case 1:
                this.e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.consent_sdk.am

                    /* renamed from: a  reason: collision with root package name */
                    private final ak f28704a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f28704a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        ak akVar = this.f28704a;
                        JSONObject a2 = ak.a(akVar.f28699a);
                        zzbe zzbeVar = akVar.f28700b.e;
                        String jSONObject2 = a2.toString();
                        StringBuilder sb = new StringBuilder("UMP_configureFormWithAppAssets".length() + 3 + String.valueOf(jSONObject2).length());
                        sb.append("UMP_configureFormWithAppAssets");
                        sb.append("(");
                        sb.append(jSONObject2);
                        sb.append(");");
                        zzbeVar.f28861a.post(new Runnable(zzbeVar, sb.toString()) { // from class: com.google.android.gms.internal.consent_sdk.af

                            /* renamed from: a  reason: collision with root package name */
                            private final zzbe f28692a;

                            /* renamed from: b  reason: collision with root package name */
                            private final String f28693b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f28692a = zzbeVar;
                                this.f28693b = r5;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                bi.a(this.f28692a, this.f28693b);
                            }
                        });
                    }
                });
                return true;
            case 2:
                String optString = jSONObject.optString("url");
                TextUtils.isEmpty(optString);
                Uri parse = Uri.parse(optString);
                if (parse.getScheme() == null) {
                    String valueOf = String.valueOf(optString);
                    if (valueOf.length() != 0) {
                        "Action[browser]: empty scheme: ".concat(valueOf);
                    } else {
                        new String("Action[browser]: empty scheme: ");
                    }
                }
                try {
                    this.f28701c.startActivity(new Intent("android.intent.action.VIEW", parse));
                    return true;
                } catch (ActivityNotFoundException e) {
                    String valueOf2 = String.valueOf(optString);
                    if (valueOf2.length() != 0) {
                        "Action[browser]: can not open url: ".concat(valueOf2);
                        return true;
                    }
                    new String("Action[browser]: can not open url: ");
                    return true;
                }
            case 3:
                String optString2 = jSONObject.optString("status");
                optString2.hashCode();
                switch (optString2.hashCode()) {
                    case -954325659:
                        if (optString2.equals("CONSENT_SIGNAL_NON_PERSONALIZED_ADS")) {
                            c3 = 0;
                            break;
                        } else {
                            c3 = 65535;
                            break;
                        }
                    case -258041904:
                        if (optString2.equals("personalized")) {
                            c3 = 1;
                            break;
                        } else {
                            c3 = 65535;
                            break;
                        }
                    case 429411856:
                        if (optString2.equals("CONSENT_SIGNAL_SUFFICIENT")) {
                            c3 = 2;
                            break;
                        } else {
                            c3 = 65535;
                            break;
                        }
                    case 467888915:
                        if (optString2.equals("CONSENT_SIGNAL_PERSONALIZED_ADS")) {
                            c3 = 3;
                            break;
                        } else {
                            c3 = 65535;
                            break;
                        }
                    case 1666911234:
                        if (optString2.equals("non_personalized")) {
                            c3 = 4;
                            break;
                        } else {
                            c3 = 65535;
                            break;
                        }
                    default:
                        c3 = 65535;
                        break;
                }
                switch (c3) {
                    case 0:
                    case 4:
                        i = 1;
                        break;
                    case 1:
                    case 3:
                        break;
                    case 2:
                        i = 0;
                        break;
                    default:
                        this.f28700b.b(new zzk(1, "We are getting something wrong with the webview."));
                        return true;
                }
                u uVar2 = this.f28700b;
                uVar2.a();
                b.a andSet2 = uVar2.g.getAndSet(null);
                if (andSet2 == null) {
                    return true;
                }
                uVar2.f28853b.a(3);
                uVar2.f28853b.b(i);
                andSet2.a(null);
                return true;
            default:
                return false;
        }
    }
}
