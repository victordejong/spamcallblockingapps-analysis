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
import androidx.fragment.app.DialogInterface$OnCancelListenerC1089c;
import com.facebook.AccessToken;
import com.facebook.AsyncTaskC10192h;
import com.facebook.C10181g;
import com.facebook.C10351j;
import com.facebook.EnumC10164c;
import com.facebook.EnumC10352k;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.C10097m;
import com.facebook.common.C10165a;
import com.facebook.devicerequests.p297a.C10177a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
import com.facebook.internal.C10306q;
import com.facebook.internal.EnumC10211ad;
import com.facebook.internal.p299b.p301b.C10249a;
import com.facebook.login.LoginClient;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/DeviceAuthDialog.class */
public class DeviceAuthDialog extends DialogInterface$OnCancelListenerC1089c {

    /* renamed from: c */
    private View f33968c;

    /* renamed from: d */
    private TextView f33969d;

    /* renamed from: e */
    private TextView f33970e;

    /* renamed from: f */
    private DeviceAuthMethodHandler f33971f;

    /* renamed from: h */
    private volatile AsyncTaskC10192h f33973h;

    /* renamed from: i */
    private volatile ScheduledFuture f33974i;

    /* renamed from: j */
    private volatile RequestState f33975j;

    /* renamed from: g */
    private AtomicBoolean f33972g = new AtomicBoolean();

    /* renamed from: k */
    private boolean f33976k = false;

    /* renamed from: l */
    private boolean f33977l = false;

    /* renamed from: m */
    private LoginClient.Request f33978m = null;

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

