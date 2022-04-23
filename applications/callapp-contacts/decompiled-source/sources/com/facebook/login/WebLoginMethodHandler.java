package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.c;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.login.LoginClient;
import com.google.android.material.timepicker.TimeModel;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/login/WebLoginMethodHandler.class */
public abstract class WebLoginMethodHandler extends LoginMethodHandler {
    private static final String WEB_VIEW_AUTH_HANDLER_STORE = "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY";
    private static final String WEB_VIEW_AUTH_HANDLER_TOKEN_KEY = "TOKEN";
    private String e2e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    private String loadCookieToken() {
        return this.loginClient.getActivity().getSharedPreferences(WEB_VIEW_AUTH_HANDLER_STORE, 0).getString(WEB_VIEW_AUTH_HANDLER_TOKEN_KEY, "");
    }

    private void saveCookieToken(String str) {
        this.loginClient.getActivity().getSharedPreferences(WEB_VIEW_AUTH_HANDLER_STORE, 0).edit().putString(WEB_VIEW_AUTH_HANDLER_TOKEN_KEY, str).apply();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bundle addExtraParameters(Bundle bundle, LoginClient.Request request) {
        bundle.putString("redirect_uri", getRedirectUrl());
        bundle.putString("client_id", request.getApplicationId());
        bundle.putString("e2e", LoginClient.getE2E());
        bundle.putString("response_type", "token,signed_request,graph_domain");
        bundle.putString("return_scopes", "true");
        bundle.putString("auth_type", request.getAuthType());
        bundle.putString("login_behavior", request.getLoginBehavior().name());
        bundle.putString("sdk", String.format(Locale.ROOT, "android-%s", g.k()));
        if (getSSODevice() != null) {
            bundle.putString("sso", getSSODevice());
        }
        bundle.putString("cct_prefetching", g.f19779a ? "1" : "0");
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bundle getParameters(LoginClient.Request request) {
        Bundle bundle = new Bundle();
        if (!ae.a(request.getPermissions())) {
            String join = TextUtils.join(",", request.getPermissions());
            bundle.putString("scope", join);
            addLoggingExtra("scope", join);
        }
        bundle.putString("default_audience", request.getDefaultAudience().getNativeProtocolAudience());
        bundle.putString(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, getClientState(request.getAuthId()));
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        String token = currentAccessToken != null ? currentAccessToken.getToken() : null;
        String str = "1";
        if (token == null || !token.equals(loadCookieToken())) {
            ae.b(this.loginClient.getActivity());
            addLoggingExtra(AccessToken.ACCESS_TOKEN_KEY, "0");
        } else {
            bundle.putString(AccessToken.ACCESS_TOKEN_KEY, token);
            addLoggingExtra(AccessToken.ACCESS_TOKEN_KEY, "1");
        }
        bundle.putString("cbt", String.valueOf(System.currentTimeMillis()));
        if (!g.p()) {
            str = "0";
        }
        bundle.putString("ies", str);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getRedirectUrl() {
        return "fb" + g.m() + "://authorize";
    }

    protected String getSSODevice() {
        return null;
    }

    abstract c getTokenSource();

    /* JADX INFO: Access modifiers changed from: protected */
    public void onComplete(LoginClient.Request request, Bundle bundle, FacebookException facebookException) {
        LoginClient.Result result;
        String str;
        this.e2e = null;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.e2e = bundle.getString("e2e");
            }
            try {
                AccessToken createAccessTokenFromWebBundle = createAccessTokenFromWebBundle(request.getPermissions(), bundle, getTokenSource(), request.getApplicationId());
                result = LoginClient.Result.createTokenResult(this.loginClient.getPendingRequest(), createAccessTokenFromWebBundle);
                CookieSyncManager.createInstance(this.loginClient.getActivity()).sync();
                saveCookieToken(createAccessTokenFromWebBundle.getToken());
            } catch (FacebookException e) {
                result = LoginClient.Result.createErrorResult(this.loginClient.getPendingRequest(), null, e.getMessage());
            }
        } else if (facebookException instanceof FacebookOperationCanceledException) {
            result = LoginClient.Result.createCancelResult(this.loginClient.getPendingRequest(), "User canceled log in.");
        } else {
            this.e2e = null;
            String message = facebookException.getMessage();
            if (facebookException instanceof FacebookServiceException) {
                FacebookRequestError facebookRequestError = ((FacebookServiceException) facebookException).f19369a;
                str = String.format(Locale.ROOT, TimeModel.NUMBER_FORMAT, Integer.valueOf(facebookRequestError.getErrorCode()));
                message = facebookRequestError.toString();
            } else {
                str = null;
            }
            result = LoginClient.Result.createErrorResult(this.loginClient.getPendingRequest(), null, message, str);
        }
        if (!ae.a(this.e2e)) {
            logWebLoginCompleted(this.e2e);
        }
        this.loginClient.completeAndValidate(result);
    }
}
