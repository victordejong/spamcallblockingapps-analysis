package com.facebook.internal;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.autofill.AutofillManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.amazon.device.ads.MraidResizeCommand;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.common.C1107R;
import com.facebook.internal.DialogC1182s0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.facebook.login.EnumC1290x;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1538j.AsyncTaskC23238j0;
import p193e.p1538j.C23220b0;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23224d0;
import p193e.p1538j.C23226e0;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23244l0;
import p193e.p1538j.p1543y0.p1544a.C23281a;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0003\n\u0002\b\f\b\u0016\u0018�� N2\u00020\u0001:\u0006MNOPQRB\u0017\b\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u001f\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tB=\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011J\b\u0010,\u001a\u00020-H\u0016J\b\u0010.\u001a\u00020-H\u0002J\b\u0010/\u001a\u00020-H\u0016J(\u00100\u001a\u00020\b2\u0006\u00101\u001a\u00020\b2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\b2\u0006\u00105\u001a\u00020\bH\u0002J\b\u00106\u001a\u00020-H\u0016J\u0012\u00107\u001a\u00020-2\b\u00108\u001a\u0004\u0018\u00010\fH\u0014J\b\u00109\u001a\u00020-H\u0016J\u0018\u0010:\u001a\u00020\u00182\u0006\u0010;\u001a\u00020\b2\u0006\u0010<\u001a\u00020=H\u0016J\b\u0010>\u001a\u00020-H\u0014J\b\u0010?\u001a\u00020-H\u0014J\u0010\u0010@\u001a\u00020-2\u0006\u0010A\u001a\u00020+H\u0016J\u0012\u0010B\u001a\u00020\f2\b\u0010C\u001a\u0004\u0018\u00010\u0005H\u0017J\u0006\u0010D\u001a\u00020-J\u0012\u0010E\u001a\u00020-2\b\u0010F\u001a\u0004\u0018\u00010GH\u0004J\u0012\u0010H\u001a\u00020-2\b\u0010I\u001a\u0004\u0018\u00010\fH\u0004J\u0010\u0010J\u001a\u00020-2\u0006\u0010\u0016\u001a\u00020\u0005H\u0004J\u0010\u0010K\u001a\u00020-2\u0006\u0010L\u001a\u00020\bH\u0003R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018@BX\u0084\u000e¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018@BX\u0084\u000e¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001bR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010$\u001a\b\u0018\u00010%R\u00020��X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\"\u0010'\u001a\u0004\u0018\u00010&2\b\u0010\u0019\u001a\u0004\u0018\u00010&@BX\u0084\u000e¢\u0006\b\n��\u001a\u0004\b(\u0010)R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n��¨\u0006S"}, d2 = {"Lcom/facebook/internal/WebDialog;", "Landroid/app/Dialog;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "url", "", "(Landroid/content/Context;Ljava/lang/String;)V", "theme", "", "(Landroid/content/Context;Ljava/lang/String;I)V", "action", "parameters", "Landroid/os/Bundle;", "targetApp", "Lcom/facebook/login/LoginTargetApp;", "listener", "Lcom/facebook/internal/WebDialog$OnCompleteListener;", "(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/login/LoginTargetApp;Lcom/facebook/internal/WebDialog$OnCompleteListener;)V", "contentFrameLayout", "Landroid/widget/FrameLayout;", "crossImageView", "Landroid/widget/ImageView;", "expectedRedirectUrl", "isDetached", "", "<set-?>", "isListenerCalled", "()Z", "isPageFinished", "onCompleteListener", "getOnCompleteListener", "()Lcom/facebook/internal/WebDialog$OnCompleteListener;", "setOnCompleteListener", "(Lcom/facebook/internal/WebDialog$OnCompleteListener;)V", "spinner", "Landroid/app/ProgressDialog;", "uploadTask", "Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;", "Landroid/webkit/WebView;", "webView", "getWebView", "()Landroid/webkit/WebView;", "windowParams", "Landroid/view/WindowManager$LayoutParams;", "cancel", "", "createCrossImage", "dismiss", "getScaledSize", "screenSize", AnalyticsConstants.DENSITY, "", "noPaddingSize", "maxPaddingSize", "onAttachedToWindow", "onCreate", "savedInstanceState", "onDetachedFromWindow", "onKeyDown", "keyCode", "event", "Landroid/view/KeyEvent;", "onStart", "onStop", "onWindowAttributesChanged", "params", "parseResponseUri", "urlString", MraidResizeCommand.NAME, "sendErrorToListener", "error", "", "sendSuccessToListener", "values", "setExpectedRedirectUrl", "setUpWebView", "margin", "Builder", "Companion", "DialogWebViewClient", "InitCallback", "OnCompleteListener", "UploadStagingResourcesTask", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.s0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/s0.class */
public class DialogC1182s0 extends Dialog {

    /* renamed from: m */
    public static final C1184b f3207m = null;

    /* renamed from: n */
    public static final int f3208n = C1107R.style.com_facebook_activity_theme;

    /* renamed from: o */
    public static volatile int f3209o;

    /* renamed from: a */
    public String f3210a;

    /* renamed from: b */
    public String f3211b;

    /* renamed from: c */
    public AbstractC1186d f3212c;

    /* renamed from: d */
    public WebView f3213d;

    /* renamed from: e */
    public ProgressDialog f3214e;

    /* renamed from: f */
    public ImageView f3215f;

    /* renamed from: g */
    public FrameLayout f3216g;

    /* renamed from: h */
    public AsyncTaskC1187e f3217h;

    /* renamed from: i */
    public boolean f3218i;

    /* renamed from: j */
    public boolean f3219j;

    /* renamed from: k */
    public boolean f3220k;

    /* renamed from: l */
    public WindowManager.LayoutParams f3221l;

    @Metadata(d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0016\u0018��2\u00020\u0001B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB+\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\nJ\n\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J$\u0010\u001e\u001a\u00020\u001f2\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010 \u001a\u00020��2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\u000e\u0010!\u001a\u00020��2\u0006\u0010\u0019\u001a\u00020\u0018R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\"\u0010\t\u001a\u0004\u0018\u00010\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\"\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\r\u001a\u0004\u0018\u00010\u0012@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u0007@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u0018@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001b¨\u0006\""}, d2 = {"Lcom/facebook/internal/WebDialog$Builder;", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "action", "", "parameters", "Landroid/os/Bundle;", "(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V", "applicationId", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V", "accessToken", "Lcom/facebook/AccessToken;", "<set-?>", "getApplicationId", "()Ljava/lang/String;", "getContext", "()Landroid/content/Context;", "Lcom/facebook/internal/WebDialog$OnCompleteListener;", "listener", "getListener", "()Lcom/facebook/internal/WebDialog$OnCompleteListener;", "getParameters", "()Landroid/os/Bundle;", "", "theme", "getTheme", "()I", "build", "Lcom/facebook/internal/WebDialog;", "finishInit", "", "setOnCompleteListener", "setTheme", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s0$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s0$a.class */
    public static class C1183a {

        /* renamed from: a */
        public Context f3222a;

        /* renamed from: b */
        public String f3223b;

        /* renamed from: c */
        public String f3224c;

        /* renamed from: d */
        public AbstractC1186d f3225d;

        /* renamed from: e */
        public Bundle f3226e;

        public C1183a(Context context, String str, String str2, Bundle bundle) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str2, "action");
            C1172r0 c1172r0 = C1172r0.f3203a;
            C1172r0.m41650e(str, "applicationId");
            this.f3223b = str;
            this.f3222a = context;
            this.f3224c = str2;
            this.f3226e = bundle;
        }
    }

    @Metadata(d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0016\u001a\u00020\u0004H\u0007J\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0005J6\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\n2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u00042\b\u0010!\u001a\u0004\u0018\u00010\"H\u0007J>\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\n2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010#\u001a\u00020$2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0007J\u0012\u0010%\u001a\u00020\u00182\b\u0010&\u001a\u0004\u0018\u00010\u0014H\u0007J\u0010\u0010'\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\nX\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\nX\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006("}, d2 = {"Lcom/facebook/internal/WebDialog$Companion;", "", "()V", "API_EC_DIALOG_CANCEL", "", "BACKGROUND_GRAY", "DEFAULT_THEME", "DISABLE_SSL_CHECK_FOR_TESTING", "", "DISPLAY_TOUCH", "", "LOG_TAG", "MAX_PADDING_SCREEN_HEIGHT", "MAX_PADDING_SCREEN_WIDTH", "MIN_SCALE_FACTOR", "", "NO_PADDING_SCREEN_HEIGHT", "NO_PADDING_SCREEN_WIDTH", "PLATFORM_DIALOG_PATH_REGEX", "initCallback", "Lcom/facebook/internal/WebDialog$InitCallback;", "webDialogTheme", "getWebDialogTheme", "initDefaultTheme", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "newInstance", "Lcom/facebook/internal/WebDialog;", "action", "parameters", "Landroid/os/Bundle;", "theme", "listener", "Lcom/facebook/internal/WebDialog$OnCompleteListener;", "targetApp", "Lcom/facebook/login/LoginTargetApp;", "setInitCallback", "callback", "setWebDialogTheme", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s0$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s0$b.class */
    public static final class C1184b {
    }

    @Metadata(d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\b\u0082\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\"\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J(\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\bH\u0016J \u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\u0018"}, d2 = {"Lcom/facebook/internal/WebDialog$DialogWebViewClient;", "Landroid/webkit/WebViewClient;", "(Lcom/facebook/internal/WebDialog;)V", "onPageFinished", "", ViewAction.VIEW, "Landroid/webkit/WebView;", "url", "", "onPageStarted", "favicon", "Landroid/graphics/Bitmap;", "onReceivedError", "errorCode", "", "description", "failingUrl", "onReceivedSslError", "handler", "Landroid/webkit/SslErrorHandler;", "error", "Landroid/net/http/SslError;", "shouldOverrideUrlLoading", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s0$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s0$c.class */
    public final class C1185c extends WebViewClient {

        /* renamed from: a */
        public final /* synthetic */ DialogC1182s0 f3227a;

        public C1185c(DialogC1182s0 dialogC1182s0) {
            l.e(dialogC1182s0, "this$0");
            this.f3227a = dialogC1182s0;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            ProgressDialog progressDialog;
            l.e(webView, ViewAction.VIEW);
            l.e(str, "url");
            super.onPageFinished(webView, str);
            DialogC1182s0 dialogC1182s0 = this.f3227a;
            if (!dialogC1182s0.f3219j && (progressDialog = dialogC1182s0.f3214e) != null) {
                progressDialog.dismiss();
            }
            FrameLayout frameLayout = this.f3227a.f3216g;
            if (frameLayout != null) {
                frameLayout.setBackgroundColor(0);
            }
            WebView webView2 = this.f3227a.f3213d;
            if (webView2 != null) {
                webView2.setVisibility(0);
            }
            ImageView imageView = this.f3227a.f3215f;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            this.f3227a.f3220k = true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            ProgressDialog progressDialog;
            l.e(webView, ViewAction.VIEW);
            l.e(str, "url");
            l.j("Webview loading URL: ", str);
            C23228f0 c23228f0 = C23228f0.f64291a;
            boolean z = C23228f0.f64299i;
            super.onPageStarted(webView, str, bitmap);
            DialogC1182s0 dialogC1182s0 = this.f3227a;
            if (dialogC1182s0.f3219j || (progressDialog = dialogC1182s0.f3214e) == null) {
                return;
            }
            progressDialog.show();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            l.e(webView, ViewAction.VIEW);
            l.e(str, "description");
            l.e(str2, "failingUrl");
            super.onReceivedError(webView, i, str, str2);
            this.f3227a.m41643e(new C23220b0(str, i, str2));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            l.e(webView, ViewAction.VIEW);
            l.e(sslErrorHandler, "handler");
            l.e(sslError, "error");
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            this.f3227a.m41643e(new C23220b0(null, -11, null));
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x0121  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x012b  */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean shouldOverrideUrlLoading(android.webkit.WebView r7, java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 415
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.DialogC1182s0.C1185c.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }

    @Metadata(d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&¨\u0006\b"}, d2 = {"Lcom/facebook/internal/WebDialog$OnCompleteListener;", "", "onComplete", "", "values", "Landroid/os/Bundle;", "error", "Lcom/facebook/FacebookException;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s0$d */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s0$d.class */
    public interface AbstractC1186d {
        /* renamed from: a */
        void mo41560a(Bundle bundle, C23222c0 c23222c0);
    }

    @Metadata(d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018��2\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00030\u0001B\u0017\b��\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ+\u0010\r\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0003\"\u00020\u0002H\u0014¢\u0006\u0002\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\u00112\u0010\u0010\u0012\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\t\u001a\u0010\u0012\f\u0012\n\u0018\u00010\nj\u0004\u0018\u0001`\u000b0\u0003X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;", "Landroid/os/AsyncTask;", "Ljava/lang/Void;", "", "", "action", "parameters", "Landroid/os/Bundle;", "(Lcom/facebook/internal/WebDialog;Ljava/lang/String;Landroid/os/Bundle;)V", "exceptions", "Ljava/lang/Exception;", "Lkotlin/Exception;", "[Ljava/lang/Exception;", "doInBackground", "p0", "([Ljava/lang/Void;)[Ljava/lang/String;", "onPostExecute", "", "results", "([Ljava/lang/String;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s0$e */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s0$e.class */
    public final class AsyncTaskC1187e extends AsyncTask<Void, Void, String[]> {

        /* renamed from: a */
        public final String f3228a;

        /* renamed from: b */
        public final Bundle f3229b;

        /* renamed from: c */
        public Exception[] f3230c = new Exception[0];

        /* renamed from: d */
        public final /* synthetic */ DialogC1182s0 f3231d;

        public AsyncTaskC1187e(DialogC1182s0 dialogC1182s0, String str, Bundle bundle) {
            l.e(dialogC1182s0, "this$0");
            l.e(str, "action");
            l.e(bundle, "parameters");
            this.f3231d = dialogC1182s0;
            this.f3228a = str;
            this.f3229b = bundle;
        }

        /* renamed from: a */
        public String[] m41641a(Void... voidArr) {
            if (C1220a.m41623b(this)) {
                return null;
            }
            try {
                l.e(voidArr, "p0");
                String[] stringArray = this.f3229b.getStringArray("media");
                if (stringArray == null) {
                    return null;
                }
                final String[] strArr = new String[stringArray.length];
                this.f3230c = new Exception[stringArray.length];
                final CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
                ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                AccessToken.C0907c c0907c = AccessToken.f2460l;
                AccessToken m42030b = AccessToken.C0907c.m42030b();
                int i = 0;
                try {
                    int length = stringArray.length - 1;
                    if (length >= 0) {
                        while (true) {
                            int i2 = i + 1;
                            if (isCancelled()) {
                                Iterator it = concurrentLinkedQueue.iterator();
                                while (it.hasNext()) {
                                    ((AsyncTaskC23238j0) it.next()).cancel(true);
                                }
                                return null;
                            }
                            Uri parse = Uri.parse(stringArray[i]);
                            if (C1168q0.m41699C(parse)) {
                                strArr[i] = parse.toString();
                                countDownLatch.countDown();
                            } else {
                                final int i3 = i;
                                GraphRequest.AbstractC0922b abstractC0922b = new GraphRequest.AbstractC0922b() { // from class: com.facebook.internal.o
                                    @Override // com.facebook.GraphRequest.AbstractC0922b
                                    /* renamed from: a */
                                    public final void mo7325a(C23244l0 c23244l0) {
                                        FacebookRequestError facebookRequestError;
                                        String str;
                                        String[] strArr2 = strArr;
                                        int i4 = i3;
                                        DialogC1182s0.AsyncTaskC1187e asyncTaskC1187e = this;
                                        CountDownLatch countDownLatch2 = countDownLatch;
                                        l.e(strArr2, "$results");
                                        l.e(asyncTaskC1187e, "this$0");
                                        l.e(countDownLatch2, "$latch");
                                        l.e(c23244l0, "response");
                                        try {
                                            facebookRequestError = c23244l0.f64335e;
                                            str = "Error staging photo.";
                                        } catch (Exception e) {
                                            asyncTaskC1187e.f3230c[i4] = e;
                                        }
                                        if (facebookRequestError != null) {
                                            String m42021a = facebookRequestError.m42021a();
                                            if (m42021a != null) {
                                                str = m42021a;
                                            }
                                            throw new C23224d0(c23244l0, str);
                                        }
                                        JSONObject jSONObject = c23244l0.f64333c;
                                        if (jSONObject == null) {
                                            throw new C23222c0("Error staging photo.");
                                        }
                                        String optString = jSONObject.optString("uri");
                                        if (optString == null) {
                                            throw new C23222c0("Error staging photo.");
                                        }
                                        strArr2[i4] = optString;
                                        countDownLatch2.countDown();
                                    }
                                };
                                l.d(parse, "uri");
                                concurrentLinkedQueue.add(C23281a.m7293a(m42030b, parse, abstractC0922b).m42016d());
                            }
                            if (i2 > length) {
                                break;
                            }
                            i = i2;
                        }
                    }
                    countDownLatch.await();
                    return strArr;
                } catch (Exception e) {
                    Iterator it2 = concurrentLinkedQueue.iterator();
                    while (it2.hasNext()) {
                        ((AsyncTaskC23238j0) it2.next()).cancel(true);
                    }
                    return null;
                }
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
                return null;
            }
        }

        /* renamed from: b */
        public void m41640b(String[] strArr) {
            Exception exc;
            if (C1220a.m41623b(this)) {
                return;
            }
            try {
                ProgressDialog progressDialog = this.f3231d.f3214e;
                if (progressDialog != null) {
                    progressDialog.dismiss();
                }
                Exception[] excArr = this.f3230c;
                int i = 0;
                int length = excArr.length;
                do {
                    if (i >= length) {
                        if (strArr == null) {
                            this.f3231d.m41643e(new C23222c0("Failed to stage photos for web dialog"));
                            return;
                        }
                        List g = i.g(strArr);
                        if (g.contains(null)) {
                            this.f3231d.m41643e(new C23222c0("Failed to stage photos for web dialog"));
                            return;
                        }
                        C1168q0.m41691K(this.f3229b, "media", new JSONArray((Collection) g));
                        C1161o0 c1161o0 = C1161o0.f3173a;
                        String m41708a = C1161o0.m41708a();
                        StringBuilder sb = new StringBuilder();
                        C23228f0 c23228f0 = C23228f0.f64291a;
                        sb.append(C23228f0.m7349f());
                        sb.append("/dialog/");
                        sb.append(this.f3228a);
                        this.f3231d.f3210a = C1168q0.m41681b(m41708a, sb.toString(), this.f3229b).toString();
                        ImageView imageView = this.f3231d.f3215f;
                        if (imageView == null) {
                            throw new IllegalStateException("Required value was null.".toString());
                        }
                        this.f3231d.m41642f((imageView.getDrawable().getIntrinsicWidth() / 2) + 1);
                        return;
                    }
                    exc = excArr[i];
                    i++;
                } while (exc == null);
                this.f3231d.m41643e(exc);
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ String[] doInBackground(Void[] voidArr) {
            if (C1220a.m41623b(this)) {
                return null;
            }
            try {
                return m41641a(voidArr);
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ void onPostExecute(String[] strArr) {
            if (C1220a.m41623b(this)) {
                return;
            }
            try {
                m41640b(strArr);
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
            }
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s0$f */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s0$f.class */
    public final /* synthetic */ class C1188f {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3232a = {0, 1};

        static {
            EnumC1290x.values();
        }
    }

    @Metadata(d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/facebook/internal/WebDialog$setUpWebView$1", "Landroid/webkit/WebView;", "onWindowFocusChanged", "", "hasWindowFocus", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.s0$g */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/s0$g.class */
    public static final class C1189g extends WebView {
        public C1189g(Context context) {
            super(context);
        }

        @Override // android.webkit.WebView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            try {
                super.onWindowFocusChanged(z);
            } catch (NullPointerException e) {
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogC1182s0(android.content.Context r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            java.lang.String r1 = "url"
            s1.z.c.l.e(r0, r1)
            com.facebook.internal.r0 r0 = com.facebook.internal.C1172r0.f3203a
            r7 = r0
            com.facebook.internal.C1172r0.m41649f()
            int r0 = com.facebook.internal.DialogC1182s0.f3209o
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L29
            com.facebook.internal.C1172r0.m41649f()
            int r0 = com.facebook.internal.DialogC1182s0.f3209o
            r9 = r0
        L29:
            r0 = r4
            r1 = r5
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r4
            java.lang.String r1 = "fbconnect://success"
            r0.f3211b = r1
            r0 = r4
            r1 = r6
            r0.f3210a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.DialogC1182s0.<init>(android.content.Context, java.lang.String):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogC1182s0(android.content.Context r8, java.lang.String r9, android.os.Bundle r10, int r11, com.facebook.login.EnumC1290x r12, com.facebook.internal.DialogC1182s0.AbstractC1186d r13, s1.z.c.f r14) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.DialogC1182s0.<init>(android.content.Context, java.lang.String, android.os.Bundle, int, com.facebook.login.x, com.facebook.internal.s0$d, s1.z.c.f):void");
    }

    /* renamed from: b */
    public static final void m41645b(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if ((applicationInfo == null ? null : applicationInfo.metaData) == null || f3209o != 0) {
                return;
            }
            int i = applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme");
            if (i == 0) {
                i = f3208n;
            }
            f3209o = i;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* renamed from: a */
    public final int m41646a(int i, float f, int i2, int i3) {
        int i4 = (int) (i / f);
        ?? r13 = true;
        if (i4 <= i2) {
            r13 = true;
        } else if (i4 < i3) {
            r13 = 0.5d + (((i3 - i4) / (i3 - i2)) * 0.5d);
        }
        return (int) (i * (r13 == true ? 1.0d : 0.0d));
    }

    /* renamed from: c */
    public Bundle mo41610c(String str) {
        Uri parse = Uri.parse(str);
        Bundle m41692J = C1168q0.m41692J(parse.getQuery());
        m41692J.putAll(C1168q0.m41692J(parse.getFragment()));
        return m41692J;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.f3212c == null || this.f3218i) {
            return;
        }
        m41643e(new C23226e0());
    }

    /* renamed from: d */
    public final void m41644d() {
        Object systemService = getContext().getSystemService("window");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        int i3 = i < i2 ? i : i2;
        int i4 = i;
        if (i < i2) {
            i4 = i2;
        }
        int min = Math.min(m41646a(i3, displayMetrics.density, 480, 800), displayMetrics.widthPixels);
        int min2 = Math.min(m41646a(i4, displayMetrics.density, 800, 1280), displayMetrics.heightPixels);
        Window window = getWindow();
        if (window == null) {
            return;
        }
        window.setLayout(min, min2);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ProgressDialog progressDialog;
        WebView webView = this.f3213d;
        if (webView != null) {
            webView.stopLoading();
        }
        if (!this.f3219j && (progressDialog = this.f3214e) != null && progressDialog.isShowing()) {
            progressDialog.dismiss();
        }
        super.dismiss();
    }

    /* renamed from: e */
    public final void m41643e(Throwable th) {
        if (this.f3212c == null || this.f3218i) {
            return;
        }
        this.f3218i = true;
        C23222c0 c23222c0 = th instanceof C23222c0 ? (C23222c0) th : new C23222c0(th);
        AbstractC1186d abstractC1186d = this.f3212c;
        if (abstractC1186d != null) {
            abstractC1186d.mo41560a(null, c23222c0);
        }
        dismiss();
    }

    /* renamed from: f */
    public final void m41642f(int i) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        C1189g c1189g = new C1189g(getContext());
        this.f3213d = c1189g;
        if (c1189g != null) {
            c1189g.setVerticalScrollBarEnabled(false);
        }
        WebView webView = this.f3213d;
        if (webView != null) {
            webView.setHorizontalScrollBarEnabled(false);
        }
        WebView webView2 = this.f3213d;
        if (webView2 != null) {
            webView2.setWebViewClient(new C1185c(this));
        }
        WebView webView3 = this.f3213d;
        WebSettings settings = webView3 == null ? null : webView3.getSettings();
        if (settings != null) {
            settings.setJavaScriptEnabled(true);
        }
        WebView webView4 = this.f3213d;
        if (webView4 != null) {
            String str = this.f3210a;
            if (str == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            webView4.loadUrl(str);
        }
        WebView webView5 = this.f3213d;
        if (webView5 != null) {
            webView5.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        }
        WebView webView6 = this.f3213d;
        if (webView6 != null) {
            webView6.setVisibility(4);
        }
        WebView webView7 = this.f3213d;
        WebSettings settings2 = webView7 == null ? null : webView7.getSettings();
        if (settings2 != null) {
            settings2.setSavePassword(false);
        }
        WebView webView8 = this.f3213d;
        WebSettings settings3 = webView8 == null ? null : webView8.getSettings();
        if (settings3 != null) {
            settings3.setSaveFormData(false);
        }
        WebView webView9 = this.f3213d;
        if (webView9 != null) {
            webView9.setFocusable(true);
        }
        WebView webView10 = this.f3213d;
        if (webView10 != null) {
            webView10.setFocusableInTouchMode(true);
        }
        WebView webView11 = this.f3213d;
        if (webView11 != null) {
            webView11.setOnTouchListener(View$OnTouchListenerC1162p.f3174a);
        }
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.f3213d);
        linearLayout.setBackgroundColor(-872415232);
        FrameLayout frameLayout = this.f3216g;
        if (frameLayout == null) {
            return;
        }
        frameLayout.addView(linearLayout);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        boolean z;
        WindowManager.LayoutParams layoutParams;
        WindowManager.LayoutParams attributes;
        this.f3219j = false;
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(context, AnalyticsConstants.CONTEXT);
        if (Build.VERSION.SDK_INT < 26) {
            z = false;
        } else {
            AutofillManager autofillManager = (AutofillManager) context.getSystemService(AutofillManager.class);
            z = false;
            if (autofillManager != null) {
                z = false;
                if (autofillManager.isAutofillSupported()) {
                    z = false;
                    if (autofillManager.isEnabled()) {
                        z = true;
                    }
                }
            }
        }
        if (z && (layoutParams = this.f3221l) != null) {
            if ((layoutParams == null ? null : layoutParams.token) == null) {
                if (layoutParams != null) {
                    Activity ownerActivity = getOwnerActivity();
                    Window window = ownerActivity == null ? null : ownerActivity.getWindow();
                    layoutParams.token = (window == null || (attributes = window.getAttributes()) == null) ? null : attributes.token;
                }
                WindowManager.LayoutParams layoutParams2 = this.f3221l;
                l.j("Set token on onAttachedToWindow(): ", layoutParams2 == null ? null : layoutParams2.token);
                C23228f0 c23228f0 = C23228f0.f64291a;
                boolean z2 = C23228f0.f64299i;
            }
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.f3214e = progressDialog;
        if (progressDialog != null) {
            progressDialog.requestWindowFeature(1);
        }
        ProgressDialog progressDialog2 = this.f3214e;
        if (progressDialog2 != null) {
            progressDialog2.setMessage(getContext().getString(C1107R.string.com_facebook_loading));
        }
        ProgressDialog progressDialog3 = this.f3214e;
        if (progressDialog3 != null) {
            progressDialog3.setCanceledOnTouchOutside(false);
        }
        ProgressDialog progressDialog4 = this.f3214e;
        if (progressDialog4 != null) {
            progressDialog4.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.facebook.internal.n
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    DialogC1182s0 dialogC1182s0 = DialogC1182s0.this;
                    l.e(dialogC1182s0, "this$0");
                    dialogC1182s0.cancel();
                }
            });
        }
        requestWindowFeature(1);
        this.f3216g = new FrameLayout(getContext());
        m41644d();
        Window window = getWindow();
        if (window != null) {
            window.setGravity(17);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setSoftInputMode(16);
        }
        ImageView imageView = new ImageView(getContext());
        this.f3215f = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.internal.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogC1182s0 dialogC1182s0 = DialogC1182s0.this;
                l.e(dialogC1182s0, "this$0");
                dialogC1182s0.cancel();
            }
        });
        Drawable drawable = getContext().getResources().getDrawable(C1107R.C1108drawable.com_facebook_close);
        ImageView imageView2 = this.f3215f;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
        ImageView imageView3 = this.f3215f;
        if (imageView3 != null) {
            imageView3.setVisibility(4);
        }
        if (this.f3210a != null) {
            ImageView imageView4 = this.f3215f;
            if (imageView4 == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            m41642f((imageView4.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        FrameLayout frameLayout = this.f3216g;
        if (frameLayout != null) {
            frameLayout.addView(this.f3215f, new ViewGroup.LayoutParams(-2, -2));
        }
        FrameLayout frameLayout2 = this.f3216g;
        if (frameLayout2 != null) {
            setContentView(frameLayout2);
            return;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f3219j = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        l.e(keyEvent, "event");
        if (i == 4) {
            WebView webView = this.f3213d;
            if (webView != null) {
                if (l.a(webView == null ? null : Boolean.valueOf(webView.canGoBack()), Boolean.TRUE)) {
                    WebView webView2 = this.f3213d;
                    if (webView2 == null) {
                        return true;
                    }
                    webView2.goBack();
                    return true;
                }
            }
            cancel();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        AsyncTaskC1187e asyncTaskC1187e = this.f3217h;
        if (asyncTaskC1187e != null) {
            if ((asyncTaskC1187e == null ? null : asyncTaskC1187e.getStatus()) == AsyncTask.Status.PENDING) {
                AsyncTaskC1187e asyncTaskC1187e2 = this.f3217h;
                if (asyncTaskC1187e2 != null) {
                    asyncTaskC1187e2.execute(new Void[0]);
                }
                ProgressDialog progressDialog = this.f3214e;
                if (progressDialog == null) {
                    return;
                }
                progressDialog.show();
                return;
            }
        }
        m41644d();
    }

    @Override // android.app.Dialog
    public void onStop() {
        AsyncTaskC1187e asyncTaskC1187e = this.f3217h;
        if (asyncTaskC1187e != null) {
            asyncTaskC1187e.cancel(true);
            ProgressDialog progressDialog = this.f3214e;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        l.e(layoutParams, "params");
        if (layoutParams.token == null) {
            this.f3221l = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }
}
