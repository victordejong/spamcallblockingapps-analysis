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
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import com.facebook.AccessToken;
import com.facebook.FacebookActivity;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.C2283m;
import com.facebook.common.R$id;
import com.facebook.common.R$layout;
import com.facebook.common.R$string;
import com.facebook.common.R$style;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import com.facebook.internal.C2466p;
import com.facebook.internal.EnumC2403e0;
import com.facebook.login.LoginClient;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.AsyncTaskC6144q;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
import p081h.p154f.C6148s;
import p081h.p154f.EnumC6114c;
import p081h.p154f.EnumC6149t;
import p081h.p154f.p155d0.p156a.C6121a;
/* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog.class */
public class DeviceAuthDialog extends DialogFragment {

    /* renamed from: a */
    public View f3239a;

    /* renamed from: b */
    public TextView f3240b;

    /* renamed from: c */
    public TextView f3241c;

    /* renamed from: d */
    public DeviceAuthMethodHandler f3242d;

    /* renamed from: f */
    public volatile AsyncTaskC6144q f3244f;

    /* renamed from: g */
    public volatile ScheduledFuture f3245g;

    /* renamed from: h */
    public volatile RequestState f3246h;

    /* renamed from: i */
    public Dialog f3247i;

    /* renamed from: e */
    public AtomicBoolean f3243e = new AtomicBoolean();

    /* renamed from: j */
    public boolean f3248j = false;

    /* renamed from: k */
    public boolean f3249k = false;

    /* renamed from: l */
    public LoginClient.Request f3250l = null;

    /* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$RequestState.class */
    public static class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new C2508a();

        /* renamed from: a */
        public String f3251a;

        /* renamed from: b */
        public String f3252b;

        /* renamed from: c */
        public String f3253c;

        /* renamed from: d */
        public long f3254d;

        /* renamed from: e */
        public long f3255e;

        /* renamed from: com.facebook.login.DeviceAuthDialog$RequestState$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$RequestState$a.class */
        public static final class C2508a implements Parcelable.Creator<RequestState> {
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
            this.f3251a = parcel.readString();
            this.f3252b = parcel.readString();
            this.f3253c = parcel.readString();
            this.f3254d = parcel.readLong();
            this.f3255e = parcel.readLong();
        }

        /* renamed from: a */
        public String m34498a() {
            return this.f3251a;
        }

        /* renamed from: a */
        public void m34497a(long j) {
            this.f3254d = j;
        }

        /* renamed from: a */
        public void m34496a(String str) {
            this.f3253c = str;
        }

        /* renamed from: b */
        public long m34495b() {
            return this.f3254d;
        }

        /* renamed from: b */
        public void m34494b(long j) {
            this.f3255e = j;
        }

        /* renamed from: b */
        public void m34493b(String str) {
            this.f3252b = str;
            this.f3251a = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", str);
        }

