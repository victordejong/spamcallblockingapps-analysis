package com.truecaller.android.sdk.oAuth;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Handler;
import android.provider.Settings;
import androidx.annotation.Keep;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.truecaller.android.sdk.TrueException;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.android.sdk.clients.VerificationCallback;
import com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler;
import com.truecaller.android.sdk.oAuth.TcOAuthError;
import e.m.d.y.n;
import java.util.Locale;
import n3.r.a.l;
import p193e.p194a.p1221t.p1230b.p1236e.C20384a;
import p193e.p194a.p1221t.p1230b.p1236e.p1237d.AbstractC20393c;
import p193e.p194a.p1221t.p1230b.p1236e.p1237d.C20394d;
import p193e.p194a.p1221t.p1230b.p1236e.p1237d.C20395e;
import p193e.p194a.p1221t.p1230b.p1236e.p1237d.C20396f;
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcSdk.class */
public final class TcSdk {
    public static final int SHARE_PROFILE_REQUEST_CODE = 100;
    private static TcSdk sInstance;
    private final C20384a mTcClientManager;

    private TcSdk(C20384a c20384a) {
        this.mTcClientManager = c20384a;
    }

    public static void clear() {
        TcSdk tcSdk = sInstance;
        if (tcSdk != null) {
            AbstractC20393c abstractC20393c = tcSdk.mTcClientManager.f57260a;
            if (abstractC20393c != null && abstractC20393c.f57269c == 2) {
                C20396f c20396f = (C20396f) abstractC20393c;
                if (c20396f.f57285l != null) {
                    c20396f.mo11199g();
                    c20396f.f57285l = null;
                }
                c20396f.f57286m = null;
                Handler handler = c20396f.f57287n;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                    c20396f.f57287n = null;
                }
            }
            sInstance.mTcClientManager.f57260a = null;
            C20384a.f57259b = null;
            sInstance = null;
        }
    }

    public static TcSdk getInstance() throws RuntimeException {
        TcSdk tcSdk = sInstance;
        if (tcSdk != null) {
            return tcSdk;
        }
        throw new RuntimeException("Please call init() on TcSdk first");
    }

    public static void init(TcSdkOptions tcSdkOptions) {
        synchronized (TcSdk.class) {
            try {
                C20384a c20384a = new C20384a(tcSdkOptions);
                C20384a.f57259b = c20384a;
                sInstance = new TcSdk(c20384a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void getAuthorizationCode(Fragment fragment) {
        if (isOAuthFlowUsable()) {
            AbstractC20393c abstractC20393c = this.mTcClientManager.f57260a;
            if (abstractC20393c.f57269c != 1) {
                n.h1(fragment.getActivity());
                ((C20396f) abstractC20393c).f57282i.mo11195c();
                return;
            }
            C20394d c20394d = (C20394d) abstractC20393c;
            String str = c20394d.f57274h;
            if (str == null || str.trim().isEmpty()) {
                throw new RuntimeException("Code challenge cannot be null or empty");
            }
            String[] strArr = c20394d.f57272f;
            if (strArr == null || strArr.length == 0) {
                throw new RuntimeException("OAuth scopes cannot be null or empty");
            }
            String str2 = c20394d.f57273g;
            if (str2 == null || str2.trim().isEmpty()) {
                throw new RuntimeException("OAuth state cannot be null or empty");
            }
            l activity = fragment.getActivity();
            if (activity == null) {
                return;
            }
            try {
                Intent m11209h = c20394d.m11209h(activity);
                if (m11209h == null) {
                    c20394d.f57268b.onFailure(TcOAuthError.TruecallerNotInstalledError.f10025c);
                } else {
                    fragment.startActivityForResult(m11209h, 100);
                }
                return;
            } catch (ActivityNotFoundException e) {
                c20394d.f57268b.onFailure(TcOAuthError.TruecallerActivityNotFoundError.f10023c);
                return;
            }
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void getAuthorizationCode(l lVar) {
        if (isOAuthFlowUsable()) {
            AbstractC20393c abstractC20393c = this.mTcClientManager.f57260a;
            if (abstractC20393c.f57269c != 1) {
                n.h1(lVar);
                ((C20396f) abstractC20393c).f57282i.mo11195c();
                return;
            }
            C20394d c20394d = (C20394d) abstractC20393c;
            String str = c20394d.f57274h;
            if (str == null || str.trim().isEmpty()) {
                throw new RuntimeException("Code challenge cannot be null or empty");
            }
            String[] strArr = c20394d.f57272f;
            if (strArr == null || strArr.length == 0) {
                throw new RuntimeException("OAuth scopes cannot be null or empty");
            }
            String str2 = c20394d.f57273g;
            if (str2 == null || str2.trim().isEmpty()) {
                throw new RuntimeException("OAuth state cannot be null or empty");
            }
            try {
                Intent m11209h = c20394d.m11209h(lVar);
                if (m11209h == null) {
                    c20394d.f57268b.onFailure(TcOAuthError.TruecallerNotInstalledError.f10025c);
                } else {
                    lVar.startActivityForResult(m11209h, 100);
                }
                return;
            } catch (ActivityNotFoundException e) {
                c20394d.f57268b.onFailure(TcOAuthError.TruecallerActivityNotFoundError.f10023c);
                return;
            }
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public boolean isOAuthFlowUsable() {
        AbstractC20393c abstractC20393c = this.mTcClientManager.f57260a;
        return abstractC20393c != null && (abstractC20393c instanceof C20394d);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onActivityResultObtained(n3.r.a.l r5, int r6, int r7, android.content.Intent r8) {
        /*
            r4 = this;
            r0 = 0
            r9 = r0
            r0 = r6
            r1 = 100
            if (r0 == r1) goto Lb
            r0 = 0
            return r0
        Lb:
            r0 = r4
            boolean r0 = r0.isOAuthFlowUsable()
            if (r0 == 0) goto Lb6
            r0 = r4
            e.a.t.b.e.a r0 = r0.mTcClientManager
            e.a.t.b.e.d.c r0 = r0.f57260a
            r5 = r0
            r0 = r9
            r10 = r0
            r0 = r5
            int r0 = r0.f57269c
            r1 = 1
            if (r0 != r1) goto Lb3
            r0 = r5
            e.a.t.b.e.d.d r0 = (p193e.p194a.p1221t.p1230b.p1236e.p1237d.C20394d) r0
            r5 = r0
            r0 = r8
            if (r0 == 0) goto L9a
            r0 = r8
            android.os.Bundle r0 = r0.getExtras()
            if (r0 != 0) goto L3b
            goto L9a
        L3b:
            r0 = r8
            java.lang.String r1 = "OAUTH_SDK_RESPONSE_EXTRA"
            android.os.Parcelable r0 = r0.getParcelableExtra(r1)
            com.truecaller.android.sdk.oAuth.OAuthResponse r0 = (com.truecaller.android.sdk.oAuth.OAuthResponse) r0
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L5b
            r0 = r5
            com.truecaller.android.sdk.oAuth.TcOAuthCallback r0 = r0.f57268b
            com.truecaller.android.sdk.oAuth.TcOAuthError$RequestCodeCollisionError r1 = com.truecaller.android.sdk.oAuth.TcOAuthError.RequestCodeCollisionError.f10022c
            r0.onFailure(r1)
            goto La6
        L5b:
            r0 = -1
            r1 = r7
            if (r0 != r1) goto L80
            r0 = r8
            boolean r0 = r0.isSuccessful()
            if (r0 == 0) goto L80
            r0 = r8
            com.truecaller.android.sdk.oAuth.OAuthResponse$SuccessResponse r0 = (com.truecaller.android.sdk.oAuth.OAuthResponse.SuccessResponse) r0
            r8 = r0
            r0 = r5
            com.truecaller.android.sdk.oAuth.TcOAuthCallback r0 = r0.f57268b
            r1 = r8
            com.truecaller.android.sdk.oAuth.TcOAuthData r1 = r1.f10008a
            r0.onSuccess(r1)
            goto L95
        L80:
            r0 = r8
            com.truecaller.android.sdk.oAuth.OAuthResponse$FailureResponse r0 = (com.truecaller.android.sdk.oAuth.OAuthResponse.FailureResponse) r0
            com.truecaller.android.sdk.oAuth.TcOAuthError r0 = r0.f10007a
            r8 = r0
            r0 = r5
            com.truecaller.android.sdk.oAuth.TcOAuthCallback r0 = r0.f57268b
            r1 = r8
            r0.onFailure(r1)
        L95:
            r0 = 1
            r6 = r0
            goto La8
        L9a:
            r0 = r5
            com.truecaller.android.sdk.oAuth.TcOAuthCallback r0 = r0.f57268b
            com.truecaller.android.sdk.oAuth.TcOAuthError$TruecallerClosedError r1 = com.truecaller.android.sdk.oAuth.TcOAuthError.TruecallerClosedError.f10024c
            r0.onFailure(r1)
        La6:
            r0 = 0
            r6 = r0
        La8:
            r0 = r9
            r10 = r0
            r0 = r6
            if (r0 == 0) goto Lb3
            r0 = 1
            r10 = r0
        Lb3:
            r0 = r10
            return r0
        Lb6:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            java.lang.String r2 = "No compatible client available. Please change your scope"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.android.sdk.oAuth.TcSdk.onActivityResultObtained(n3.r.a.l, int, int, android.content.Intent):boolean");
    }

    public void requestVerification(String str, String str2, VerificationCallback verificationCallback, l lVar) {
        if (isOAuthFlowUsable()) {
            AbstractC20393c abstractC20393c = this.mTcClientManager.f57260a;
            if (abstractC20393c.f57269c != 2) {
                return;
            }
            C20396f c20396f = (C20396f) abstractC20393c;
            n.C(lVar);
            String string = Settings.Secure.getString(c20396f.f57267a.getContentResolver(), AnalyticsConstants.ANDROID_ID);
            if (!c20396f.mo11200f() || c20396f.mo11201e() || c20396f.mo11204b()) {
                c20396f.f57282i.mo11184n(c20396f.f57270d, str, str2, string, c20396f.f57284k, verificationCallback);
                return;
            }
            RequestPermissionHandler requestPermissionHandler = new RequestPermissionHandler(lVar, new C20395e(c20396f, str, str2, string, verificationCallback, lVar));
            c20396f.f57286m = requestPermissionHandler;
            requestPermissionHandler.m35917e();
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void setCodeChallenge(String str) {
        if (isOAuthFlowUsable()) {
            this.mTcClientManager.f57260a.f57274h = str;
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void setLocale(Locale locale) {
        if (isOAuthFlowUsable()) {
            this.mTcClientManager.f57260a.f57271e = locale;
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void setOAuthScopes(String[] strArr) {
        if (isOAuthFlowUsable()) {
            this.mTcClientManager.f57260a.f57272f = strArr;
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void setOAuthState(String str) {
        if (isOAuthFlowUsable()) {
            this.mTcClientManager.f57260a.f57273g = str;
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void verifyMissedCall(TrueProfile trueProfile, VerificationCallback verificationCallback) {
        if (isOAuthFlowUsable()) {
            AbstractC20393c abstractC20393c = this.mTcClientManager.f57260a;
            if (abstractC20393c.f57269c != 2) {
                return;
            }
            C20396f c20396f = (C20396f) abstractC20393c;
            c20396f.f57282i.mo11186l(trueProfile, c20396f.f57270d, verificationCallback);
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void verifyOtp(TrueProfile trueProfile, String str, VerificationCallback verificationCallback) {
        if (isOAuthFlowUsable()) {
            AbstractC20393c abstractC20393c = this.mTcClientManager.f57260a;
            if (abstractC20393c.f57269c != 2) {
                return;
            }
            C20396f c20396f = (C20396f) abstractC20393c;
            c20396f.f57282i.mo11187k(trueProfile, str, c20396f.f57270d, verificationCallback);
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }
}