    /* renamed from: a */
    public void m22922a(RequestState requestState) {
        this.f33975j = requestState;
        this.f33969d.setText(requestState.getUserCode());
        this.f33970e.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, new BitmapDrawable(getResources(), C10177a.m23312b(requestState.getAuthorizationUri())), (Drawable) null, (Drawable) null);
        this.f33969d.setVisibility(0);
        this.f33968c.setVisibility(8);
        if (!this.f33977l && C10177a.m23314a(requestState.getUserCode())) {
            new C10097m(getContext()).m23416a("fb_smart_login_service");
        }
        if (requestState.withinLastRefreshWindow()) {
            m22907f();
        } else {
            m22909e();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m22919a(DeviceAuthDialog deviceAuthDialog, final String str, final C10213ae.C10215b c10215b, final String str2, String str3, final Date date, final Date date2) {
        String string = deviceAuthDialog.getResources().getString(C10165a.C10171f.com_facebook_smart_login_confirmation_title);
        String string2 = deviceAuthDialog.getResources().getString(C10165a.C10171f.com_facebook_smart_login_confirmation_continue_as);
        String string3 = deviceAuthDialog.getResources().getString(C10165a.C10171f.com_facebook_smart_login_confirmation_cancel);
        String format = String.format(string2, str3);
        AlertDialog.Builder builder = new AlertDialog.Builder(deviceAuthDialog.getContext());
        builder.setMessage(string).setCancelable(true).setNegativeButton(format, new DialogInterface.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DeviceAuthDialog.m22918a(DeviceAuthDialog.this, str, c10215b, str2, date, date2);
            }
        }).setPositiveButton(string3, new DialogInterface.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DeviceAuthDialog.this.getDialog().setContentView(DeviceAuthDialog.this.m22915a(false));
                DeviceAuthDialog deviceAuthDialog2 = DeviceAuthDialog.this;
                deviceAuthDialog2.m22916a(deviceAuthDialog2.f33978m);
            }
        });
        builder.create().show();
    }

    /* renamed from: a */
    static /* synthetic */ void m22918a(DeviceAuthDialog deviceAuthDialog, String str, C10213ae.C10215b c10215b, String str2, Date date, Date date2) {
        deviceAuthDialog.f33971f.onSuccess(str2, C10181g.m23286m(), str, c10215b.f33667a, c10215b.f33668b, c10215b.f33669c, EnumC10164c.DEVICE_AUTH, date, null, date2);
        deviceAuthDialog.getDialog().dismiss();
    }

    /* renamed from: a */
    static /* synthetic */ void m22917a(DeviceAuthDialog deviceAuthDialog, final String str, Long l, Long l2) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,permissions,name");
        Date date = l.longValue() != 0 ? new Date(new Date().getTime() + (l.longValue() * 1000)) : null;
        Date date2 = null;
        if (l2.longValue() != 0) {
            date2 = null;
            if (l2 != null) {
                date2 = new Date(l2.longValue() * 1000);
            }
        }
        final Date date3 = date;
        final Date date4 = date2;
        new GraphRequest(new AccessToken(str, C10181g.m23286m(), "0", null, null, null, null, date, null, date2), "me", bundle, EnumC10352k.GET, new GraphRequest.AbstractC9933b() { // from class: com.facebook.login.DeviceAuthDialog.8
            @Override // com.facebook.GraphRequest.AbstractC9933b
            /* renamed from: a */
            public final void mo22725a(C10351j c10351j) {
                if (DeviceAuthDialog.this.f33972g.get()) {
                    return;
                }
                if (c10351j.f33960b != null) {
                    DeviceAuthDialog.this.m22923a(c10351j.f33960b.getException());
                    return;
                }
                try {
                    JSONObject jSONObject = c10351j.f33959a;
                    String string = jSONObject.getString("id");
                    C10213ae.C10215b m23206b = C10213ae.m23206b(jSONObject);
                    String string2 = jSONObject.getString("name");
                    C10177a.m23311c(DeviceAuthDialog.this.f33975j.getUserCode());
                    if (!C10306q.m23028a(C10181g.m23286m()).f33846c.contains(EnumC10211ad.RequireConfirm) || DeviceAuthDialog.this.f33977l) {
                        DeviceAuthDialog.m22918a(DeviceAuthDialog.this, string, m23206b, str, date3, date4);
                        return;
                    }
                    DeviceAuthDialog.this.f33977l = true;
                    DeviceAuthDialog.m22919a(DeviceAuthDialog.this, string, m23206b, str, string2, date3, date4);
                } catch (JSONException e) {
                    DeviceAuthDialog.this.m22923a(new FacebookException(e));
                }
            }
        }).m23778c();
    }

    /* renamed from: b */
    private static int m22913b(boolean z) {
        return z ? C10165a.C10170e.com_facebook_smart_device_dialog_fragment : C10165a.C10170e.com_facebook_device_auth_dialog_fragment;
    }

    /* renamed from: e */
    public void m22909e() {
        this.f33975j.setLastPoll(new Date().getTime());
        this.f33973h = m22905g().m23778c();
    }

    /* renamed from: f */
    public void m22907f() {
        this.f33974i = DeviceAuthMethodHandler.getBackgroundExecutor().schedule(new Runnable() { // from class: com.facebook.login.DeviceAuthDialog.4
            @Override // java.lang.Runnable
            public final void run() {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    DeviceAuthDialog.this.m22909e();
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        }, this.f33975j.getInterval(), TimeUnit.SECONDS);
    }

    /* renamed from: g */
    private GraphRequest m22905g() {
        Bundle bundle = new Bundle();
        bundle.putString("code", this.f33975j.getRequestCode());
        return new GraphRequest(null, "device/login_status", bundle, EnumC10352k.POST, new GraphRequest.AbstractC9933b() { // from class: com.facebook.login.DeviceAuthDialog.5
            @Override // com.facebook.GraphRequest.AbstractC9933b
            /* renamed from: a */
            public final void mo22725a(C10351j c10351j) {
                if (DeviceAuthDialog.this.f33972g.get()) {
                    return;
                }
                FacebookRequestError facebookRequestError = c10351j.f33960b;
                if (facebookRequestError == null) {
                    try {
                        JSONObject jSONObject = c10351j.f33959a;
                        DeviceAuthDialog.m22917a(DeviceAuthDialog.this, jSONObject.getString(AccessToken.ACCESS_TOKEN_KEY), Long.valueOf(jSONObject.getLong(AccessToken.EXPIRES_IN_KEY)), Long.valueOf(jSONObject.optLong(AccessToken.DATA_ACCESS_EXPIRATION_TIME)));
                        return;
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.m22923a(new FacebookException(e));
                        return;
                    }
                }
                int subErrorCode = facebookRequestError.getSubErrorCode();
                if (subErrorCode != 1349152) {
                    switch (subErrorCode) {
                        case 1349172:
                        case 1349174:
                            DeviceAuthDialog.this.m22907f();
                            return;
                        case 1349173:
                            DeviceAuthDialog.this.m22911d();
                            return;
                        default:
                            DeviceAuthDialog.this.m22923a(c10351j.f33960b.getException());
                            return;
                    }
                }
                if (DeviceAuthDialog.this.f33975j != null) {
                    C10177a.m23311c(DeviceAuthDialog.this.f33975j.getUserCode());
                }
                if (DeviceAuthDialog.this.f33978m == null) {
                    DeviceAuthDialog.this.m22911d();
                    return;
                }
                DeviceAuthDialog deviceAuthDialog = DeviceAuthDialog.this;
                deviceAuthDialog.m22916a(deviceAuthDialog.f33978m);
            }
        });
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final Dialog mo9884a(Bundle bundle) {
        Dialog dialog = new Dialog(getActivity(), C10165a.C10172g.com_facebook_auth_dialog) { // from class: com.facebook.login.DeviceAuthDialog.1
            @Override // android.app.Dialog
            public final void onBackPressed() {
                super.onBackPressed();
            }
        };
        dialog.setContentView(m22915a(C10177a.m23313b() && !this.f33977l));
        return dialog;
    }

    /* renamed from: a */
    protected final View m22915a(boolean z) {
        View inflate = getActivity().getLayoutInflater().inflate(m22913b(z), (ViewGroup) null);
        this.f33968c = inflate.findViewById(C10165a.C10169d.progress_bar);
        this.f33969d = (TextView) inflate.findViewById(C10165a.C10169d.confirmation_code);
        ((Button) inflate.findViewById(C10165a.C10169d.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    DeviceAuthDialog.this.m22911d();
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        });
        TextView textView = (TextView) inflate.findViewById(C10165a.C10169d.com_facebook_device_auth_instructions);
        this.f33970e = textView;
        textView.setText(Html.fromHtml(getString(C10165a.C10171f.com_facebook_device_auth_instructions)));
        return inflate;
    }

    /* renamed from: a */
    protected final void m22923a(FacebookException facebookException) {
        if (!this.f33972g.compareAndSet(false, true)) {
            return;
        }
        if (this.f33975j != null) {
            C10177a.m23311c(this.f33975j.getUserCode());
        }
        this.f33971f.onError(facebookException);
        getDialog().dismiss();
    }

    /* renamed from: a */
    public final void m22916a(LoginClient.Request request) {
        this.f33978m = request;
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
        bundle.putString(AccessToken.ACCESS_TOKEN_KEY, C10218af.m23176b() + "|" + C10218af.m23174c());
        bundle.putString("device_info", C10177a.m23315a());
        new GraphRequest(null, "device/login", bundle, EnumC10352k.POST, new GraphRequest.AbstractC9933b() { // from class: com.facebook.login.DeviceAuthDialog.2
            @Override // com.facebook.GraphRequest.AbstractC9933b
            /* renamed from: a */
            public final void mo22725a(C10351j c10351j) {
                if (DeviceAuthDialog.this.f33976k) {
                    return;
                }
                if (c10351j.f33960b != null) {
                    DeviceAuthDialog.this.m22923a(c10351j.f33960b.getException());
                    return;
                }
                JSONObject jSONObject = c10351j.f33959a;
                RequestState requestState = new RequestState();
                try {
                    requestState.setUserCode(jSONObject.getString("user_code"));
                    requestState.setRequestCode(jSONObject.getString("code"));
                    requestState.setInterval(jSONObject.getLong("interval"));
                    DeviceAuthDialog.this.m22922a(requestState);
                } catch (JSONException e) {
                    DeviceAuthDialog.this.m22923a(new FacebookException(e));
                }
            }
        }).m23778c();
    }

    /* renamed from: d */
    protected final void m22911d() {
        if (!this.f33972g.compareAndSet(false, true)) {
            return;
        }
        if (this.f33975j != null) {
            C10177a.m23311c(this.f33975j.getUserCode());
        }
        DeviceAuthMethodHandler deviceAuthMethodHandler = this.f33971f;
        if (deviceAuthMethodHandler != null) {
            deviceAuthMethodHandler.onCancel();
        }
        getDialog().dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f33971f = (DeviceAuthMethodHandler) ((C10383e) ((FacebookActivity) getActivity()).f33052b).f34008a.getCurrentHandler();
        if (bundle != null && (requestState = (RequestState) bundle.getParcelable("request_state")) != null) {
            m22922a(requestState);
        }
        return onCreateView;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f33976k = true;
        this.f33972g.set(true);
        super.onDestroyView();
        if (this.f33973h != null) {
            this.f33973h.cancel(true);
        }
        if (this.f33974i != null) {
            this.f33974i.cancel(true);
        }
        this.f33968c = null;
        this.f33969d = null;
        this.f33970e = null;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (!this.f33976k) {
            m22911d();
        }
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f33975j != null) {
            bundle.putParcelable("request_state", this.f33975j);
        }
    }
}
