package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.facebook.internal.p299b.p301b.C10249a;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.k */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/k.class */
public class DialogC10289k extends DialogC10219ag {

    /* renamed from: c */
    private static final String f33823c = "com.facebook.internal.k";

    /* renamed from: d */
    private boolean f33824d;

    private DialogC10289k(Context context, String str, String str2) {
        super(context, str);
        m23162b(str2);
    }

    /* renamed from: a */
    public static DialogC10289k m23055a(Context context, String str, String str2) {
        DialogC10219ag.m23170a(context);
        return new DialogC10289k(context, str, str2);
    }

    @Override // com.facebook.internal.DialogC10219ag
    /* renamed from: a */
    protected final Bundle mo23053a(String str) {
        Bundle m23195d = C10213ae.m23195d(Uri.parse(str).getQuery());
        String string = m23195d.getString("bridge_args");
        m23195d.remove("bridge_args");
        if (!C10213ae.m23230a(string)) {
            try {
                m23195d.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", BundleJSONConverter.convertToBundle(new JSONObject(string)));
            } catch (JSONException e) {
                C10213ae.m23192e(f33823c);
            }
        }
        String string2 = m23195d.getString("method_results");
        m23195d.remove("method_results");
        if (!C10213ae.m23230a(string2)) {
            String str2 = string2;
            if (C10213ae.m23230a(string2)) {
                str2 = "{}";
            }
            try {
                m23195d.putBundle("com.facebook.platform.protocol.RESULT_ARGS", BundleJSONConverter.convertToBundle(new JSONObject(str2)));
            } catch (JSONException e2) {
                C10213ae.m23192e(f33823c);
            }
        }
        m23195d.remove("version");
        m23195d.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", C10340z.m22972a());
        return m23195d;
    }

    @Override // com.facebook.internal.DialogC10219ag, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView b = m23164b();
        if (!m23173a() || this.f33678b || b == null || !b.isShown()) {
            super.cancel();
        } else if (this.f33824d) {
        } else {
            this.f33824d = true;
            b.loadUrl("javascript:".concat("(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();"));
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.internal.k.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        DialogC10289k.super.cancel();
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            }, 1500L);
        }
    }
}
