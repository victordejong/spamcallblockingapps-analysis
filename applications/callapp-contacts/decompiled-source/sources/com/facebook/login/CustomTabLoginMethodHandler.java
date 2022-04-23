package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.c;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.d;
import com.facebook.internal.e;
import com.facebook.login.LoginClient;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/CustomTabLoginMethodHandler.class */
public class CustomTabLoginMethodHandler extends WebLoginMethodHandler {
    private static final int API_EC_DIALOG_CANCEL = 4201;
    private static final int CHALLENGE_LENGTH = 20;
    public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.CustomTabLoginMethodHandler.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new CustomTabLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new CustomTabLoginMethodHandler[i];
        }
    };
    private static final int CUSTOM_TAB_REQUEST_CODE = 1;
    private static final String OAUTH_DIALOG = "oauth";
    public static boolean calledThroughLoggedOutAppSwitch = false;
    private String currentPackage;
    private String expectedChallenge;
    private String validRedirectURI;

    CustomTabLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.validRedirectURI = "";
        this.expectedChallenge = parcel.readString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CustomTabLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.validRedirectURI = "";
        this.expectedChallenge = ae.c();
        calledThroughLoggedOutAppSwitch = false;
        this.validRedirectURI = e.a(getDeveloperDefinedRedirectURI());
    }

    private String getChromePackage() {
        String str = this.currentPackage;
        if (str != null) {
            return str;
        }
        String a2 = e.a();
        this.currentPackage = a2;
        return a2;
    }

    private String getDeveloperDefinedRedirectURI() {
        return super.getRedirectUrl();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void onCustomTabComplete(java.lang.String r12, com.facebook.login.LoginClient.Request r13) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.CustomTabLoginMethodHandler.onCustomTabComplete(java.lang.String, com.facebook.login.LoginClient$Request):void");
    }

    private boolean validateChallengeParam(Bundle bundle) {
        try {
            String string = bundle.getString(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            if (string == null) {
                return false;
            }
            return new JSONObject(string).getString("7_challenge").equals(this.expectedChallenge);
        } catch (JSONException e) {
            return false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    String getNameForLogging() {
        return "custom_tab";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    protected String getRedirectUrl() {
        return this.validRedirectURI;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    protected String getSSODevice() {
        return "chrome_custom_tab";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    c getTokenSource() {
        return c.CHROME_CUSTOM_TAB;
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean onActivityResult(int i, int i2, Intent intent) {
        if ((intent == null || !intent.getBooleanExtra(CustomTabMainActivity.f, false)) && i == 1) {
            LoginClient.Request pendingRequest = this.loginClient.getPendingRequest();
            if (i2 == -1) {
                onCustomTabComplete(intent.getStringExtra(CustomTabMainActivity.f19350d), pendingRequest);
                return true;
            }
            super.onComplete(pendingRequest, null, new FacebookOperationCanceledException());
            return false;
        }
        return super.onActivityResult(i, i2, intent);
    }

    @Override // com.facebook.login.LoginMethodHandler
    protected void putChallengeParam(JSONObject jSONObject) throws JSONException {
        jSONObject.put("7_challenge", this.expectedChallenge);
    }

    @Override // com.facebook.login.LoginMethodHandler
    public /* bridge */ /* synthetic */ boolean shouldKeepTrackOfMultipleIntents() {
        return super.shouldKeepTrackOfMultipleIntents();
    }

    @Override // com.facebook.login.LoginMethodHandler
    int tryAuthorize(LoginClient.Request request) {
        if (getRedirectUrl().isEmpty()) {
            return 0;
        }
        Bundle addExtraParameters = addExtraParameters(getParameters(request), request);
        if (calledThroughLoggedOutAppSwitch) {
            addExtraParameters.putString("cct_over_app_switch", "1");
        }
        if (g.f19779a) {
            a.a(d.a(OAUTH_DIALOG, addExtraParameters));
        }
        Intent intent = new Intent(this.loginClient.getActivity(), CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.f19347a, OAUTH_DIALOG);
        intent.putExtra(CustomTabMainActivity.f19348b, addExtraParameters);
        intent.putExtra(CustomTabMainActivity.f19349c, getChromePackage());
        this.loginClient.getFragment().startActivityForResult(intent, 1);
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.expectedChallenge);
    }
}
