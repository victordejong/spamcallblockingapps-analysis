package com.facebook.login;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.c;
import com.facebook.AccessToken;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.m;
import com.facebook.common.a;
import com.facebook.devicerequests.a.a;
import com.facebook.g;
import com.facebook.h;
import com.facebook.internal.ad;
import com.facebook.internal.ae;
import com.facebook.internal.af;
import com.facebook.internal.q;
import com.facebook.j;
import com.facebook.k;
import com.facebook.login.LoginClient;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/DeviceAuthDialog.class */
public class DeviceAuthDialog extends c {

    /* renamed from: c  reason: collision with root package name */
    private View f20042c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f20043d;
    private TextView e;
    private DeviceAuthMethodHandler f;
    private volatile h h;
    private volatile ScheduledFuture i;
    private volatile RequestState j;
    private AtomicBoolean g = new AtomicBoolean();
    private boolean k = false;
    private boolean l = false;
    private LoginClient.Request m = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/login/DeviceAuthDialog$RequestState.class */
    public static class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new Parcelable.Creator<RequestState>() { // from class: com.facebook.login.DeviceAuthDialog.RequestState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ RequestState createFromParcel(Parcel parcel) {
                return new RequestState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ RequestState[] newArray(int i) {
                return new RequestState[i];
            }
        };
        private String authorizationUri;
        private long interval;
        private long lastPoll;
        private String requestCode;
        private String userCode;

        RequestState() {
        }

