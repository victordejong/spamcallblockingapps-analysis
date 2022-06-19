package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.common.C1107R;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1172r0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23222c0;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0017\u0018�� q2\u00020\u0001:\u0005pqrstB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001e\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u001c2\u0006\u0010H\u001a\u00020\u0013J \u0010I\u001a\u00020F2\u0006\u0010G\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u001c2\u0006\u0010H\u001a\u00020\u0013H\u0002J\u0010\u0010J\u001a\u00020F2\b\u0010K\u001a\u0004\u0018\u00010@J\u0006\u0010L\u001a\u00020FJ\u0006\u0010M\u001a\u00020\u0013J\u000e\u0010N\u001a\u00020\u00192\u0006\u0010O\u001a\u00020\u001cJ\u000e\u0010P\u001a\u00020F2\u0006\u0010Q\u001a\u00020RJ\u000e\u0010S\u001a\u00020F2\u0006\u0010Q\u001a\u00020RJ\b\u0010T\u001a\u00020FH\u0002J\b\u0010U\u001a\u00020\u0019H\u0016J\b\u0010V\u001a\u0004\u0018\u00010'J\u001d\u0010(\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&2\u0006\u0010K\u001a\u00020@H\u0014¢\u0006\u0002\u0010WJ2\u0010X\u001a\u00020F2\u0006\u0010Y\u001a\u00020\u001c2\u0006\u0010Z\u001a\u00020R2\u0018\u00103\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010[H\u0002JF\u0010X\u001a\u00020F2\u0006\u0010Y\u001a\u00020\u001c2\u0006\u0010Z\u001a\u00020\u001c2\b\u0010\\\u001a\u0004\u0018\u00010\u001c2\b\u0010]\u001a\u0004\u0018\u00010\u001c2\u0018\u00103\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010[H\u0002J\u0006\u0010^\u001a\u00020FJ\u0006\u0010_\u001a\u00020FJ\u0010\u0010`\u001a\u00020F2\u0006\u0010Q\u001a\u00020RH\u0002J \u0010a\u001a\u00020\u00132\u0006\u0010b\u001a\u00020\u00192\u0006\u0010c\u001a\u00020\u00192\b\u0010d\u001a\u0004\u0018\u00010eJ\u0010\u0010f\u001a\u00020F2\u0006\u0010g\u001a\u00020\u0019H\u0004J\u0010\u0010h\u001a\u00020F2\b\u0010K\u001a\u0004\u0018\u00010@J\u0006\u0010i\u001a\u00020\u0013J\u0006\u0010j\u001a\u00020FJ\u000e\u0010k\u001a\u00020F2\u0006\u0010l\u001a\u00020RJ\u0018\u0010m\u001a\u00020F2\u0006\u0010n\u001a\u00020\u00062\u0006\u0010o\u001a\u00020\u0019H\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n��R(\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R(\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010!\u001a\u0004\u0018\u00010\u0003@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010\u0004R$\u0010%\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&X\u0086\u000e¢\u0006\u0010\n\u0002\u0010,\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0011\u0010-\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b.\u0010\u0015R\u0014\u0010/\u001a\u0002008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b1\u00102R(\u00103\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b4\u0010\u001e\"\u0004\b5\u0010 R\u0010\u00106\u001a\u0004\u0018\u000100X\u0082\u000e¢\u0006\u0002\n��R\u000e\u00107\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n��R\u000e\u00108\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n��R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006u"}, d2 = {"Lcom/facebook/login/LoginClient;", "Landroid/os/Parcelable;", "fragment", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/Fragment;)V", "source", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "activity", "Landroidx/fragment/app/FragmentActivity;", "getActivity", "()Landroidx/fragment/app/FragmentActivity;", "backgroundProcessingListener", "Lcom/facebook/login/LoginClient$BackgroundProcessingListener;", "getBackgroundProcessingListener", "()Lcom/facebook/login/LoginClient$BackgroundProcessingListener;", "setBackgroundProcessingListener", "(Lcom/facebook/login/LoginClient$BackgroundProcessingListener;)V", "checkedInternetPermission", "", "getCheckedInternetPermission", "()Z", "setCheckedInternetPermission", "(Z)V", "currentHandler", "", "extraData", "", "", "getExtraData", "()Ljava/util/Map;", "setExtraData", "(Ljava/util/Map;)V", "value", "getFragment", "()Landroidx/fragment/app/Fragment;", "setFragment", "handlersToTry", "", "Lcom/facebook/login/LoginMethodHandler;", "getHandlersToTry", "()[Lcom/facebook/login/LoginMethodHandler;", "setHandlersToTry", "([Lcom/facebook/login/LoginMethodHandler;)V", "[Lcom/facebook/login/LoginMethodHandler;", "inProgress", "getInProgress", "logger", "Lcom/facebook/login/LoginLogger;", "getLogger", "()Lcom/facebook/login/LoginLogger;", "loggingExtras", "getLoggingExtras", "setLoggingExtras", "loginLogger", "numActivitiesReturned", "numTotalIntentsFired", "onCompletedListener", "Lcom/facebook/login/LoginClient$OnCompletedListener;", "getOnCompletedListener", "()Lcom/facebook/login/LoginClient$OnCompletedListener;", "setOnCompletedListener", "(Lcom/facebook/login/LoginClient$OnCompletedListener;)V", "pendingRequest", "Lcom/facebook/login/LoginClient$Request;", "getPendingRequest", "()Lcom/facebook/login/LoginClient$Request;", "setPendingRequest", "(Lcom/facebook/login/LoginClient$Request;)V", "addExtraData", "", AnalyticsConstants.KEY, "accumulate", "addLoggingExtra", "authorize", "request", "cancelCurrentHandler", "checkInternetPermission", "checkPermission", "permission", AnalyticsConstants.COMPLETE, "outcome", "Lcom/facebook/login/LoginClient$Result;", "completeAndValidate", "completeWithFailure", "describeContents", "getCurrentHandler", "(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;", "logAuthorizationMethodComplete", AnalyticsConstants.METHOD, "result", "", "errorMessage", "errorCode", "notifyBackgroundProcessingStart", "notifyBackgroundProcessingStop", "notifyOnCompleteListener", "onActivityResult", "requestCode", "resultCode", RemoteMessageConst.DATA, "Landroid/content/Intent;", "setCurrentHandlerIndex", "index", "startOrContinueAuth", "tryCurrentHandler", "tryNextHandler", "validateSameFbidAndFinish", "pendingResult", "writeToParcel", "dest", "flags", "BackgroundProcessingListener", "Companion", "OnCompletedListener", "Request", "Result", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/login/LoginClient.class */
public class LoginClient implements Parcelable {
    public static final Parcelable.Creator<LoginClient> CREATOR = new C1252b();

