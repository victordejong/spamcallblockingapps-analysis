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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.common.R$id;
import com.facebook.common.R$layout;
import com.facebook.common.R$string;
import com.facebook.common.R$style;
import com.facebook.internal.C2416h0;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.p046d.C2645u;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6148s;
import p081h.p154f.EnumC6149t;
import p081h.p154f.p155d0.p156a.C6121a;
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment.class */
public class DeviceShareDialogFragment extends DialogFragment {

    /* renamed from: g */
    public static ScheduledThreadPoolExecutor f3610g;

    /* renamed from: a */
    public ProgressBar f3611a;

    /* renamed from: b */
    public TextView f3612b;

    /* renamed from: c */
    public Dialog f3613c;

    /* renamed from: d */
    public volatile RequestState f3614d;

    /* renamed from: e */
    public volatile ScheduledFuture f3615e;

    /* renamed from: f */
    public ShareContent f3616f;

    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment$RequestState.class */
    public static class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new C2666a();

        /* renamed from: a */
        public String f3617a;

        /* renamed from: b */
        public long f3618b;

        /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$RequestState$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment$RequestState$a.class */
        public static final class C2666a implements Parcelable.Creator<RequestState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RequestState createFromParcel(Parcel parcel) {
                return new RequestState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RequestState[] newArray(int i) {
                return new RequestState[i];
            }
        }

        public RequestState() {
        }

        public RequestState(Parcel parcel) {
            this.f3617a = parcel.readString();
            this.f3618b = parcel.readLong();
        }

        /* renamed from: a */
        public long m33960a() {
            return this.f3618b;
        }

        /* renamed from: a */
        public void m33959a(long j) {
            this.f3618b = j;
        }

        /* renamed from: a */
        public void m33958a(String str) {
            this.f3617a = str;
        }

        /* renamed from: b */
        public String m33957b() {
            return this.f3617a;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f3617a);
            parcel.writeLong(this.f3618b);
        }
    }

    /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment$a.class */
    public class View$OnClickListenerC2667a implements View.OnClickListener {
        public View$OnClickListenerC2667a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeviceShareDialogFragment.this.f3613c.dismiss();
        }
    }

    /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment$b.class */
    public class C2668b implements GraphRequest.AbstractC2230f {
        public C2668b() {
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            FacebookRequestError a = sVar.m23705a();
            if (a != null) {
                DeviceShareDialogFragment.this.m33966a(a);
                return;
            }
            JSONObject b = sVar.m23698b();
            RequestState requestState = new RequestState();
            try {
                requestState.m33958a(b.getString("user_code"));
                requestState.m33959a(b.getLong("expires_in"));
                DeviceShareDialogFragment.this.m33965a(requestState);
            } catch (JSONException e) {
                DeviceShareDialogFragment.this.m33966a(new FacebookRequestError(0, "", "Malformed server response"));
            }
        }
    }

    /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment$c.class */
    public class RunnableC2669c implements Runnable {
        public RunnableC2669c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DeviceShareDialogFragment.this.f3613c.dismiss();
        }
    }

    /* renamed from: M */
    public static ScheduledThreadPoolExecutor m33968M() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceShareDialogFragment.class) {
            try {
                if (f3610g == null) {
                    f3610g = new ScheduledThreadPoolExecutor(1);
                }
                scheduledThreadPoolExecutor = f3610g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return scheduledThreadPoolExecutor;
    }

    /* renamed from: J */
    public final void m33971J() {
        if (isAdded()) {
            getFragmentManager().beginTransaction().remove(this).commit();
        }
    }

    /* renamed from: K */
    public final Bundle m33970K() {
        ShareContent shareContent = this.f3616f;
        if (shareContent == null) {
            return null;
        }
        if (shareContent instanceof ShareLinkContent) {
            return C2645u.m34021a((ShareLinkContent) shareContent);
        }
        if (shareContent instanceof ShareOpenGraphContent) {
            return C2645u.m34020a((ShareOpenGraphContent) shareContent);
        }
        return null;
    }

    /* renamed from: L */
    public final void m33969L() {
        Bundle K = m33970K();
        if (K == null || K.size() == 0) {
            m33966a(new FacebookRequestError(0, "", "Failed to get share content"));
        }
        K.putString("access_token", C2416h0.m34794a() + "|" + C2416h0.m34788b());
        K.putString("device_info", C6121a.m23791a());
        new GraphRequest(null, "device/share", K, EnumC6149t.POST, new C2668b()).m35430c();
    }

    /* renamed from: a */
    public final void m33967a(int i, Intent intent) {
        if (this.f3614d != null) {
            C6121a.m23790a(this.f3614d.m33957b());
        }
        FacebookRequestError facebookRequestError = (FacebookRequestError) intent.getParcelableExtra("error");
        if (facebookRequestError != null) {
            Toast.makeText(getContext(), facebookRequestError.m35473b(), 0).show();
        }
        if (isAdded()) {
            FragmentActivity activity = getActivity();
            activity.setResult(i, intent);
            activity.finish();
        }
    }

    /* renamed from: a */
    public final void m33966a(FacebookRequestError facebookRequestError) {
        m33971J();
        Intent intent = new Intent();
        intent.putExtra("error", facebookRequestError);
        m33967a(-1, intent);
    }

    /* renamed from: a */
    public final void m33965a(RequestState requestState) {
        this.f3614d = requestState;
        this.f3612b.setText(requestState.m33957b());
        this.f3612b.setVisibility(0);
        this.f3611a.setVisibility(8);
        this.f3615e = m33968M().schedule(new RunnableC2669c(), requestState.m33960a(), TimeUnit.SECONDS);
    }

    /* renamed from: a */
    public void m33961a(ShareContent shareContent) {
        this.f3616f = shareContent;
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        this.f3613c = new Dialog(getActivity(), R$style.com_facebook_auth_dialog);
        View inflate = getActivity().getLayoutInflater().inflate(R$layout.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        this.f3611a = (ProgressBar) inflate.findViewById(R$id.progress_bar);
        this.f3612b = (TextView) inflate.findViewById(R$id.confirmation_code);
        ((Button) inflate.findViewById(R$id.cancel_button)).setOnClickListener(new View$OnClickListenerC2667a());
        ((TextView) inflate.findViewById(R$id.com_facebook_device_auth_instructions)).setText(Html.fromHtml(getString(R$string.com_facebook_device_auth_instructions)));
        this.f3613c.setContentView(inflate);
        m33969L();
        return this.f3613c;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (!(bundle == null || (requestState = (RequestState) bundle.getParcelable("request_state")) == null)) {
            m33965a(requestState);
        }
        return onCreateView;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.f3615e != null) {
            this.f3615e.cancel(true);
        }
        m33967a(-1, new Intent());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f3614d != null) {
            bundle.putParcelable("request_state", this.f3614d);
        }
    }
}