        protected RequestState(Parcel parcel) {
            this.authorizationUri = parcel.readString();
            this.userCode = parcel.readString();
            this.requestCode = parcel.readString();
            this.interval = parcel.readLong();
            this.lastPoll = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getAuthorizationUri() {
            return this.authorizationUri;
        }

        public long getInterval() {
            return this.interval;
        }

        public String getRequestCode() {
            return this.requestCode;
        }

        public String getUserCode() {
            return this.userCode;
        }

        public void setInterval(long j) {
            this.interval = j;
        }

        public void setLastPoll(long j) {
            this.lastPoll = j;
        }

        public void setRequestCode(String str) {
            this.requestCode = str;
        }

        public void setUserCode(String str) {
            this.userCode = str;
            this.authorizationUri = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", str);
        }

        public boolean withinLastRefreshWindow() {
            return this.lastPoll != 0 && (new Date().getTime() - this.lastPoll) - (this.interval * 1000) < 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.authorizationUri);
            parcel.writeString(this.userCode);
            parcel.writeString(this.requestCode);
            parcel.writeLong(this.interval);
            parcel.writeLong(this.lastPoll);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RequestState requestState) {
        this.j = requestState;
        this.f20043d.setText(requestState.getUserCode());
        this.e.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, new BitmapDrawable(getResources(), a.b(requestState.getAuthorizationUri())), (Drawable) null, (Drawable) null);
        this.f20043d.setVisibility(0);
        this.f20042c.setVisibility(8);
        if (!this.l && a.a(requestState.getUserCode())) {
            new m(getContext()).a("fb_smart_login_service");
        }
        if (requestState.withinLastRefreshWindow()) {
            f();
        } else {
            e();
        }
    }

    static /* synthetic */ void a(DeviceAuthDialog deviceAuthDialog, final String str, final ae.b bVar, final String str2, String str3, final Date date, final Date date2) {
        String string = deviceAuthDialog.getResources().getString(a.f.com_facebook_smart_login_confirmation_title);
        String string2 = deviceAuthDialog.getResources().getString(a.f.com_facebook_smart_login_confirmation_continue_as);
        String string3 = deviceAuthDialog.getResources().getString(a.f.com_facebook_smart_login_confirmation_cancel);
        String format = String.format(string2, str3);
        AlertDialog.Builder builder = new AlertDialog.Builder(deviceAuthDialog.getContext());
        builder.setMessage(string).setCancelable(true).setNegativeButton(format, new DialogInterface.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DeviceAuthDialog.a(DeviceAuthDialog.this, str, bVar, str2, date, date2);
            }
        }).setPositiveButton(string3, new DialogInterface.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DeviceAuthDialog.this.getDialog().setContentView(DeviceAuthDialog.this.a(false));
                DeviceAuthDialog deviceAuthDialog2 = DeviceAuthDialog.this;
                deviceAuthDialog2.a(deviceAuthDialog2.m);
            }
        });
        builder.create().show();
    }

    static /* synthetic */ void a(DeviceAuthDialog deviceAuthDialog, String str, ae.b bVar, String str2, Date date, Date date2) {
        deviceAuthDialog.f.onSuccess(str2, g.m(), str, bVar.f19819a, bVar.f19820b, bVar.f19821c, com.facebook.c.DEVICE_AUTH, date, null, date2);
        deviceAuthDialog.getDialog().dismiss();
    }

    static /* synthetic */ void a(DeviceAuthDialog deviceAuthDialog, final String str, Long l, Long l2) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,permissions,name");
        final Date date = l.longValue() != 0 ? new Date(new Date().getTime() + (l.longValue() * 1000)) : null;
        final Date date2 = null;
        if (l2.longValue() != 0) {
            date2 = null;
            if (l2 != null) {
                date2 = new Date(l2.longValue() * 1000);
            }
        }
        new GraphRequest(new AccessToken(str, g.m(), "0", null, null, null, null, date, null, date2), "me", bundle, k.GET, new GraphRequest.b() { // from class: com.facebook.login.DeviceAuthDialog.8
            @Override // com.facebook.GraphRequest.b
            public final void a(j jVar) {
                if (!DeviceAuthDialog.this.g.get()) {
                    if (jVar.f20037b != null) {
                        DeviceAuthDialog.this.a(jVar.f20037b.getException());
                        return;
                    }
                    try {
                        JSONObject jSONObject = jVar.f20036a;
                        String string = jSONObject.getString("id");
                        ae.b b2 = ae.b(jSONObject);
                        String string2 = jSONObject.getString("name");
                        com.facebook.devicerequests.a.a.c(DeviceAuthDialog.this.j.getUserCode());
                        if (!q.a(g.m()).f19960c.contains(ad.RequireConfirm) || DeviceAuthDialog.this.l) {
                            DeviceAuthDialog.a(DeviceAuthDialog.this, string, b2, str, date, date2);
                            return;
                        }
                        DeviceAuthDialog.this.l = true;
                        DeviceAuthDialog.a(DeviceAuthDialog.this, string, b2, str, string2, date, date2);
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.a(new FacebookException(e));
                    }
                }
            }
        }).c();
    }

    private static int b(boolean z) {
        return z ? a.e.com_facebook_smart_device_dialog_fragment : a.e.com_facebook_device_auth_dialog_fragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.j.setLastPoll(new Date().getTime());
        this.h = g().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.i = DeviceAuthMethodHandler.getBackgroundExecutor().schedule(new Runnable() { // from class: com.facebook.login.DeviceAuthDialog.4
            @Override // java.lang.Runnable
            public final void run() {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        DeviceAuthDialog.this.e();
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        }, this.j.getInterval(), TimeUnit.SECONDS);
    }

    private GraphRequest g() {
        Bundle bundle = new Bundle();
        bundle.putString("code", this.j.getRequestCode());
        return new GraphRequest(null, "device/login_status", bundle, k.POST, new GraphRequest.b() { // from class: com.facebook.login.DeviceAuthDialog.5
            @Override // com.facebook.GraphRequest.b
            public final void a(j jVar) {
                if (!DeviceAuthDialog.this.g.get()) {
                    FacebookRequestError facebookRequestError = jVar.f20037b;
                    if (facebookRequestError != null) {
                        int subErrorCode = facebookRequestError.getSubErrorCode();
                        if (subErrorCode != 1349152) {
                            switch (subErrorCode) {
                                case 1349172:
                                case 1349174:
                                    DeviceAuthDialog.this.f();
                                    return;
                                case 1349173:
                                    DeviceAuthDialog.this.d();
                                    return;
                                default:
                                    DeviceAuthDialog.this.a(jVar.f20037b.getException());
                                    return;
                            }
                        } else {
                            if (DeviceAuthDialog.this.j != null) {
                                com.facebook.devicerequests.a.a.c(DeviceAuthDialog.this.j.getUserCode());
                            }
                            if (DeviceAuthDialog.this.m != null) {
                                DeviceAuthDialog deviceAuthDialog = DeviceAuthDialog.this;
                                deviceAuthDialog.a(deviceAuthDialog.m);
                                return;
                            }
                            DeviceAuthDialog.this.d();
                        }
                    } else {
                        try {
                            JSONObject jSONObject = jVar.f20036a;
                            DeviceAuthDialog.a(DeviceAuthDialog.this, jSONObject.getString(AccessToken.ACCESS_TOKEN_KEY), Long.valueOf(jSONObject.getLong(AccessToken.EXPIRES_IN_KEY)), Long.valueOf(jSONObject.optLong(AccessToken.DATA_ACCESS_EXPIRATION_TIME)));
                        } catch (JSONException e) {
                            DeviceAuthDialog.this.a(new FacebookException(e));
                        }
                    }
                }
            }
        });
    }

    @Override // androidx.fragment.app.c
    public final Dialog a(Bundle bundle) {
        Dialog dialog = new Dialog(getActivity(), a.g.com_facebook_auth_dialog) { // from class: com.facebook.login.DeviceAuthDialog.1
            @Override // android.app.Dialog
            public final void onBackPressed() {
                super.onBackPressed();
            }
        };
        dialog.setContentView(a(com.facebook.devicerequests.a.a.b() && !this.l));
        return dialog;
    }

    protected final View a(boolean z) {
        View inflate = getActivity().getLayoutInflater().inflate(b(z), (ViewGroup) null);
        this.f20042c = inflate.findViewById(a.d.progress_bar);
        this.f20043d = (TextView) inflate.findViewById(a.d.confirmation_code);
        ((Button) inflate.findViewById(a.d.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        DeviceAuthDialog.this.d();
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        });
        TextView textView = (TextView) inflate.findViewById(a.d.com_facebook_device_auth_instructions);
        this.e = textView;
        textView.setText(Html.fromHtml(getString(a.f.com_facebook_device_auth_instructions)));
        return inflate;
    }

    protected final void a(FacebookException facebookException) {
        if (this.g.compareAndSet(false, true)) {
            if (this.j != null) {
                com.facebook.devicerequests.a.a.c(this.j.getUserCode());
            }
            this.f.onError(facebookException);
            getDialog().dismiss();
        }
    }

    public final void a(LoginClient.Request request) {
        this.m = request;
        Bundle bundle = new Bundle();
        bundle.putString("scope", TextUtils.join(",", request.getPermissions()));
        String deviceRedirectUriString = request.getDeviceRedirectUriString();
        if (deviceRedirectUriString != null) {
            bundle.putString("redirect_uri", deviceRedirectUriString);
        }
        String deviceAuthTargetUserId = request.getDeviceAuthTargetUserId();
        if (deviceAuthTargetUserId != null) {
            bundle.putString("target_user_id", deviceAuthTargetUserId);
        }
        bundle.putString(AccessToken.ACCESS_TOKEN_KEY, af.b() + "|" + af.c());
        bundle.putString("device_info", com.facebook.devicerequests.a.a.a());
        new GraphRequest(null, "device/login", bundle, k.POST, new GraphRequest.b() { // from class: com.facebook.login.DeviceAuthDialog.2
            @Override // com.facebook.GraphRequest.b
            public final void a(j jVar) {
                if (!DeviceAuthDialog.this.k) {
                    if (jVar.f20037b != null) {
                        DeviceAuthDialog.this.a(jVar.f20037b.getException());
                        return;
                    }
                    JSONObject jSONObject = jVar.f20036a;
                    RequestState requestState = new RequestState();
                    try {
                        requestState.setUserCode(jSONObject.getString("user_code"));
                        requestState.setRequestCode(jSONObject.getString("code"));
                        requestState.setInterval(jSONObject.getLong("interval"));
                        DeviceAuthDialog.this.a(requestState);
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.a(new FacebookException(e));
                    }
                }
            }
        }).c();
    }

    protected final void d() {
        if (this.g.compareAndSet(false, true)) {
            if (this.j != null) {
                com.facebook.devicerequests.a.a.c(this.j.getUserCode());
            }
            DeviceAuthMethodHandler deviceAuthMethodHandler = this.f;
            if (deviceAuthMethodHandler != null) {
                deviceAuthMethodHandler.onCancel();
            }
            getDialog().dismiss();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f = (DeviceAuthMethodHandler) ((e) ((FacebookActivity) getActivity()).f19355b).f20070a.getCurrentHandler();
        if (!(bundle == null || (requestState = (RequestState) bundle.getParcelable("request_state")) == null)) {
            a(requestState);
        }
        return onCreateView;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.k = true;
        this.g.set(true);
        super.onDestroyView();
        if (this.h != null) {
            this.h.cancel(true);
        }
        if (this.i != null) {
            this.i.cancel(true);
        }
        this.f20042c = null;
        this.f20043d = null;
        this.e = null;
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (!this.k) {
            d();
        }
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.j != null) {
            bundle.putParcelable("request_state", this.j);
        }
    }
}