    /* renamed from: a */
    public LoginMethodHandler[] f3366a;

    /* renamed from: b */
    public int f3367b;

    /* renamed from: c */
    public Fragment f3368c;

    /* renamed from: d */
    public AbstractC1253c f3369d;

    /* renamed from: e */
    public AbstractC1251a f3370e;

    /* renamed from: f */
    public boolean f3371f;

    /* renamed from: g */
    public Request f3372g;

    /* renamed from: h */
    public Map<String, String> f3373h;

    /* renamed from: i */
    public Map<String, String> f3374i;

    /* renamed from: j */
    public C1282u f3375j;

    /* renamed from: k */
    public int f3376k;

    /* renamed from: l */
    public int f3377l;

    @Metadata(d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\"\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018�� K2\u00020\u0001:\u0001KB{\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013B\u000f\b\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0015¢\u0006\u0002\u0010\u0016J\b\u0010C\u001a\u00020DH\u0016J\u0006\u0010E\u001a\u00020+J\u000e\u0010F\u001a\u00020G2\u0006\u0010B\u001a\u00020+J\u0006\u0010B\u001a\u00020+J\u0018\u0010H\u001a\u00020G2\u0006\u0010I\u001a\u00020\u00152\u0006\u0010J\u001a\u00020DH\u0016R\u0011\u0010\n\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u0018\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001bR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u0018R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n��\u001a\u0004\b!\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010\u0018\"\u0004\b&\u0010\u001bR\u001c\u0010'\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010\u0018\"\u0004\b)\u0010\u001bR\u001a\u0010*\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010,\"\u0004\b-\u0010.R\u0011\u0010/\u001a\u00020+8F¢\u0006\u0006\u001a\u0004\b/\u0010,R\u001a\u00100\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u0010,\"\u0004\b1\u0010.R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b2\u00103R\u0011\u00104\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b5\u00106R\u001c\u00107\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b8\u0010\u0018\"\u0004\b9\u0010\u001bR\u0011\u0010\u000e\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b:\u0010\u0018R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001a\u0010?\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b@\u0010,\"\u0004\bA\u0010.R\u000e\u0010B\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n��¨\u0006L"}, d2 = {"Lcom/facebook/login/LoginClient$Request;", "Landroid/os/Parcelable;", "loginBehavior", "Lcom/facebook/login/LoginBehavior;", "permissions", "", "", "defaultAudience", "Lcom/facebook/login/DefaultAudience;", "authType", "applicationId", "authId", "targetApp", "Lcom/facebook/login/LoginTargetApp;", "nonce", "codeVerifier", "codeChallenge", "codeChallengeMethod", "Lcom/facebook/login/CodeChallengeMethod;", "(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/CodeChallengeMethod;)V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "getApplicationId", "()Ljava/lang/String;", "getAuthId", "setAuthId", "(Ljava/lang/String;)V", "getAuthType", "setAuthType", "getCodeChallenge", "getCodeChallengeMethod", "()Lcom/facebook/login/CodeChallengeMethod;", "getCodeVerifier", "getDefaultAudience", "()Lcom/facebook/login/DefaultAudience;", "deviceAuthTargetUserId", "getDeviceAuthTargetUserId", "setDeviceAuthTargetUserId", "deviceRedirectUriString", "getDeviceRedirectUriString", "setDeviceRedirectUriString", "isFamilyLogin", "", "()Z", "setFamilyLogin", "(Z)V", "isInstagramLogin", "isRerequest", "setRerequest", "getLoginBehavior", "()Lcom/facebook/login/LoginBehavior;", "loginTargetApp", "getLoginTargetApp", "()Lcom/facebook/login/LoginTargetApp;", "messengerPageId", "getMessengerPageId", "setMessengerPageId", "getNonce", "getPermissions", "()Ljava/util/Set;", "setPermissions", "(Ljava/util/Set;)V", "resetMessengerState", "getResetMessengerState", "setResetMessengerState", "shouldSkipAccountDeduplication", "describeContents", "", "hasPublishPermission", "setShouldSkipAccountDeduplication", "", "writeToParcel", "dest", "flags", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/LoginClient$Request.class */
    public static final class Request implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = new C1247a();

        /* renamed from: a */
        public final EnumC1278q f3378a;

        /* renamed from: b */
        public Set<String> f3379b;

        /* renamed from: c */
        public final EnumC1271j f3380c;

        /* renamed from: d */
        public final String f3381d;

        /* renamed from: e */
        public String f3382e;

        /* renamed from: f */
        public boolean f3383f;

        /* renamed from: g */
        public String f3384g;

        /* renamed from: h */
        public String f3385h;

        /* renamed from: i */
        public String f3386i;

        /* renamed from: j */
        public String f3387j;

        /* renamed from: k */
        public boolean f3388k;

        /* renamed from: l */
        public final EnumC1290x f3389l;

        /* renamed from: m */
        public boolean f3390m;

        /* renamed from: n */
        public boolean f3391n;

        /* renamed from: o */
        public final String f3392o;

        /* renamed from: p */
        public final String f3393p;

        /* renamed from: q */
        public final String f3394q;

        /* renamed from: r */
        public final EnumC1268h f3395r;

        @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/login/LoginClient$Request$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/LoginClient$Request;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/login/LoginClient$Request;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* renamed from: com.facebook.login.LoginClient$Request$a */
        /* loaded from: classes2-dex2jar.jar:com/facebook/login/LoginClient$Request$a.class */
        public static final class C1247a implements Parcelable.Creator<Request> {
            @Override // android.os.Parcelable.Creator
            public Request createFromParcel(Parcel parcel) {
                l.e(parcel, "source");
                return new Request(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public Request[] newArray(int i) {
                return new Request[i];
            }
        }

        public Request(Parcel parcel, f fVar) {
            C1172r0 c1172r0 = C1172r0.f3203a;
            String readString = parcel.readString();
            C1172r0.m41650e(readString, "loginBehavior");
            this.f3378a = EnumC1278q.valueOf(readString);
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.f3379b = new HashSet(arrayList);
            String readString2 = parcel.readString();
            this.f3380c = readString2 != null ? EnumC1271j.valueOf(readString2) : EnumC1271j.NONE;
            String readString3 = parcel.readString();
            C1172r0.m41650e(readString3, "applicationId");
            this.f3381d = readString3;
            String readString4 = parcel.readString();
            C1172r0.m41650e(readString4, "authId");
            this.f3382e = readString4;
            this.f3383f = parcel.readByte() != 0;
            this.f3384g = parcel.readString();
            String readString5 = parcel.readString();
            C1172r0.m41650e(readString5, "authType");
            this.f3385h = readString5;
            this.f3386i = parcel.readString();
            this.f3387j = parcel.readString();
            this.f3388k = parcel.readByte() != 0;
            String readString6 = parcel.readString();
            this.f3389l = readString6 != null ? EnumC1290x.valueOf(readString6) : EnumC1290x.FACEBOOK;
            this.f3390m = parcel.readByte() != 0;
            this.f3391n = parcel.readByte() != 0;
            String readString7 = parcel.readString();
            C1172r0.m41650e(readString7, "nonce");
            this.f3392o = readString7;
            this.f3393p = parcel.readString();
            this.f3394q = parcel.readString();
            String readString8 = parcel.readString();
            this.f3395r = readString8 == null ? null : EnumC1268h.valueOf(readString8);
        }

        public Request(EnumC1278q enumC1278q, Set<String> set, EnumC1271j enumC1271j, String str, String str2, String str3, EnumC1290x enumC1290x, String str4, String str5, String str6, EnumC1268h enumC1268h) {
            l.e(enumC1278q, "loginBehavior");
            l.e(enumC1271j, "defaultAudience");
            l.e(str, "authType");
            l.e(str2, "applicationId");
            l.e(str3, "authId");
            this.f3378a = enumC1278q;
            this.f3379b = set;
            this.f3380c = enumC1271j;
            this.f3385h = str;
            this.f3381d = str2;
            this.f3382e = str3;
            this.f3389l = enumC1290x;
            if (str4 != null) {
                if (!(str4.length() == 0)) {
                    this.f3392o = str4;
                    this.f3393p = str5;
                    this.f3394q = str6;
                    this.f3395r = enumC1268h;
                }
            }
            this.f3392o = C22128a.m8627e2("randomUUID().toString()");
            this.f3393p = str5;
            this.f3394q = str6;
            this.f3395r = enumC1268h;
        }

        /* renamed from: a */
        public final boolean m41589a() {
            for (String str : this.f3379b) {
                if (C1284v.f3498b.m41541b(str)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        public final boolean m41588b() {
            return this.f3389l == EnumC1290x.INSTAGRAM;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "dest");
            parcel.writeString(this.f3378a.name());
            parcel.writeStringList(new ArrayList(this.f3379b));
            parcel.writeString(this.f3380c.name());
            parcel.writeString(this.f3381d);
            parcel.writeString(this.f3382e);
            parcel.writeByte(this.f3383f ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f3384g);
            parcel.writeString(this.f3385h);
            parcel.writeString(this.f3386i);
            parcel.writeString(this.f3387j);
            parcel.writeByte(this.f3388k ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f3389l.name());
            parcel.writeByte(this.f3390m ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f3391n ? (byte) 1 : (byte) 0);
            parcel.writeString(this.f3392o);
            parcel.writeString(this.f3393p);
            parcel.writeString(this.f3394q);
            EnumC1268h enumC1268h = this.f3395r;
            parcel.writeString(enumC1268h == null ? null : enumC1268h.name());
        }
    }

    @Metadata(d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018�� \u001d2\u00020\u0001:\u0002\u001c\u001dB7\b\u0010\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000bBA\b\u0010\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000fB\u000f\b\u0012\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0017H\u0016R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n��R \u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R \u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u001e"}, d2 = {"Lcom/facebook/login/LoginClient$Result;", "Landroid/os/Parcelable;", "request", "Lcom/facebook/login/LoginClient$Request;", "code", "Lcom/facebook/login/LoginClient$Result$Code;", AnalyticsConstants.TOKEN, "Lcom/facebook/AccessToken;", "errorMessage", "", "errorCode", "(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$Code;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V", "accessToken", "authenticationToken", "Lcom/facebook/AuthenticationToken;", "(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$Code;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Ljava/lang/String;Ljava/lang/String;)V", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "extraData", "", "loggingExtras", "describeContents", "", "writeToParcel", "", "dest", "flags", "Code", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/LoginClient$Result.class */
    public static final class Result implements Parcelable {

        /* renamed from: a */
        public final EnumC1248a f3397a;

        /* renamed from: b */
        public final AccessToken f3398b;

        /* renamed from: c */
        public final AuthenticationToken f3399c;

        /* renamed from: d */
        public final String f3400d;

        /* renamed from: e */
        public final String f3401e;

        /* renamed from: f */
        public final Request f3402f;

        /* renamed from: g */
        public Map<String, String> f3403g;

        /* renamed from: h */
        public Map<String, String> f3404h;

        /* renamed from: i */
        public static final C1250c f3396i = new C1250c(null);
        public static final Parcelable.Creator<Result> CREATOR = new C1249b();

        @Metadata(d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/facebook/login/LoginClient$Result$Code;", "", "loggingValue", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getLoggingValue", "()Ljava/lang/String;", "SUCCESS", "CANCEL", "ERROR", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* renamed from: com.facebook.login.LoginClient$Result$a */
        /* loaded from: classes2-dex2jar.jar:com/facebook/login/LoginClient$Result$a.class */
        public enum EnumC1248a {
            SUCCESS(AnalyticsConstants.SUCCESS),
            CANCEL("cancel"),
            ERROR("error");
            

            /* renamed from: a */
            public final String f3409a;

            EnumC1248a(String str) {
                this.f3409a = str;
            }
        }

        @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/login/LoginClient$Result$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/LoginClient$Result;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/login/LoginClient$Result;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* renamed from: com.facebook.login.LoginClient$Result$b */
        /* loaded from: classes2-dex2jar.jar:com/facebook/login/LoginClient$Result$b.class */
        public static final class C1249b implements Parcelable.Creator<Result> {
            @Override // android.os.Parcelable.Creator
            public Result createFromParcel(Parcel parcel) {
                l.e(parcel, "source");
                return new Result(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public Result[] newArray(int i) {
                return new Result[i];
            }
        }

        @Metadata(d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J&\u0010\u000b\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J2\u0010\u0010\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\nH\u0007J\u001a\u0010\u0014\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0015\u001a\u00020\rH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/facebook/login/LoginClient$Result$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/LoginClient$Result;", "createCancelResult", "request", "Lcom/facebook/login/LoginClient$Request;", "message", "", "createCompositeTokenResult", "accessToken", "Lcom/facebook/AccessToken;", "authenticationToken", "Lcom/facebook/AuthenticationToken;", "createErrorResult", "errorType", "errorDescription", "errorCode", "createTokenResult", AnalyticsConstants.TOKEN, "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* renamed from: com.facebook.login.LoginClient$Result$c */
        /* loaded from: classes2-dex2jar.jar:com/facebook/login/LoginClient$Result$c.class */
        public static final class C1250c {
            public C1250c(f fVar) {
            }
        }

        public Result(Parcel parcel, f fVar) {
            String readString = parcel.readString();
            this.f3397a = EnumC1248a.valueOf(readString == null ? "error" : readString);
            this.f3398b = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.f3399c = (AuthenticationToken) parcel.readParcelable(AuthenticationToken.class.getClassLoader());
            this.f3400d = parcel.readString();
            this.f3401e = parcel.readString();
            this.f3402f = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.f3403g = C1168q0.m41690L(parcel);
            this.f3404h = C1168q0.m41690L(parcel);
        }

        public Result(Request request, EnumC1248a enumC1248a, AccessToken accessToken, AuthenticationToken authenticationToken, String str, String str2) {
            l.e(enumC1248a, "code");
            this.f3402f = request;
            this.f3398b = accessToken;
            this.f3399c = authenticationToken;
            this.f3400d = null;
            this.f3397a = enumC1248a;
            this.f3401e = null;
        }

        public Result(Request request, EnumC1248a enumC1248a, AccessToken accessToken, String str, String str2) {
            l.e(enumC1248a, "code");
            l.e(enumC1248a, "code");
            this.f3402f = request;
            this.f3398b = accessToken;
            this.f3399c = null;
            this.f3400d = str;
            this.f3397a = enumC1248a;
            this.f3401e = str2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "dest");
            parcel.writeString(this.f3397a.name());
            parcel.writeParcelable(this.f3398b, i);
            parcel.writeParcelable(this.f3399c, i);
            parcel.writeString(this.f3400d);
            parcel.writeString(this.f3401e);
            parcel.writeParcelable(this.f3402f, i);
            C1168q0.m41683S(parcel, this.f3403g);
            C1168q0.m41683S(parcel, this.f3404h);
        }
    }

    @Metadata(d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/facebook/login/LoginClient$BackgroundProcessingListener;", "", "onBackgroundProcessingStarted", "", "onBackgroundProcessingStopped", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.LoginClient$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/LoginClient$a.class */
    public interface AbstractC1251a {
        /* renamed from: a */
        void mo41555a();

        /* renamed from: b */
        void mo41554b();
    }

    @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/login/LoginClient$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/LoginClient;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/login/LoginClient;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.LoginClient$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/LoginClient$b.class */
    public static final class C1252b implements Parcelable.Creator<LoginClient> {
        @Override // android.os.Parcelable.Creator
        public LoginClient createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new LoginClient(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public LoginClient[] newArray(int i) {
            return new LoginClient[i];
        }
    }

    @Metadata(d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/LoginClient$OnCompletedListener;", "", "onCompleted", "", "result", "Lcom/facebook/login/LoginClient$Result;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.LoginClient$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/LoginClient$c.class */
    public interface AbstractC1253c {
    }

    public LoginClient(Parcel parcel) {
        l.e(parcel, "source");
        this.f3367b = -1;
        Parcelable[] readParcelableArray = parcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        Parcelable[] parcelableArr = readParcelableArray == null ? new Parcelable[0] : readParcelableArray;
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : parcelableArr) {
            LoginMethodHandler loginMethodHandler = parcelable instanceof LoginMethodHandler ? (LoginMethodHandler) parcelable : null;
            if (loginMethodHandler != null) {
                l.e(this, "<set-?>");
                loginMethodHandler.f3411b = this;
            }
            if (loginMethodHandler != null) {
                arrayList.add(loginMethodHandler);
            }
        }
        Object[] array = arrayList.toArray(new LoginMethodHandler[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.f3366a = (LoginMethodHandler[]) array;
        this.f3367b = parcel.readInt();
        this.f3372g = (Request) parcel.readParcelable(Request.class.getClassLoader());
        Map<String, String> m41690L = C1168q0.m41690L(parcel);
        this.f3373h = m41690L == null ? null : i.b1(m41690L);
        Map<String, String> m41690L2 = C1168q0.m41690L(parcel);
        this.f3374i = m41690L2 == null ? null : i.b1(m41690L2);
    }

    public LoginClient(Fragment fragment) {
        l.e(fragment, "fragment");
        this.f3367b = -1;
        if (this.f3368c == null) {
            this.f3368c = fragment;
            return;
        }
        throw new C23222c0("Can't set fragment once it is already set.");
    }

    /* renamed from: a */
    public final void m41598a(String str, String str2, boolean z) {
        Map<String, String> map = this.f3373h;
        HashMap hashMap = map;
        if (map == null) {
            hashMap = new HashMap();
        }
        if (this.f3373h == null) {
            this.f3373h = hashMap;
        }
        String str3 = str2;
        if (hashMap.containsKey(str)) {
            str3 = str2;
            if (z) {
                str3 = ((Object) hashMap.get(str)) + ',' + str2;
            }
        }
        hashMap.put(str, str3);
    }

    /* renamed from: b */
    public final boolean m41597b() {
        if (this.f3371f) {
            return true;
        }
        l.e("android.permission.INTERNET", "permission");
        n3.r.a.l m41594e = m41594e();
        if ((m41594e == null ? -1 : m41594e.checkCallingOrSelfPermission("android.permission.INTERNET")) == 0) {
            this.f3371f = true;
            return true;
        }
        n3.r.a.l m41594e2 = m41594e();
        String str = null;
        String string = m41594e2 == null ? null : m41594e2.getString(C1107R.string.com_facebook_internet_permission_error_title);
        if (m41594e2 != null) {
            str = m41594e2.getString(C1107R.string.com_facebook_internet_permission_error_message);
        }
        Request request = this.f3372g;
        ArrayList arrayList = new ArrayList();
        if (string != null) {
            arrayList.add(string);
        }
        if (str != null) {
            arrayList.add(str);
        }
        m41596c(new Result(request, Result.EnumC1248a.ERROR, null, TextUtils.join(": ", arrayList), null));
        return false;
    }

    /* renamed from: c */
    public final void m41596c(Result result) {
        l.e(result, "outcome");
        LoginMethodHandler m41593f = m41593f();
        if (m41593f != null) {
            m41591h(m41593f.mo41565h(), result.f3397a.f3409a, result.f3400d, result.f3401e, m41593f.f3410a);
        }
        Map<String, String> map = this.f3373h;
        if (map != null) {
            result.f3403g = map;
        }
        Map<String, String> map2 = this.f3374i;
        if (map2 != null) {
            result.f3404h = map2;
        }
        this.f3366a = null;
        int i = -1;
        this.f3367b = -1;
        this.f3372g = null;
        this.f3373h = null;
        this.f3376k = 0;
        this.f3377l = 0;
        AbstractC1253c abstractC1253c = this.f3369d;
        if (abstractC1253c == null) {
            return;
        }
        C1280t c1280t = ((C1263c) abstractC1253c).f3434a;
        int i2 = C1280t.f3488d;
        l.e(c1280t, "this$0");
        l.e(result, "outcome");
        c1280t.f3491c = null;
        if (result.f3397a == Result.EnumC1248a.CANCEL) {
            i = 0;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        n3.r.a.l activity = c1280t.getActivity();
        if (!c1280t.isAdded() || activity == null) {
            return;
        }
        activity.setResult(i, intent);
        activity.finish();
    }

    /* renamed from: d */
    public final void m41595d(Result result) {
        Result result2;
        Result.EnumC1248a enumC1248a = Result.EnumC1248a.ERROR;
        l.e(result, "outcome");
        if (result.f3398b != null) {
            AccessToken.C0907c c0907c = AccessToken.f2460l;
            if (AccessToken.C0907c.m42029c()) {
                l.e(result, "pendingResult");
                if (result.f3398b == null) {
                    throw new C23222c0("Can't validate without a token");
                }
                AccessToken m42030b = AccessToken.C0907c.m42030b();
                AccessToken accessToken = result.f3398b;
                if (m42030b != null) {
                    try {
                        if (l.a(m42030b.f2473i, accessToken.f2473i)) {
                            result2 = new Result(this.f3372g, Result.EnumC1248a.SUCCESS, result.f3398b, result.f3399c, null, null);
                            m41596c(result2);
                            return;
                        }
                    } catch (Exception e) {
                        Request request = this.f3372g;
                        String message = e.getMessage();
                        ArrayList arrayList = new ArrayList();
                        arrayList.add("Caught exception");
                        if (message != null) {
                            arrayList.add(message);
                        }
                        m41596c(new Result(request, enumC1248a, null, TextUtils.join(": ", arrayList), null));
                        return;
                    }
                }
                Request request2 = this.f3372g;
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add("User logged in as different Facebook user.");
                result2 = new Result(request2, enumC1248a, null, TextUtils.join(": ", arrayList2), null);
                m41596c(result2);
                return;
            }
        }
        m41596c(result);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public final n3.r.a.l m41594e() {
        Fragment fragment = this.f3368c;
        return fragment == null ? null : fragment.getActivity();
    }

    /* renamed from: f */
    public final LoginMethodHandler m41593f() {
        int i = this.f3367b;
        LoginMethodHandler loginMethodHandler = null;
        if (i >= 0) {
            LoginMethodHandler[] loginMethodHandlerArr = this.f3366a;
            loginMethodHandler = loginMethodHandlerArr == null ? null : loginMethodHandlerArr[i];
        }
        return loginMethodHandler;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
        if (s1.z.c.l.a(r9, r8) != false) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003c  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.facebook.login.C1282u m41592g() {
        /*
            r5 = this;
            r0 = r5
            com.facebook.login.u r0 = r0.f3375j
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L4b
            r0 = r6
            boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L1a
        L14:
            r0 = 0
            r9 = r0
            goto L2e
        L1a:
            r0 = r6
            java.lang.String r0 = r0.f3495a     // Catch: java.lang.Throwable -> L23
            r9 = r0
            goto L2e
        L23:
            r9 = move-exception
            r0 = r9
            r1 = r6
            com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)
            goto L14
        L2e:
            r0 = r5
            com.facebook.login.LoginClient$Request r0 = r0.f3372g
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L3c
            goto L42
        L3c:
            r0 = r10
            java.lang.String r0 = r0.f3381d
            r8 = r0
        L42:
            r0 = r9
            r1 = r8
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 != 0) goto L8a
        L4b:
            r0 = r5
            n3.r.a.l r0 = r0.m41594e()
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L61
            e.j.f0 r0 = p193e.p1538j.C23228f0.f64291a
            r9 = r0
            android.content.Context r0 = p193e.p1538j.C23228f0.m7354a()
            r9 = r0
        L61:
            r0 = r5
            com.facebook.login.LoginClient$Request r0 = r0.f3372g
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L75
            e.j.f0 r0 = p193e.p1538j.C23228f0.f64291a
            r8 = r0
            java.lang.String r0 = p193e.p1538j.C23228f0.m7353b()
            r8 = r0
            goto L7a
        L75:
            r0 = r8
            java.lang.String r0 = r0.f3381d
            r8 = r0
        L7a:
            com.facebook.login.u r0 = new com.facebook.login.u
            r1 = r0
            r2 = r9
            r3 = r8
            r1.<init>(r2, r3)
            r6 = r0
            r0 = r5
            r1 = r6
            r0.f3375j = r1
        L8a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginClient.m41592g():com.facebook.login.u");
    }

    /* renamed from: h */
    public final void m41591h(String str, String str2, String str3, String str4, Map<String, String> map) {
        Request request = this.f3372g;
        String str5 = "fb_mobile_login_method_complete";
        if (request == null) {
            m41592g().m41552b("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
            return;
        }
        C1282u m41592g = m41592g();
        String str6 = request.f3382e;
        if (request.f3390m) {
            str5 = "foa_mobile_login_method_complete";
        }
        if (C1220a.m41623b(m41592g)) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
            bundle.putString("0_auth_logger_id", str6);
            bundle.putString("3_method", "");
            bundle.putString("2_result", "");
            bundle.putString("5_error_message", "");
            bundle.putString("4_error_code", "");
            bundle.putString("6_extras", "");
            if (str2 != null) {
                bundle.putString("2_result", str2);
            }
            if (str3 != null) {
                bundle.putString("5_error_message", str3);
            }
            if (str4 != null) {
                bundle.putString("4_error_code", str4);
            }
            if (map != null && (!map.isEmpty())) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    if (entry.getKey() != null) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                bundle.putString("6_extras", new JSONObject(linkedHashMap).toString());
            }
            bundle.putString("3_method", str);
            m41592g.f3496b.m41978a(str5, bundle);
        } catch (Throwable th) {
            C1220a.m41624a(th, m41592g);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0204 A[SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m41590i() {
        /*
            Method dump skipped, instructions count: 577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginClient.m41590i():void");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "dest");
        parcel.writeParcelableArray(this.f3366a, i);
        parcel.writeInt(this.f3367b);
        parcel.writeParcelable(this.f3372g, i);
        C1168q0.m41683S(parcel, this.f3373h);
        C1168q0.m41683S(parcel, this.f3374i);
    }
}
