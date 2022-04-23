package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.facebook.FacebookException;
import com.facebook.c;
import com.facebook.internal.ac;
import com.facebook.internal.ae;
import com.facebook.login.LoginClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/login/NativeAppLoginMethodHandler.class */
public abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {
    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAppLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAppLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    private String getError(Bundle bundle) {
        String string = bundle.getString("error");
        String str = string;
        if (string == null) {
            str = bundle.getString("error_type");
        }
        return str;
    }

    private String getErrorMessage(Bundle bundle) {
        String string = bundle.getString("error_message");
        String str = string;
        if (string == null) {
            str = bundle.getString("error_description");
        }
        return str;
    }

    private LoginClient.Result handleResultCancel(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String error = getError(extras);
        String obj = extras.get("error_code") != null ? extras.get("error_code").toString() : null;
        return ac.d().equals(obj) ? LoginClient.Result.createErrorResult(request, error, getErrorMessage(extras), obj) : LoginClient.Result.createCancelResult(request, error);
    }

    private LoginClient.Result handleResultOk(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String error = getError(extras);
        String obj = extras.get("error_code") != null ? extras.get("error_code").toString() : null;
        String errorMessage = getErrorMessage(extras);
        String string = extras.getString("e2e");
        if (!ae.a(string)) {
            logWebLoginCompleted(string);
        }
        if (error == null && obj == null && errorMessage == null) {
            try {
                return LoginClient.Result.createTokenResult(request, createAccessTokenFromWebBundle(request.getPermissions(), extras, c.FACEBOOK_APPLICATION_WEB, request.getApplicationId()));
            } catch (FacebookException e) {
                return LoginClient.Result.createErrorResult(request, null, e.getMessage());
            }
        } else if (error.equals("logged_out")) {
            CustomTabLoginMethodHandler.calledThroughLoggedOutAppSwitch = true;
            return null;
        } else if (ac.b().contains(error)) {
            return null;
        } else {
            return ac.c().contains(error) ? LoginClient.Result.createCancelResult(request, null) : LoginClient.Result.createErrorResult(request, error, errorMessage, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public boolean onActivityResult(int i, int i2, Intent intent) {
        LoginClient.Request pendingRequest = this.loginClient.getPendingRequest();
        LoginClient.Result createCancelResult = intent == null ? LoginClient.Result.createCancelResult(pendingRequest, "Operation canceled") : i2 == 0 ? handleResultCancel(pendingRequest, intent) : i2 != -1 ? LoginClient.Result.createErrorResult(pendingRequest, "Unexpected resultCode from authorization.", null) : handleResultOk(pendingRequest, intent);
        if (createCancelResult != null) {
            this.loginClient.completeAndValidate(createCancelResult);
            return true;
        }
        this.loginClient.tryNextHandler();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public abstract int tryAuthorize(LoginClient.Request request);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean tryIntent(Intent intent, int i) {
        if (intent == null) {
            return false;
        }
        try {
            this.loginClient.getFragment().startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }
}
