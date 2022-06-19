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
import com.google.android.p314c.AbstractC10613b;
import java.io.ByteArrayOutputStream;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.consent_sdk.ak */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ak.class */
public final class C13180ak implements AbstractC13227cb {

    /* renamed from: a */
    final Application f50299a;

    /* renamed from: b */
    final C13261u f50300b;

    /* renamed from: c */
    private final C13178ai f50301c;

    /* renamed from: d */
    private final Handler f50302d;

    /* renamed from: e */
    private final Executor f50303e;

    /* renamed from: f */
    private final C13222bx f50304f;

    /* renamed from: g */
    private final C13251k f50305g;

    public C13180ak(Application application, C13178ai c13178ai, Handler handler, Executor executor, C13222bx c13222bx, C13251k c13251k, C13261u c13261u) {
        this.f50299a = application;
        this.f50301c = c13178ai;
        this.f50302d = handler;
        this.f50303e = executor;
        this.f50304f = c13222bx;
        this.f50305g = c13251k;
        this.f50300b = c13261u;
    }

    /* renamed from: a */
    public static JSONObject m13581a(Context context) {
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

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13227cb
    /* renamed from: a */
    public final Executor mo13532a() {
        Handler handler = this.f50302d;
        handler.getClass();
        return ExecutorC13183an.m13579a(handler);
    }

    /* renamed from: a */
    public final void m13580a(String str) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Receive consent action: ".concat(valueOf);
        } else {
            new String("Receive consent action: ");
        }
        Uri parse = Uri.parse(str);
        this.f50304f.m13550a(parse.getQueryParameter("action"), parse.getQueryParameter("args"), this, this.f50305g);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13227cb
    /* renamed from: a */
    public final boolean mo13531a(String str, JSONObject jSONObject) {
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
                C13261u c13261u = this.f50300b;
                C13265y andSet = c13261u.f50509f.getAndSet(null);
                if (andSet == null) {
                    return true;
                }
                andSet.mo13518a(c13261u);
                return true;
            case true:
                this.f50303e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.consent_sdk.am

                    /* renamed from: a */
                    private final C13180ak f50307a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f50307a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        C13180ak c13180ak = this.f50307a;
                        JSONObject m13581a = C13180ak.m13581a(c13180ak.f50299a);
                        zzbe zzbeVar = c13180ak.f50300b.f50508e;
                        String jSONObject2 = m13581a.toString();
                        StringBuilder sb = new StringBuilder("UMP_configureFormWithAppAssets".length() + 3 + String.valueOf(jSONObject2).length());
                        sb.append("UMP_configureFormWithAppAssets");
                        sb.append("(");
                        sb.append(jSONObject2);
                        sb.append(");");
                        zzbeVar.f50521a.post(new Runnable(zzbeVar, sb.toString()) { // from class: com.google.android.gms.internal.consent_sdk.af

                            /* renamed from: a */
                            private final zzbe f50292a;

                            /* renamed from: b */
                            private final String f50293b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f50292a = zzbeVar;
                                this.f50293b = r5;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                C13206bi.m13560a(this.f50292a, this.f50293b);
                            }
                        });
                    }
                });
                return true;
            case true:
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
                    this.f50301c.startActivity(new Intent("android.intent.action.VIEW", parse));
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
                        this.f50300b.m13521b(new zzk(1, "We are getting something wrong with the webview."));
                        return true;
                }
                C13261u c13261u2 = this.f50300b;
                c13261u2.m13524a();
                AbstractC10613b.AbstractC10614a andSet2 = c13261u2.f50510g.getAndSet(null);
                if (andSet2 == null) {
                    return true;
                }
                c13261u2.f50505b.m13530a(3);
                c13261u2.f50505b.m13529b(i);
                andSet2.mo22613a(null);
                return true;
            default:
                return false;
        }
    }
}
