package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.facebook.internal.b.b.a;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/k.class */
public class k extends ag {

    /* renamed from: c  reason: collision with root package name */
    private static final String f19941c = "com.facebook.internal.k";

    /* renamed from: d  reason: collision with root package name */
    private boolean f19942d;

    private k(Context context, String str, String str2) {
        super(context, str);
        b(str2);
    }

    public static k a(Context context, String str, String str2) {
        ag.a(context);
        return new k(context, str, str2);
    }

    @Override // com.facebook.internal.ag
    protected final Bundle a(String str) {
        Bundle d2 = ae.d(Uri.parse(str).getQuery());
        String string = d2.getString("bridge_args");
        d2.remove("bridge_args");
        if (!ae.a(string)) {
            try {
                d2.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", BundleJSONConverter.convertToBundle(new JSONObject(string)));
            } catch (JSONException e) {
                ae.e(f19941c);
            }
        }
        String string2 = d2.getString("method_results");
        d2.remove("method_results");
        if (!ae.a(string2)) {
            String str2 = string2;
            if (ae.a(string2)) {
                str2 = "{}";
            }
            try {
                d2.putBundle("com.facebook.platform.protocol.RESULT_ARGS", BundleJSONConverter.convertToBundle(new JSONObject(str2)));
            } catch (JSONException e2) {
                ae.e(f19941c);
            }
        }
        d2.remove("version");
        d2.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", z.a());
        return d2;
    }

    @Override // com.facebook.internal.ag, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView b2 = b();
        if (!a() || this.f19829b || b2 == null || !b2.isShown()) {
            super.cancel();
        } else if (!this.f19942d) {
            this.f19942d = true;
            b2.loadUrl("javascript:".concat("(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();"));
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.internal.k.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!a.a(this)) {
                        try {
                            k.super.cancel();
                        } catch (Throwable th) {
                            a.a(th, this);
                        }
                    }
                }
            }, 1500L);
        }
    }
}
