package com.truecaller.android.sdk;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.truecaller.android.sdk.clients.VerificationCallback;
import com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler;
import e.m.d.y.n;
import java.util.Locale;
import n3.r.a.l;
import p193e.p194a.p1221t.p1230b.C20348a;
import p193e.p194a.p1221t.p1230b.p1231c.AbstractC20359d;
import p193e.p194a.p1221t.p1230b.p1231c.C20360e;
import p193e.p194a.p1221t.p1230b.p1231c.C20361f;
import p193e.p194a.p1221t.p1230b.p1231c.C20362g;
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/TruecallerSDK.class */
public final class TruecallerSDK {
    public static final int SHARE_PROFILE_REQUEST_CODE = 100;
    private static TruecallerSDK sInstance;
    private final C20348a mTcClientManager;

    private TruecallerSDK(C20348a c20348a) {
        this.mTcClientManager = c20348a;
    }

    public static void clear() {
        TruecallerSDK truecallerSDK = sInstance;
        if (truecallerSDK != null) {
            AbstractC20359d abstractC20359d = truecallerSDK.mTcClientManager.f57189a;
            if (abstractC20359d != null && abstractC20359d.f57199c == 2) {
                C20362g c20362g = (C20362g) abstractC20359d;
                if (c20362g.f57214k != null) {
                    c20362g.mo11199g();
                    c20362g.f57214k = null;
                }
                c20362g.f57215l = null;
                Handler handler = c20362g.f57216m;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                    c20362g.f57216m = null;
                }
            }
            sInstance.mTcClientManager.f57189a = null;
            C20348a.f57188b = null;
            sInstance = null;
        }
    }

    public static TruecallerSDK getInstance() throws RuntimeException {
        TruecallerSDK truecallerSDK = sInstance;
        if (truecallerSDK != null) {
            return truecallerSDK;
        }
        throw new RuntimeException(TrueException.TYPE_SDK_NOT_INITIALIZED);
    }

    @Deprecated
    public static void init(Context context, ITrueCallback iTrueCallback) throws RuntimeException {
        ApplicationInfo applicationInfo;
        synchronized (TruecallerSDK.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                try {
                    applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
                } catch (PackageManager.NameNotFoundException e) {
                    applicationInfo = null;
                }
                String U = n.U(applicationInfo);
                if (TextUtils.isEmpty(U)) {
                    throw new RuntimeException(TrueException.TYPE_PARTNER_KEY);
                }
                C20348a c20348a = new C20348a(applicationContext, iTrueCallback, U);
                C20348a.f57188b = c20348a;
                sInstance = new TruecallerSDK(c20348a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void init(TruecallerSdkScope truecallerSdkScope) {
        synchronized (TruecallerSDK.class) {
            try {
                C20348a c20348a = new C20348a(truecallerSdkScope);
                C20348a.f57188b = c20348a;
                sInstance = new TruecallerSDK(c20348a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void getUserProfile(Fragment fragment) {
        if (isUsable()) {
            AbstractC20359d abstractC20359d = this.mTcClientManager.f57189a;
            if (abstractC20359d.f57199c != 1) {
                n.h1(fragment.getActivity());
                ((C20362g) abstractC20359d).f57211h.mo11195c();
                return;
            }
            C20360e c20360e = (C20360e) abstractC20359d;
            l activity = fragment.getActivity();
            if (activity == null) {
                return;
            }
            try {
                Intent m11228h = c20360e.m11228h(activity);
                if (m11228h == null) {
                    c20360e.m11227i(activity, 11);
                } else {
                    fragment.startActivityForResult(m11228h, 100);
                }
                return;
            } catch (ActivityNotFoundException e) {
                c20360e.m11227i(activity, 15);
                return;
            }
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void getUserProfile(l lVar) {
        if (isUsable()) {
            AbstractC20359d abstractC20359d = this.mTcClientManager.f57189a;
            if (abstractC20359d.f57199c != 1) {
                n.h1(lVar);
                ((C20362g) abstractC20359d).f57211h.mo11195c();
                return;
            }
            C20360e c20360e = (C20360e) abstractC20359d;
            try {
                Intent m11228h = c20360e.m11228h(lVar);
                if (m11228h == null) {
                    c20360e.m11227i(lVar, 11);
                } else {
                    lVar.startActivityForResult(m11228h, 100);
                }
                return;
            } catch (ActivityNotFoundException e) {
                c20360e.m11227i(lVar, 15);
                return;
            }
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public boolean isUsable() {
        return this.mTcClientManager.f57189a != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onActivityResultObtained(n3.r.a.l r6, int r7, int r8, android.content.Intent r9) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.android.sdk.TruecallerSDK.onActivityResultObtained(n3.r.a.l, int, int, android.content.Intent):boolean");
    }

    public void requestVerification(String str, String str2, VerificationCallback verificationCallback, l lVar) {
        if (isUsable()) {
            AbstractC20359d abstractC20359d = this.mTcClientManager.f57189a;
            if (abstractC20359d.f57199c != 2) {
                return;
            }
            C20362g c20362g = (C20362g) abstractC20359d;
            n.C(lVar);
            String string = Settings.Secure.getString(c20362g.f57197a.getContentResolver(), AnalyticsConstants.ANDROID_ID);
            if (!c20362g.mo11200f() || c20362g.mo11201e() || c20362g.mo11204b()) {
                c20362g.f57211h.mo11184n(c20362g.f57200d, str, str2, string, c20362g.f57213j, verificationCallback);
                return;
            }
            RequestPermissionHandler requestPermissionHandler = new RequestPermissionHandler(lVar, new C20361f(c20362g, str, str2, string, verificationCallback, lVar));
            c20362g.f57215l = requestPermissionHandler;
            requestPermissionHandler.m35917e();
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void setLocale(Locale locale) {
        if (isUsable()) {
            this.mTcClientManager.f57189a.f57202f = locale;
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void setRequestNonce(String str) {
        if (isUsable()) {
            this.mTcClientManager.f57189a.f57201e = str;
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void setTheme(int i) {
        if (isUsable()) {
            this.mTcClientManager.f57189a.f57203g = i;
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void updateCallback(ITrueCallback iTrueCallback) {
        if (isUsable()) {
            C20348a.f57188b.f57189a.f57198b = iTrueCallback;
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void verifyMissedCall(TrueProfile trueProfile, VerificationCallback verificationCallback) {
        if (isUsable()) {
            AbstractC20359d abstractC20359d = this.mTcClientManager.f57189a;
            if (abstractC20359d.f57199c != 2) {
                return;
            }
            C20362g c20362g = (C20362g) abstractC20359d;
            c20362g.f57211h.mo11186l(trueProfile, c20362g.f57200d, verificationCallback);
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }

    public void verifyOtp(TrueProfile trueProfile, String str, VerificationCallback verificationCallback) {
        if (isUsable()) {
            AbstractC20359d abstractC20359d = this.mTcClientManager.f57189a;
            if (abstractC20359d.f57199c != 2) {
                return;
            }
            C20362g c20362g = (C20362g) abstractC20359d;
            c20362g.f57211h.mo11187k(trueProfile, str, c20362g.f57200d, verificationCallback);
            return;
        }
        throw new RuntimeException(TrueException.TYPE_CLIENT_MISSING);
    }
}
