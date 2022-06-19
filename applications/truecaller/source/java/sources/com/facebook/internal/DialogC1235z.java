package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u000e2\u00020\u0001:\u0001\u000eB\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/FacebookWebFallbackDialog;", "Lcom/facebook/internal/WebDialog;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "url", "", "expectedRedirectUrl", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V", "waitingForDialogToClose", "", "cancel", "", "parseResponseUri", "Landroid/os/Bundle;", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.z */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/z.class */
public final class DialogC1235z extends DialogC1182s0 {

    /* renamed from: q */
    public static final DialogC1235z f3328q = null;

    /* renamed from: r */
    public static final String f3329r;

    /* renamed from: p */
    public boolean f3330p;

    static {
        String name = DialogC1235z.class.getName();
        l.d(name, "FacebookWebFallbackDialog::class.java.name");
        f3329r = name;
    }

    public DialogC1235z(Context context, String str, String str2, f fVar) {
        super(context, str);
        l.e(str2, "expectedRedirectUrl");
        this.f3211b = str2;
    }

    /* renamed from: g */
    public static void m41609g(DialogC1235z dialogC1235z) {
        l.e(dialogC1235z, "this$0");
        super.cancel();
    }

    @Override // com.facebook.internal.DialogC1182s0
    /* renamed from: c */
    public Bundle mo41610c(String str) {
        Bundle m41692J = C1168q0.m41692J(Uri.parse(str).getQuery());
        String string = m41692J.getString("bridge_args");
        m41692J.remove("bridge_args");
        if (!C1168q0.m41700B(string)) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                C1173s c1173s = C1173s.f3205a;
                m41692J.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", C1173s.m41648a(jSONObject));
            } catch (JSONException e) {
                C1168q0.m41695G(f3329r, "Unable to parse bridge_args JSON", e);
            }
        }
        String string2 = m41692J.getString("method_results");
        m41692J.remove("method_results");
        if (!C1168q0.m41700B(string2)) {
            try {
                JSONObject jSONObject2 = new JSONObject(string2);
                C1173s c1173s2 = C1173s.f3205a;
                m41692J.putBundle("com.facebook.platform.protocol.RESULT_ARGS", C1173s.m41648a(jSONObject2));
            } catch (JSONException e2) {
                C1168q0.m41695G(f3329r, "Unable to parse bridge_args JSON", e2);
            }
        }
        m41692J.remove("version");
        C1146l0 c1146l0 = C1146l0.f3146a;
        m41692J.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", C1146l0.m41719h());
        return m41692J;
    }

    @Override // com.facebook.internal.DialogC1182s0, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView webView = this.f3213d;
        if (!this.f3220k || this.f3218i || webView == null || !webView.isShown()) {
            super.cancel();
        } else if (this.f3330p) {
        } else {
            this.f3330p = true;
            webView.loadUrl(l.j("javascript:", "(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();"));
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.internal.c
                @Override // java.lang.Runnable
                public final void run() {
                    DialogC1235z.m41609g(DialogC1235z.this);
                }
            }, 1500L);
        }
    }
}