        /* renamed from: c */
        public String m34492c() {
            return this.f3253c;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: q */
        public String m34491q() {
            return this.f3252b;
        }

        /* renamed from: r */
        public boolean m34490r() {
            boolean z = false;
            if (this.f3255e == 0) {
                return false;
            }
            if ((new Date().getTime() - this.f3255e) - (this.f3254d * 1000) < 0) {
                z = true;
            }
            return z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f3251a);
            parcel.writeString(this.f3252b);
            parcel.writeString(this.f3253c);
            parcel.writeLong(this.f3254d);
            parcel.writeLong(this.f3255e);
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$a.class */
    public class C2509a implements GraphRequest.AbstractC2230f {
        public C2509a() {
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            if (!DeviceAuthDialog.this.f3248j) {
                if (sVar.m23705a() != null) {
                    DeviceAuthDialog.this.m34511a(sVar.m23705a().m35471q());
                    return;
                }
                JSONObject b = sVar.m23698b();
                RequestState requestState = new RequestState();
                try {
                    requestState.m34493b(b.getString("user_code"));
                    requestState.m34496a(b.getString("code"));
                    requestState.m34497a(b.getLong("interval"));
                    DeviceAuthDialog.this.m34519a(requestState);
                } catch (JSONException e) {
                    DeviceAuthDialog.this.m34511a(new C6131k(e));
                }
            }
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$b.class */
    public class View$OnClickListenerC2510b implements View.OnClickListener {
        public View$OnClickListenerC2510b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeviceAuthDialog.this.m34522K();
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$c.class */
    public class RunnableC2511c implements Runnable {
        public RunnableC2511c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DeviceAuthDialog.this.m34521L();
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$d.class */
    public class C2512d implements GraphRequest.AbstractC2230f {
        public C2512d() {
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            if (!DeviceAuthDialog.this.f3243e.get()) {
                FacebookRequestError a = sVar.m23705a();
                if (a != null) {
                    int t = a.m35468t();
                    if (t != 1349152) {
                        switch (t) {
                            case 1349172:
                            case 1349174:
                                DeviceAuthDialog.this.m34520M();
                                return;
                            case 1349173:
                                DeviceAuthDialog.this.m34522K();
                                return;
                            default:
                                DeviceAuthDialog.this.m34511a(sVar.m23705a().m35471q());
                                return;
                        }
                    } else {
                        if (DeviceAuthDialog.this.f3246h != null) {
                            C6121a.m23790a(DeviceAuthDialog.this.f3246h.m34491q());
                        }
                        if (DeviceAuthDialog.this.f3250l != null) {
                            DeviceAuthDialog deviceAuthDialog = DeviceAuthDialog.this;
                            deviceAuthDialog.m34512a(deviceAuthDialog.f3250l);
                            return;
                        }
                        DeviceAuthDialog.this.m34522K();
                    }
                } else {
                    try {
                        JSONObject b = sVar.m23698b();
                        DeviceAuthDialog.this.m34508a(b.getString("access_token"), Long.valueOf(b.getLong("expires_in")), Long.valueOf(b.optLong("data_access_expiration_time")));
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.m34511a(new C6131k(e));
                    }
                }
            }
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$e.class */
    public class DialogInterface$OnClickListenerC2513e implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC2513e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            DeviceAuthDialog.this.f3247i.setContentView(DeviceAuthDialog.this.m34502e(false));
            DeviceAuthDialog deviceAuthDialog = DeviceAuthDialog.this;
            deviceAuthDialog.m34512a(deviceAuthDialog.f3250l);
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$f.class */
    public class DialogInterface$OnClickListenerC2514f implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f3261a;

        /* renamed from: b */
        public final /* synthetic */ C2408g0.C2413e f3262b;

        /* renamed from: c */
        public final /* synthetic */ String f3263c;

        /* renamed from: d */
        public final /* synthetic */ Date f3264d;

        /* renamed from: e */
        public final /* synthetic */ Date f3265e;

        public DialogInterface$OnClickListenerC2514f(String str, C2408g0.C2413e eVar, String str2, Date date, Date date2) {
            this.f3261a = str;
            this.f3262b = eVar;
            this.f3263c = str2;
            this.f3264d = date;
            this.f3265e = date2;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            DeviceAuthDialog.this.m34509a(this.f3261a, this.f3262b, this.f3263c, this.f3264d, this.f3265e);
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$g.class */
    public class C2515g implements GraphRequest.AbstractC2230f {

        /* renamed from: a */
        public final /* synthetic */ String f3267a;

        /* renamed from: b */
        public final /* synthetic */ Date f3268b;

        /* renamed from: c */
        public final /* synthetic */ Date f3269c;

        public C2515g(String str, Date date, Date date2) {
            this.f3267a = str;
            this.f3268b = date;
            this.f3269c = date2;
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            if (!DeviceAuthDialog.this.f3243e.get()) {
                if (sVar.m23705a() != null) {
                    DeviceAuthDialog.this.m34511a(sVar.m23705a().m35471q());
                    return;
                }
                try {
                    JSONObject b = sVar.m23698b();
                    String string = b.getString("id");
                    C2408g0.C2413e b2 = C2408g0.m34828b(b);
                    String string2 = b.getString("name");
                    C6121a.m23790a(DeviceAuthDialog.this.f3246h.m34491q());
                    if (!C2466p.m34636c(C6135n.m23745f()).m34655l().contains(EnumC2403e0.RequireConfirm) || DeviceAuthDialog.this.f3249k) {
                        DeviceAuthDialog.this.m34509a(string, b2, this.f3267a, this.f3268b, this.f3269c);
                        return;
                    }
                    DeviceAuthDialog.this.f3249k = true;
                    DeviceAuthDialog.this.m34510a(string, b2, this.f3267a, string2, this.f3268b, this.f3269c);
                } catch (JSONException e) {
                    DeviceAuthDialog.this.m34511a(new C6131k(e));
                }
            }
        }
    }

    /* renamed from: J */
    public final GraphRequest m34523J() {
        Bundle bundle = new Bundle();
        bundle.putString("code", this.f3246h.m34492c());
        return new GraphRequest(null, "device/login_status", bundle, EnumC6149t.POST, new C2512d());
    }

    /* renamed from: K */
    public void m34522K() {
        if (this.f3243e.compareAndSet(false, true)) {
            if (this.f3246h != null) {
                C6121a.m23790a(this.f3246h.m34491q());
            }
            DeviceAuthMethodHandler deviceAuthMethodHandler = this.f3242d;
            if (deviceAuthMethodHandler != null) {
                deviceAuthMethodHandler.m34485r();
            }
            this.f3247i.dismiss();
        }
    }

    /* renamed from: L */
    public final void m34521L() {
        this.f3246h.m34494b(new Date().getTime());
        this.f3244f = m34523J().m35430c();
    }

    /* renamed from: M */
    public final void m34520M() {
        this.f3245g = DeviceAuthMethodHandler.m34484s().schedule(new RunnableC2511c(), this.f3246h.m34495b(), TimeUnit.SECONDS);
    }

    /* renamed from: a */
    public final void m34519a(RequestState requestState) {
        this.f3246h = requestState;
        this.f3240b.setText(requestState.m34491q());
        this.f3241c.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, new BitmapDrawable(getResources(), C6121a.m23787c(requestState.m34498a())), (Drawable) null, (Drawable) null);
        this.f3240b.setVisibility(0);
        this.f3239a.setVisibility(8);
        if (!this.f3249k && C6121a.m23786d(requestState.m34491q())) {
            new C2283m(getContext()).m35294b("fb_smart_login_service");
        }
        if (requestState.m34490r()) {
            m34520M();
        } else {
            m34521L();
        }
    }

    /* renamed from: a */
    public void m34512a(LoginClient.Request request) {
        this.f3250l = request;
        Bundle bundle = new Bundle();
        bundle.putString("scope", TextUtils.join(",", request.m34439u()));
        String s = request.m34441s();
        if (s != null) {
            bundle.putString("redirect_uri", s);
        }
        String r = request.m34442r();
        if (r != null) {
            bundle.putString("target_user_id", r);
        }
        bundle.putString("access_token", C2416h0.m34794a() + "|" + C2416h0.m34788b());
        bundle.putString("device_info", C6121a.m23791a());
        new GraphRequest(null, "device/login", bundle, EnumC6149t.POST, new C2509a()).m35430c();
    }

    /* renamed from: a */
    public void m34511a(C6131k kVar) {
        if (this.f3243e.compareAndSet(false, true)) {
            if (this.f3246h != null) {
                C6121a.m23790a(this.f3246h.m34491q());
            }
            this.f3242d.m34489a(kVar);
            this.f3247i.dismiss();
        }
    }

    /* renamed from: a */
    public final void m34510a(String str, C2408g0.C2413e eVar, String str2, String str3, Date date, Date date2) {
        String string = getResources().getString(R$string.com_facebook_smart_login_confirmation_title);
        String string2 = getResources().getString(R$string.com_facebook_smart_login_confirmation_continue_as);
        String string3 = getResources().getString(R$string.com_facebook_smart_login_confirmation_cancel);
        String format = String.format(string2, str3);
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(string).setCancelable(true).setNegativeButton(format, new DialogInterface$OnClickListenerC2514f(str, eVar, str2, date, date2)).setPositiveButton(string3, new DialogInterface$OnClickListenerC2513e());
        builder.create().show();
    }

    /* renamed from: a */
    public final void m34509a(String str, C2408g0.C2413e eVar, String str2, Date date, Date date2) {
        this.f3242d.m34488a(str2, C6135n.m23745f(), str, eVar.m34800c(), eVar.m34802a(), eVar.m34801b(), EnumC6114c.DEVICE_AUTH, date, null, date2);
        this.f3247i.dismiss();
    }

    /* renamed from: a */
    public final void m34508a(String str, Long l, Long l2) {
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
        new GraphRequest(new AccessToken(str, C6135n.m23745f(), "0", null, null, null, null, date, null, date2), "me", bundle, EnumC6149t.GET, new C2515g(str, date, date2)).m35430c();
    }

    @LayoutRes
    /* renamed from: d */
    public int m34504d(boolean z) {
        return z ? R$layout.com_facebook_smart_device_dialog_fragment : R$layout.com_facebook_device_auth_dialog_fragment;
    }

    /* renamed from: e */
    public View m34502e(boolean z) {
        View inflate = getActivity().getLayoutInflater().inflate(m34504d(z), (ViewGroup) null);
        this.f3239a = inflate.findViewById(R$id.progress_bar);
        this.f3240b = (TextView) inflate.findViewById(R$id.confirmation_code);
        ((Button) inflate.findViewById(R$id.cancel_button)).setOnClickListener(new View$OnClickListenerC2510b());
        this.f3241c = (TextView) inflate.findViewById(R$id.com_facebook_device_auth_instructions);
        this.f3241c.setText(Html.fromHtml(getString(R$string.com_facebook_device_auth_instructions)));
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        this.f3247i = new Dialog(getActivity(), R$style.com_facebook_auth_dialog);
        this.f3247i.setContentView(m34502e(C6121a.m23789b() && !this.f3249k));
        return this.f3247i;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f3242d = (DeviceAuthMethodHandler) ((C2535e) ((FacebookActivity) getActivity()).m35482D()).m34386L().m34459r();
        if (!(bundle == null || (requestState = (RequestState) bundle.getParcelable("request_state")) == null)) {
            m34519a(requestState);
        }
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f3248j = true;
        this.f3243e.set(true);
        super.onDestroy();
        if (this.f3244f != null) {
            this.f3244f.cancel(true);
        }
        if (this.f3245g != null) {
            this.f3245g.cancel(true);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (!this.f3248j) {
            m34522K();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f3246h != null) {
            bundle.putParcelable("request_state", this.f3246h);
        }
    }
}
