package com.facebook.share.internal;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.common.C0948R;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.Validate;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment.class */
public class DeviceShareDialogFragment extends DialogFragment {
    private static final String DEVICE_SHARE_ENDPOINT = "device/share";
    private static final String EXTRA_ERROR = "error";
    private static final String REQUEST_STATE_KEY = "request_state";
    public static final String TAG = "DeviceShareDialogFragment";
    private static ScheduledThreadPoolExecutor backgroundExecutor;
    private volatile ScheduledFuture codeExpiredFuture;
    private TextView confirmationCode;
    private volatile RequestState currentRequestState;
    private Dialog dialog;
    private ProgressBar progressBar;
    private ShareContent shareContent;

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment$RequestState.class */
    public static class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new Parcelable.Creator<RequestState>() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.RequestState.1
            @Override // android.os.Parcelable.Creator
            public RequestState createFromParcel(Parcel parcel) {
                return new RequestState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public RequestState[] newArray(int i) {
                return new RequestState[i];
            }
        };
        private long expiresIn;
        private String userCode;

        RequestState() {
        }

        protected RequestState(Parcel parcel) {
            this.userCode = parcel.readString();
            this.expiresIn = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public long getExpiresIn() {
            return this.expiresIn;
        }

        public String getUserCode() {
            return this.userCode;
        }

        public void setExpiresIn(long j) {
            this.expiresIn = j;
        }

        public void setUserCode(String str) {
            this.userCode = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.userCode);
            parcel.writeLong(this.expiresIn);
        }
    }

    private void detach() {
        if (isAdded()) {
            getFragmentManager().beginTransaction().remove(this).commit();
        }
    }

    private void finishActivity(int i, Intent intent) {
        if (this.currentRequestState != null) {
            DeviceRequestsHelper.cleanUpAdvertisementService(this.currentRequestState.getUserCode());
        }
        FacebookRequestError facebookRequestError = (FacebookRequestError) intent.getParcelableExtra("error");
        if (facebookRequestError != null) {
            Toast.makeText(getContext(), facebookRequestError.getErrorMessage(), 0).show();
        }
        if (isAdded()) {
            FragmentActivity activity = getActivity();
            activity.setResult(i, intent);
            activity.finish();
        }
    }

    public void finishActivityWithError(FacebookRequestError facebookRequestError) {
        detach();
        Intent intent = new Intent();
        intent.putExtra("error", facebookRequestError);
        finishActivity(-1, intent);
    }

    private static ScheduledThreadPoolExecutor getBackgroundExecutor() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceShareDialogFragment.class) {
            try {
                if (backgroundExecutor == null) {
                    backgroundExecutor = new ScheduledThreadPoolExecutor(1);
                }
                scheduledThreadPoolExecutor = backgroundExecutor;
            } catch (Throwable th) {
                throw th;
            }
        }
        return scheduledThreadPoolExecutor;
    }

    private Bundle getGraphParametersForShareContent() {
        ShareContent shareContent = this.shareContent;
        if (shareContent == null) {
            return null;
        }
        if (shareContent instanceof ShareLinkContent) {
            return WebDialogParameters.create((ShareLinkContent) shareContent);
        }
        if (!(shareContent instanceof ShareOpenGraphContent)) {
            return null;
        }
        return WebDialogParameters.create((ShareOpenGraphContent) shareContent);
    }

    public void setCurrentRequestState(RequestState requestState) {
        this.currentRequestState = requestState;
        this.confirmationCode.setText(requestState.getUserCode());
        this.confirmationCode.setVisibility(0);
        this.progressBar.setVisibility(8);
        this.codeExpiredFuture = getBackgroundExecutor().schedule(new Runnable() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.3
            @Override // java.lang.Runnable
            public void run() {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    DeviceShareDialogFragment.this.dialog.dismiss();
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            }
        }, requestState.getExpiresIn(), TimeUnit.SECONDS);
    }

    private void startShare() {
        Bundle graphParametersForShareContent = getGraphParametersForShareContent();
        if (graphParametersForShareContent == null || graphParametersForShareContent.size() == 0) {
            finishActivityWithError(new FacebookRequestError(0, "", "Failed to get share content"));
        }
        graphParametersForShareContent.putString("access_token", Validate.hasAppID() + "|" + Validate.hasClientToken());
        graphParametersForShareContent.putString(DeviceRequestsHelper.DEVICE_INFO_PARAM, DeviceRequestsHelper.getDeviceInfo());
        new GraphRequest(null, DEVICE_SHARE_ENDPOINT, graphParametersForShareContent, HttpMethod.POST, new GraphRequest.Callback() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.2
            @Override // com.facebook.GraphRequest.Callback
            public void onCompleted(GraphResponse graphResponse) {
                FacebookRequestError error = graphResponse.getError();
                if (error != null) {
                    DeviceShareDialogFragment.this.finishActivityWithError(error);
                    return;
                }
                JSONObject jSONObject = graphResponse.getJSONObject();
                RequestState requestState = new RequestState();
                try {
                    requestState.setUserCode(jSONObject.getString("user_code"));
                    requestState.setExpiresIn(jSONObject.getLong(AccessToken.EXPIRES_IN_KEY));
                    DeviceShareDialogFragment.this.setCurrentRequestState(requestState);
                } catch (JSONException e) {
                    DeviceShareDialogFragment.this.finishActivityWithError(new FacebookRequestError(0, "", "Malformed server response"));
                }
            }
        }).executeAsync();
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.dialog = new Dialog(getActivity(), C0948R.style.com_facebook_auth_dialog);
        View inflate = getActivity().getLayoutInflater().inflate(C0948R.layout.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        this.progressBar = (ProgressBar) inflate.findViewById(C0948R.C0951id.progress_bar);
        this.confirmationCode = (TextView) inflate.findViewById(C0948R.C0951id.confirmation_code);
        ((Button) inflate.findViewById(C0948R.C0951id.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    DeviceShareDialogFragment.this.dialog.dismiss();
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            }
        });
        ((TextView) inflate.findViewById(C0948R.C0951id.com_facebook_device_auth_instructions)).setText(Html.fromHtml(getString(C0948R.string.com_facebook_device_auth_instructions)));
        this.dialog.setContentView(inflate);
        startShare();
        return this.dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (bundle != null && (requestState = (RequestState) bundle.getParcelable(REQUEST_STATE_KEY)) != null) {
            setCurrentRequestState(requestState);
        }
        return onCreateView;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.codeExpiredFuture != null) {
            this.codeExpiredFuture.cancel(true);
        }
        finishActivity(-1, new Intent());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.currentRequestState != null) {
            bundle.putParcelable(REQUEST_STATE_KEY, this.currentRequestState);
        }
    }

    public void setShareContent(ShareContent shareContent) {
        this.shareContent = shareContent;
    }
}
