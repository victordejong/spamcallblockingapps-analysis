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
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.c;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.common.a;
import com.facebook.devicerequests.a.a;
import com.facebook.internal.ae;
import com.facebook.internal.af;
import com.facebook.j;
import com.facebook.k;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment.class */
public class DeviceShareDialogFragment extends c {
    private static ScheduledThreadPoolExecutor i;

    /* renamed from: c  reason: collision with root package name */
    public ShareContent f20163c;

    /* renamed from: d  reason: collision with root package name */
    private ProgressBar f20164d;
    private TextView e;
    private Dialog f;
    private volatile RequestState g;
    private volatile ScheduledFuture h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment$RequestState.class */
    public static class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new Parcelable.Creator<RequestState>() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.RequestState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ RequestState createFromParcel(Parcel parcel) {
                return new RequestState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ RequestState[] newArray(int i) {
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

    private void a(Intent intent) {
        if (this.g != null) {
            a.c(this.g.getUserCode());
        }
        FacebookRequestError facebookRequestError = (FacebookRequestError) intent.getParcelableExtra("error");
        if (facebookRequestError != null) {
            Toast.makeText(getContext(), facebookRequestError.getErrorMessage(), 0).show();
        }
        if (isAdded()) {
            FragmentActivity activity = getActivity();
            activity.setResult(-1, intent);
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FacebookRequestError facebookRequestError) {
        d();
        Intent intent = new Intent();
        intent.putExtra("error", facebookRequestError);
        a(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RequestState requestState) {
        this.g = requestState;
        this.e.setText(requestState.getUserCode());
        this.e.setVisibility(0);
        this.f20164d.setVisibility(8);
        this.h = e().schedule(new Runnable() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.3
            @Override // java.lang.Runnable
            public final void run() {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        DeviceShareDialogFragment.this.f.dismiss();
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        }, requestState.getExpiresIn(), TimeUnit.SECONDS);
    }

    private void d() {
        if (isAdded()) {
            getFragmentManager().a().a(this).b();
        }
    }

    private static ScheduledThreadPoolExecutor e() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceShareDialogFragment.class) {
            try {
                if (i == null) {
                    i = new ScheduledThreadPoolExecutor(1);
                }
                scheduledThreadPoolExecutor = i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return scheduledThreadPoolExecutor;
    }

    @Override // androidx.fragment.app.c
    public final Dialog a(Bundle bundle) {
        this.f = new Dialog(getActivity(), a.g.com_facebook_auth_dialog);
        View inflate = getActivity().getLayoutInflater().inflate(a.e.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        this.f20164d = (ProgressBar) inflate.findViewById(a.d.progress_bar);
        this.e = (TextView) inflate.findViewById(a.d.confirmation_code);
        ((Button) inflate.findViewById(a.d.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        DeviceShareDialogFragment.this.f.dismiss();
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        });
        ((TextView) inflate.findViewById(a.d.com_facebook_device_auth_instructions)).setText(Html.fromHtml(getString(a.f.com_facebook_device_auth_instructions)));
        this.f.setContentView(inflate);
        ShareContent shareContent = this.f20163c;
        Bundle bundle2 = null;
        if (shareContent != null) {
            if (shareContent instanceof ShareLinkContent) {
                ShareLinkContent shareLinkContent = (ShareLinkContent) shareContent;
                bundle2 = f.a(shareLinkContent);
                ae.a(bundle2, "href", shareLinkContent.getContentUrl());
                ae.a(bundle2, "quote", shareLinkContent.getQuote());
            } else {
                bundle2 = null;
                if (shareContent instanceof ShareOpenGraphContent) {
                    bundle2 = f.a((ShareOpenGraphContent) shareContent);
                }
            }
        }
        if (bundle2 == null || bundle2.size() == 0) {
            a(new FacebookRequestError(0, "", "Failed to get share content"));
        }
        bundle2.putString(AccessToken.ACCESS_TOKEN_KEY, af.b() + "|" + af.c());
        bundle2.putString("device_info", com.facebook.devicerequests.a.a.a());
        new GraphRequest(null, "device/share", bundle2, k.POST, new GraphRequest.b() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.2
            @Override // com.facebook.GraphRequest.b
            public final void a(j jVar) {
                FacebookRequestError facebookRequestError = jVar.f20037b;
                if (facebookRequestError != null) {
                    DeviceShareDialogFragment.this.a(facebookRequestError);
                    return;
                }
                JSONObject jSONObject = jVar.f20036a;
                RequestState requestState = new RequestState();
                try {
                    requestState.setUserCode(jSONObject.getString("user_code"));
                    requestState.setExpiresIn(jSONObject.getLong(AccessToken.EXPIRES_IN_KEY));
                    DeviceShareDialogFragment.this.a(requestState);
                } catch (JSONException e) {
                    DeviceShareDialogFragment.this.a(new FacebookRequestError(0, "", "Malformed server response"));
                }
            }
        }).c();
        return this.f;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (!(bundle == null || (requestState = (RequestState) bundle.getParcelable("request_state")) == null)) {
            a(requestState);
        }
        return onCreateView;
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.h != null) {
            this.h.cancel(true);
        }
        a(new Intent());
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.g != null) {
            bundle.putParcelable("request_state", this.g);
        }
    }
}
