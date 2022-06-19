package com.facebook.login;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.amazon.device.ads.DtbConstants;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.FacebookActivity;
import com.facebook.Profile;
import com.facebook.internal.C1131e0;
import com.facebook.internal.C1172r0;
import com.facebook.internal.C1190t;
import com.facebook.internal.C1225v;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.facebook.login.C1282u;
import com.facebook.login.LoginClient;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1728a.p1730e.AbstractC25375c;
import p1727n3.p1755d.p1756a.C25694c;
import p1727n3.p1755d.p1756a.C25695e;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��â\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018�� w2\u00020\u0001:\u0005uvwxyB\u0007\b��¢\u0006\u0002\u0010\u0002J\u0018\u0010\u001e\u001a\u00020\u001f2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!H\u0014J\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$H\u0002J\u0010\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020'H\u0014J\b\u0010(\u001a\u00020\u001fH\u0014JH\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,2\b\u0010-\u001a\u0004\u0018\u00010.2\b\u0010/\u001a\u0004\u0018\u00010\u001f2\b\u00100\u001a\u0004\u0018\u0001012\u0006\u00102\u001a\u00020\r2\u000e\u00103\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104H\u0002J\u0010\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u001fH\u0014JL\u00109\u001a\u00020*2\b\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010<\u001a\u00020=2\u0014\u0010>\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010?2\b\u00100\u001a\u0004\u0018\u00010@2\u0006\u0010A\u001a\u00020\r2\b\u00108\u001a\u0004\u0018\u00010\u001fH\u0002J\u0016\u0010B\u001a\u00020*2\u0006\u0010C\u001a\u00020D2\u0006\u0010&\u001a\u00020'J\u001e\u0010B\u001a\u00020*2\u0006\u0010C\u001a\u00020D2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!J(\u0010B\u001a\u00020*2\u0006\u0010C\u001a\u00020D2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!2\b\u0010E\u001a\u0004\u0018\u00010\u0004J\u001e\u0010B\u001a\u00020*2\u0006\u0010F\u001a\u00020G2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!J(\u0010B\u001a\u00020*2\u0006\u0010F\u001a\u00020G2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!2\b\u0010E\u001a\u0004\u0018\u00010\u0004J \u0010B\u001a\u00020*2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\u0006\u0010&\u001a\u00020'H\u0002J$\u0010B\u001a\u00020*2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!J.\u0010B\u001a\u00020*2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!2\b\u0010E\u001a\u0004\u0018\u00010\u0004J\u001e\u0010B\u001a\u00020*2\u0006\u0010F\u001a\u00020L2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!J(\u0010B\u001a\u00020*2\u0006\u0010F\u001a\u00020L2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!2\b\u0010E\u001a\u0004\u0018\u00010\u0004J\u0016\u0010B\u001a\u00020*2\u0006\u0010F\u001a\u00020M2\u0006\u0010&\u001a\u00020'J\u001e\u0010B\u001a\u00020*2\u0006\u0010F\u001a\u00020M2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!J(\u0010B\u001a\u00020*2\u0006\u0010F\u001a\u00020M2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!2\b\u0010E\u001a\u0004\u0018\u00010\u0004J\u0016\u0010N\u001a\u00020*2\u0006\u0010F\u001a\u00020L2\u0006\u0010&\u001a\u00020'J\u001e\u0010O\u001a\u00020*2\u0006\u0010C\u001a\u00020D2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!J\u001c\u0010O\u001a\u00020*2\u0006\u0010F\u001a\u00020G2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!J$\u0010O\u001a\u00020*2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!J$\u0010O\u001a\u00020*2\u0006\u0010F\u001a\u00020L2\u0006\u0010J\u001a\u00020K2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!J\u001e\u0010O\u001a\u00020*2\u0006\u0010F\u001a\u00020L2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!H\u0007J\u001e\u0010O\u001a\u00020*2\u0006\u0010F\u001a\u00020M2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!H\u0002J\u001e\u0010P\u001a\u00020*2\u0006\u0010C\u001a\u00020D2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!J\u001c\u0010P\u001a\u00020*2\u0006\u0010F\u001a\u00020G2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!J$\u0010P\u001a\u00020*2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!J$\u0010P\u001a\u00020*2\u0006\u0010F\u001a\u00020L2\u0006\u0010J\u001a\u00020K2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!J\u001e\u0010P\u001a\u00020*2\u0006\u0010F\u001a\u00020L2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!H\u0007J\u001e\u0010P\u001a\u00020*2\u0006\u0010F\u001a\u00020M2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040!H\u0002J\b\u0010Q\u001a\u00020*H\u0016J\u001c\u0010R\u001a\u00020*2\b\u0010:\u001a\u0004\u0018\u00010;2\b\u0010S\u001a\u0004\u0018\u00010\u001fH\u0002J\u0016\u0010T\u001a\u00020*2\u0006\u0010C\u001a\u00020D2\u0006\u0010&\u001a\u00020'J\u0018\u0010T\u001a\u00020*2\u0006\u0010F\u001a\u00020M2\u0006\u0010&\u001a\u00020'H\u0002J,\u0010U\u001a\u00020\r2\u0006\u0010V\u001a\u00020W2\b\u0010X\u001a\u0004\u0018\u0001072\u0010\b\u0002\u00103\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104H\u0017J\u000e\u0010Y\u001a\u00020*2\u0006\u0010C\u001a\u00020DJ\u000e\u0010Y\u001a\u00020*2\u0006\u0010F\u001a\u00020LJ\u0010\u0010Y\u001a\u00020*2\u0006\u0010F\u001a\u00020MH\u0002J \u0010Z\u001a\u00020*2\b\u0010J\u001a\u0004\u0018\u00010K2\u000e\u00103\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104J\u0016\u0010[\u001a\u00020*2\u0006\u0010C\u001a\u00020D2\u0006\u0010#\u001a\u00020$J\u0016\u0010[\u001a\u00020*2\u0006\u0010F\u001a\u00020G2\u0006\u0010#\u001a\u00020$J\u001e\u0010[\u001a\u00020*2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020K2\u0006\u0010#\u001a\u00020$J\u001e\u0010[\u001a\u00020*2\u0006\u0010F\u001a\u00020L2\u0006\u0010J\u001a\u00020K2\u0006\u0010#\u001a\u00020$J\u0018\u0010[\u001a\u00020*2\u0006\u0010F\u001a\u00020L2\u0006\u0010#\u001a\u00020$H\u0007J\u0018\u0010[\u001a\u00020*2\u0006\u0010F\u001a\u00020M2\u0006\u0010#\u001a\u00020$H\u0002J\u0010\u0010\\\u001a\u00020\r2\u0006\u0010]\u001a\u000207H\u0002J\u0016\u0010^\u001a\u00020*2\u0006\u0010:\u001a\u00020;2\u0006\u0010_\u001a\u00020`J\u001e\u0010^\u001a\u00020*2\u0006\u0010:\u001a\u00020;2\u0006\u0010a\u001a\u00020b2\u0006\u0010_\u001a\u00020`J \u0010c\u001a\u00020*2\u0006\u0010:\u001a\u00020;2\u0006\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020bH\u0002J\u000e\u0010d\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010e\u001a\u00020��2\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010f\u001a\u00020*2\u0006\u0010\f\u001a\u00020\rH\u0002J\u000e\u0010g\u001a\u00020��2\u0006\u0010\u000f\u001a\u00020\rJ\u000e\u0010h\u001a\u00020��2\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010i\u001a\u00020��2\u0006\u0010j\u001a\u00020\u0014J\u0010\u0010k\u001a\u00020��2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004J\u000e\u0010l\u001a\u00020��2\u0006\u0010\u0019\u001a\u00020\rJ\u000e\u0010m\u001a\u00020��2\u0006\u0010\u001c\u001a\u00020\rJ\u0018\u0010n\u001a\u00020*2\u0006\u0010o\u001a\u00020p2\u0006\u00108\u001a\u00020\u001fH\u0002J\u0018\u0010q\u001a\u00020\r2\u0006\u0010o\u001a\u00020p2\u0006\u00108\u001a\u00020\u001fH\u0002J\u0010\u0010r\u001a\u00020*2\b\u0010J\u001a\u0004\u0018\u00010KJ\u0018\u0010s\u001a\u00020*2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!H\u0002J\u0018\u0010t\u001a\u00020*2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!H\u0002R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u000eR\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u0014@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u000e¨\u0006z"}, d2 = {"Lcom/facebook/login/LoginManager;", "", "()V", "<set-?>", "", "authType", "getAuthType", "()Ljava/lang/String;", "Lcom/facebook/login/DefaultAudience;", "defaultAudience", "getDefaultAudience", "()Lcom/facebook/login/DefaultAudience;", "isExpressLoginAllowed", "", "()Z", "isFamilyLogin", "Lcom/facebook/login/LoginBehavior;", "loginBehavior", "getLoginBehavior", "()Lcom/facebook/login/LoginBehavior;", "Lcom/facebook/login/LoginTargetApp;", "loginTargetApp", "getLoginTargetApp", "()Lcom/facebook/login/LoginTargetApp;", "messengerPageId", "resetMessengerState", "sharedPreferences", "Landroid/content/SharedPreferences;", "shouldSkipAccountDeduplication", "getShouldSkipAccountDeduplication", "createLoginRequest", "Lcom/facebook/login/LoginClient$Request;", "permissions", "", "createLoginRequestFromResponse", "response", "Lcom/facebook/GraphResponse;", "createLoginRequestWithConfig", "loginConfig", "Lcom/facebook/login/LoginConfiguration;", "createReauthorizeRequest", "finishLogin", "", "newToken", "Lcom/facebook/AccessToken;", "newIdToken", "Lcom/facebook/AuthenticationToken;", "origRequest", "exception", "Lcom/facebook/FacebookException;", "isCanceled", "callback", "Lcom/facebook/FacebookCallback;", "Lcom/facebook/login/LoginResult;", "getFacebookActivityIntent", "Landroid/content/Intent;", "request", "logCompleteLogin", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "result", "Lcom/facebook/login/LoginClient$Result$Code;", "resultExtras", "", "Ljava/lang/Exception;", "wasLoginActivityTried", "logIn", "activity", "Landroid/app/Activity;", "loggerID", "fragment", "Landroid/app/Fragment;", "activityResultRegistryOwner", "Landroidx/activity/result/ActivityResultRegistryOwner;", "callbackManager", "Lcom/facebook/CallbackManager;", "Landroidx/fragment/app/Fragment;", "Lcom/facebook/internal/FragmentWrapper;", "logInWithConfiguration", "logInWithPublishPermissions", "logInWithReadPermissions", "logOut", "logStartLogin", "loginRequest", "loginWithConfiguration", "onActivityResult", "resultCode", "", RemoteMessageConst.DATA, "reauthorizeDataAccess", "registerCallback", "resolveError", "resolveIntent", "intent", "retrieveLoginStatus", "responseCallback", "Lcom/facebook/LoginStatusCallback;", "toastDurationMs", "", "retrieveLoginStatusImpl", "setAuthType", "setDefaultAudience", "setExpressLoginStatus", "setFamilyLogin", "setLoginBehavior", "setLoginTargetApp", "targetApp", "setMessengerPageId", "setResetMessengerState", "setShouldSkipAccountDeduplication", "startLogin", "startActivityDelegate", "Lcom/facebook/login/StartActivityDelegate;", "tryFacebookActivity", "unregisterCallback", "validatePublishPermissions", "validateReadPermissions", "ActivityStartActivityDelegate", "AndroidxActivityResultRegistryOwnerStartActivityDelegate", "Companion", "FragmentStartActivityDelegate", "LoginLoggerHolder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.login.v */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/v.class */
public class C1284v {

    /* renamed from: b */
    public static final C1286b f3498b;

    /* renamed from: c */
    public static final Set<String> f3499c = i.z0(new String[]{"ads_management", "create_event", "rsvp_event"});

    /* renamed from: d */
    public static final String f3500d;

    /* renamed from: e */
    public static volatile C1284v f3501e;

    /* renamed from: a */
    public final SharedPreferences f3502a;

    @Metadata(d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\b\u0002\u0018��2\u00020\u0001B\u000f\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, d2 = {"Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;", "Lcom/facebook/login/StartActivityDelegate;", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "activityContext", "getActivityContext", "()Landroid/app/Activity;", "startActivityForResult", "", "intent", "Landroid/content/Intent;", "requestCode", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.v$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/v$a.class */
    public static final class C1285a implements AbstractC1293z {

        /* renamed from: a */
        public final Activity f3503a;

        public C1285a(Activity activity) {
            l.e(activity, "activity");
            this.f3503a = activity;
        }

        @Override // com.facebook.login.AbstractC1293z
        /* renamed from: a */
        public Activity mo41537a() {
            return this.f3503a;
        }

        @Override // com.facebook.login.AbstractC1293z
        public void startActivityForResult(Intent intent, int i) {
            l.e(intent, "intent");
            this.f3503a.startActivityForResult(intent, i);
        }
    }

    @Metadata(d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J \u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0007J\b\u0010\u001c\u001a\u00020\fH\u0017J2\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0012\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n��R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006)"}, d2 = {"Lcom/facebook/login/LoginManager$Companion;", "", "()V", "EXPRESS_LOGIN_ALLOWED", "", "MANAGE_PERMISSION_PREFIX", "OTHER_PUBLISH_PERMISSIONS", "", "PREFERENCE_LOGIN_MANAGER", "PUBLISH_PERMISSION_PREFIX", "TAG", "instance", "Lcom/facebook/login/LoginManager;", "otherPublishPermissions", "getOtherPublishPermissions", "()Ljava/util/Set;", "computeLoginResult", "Lcom/facebook/login/LoginResult;", "request", "Lcom/facebook/login/LoginClient$Request;", "newToken", "Lcom/facebook/AccessToken;", "newIdToken", "Lcom/facebook/AuthenticationToken;", "getExtraDataFromIntent", "", "intent", "Landroid/content/Intent;", "getInstance", "handleLoginStatusError", "", "errorType", "errorDescription", "loggerRef", "logger", "Lcom/facebook/login/LoginLogger;", "responseCallback", "Lcom/facebook/LoginStatusCallback;", "isPublishPermission", "", "permission", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.v$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/v$b.class */
    public static final class C1286b {
        public C1286b(f fVar) {
        }

        /* renamed from: a */
        public C1284v m41542a() {
            if (C1284v.f3501e == null) {
                synchronized (this) {
                    C1286b c1286b = C1284v.f3498b;
                    C1284v.f3501e = new C1284v();
                }
            }
            C1284v c1284v = C1284v.f3501e;
            if (c1284v != null) {
                return c1284v;
            }
            l.l("instance");
            throw null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
            if (com.facebook.login.C1284v.f3499c.contains(r6) != false) goto L10;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m41541b(java.lang.String r6) {
            /*
                r5 = this;
                r0 = 0
                r7 = r0
                r0 = r7
                r8 = r0
                r0 = r6
                if (r0 == 0) goto L2e
                r0 = r6
                java.lang.String r1 = "publish"
                r2 = 0
                r3 = 2
                boolean r0 = s1.f0.r.y(r0, r1, r2, r3)
                if (r0 != 0) goto L2c
                r0 = r6
                java.lang.String r1 = "manage"
                r2 = 0
                r3 = 2
                boolean r0 = s1.f0.r.y(r0, r1, r2, r3)
                if (r0 != 0) goto L2c
                r0 = r7
                r8 = r0
                java.util.Set<java.lang.String> r0 = com.facebook.login.C1284v.f3499c
                r1 = r6
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L2e
            L2c:
                r0 = 1
                r8 = r0
            L2e:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.C1284v.C1286b.m41541b(java.lang.String):boolean");
        }
    }

    @Metadata(d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;", "Lcom/facebook/login/StartActivityDelegate;", "fragment", "Lcom/facebook/internal/FragmentWrapper;", "(Lcom/facebook/internal/FragmentWrapper;)V", "activityContext", "Landroid/app/Activity;", "getActivityContext", "()Landroid/app/Activity;", "startActivityForResult", "", "intent", "Landroid/content/Intent;", "requestCode", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.v$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/v$c.class */
    public static final class C1287c implements AbstractC1293z {

        /* renamed from: a */
        public final C1131e0 f3504a;

        /* renamed from: b */
        public final Activity f3505b;

        public C1287c(C1131e0 c1131e0) {
            l.e(c1131e0, "fragment");
            this.f3504a = c1131e0;
            Fragment fragment = c1131e0.f3123a;
            this.f3505b = fragment != null ? fragment.getActivity() : null;
        }

        @Override // com.facebook.login.AbstractC1293z
        /* renamed from: a */
        public Activity mo41537a() {
            return this.f3505b;
        }

        @Override // com.facebook.login.AbstractC1293z
        public void startActivityForResult(Intent intent, int i) {
            l.e(intent, "intent");
            Fragment fragment = this.f3504a.f3123a;
            if (fragment != null) {
                fragment.startActivityForResult(intent, i);
            }
        }
    }

    @Metadata(d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bÂ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lcom/facebook/login/LoginManager$LoginLoggerHolder;", "", "()V", "logger", "Lcom/facebook/login/LoginLogger;", "getLogger", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.v$d */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/v$d.class */
    public static final class C1288d {

        /* renamed from: a */
        public static final C1288d f3506a = new C1288d();

        /* renamed from: b */
        public static C1282u f3507b;

        /* renamed from: a */
        public final C1282u m41540a(Context context) {
            C1282u c1282u;
            synchronized (this) {
                Context context2 = context;
                if (context == null) {
                    C23228f0 c23228f0 = C23228f0.f64291a;
                    context2 = C23228f0.m7354a();
                }
                if (f3507b == null) {
                    C23228f0 c23228f02 = C23228f0.f64291a;
                    f3507b = new C1282u(context2, C23228f0.m7353b());
                }
                c1282u = f3507b;
            }
            return c1282u;
        }
    }

    static {
        C1286b c1286b = new C1286b(null);
        f3498b = c1286b;
        Objects.requireNonNull(c1286b);
        String cls = C1284v.class.toString();
        l.d(cls, "LoginManager::class.java.toString()");
        f3500d = cls;
    }

    public C1284v() {
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41649f();
        C23228f0 c23228f0 = C23228f0.f64291a;
        SharedPreferences sharedPreferences = C23228f0.m7354a().getSharedPreferences("com.facebook.loginManager", 0);
        l.d(sharedPreferences, "getApplicationContext().getSharedPreferences(PREFERENCE_LOGIN_MANAGER, Context.MODE_PRIVATE)");
        this.f3502a = sharedPreferences;
        if (!C23228f0.f64304n || C1225v.m41622a() == null) {
            return;
        }
        C25695e.m3051a(C23228f0.m7354a(), "com.android.chrome", new C1269i());
        Context m7354a = C23228f0.m7354a();
        String packageName = C23228f0.m7354a().getPackageName();
        if (packageName == null) {
            return;
        }
        Context applicationContext = m7354a.getApplicationContext();
        try {
            C25695e.m3051a(applicationContext, packageName, new C25694c(applicationContext));
        } catch (SecurityException e) {
        }
    }

    /* renamed from: b */
    public static C1284v m41550b() {
        return f3498b.m41542a();
    }

    /* renamed from: a */
    public LoginClient.Request m41551a(C1279s c1279s) {
        String str;
        l.e(c1279s, "loginConfig");
        EnumC1268h enumC1268h = EnumC1268h.S256;
        try {
            str = C1292y.m41539a(c1279s.f3487c, enumC1268h);
        } catch (C23222c0 e) {
            enumC1268h = EnumC1268h.PLAIN;
            str = c1279s.f3487c;
        }
        EnumC1278q enumC1278q = EnumC1278q.NATIVE_WITH_FALLBACK;
        Set d1 = i.d1(c1279s.f3485a);
        EnumC1271j enumC1271j = EnumC1271j.FRIENDS;
        C23228f0 c23228f0 = C23228f0.f64291a;
        LoginClient.Request request = new LoginClient.Request(enumC1278q, d1, enumC1271j, "rerequest", C23228f0.m7353b(), C22128a.m8627e2("randomUUID().toString()"), EnumC1290x.FACEBOOK, c1279s.f3486b, c1279s.f3487c, str, enumC1268h);
        AccessToken.C0907c c0907c = AccessToken.f2460l;
        request.f3383f = AccessToken.C0907c.m42029c();
        request.f3387j = null;
        request.f3388k = false;
        request.f3390m = false;
        request.f3391n = false;
        return request;
    }

    /* renamed from: c */
    public final void m41549c(Context context, LoginClient.Result.EnumC1248a enumC1248a, Map<String, String> map, Exception exc, boolean z, LoginClient.Request request) {
        C1282u m41540a = C1288d.f3506a.m41540a(context);
        if (m41540a == null) {
            return;
        }
        String str = "fb_mobile_login_complete";
        if (request == null) {
            C1282u.C1283a c1283a = C1282u.f3493d;
            if (C1220a.m41623b(C1282u.class)) {
                return;
            }
            try {
                m41540a.m41552b("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", "");
                return;
            } catch (Throwable th) {
                C1220a.m41624a(th, C1282u.class);
                return;
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.put("try_login_activity", z ? "1" : DtbConstants.NETWORK_TYPE_UNKNOWN);
        String str2 = request.f3382e;
        if (request.f3390m) {
            str = "foa_mobile_login_complete";
        }
        if (C1220a.m41623b(m41540a)) {
            return;
        }
        try {
            l.e(hashMap, "loggingExtras");
            Bundle bundle = new Bundle();
            bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
            bundle.putString("0_auth_logger_id", str2);
            bundle.putString("3_method", "");
            bundle.putString("2_result", "");
            bundle.putString("5_error_message", "");
            bundle.putString("4_error_code", "");
            bundle.putString("6_extras", "");
            if (enumC1248a != null) {
                bundle.putString("2_result", enumC1248a.f3409a);
            }
            if ((exc == null ? null : exc.getMessage()) != null) {
                bundle.putString("5_error_message", exc.getMessage());
            }
            JSONObject jSONObject = null;
            if (!hashMap.isEmpty()) {
                jSONObject = new JSONObject(hashMap);
            }
            JSONObject jSONObject2 = jSONObject;
            if (map != null) {
                JSONObject jSONObject3 = jSONObject;
                if (jSONObject == null) {
                    jSONObject3 = new JSONObject();
                }
                try {
                    Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
                    while (true) {
                        jSONObject2 = jSONObject3;
                        if (!it.hasNext()) {
                            break;
                        }
                        Map.Entry<String, String> next = it.next();
                        String key = next.getKey();
                        String value = next.getValue();
                        if (key != null) {
                            jSONObject3.put(key, value);
                        }
                    }
                } catch (JSONException e) {
                    jSONObject2 = jSONObject3;
                }
            }
            if (jSONObject2 != null) {
                bundle.putString("6_extras", jSONObject2.toString());
            }
            m41540a.f3496b.m41978a(str, bundle);
            if (enumC1248a != LoginClient.Result.EnumC1248a.SUCCESS) {
                return;
            }
            m41540a.m41553a(str2);
        } catch (Throwable th2) {
            C1220a.m41624a(th2, m41540a);
        }
    }

    /* renamed from: d */
    public final void m41548d(Activity activity, Collection<String> collection) {
        l.e(activity, "activity");
        m41543i(collection);
        C1279s c1279s = new C1279s(collection, null, 2);
        l.e(activity, "activity");
        l.e(c1279s, "loginConfig");
        boolean z = activity instanceof AbstractC25375c;
        m41544h(new C1285a(activity), m41551a(c1279s));
    }

    /* renamed from: e */
    public final void m41547e(Fragment fragment, Collection<String> collection) {
        l.e(fragment, "fragment");
        l.e(collection, "permissions");
        C1131e0 c1131e0 = new C1131e0(fragment);
        m41543i(collection);
        C1279s c1279s = new C1279s(collection, null, 2);
        l.e(c1131e0, "fragment");
        l.e(c1279s, "loginConfig");
        m41544h(new C1287c(c1131e0), m41551a(c1279s));
    }

    /* renamed from: f */
    public void m41546f() {
        AccessToken.C0907c c0907c = AccessToken.f2460l;
        AccessToken.C0907c.m42028d(null);
        AuthenticationToken.m42027a(null);
        Profile profile = Profile.f2566h;
        Profile.m41981b(null);
        SharedPreferences.Editor edit = this.f3502a.edit();
        edit.putBoolean("express_login_allowed", false);
        edit.apply();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x022e A[ORIG_RETURN, RETURN] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m41545g(int r9, android.content.Intent r10, p193e.p1538j.AbstractC23218a0<com.facebook.login.C1289w> r11) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.C1284v.m41545g(int, android.content.Intent, e.j.a0):boolean");
    }

    /* renamed from: h */
    public final void m41544h(AbstractC1293z abstractC1293z, LoginClient.Request request) throws C23222c0 {
        boolean z;
        C1190t.EnumC1193c enumC1193c = C1190t.EnumC1193c.Login;
        C1282u m41540a = C1288d.f3506a.m41540a(abstractC1293z.mo41537a());
        if (m41540a != null) {
            String str = request.f3390m ? "foa_mobile_login_start" : "fb_mobile_login_start";
            if (!C1220a.m41623b(m41540a)) {
                try {
                    l.e(request, "pendingLoginRequest");
                    String str2 = request.f3382e;
                    Bundle bundle = new Bundle();
                    bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
                    bundle.putString("0_auth_logger_id", str2);
                    bundle.putString("3_method", "");
                    bundle.putString("2_result", "");
                    bundle.putString("5_error_message", "");
                    bundle.putString("4_error_code", "");
                    bundle.putString("6_extras", "");
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("login_behavior", request.f3378a.toString());
                        jSONObject.put("request_code", enumC1193c.m41639a());
                        jSONObject.put("permissions", TextUtils.join(",", request.f3379b));
                        jSONObject.put("default_audience", request.f3380c.toString());
                        jSONObject.put("isReauthorize", request.f3383f);
                        String str3 = m41540a.f3497c;
                        if (str3 != null) {
                            jSONObject.put("facebookVersion", str3);
                        }
                        EnumC1290x enumC1290x = request.f3389l;
                        if (enumC1290x != null) {
                            jSONObject.put("target_app", enumC1290x.f3516a);
                        }
                        bundle.putString("6_extras", jSONObject.toString());
                    } catch (JSONException e) {
                    }
                    m41540a.f3496b.m41978a(str, bundle);
                } catch (Throwable th) {
                    C1220a.m41624a(th, m41540a);
                }
            }
        }
        C1190t.C1192b c1192b = C1190t.f3233b;
        int m41639a = enumC1193c.m41639a();
        C1190t.AbstractC1191a abstractC1191a = new C1190t.AbstractC1191a() { // from class: com.facebook.login.e
            @Override // com.facebook.internal.C1190t.AbstractC1191a
            /* renamed from: a */
            public final boolean mo41559a(int i, Intent intent) {
                C1284v c1284v = C1284v.this;
                l.e(c1284v, "this$0");
                c1284v.m41545g(i, intent, null);
                return true;
            }
        };
        synchronized (c1192b) {
            l.e(abstractC1191a, "callback");
            Map<Integer, C1190t.AbstractC1191a> map = C1190t.f3234c;
            if (!map.containsKey(Integer.valueOf(m41639a))) {
                map.put(Integer.valueOf(m41639a), abstractC1191a);
            }
        }
        l.e(request, "request");
        Intent intent = new Intent();
        C23228f0 c23228f0 = C23228f0.f64291a;
        intent.setClass(C23228f0.m7354a(), FacebookActivity.class);
        intent.setAction(request.f3378a.toString());
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("request", request);
        intent.putExtra("com.facebook.LoginFragment:Request", bundle2);
        if (!(C23228f0.m7354a().getPackageManager().resolveActivity(intent, 0) != null)) {
            z = false;
        } else {
            try {
                abstractC1293z.startActivityForResult(intent, enumC1193c.m41639a());
                z = true;
            } catch (ActivityNotFoundException e2) {
                z = false;
            }
        }
        if (z) {
            return;
        }
        C23222c0 c23222c0 = new C23222c0("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
        m41549c(abstractC1293z.mo41537a(), LoginClient.Result.EnumC1248a.ERROR, null, c23222c0, false, request);
        throw c23222c0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004c, code lost:
        if (com.facebook.login.C1284v.f3499c.contains(r0) != false) goto L16;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m41543i(java.util.Collection<java.lang.String> r7) {
        /*
            r6 = this;
            r0 = r7
            if (r0 != 0) goto L5
            return
        L5:
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        Lc:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L6c
            r0 = r8
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L52
            r0 = r7
            java.lang.String r1 = "publish"
            r2 = 0
            r3 = 2
            boolean r0 = s1.f0.r.y(r0, r1, r2, r3)
            if (r0 != 0) goto L4f
            r0 = r7
            java.lang.String r1 = "manage"
            r2 = 0
            r3 = 2
            boolean r0 = s1.f0.r.y(r0, r1, r2, r3)
            if (r0 != 0) goto L4f
            r0 = r9
            r10 = r0
            java.util.Set<java.lang.String> r0 = com.facebook.login.C1284v.f3499c
            r1 = r7
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L52
        L4f:
            r0 = 1
            r10 = r0
        L52:
            r0 = r10
            if (r0 != 0) goto L5a
            goto Lc
        L5a:
            e.j.c0 r0 = new e.j.c0
            r1 = r0
            java.lang.String r2 = "Cannot pass a publish or manage permission ("
            r3 = r7
            java.lang.String r4 = ") to a request for read authorization"
            java.lang.String r2 = p193e.p1432d.p1439c.p1440a.C22128a.m8725C2(r2, r3, r4)
            r1.<init>(r2)
            throw r0
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.C1284v.m41543i(java.util.Collection):void");
    }
}
