package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.C10181g;
import com.facebook.CustomTabMainActivity;
import com.facebook.EnumC10164c;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10278d;
import com.facebook.internal.C10280e;
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

    public CustomTabLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.validRedirectURI = "";
        this.expectedChallenge = C10213ae.m23203c();
        calledThroughLoggedOutAppSwitch = false;
        this.validRedirectURI = C10280e.m23067a(getDeveloperDefinedRedirectURI());
    }

    private String getChromePackage() {
        String str = this.currentPackage;
        if (str != null) {
            return str;
        }
        String m23068a = C10280e.m23068a();
        this.currentPackage = m23068a;
        return m23068a;
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
            if (string != null) {
                return new JSONObject(string).getString("7_challenge").equals(this.expectedChallenge);
            }
            return false;
        } catch (JSONException e) {
            return false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public String getNameForLogging() {
        return "custom_tab";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.login.WebLoginMethodHandler
    public String getRedirectUrl() {
        return this.validRedirectURI;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    protected String getSSODevice() {
        return "chrome_custom_tab";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    EnumC10164c getTokenSource() {
        return EnumC10164c.CHROME_CUSTOM_TAB;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public boolean onActivityResult(int i, int i2, Intent intent) {
        if ((intent == null || !intent.getBooleanExtra(CustomTabMainActivity.f33045f, false)) && i == 1) {
            LoginClient.Request pendingRequest = this.loginClient.getPendingRequest();
            if (i2 == -1) {
                onCustomTabComplete(intent.getStringExtra(CustomTabMainActivity.f33043d), pendingRequest);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public int tryAuthorize(LoginClient.Request request) {
        if (getRedirectUrl().isEmpty()) {
            return 0;
        }
        Bundle addExtraParameters = addExtraParameters(getParameters(request), request);
        if (calledThroughLoggedOutAppSwitch) {
            addExtraParameters.putString("cct_over_app_switch", "1");
        }
        if (C10181g.f33597a) {
            C10379a.m22897a(C10278d.m23070a(OAUTH_DIALOG, addExtraParameters));
        }
        Intent intent = new Intent(this.loginClient.getActivity(), CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.f33040a, OAUTH_DIALOG);
        intent.putExtra(CustomTabMainActivity.f33041b, addExtraParameters);
        intent.putExtra(CustomTabMainActivity.f33042c, getChromePackage());
        this.loginClient.getFragment().startActivityForResult(intent, 1);
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.expectedChallenge);
    }
}
