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
import androidx.fragment.app.DialogInterface$OnCancelListenerC1089c;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.C10351j;
import com.facebook.EnumC10352k;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.common.C10165a;
import com.facebook.devicerequests.p297a.C10177a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
import com.facebook.internal.p299b.p301b.C10249a;
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
public class DeviceShareDialogFragment extends DialogInterface$OnCancelListenerC1089c {

    /* renamed from: i */
    private static ScheduledThreadPoolExecutor f34136i;

    /* renamed from: c */
    public ShareContent f34137c;

    /* renamed from: d */
    private ProgressBar f34138d;

    /* renamed from: e */
    private TextView f34139e;

    /* renamed from: f */
    private Dialog f34140f;

    /* renamed from: g */
    private volatile RequestState f34141g;

    /* renamed from: h */
    private volatile ScheduledFuture f34142h;

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

    /* renamed from: a */
    private void m22795a(Intent intent) {
        if (this.f34141g != null) {
            C10177a.m23311c(this.f34141g.getUserCode());
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

    /* renamed from: a */
    public void m22794a(FacebookRequestError facebookRequestError) {
        m22789d();
        Intent intent = new Intent();
        intent.putExtra("error", facebookRequestError);
        m22795a(intent);
    }

    /* renamed from: a */
    public void m22793a(RequestState requestState) {
        this.f34141g = requestState;
        this.f34139e.setText(requestState.getUserCode());
        this.f34139e.setVisibility(0);
        this.f34138d.setVisibility(8);
        this.f34142h = m22788e().schedule(new Runnable() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.3
            @Override // java.lang.Runnable
            public final void run() {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    DeviceShareDialogFragment.this.f34140f.dismiss();
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        }, requestState.getExpiresIn(), TimeUnit.SECONDS);
    }

    /* renamed from: d */
    private void m22789d() {
        if (isAdded()) {
            getFragmentManager().m43765a().mo43539a(this).mo43536b();
        }
    }

    /* renamed from: e */
    private static ScheduledThreadPoolExecutor m22788e() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceShareDialogFragment.class) {
            try {
                if (f34136i == null) {
                    f34136i = new ScheduledThreadPoolExecutor(1);
                }
                scheduledThreadPoolExecutor = f34136i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return scheduledThreadPoolExecutor;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final Dialog mo9884a(Bundle bundle) {
        this.f34140f = new Dialog(getActivity(), C10165a.C10172g.com_facebook_auth_dialog);
        View inflate = getActivity().getLayoutInflater().inflate(C10165a.C10170e.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        this.f34138d = (ProgressBar) inflate.findViewById(C10165a.C10169d.progress_bar);
        this.f34139e = (TextView) inflate.findViewById(C10165a.C10169d.confirmation_code);
        ((Button) inflate.findViewById(C10165a.C10169d.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    DeviceShareDialogFragment.this.f34140f.dismiss();
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        });
        ((TextView) inflate.findViewById(C10165a.C10169d.com_facebook_device_auth_instructions)).setText(Html.fromHtml(getString(C10165a.C10171f.com_facebook_device_auth_instructions)));
        this.f34140f.setContentView(inflate);
        ShareContent shareContent = this.f34137c;
        Bundle bundle2 = null;
        if (shareContent != null) {
            if (shareContent instanceof ShareLinkContent) {
                ShareLinkContent shareLinkContent = (ShareLinkContent) shareContent;
                bundle2 = C10481f.m22699a(shareLinkContent);
                C10213ae.m23245a(bundle2, "href", shareLinkContent.getContentUrl());
                C10213ae.m23243a(bundle2, "quote", shareLinkContent.getQuote());
            } else {
                bundle2 = null;
                if (shareContent instanceof ShareOpenGraphContent) {
                    bundle2 = C10481f.m22698a((ShareOpenGraphContent) shareContent);
                }
            }
        }
        if (bundle2 == null || bundle2.size() == 0) {
            m22794a(new FacebookRequestError(0, "", "Failed to get share content"));
        }
        bundle2.putString(AccessToken.ACCESS_TOKEN_KEY, C10218af.m23176b() + "|" + C10218af.m23174c());
        bundle2.putString("device_info", C10177a.m23315a());
        new GraphRequest(null, "device/share", bundle2, EnumC10352k.POST, new GraphRequest.AbstractC9933b() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.2
            @Override // com.facebook.GraphRequest.AbstractC9933b
            /* renamed from: a */
            public final void mo22725a(C10351j c10351j) {
                FacebookRequestError facebookRequestError = c10351j.f33960b;
                if (facebookRequestError != null) {
                    DeviceShareDialogFragment.this.m22794a(facebookRequestError);
                    return;
                }
                JSONObject jSONObject = c10351j.f33959a;
                RequestState requestState = new RequestState();
                try {
                    requestState.setUserCode(jSONObject.getString("user_code"));
                    requestState.setExpiresIn(jSONObject.getLong(AccessToken.EXPIRES_IN_KEY));
                    DeviceShareDialogFragment.this.m22793a(requestState);
                } catch (JSONException e) {
                    DeviceShareDialogFragment.this.m22794a(new FacebookRequestError(0, "", "Malformed server response"));
                }
            }
        }).m23778c();
        return this.f34140f;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (bundle != null && (requestState = (RequestState) bundle.getParcelable("request_state")) != null) {
            m22793a(requestState);
        }
        return onCreateView;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.f34142h != null) {
            this.f34142h.cancel(true);
        }
        m22795a(new Intent());
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f34141g != null) {
            bundle.putParcelable("request_state", this.f34141g);
        }
    }
}
