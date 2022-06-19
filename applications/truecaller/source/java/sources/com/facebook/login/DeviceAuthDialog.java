package com.facebook.login;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
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
import com.amazon.device.ads.DtbConstants;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.common.C1107R;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1172r0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.facebook.login.LoginClient;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import n3.r.a.k;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.AsyncTaskC23238j0;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23244l0;
import p193e.p1538j.EnumC23246m0;
import p193e.p1538j.EnumC23273w;
import p193e.p1538j.p1539w0.p1540a.C23274a;
import s1.z.c.l;
/* loaded from: classes2-dex2jar.jar:com/facebook/login/DeviceAuthDialog.class */
public class DeviceAuthDialog extends k {

    /* renamed from: l */
    public static final /* synthetic */ int f3337l = 0;

    /* renamed from: a */
    public View f3338a;

    /* renamed from: b */
    public TextView f3339b;

    /* renamed from: c */
    public TextView f3340c;

    /* renamed from: d */
    public DeviceAuthMethodHandler f3341d;

    /* renamed from: f */
    public volatile AsyncTaskC23238j0 f3343f;

    /* renamed from: g */
    public volatile ScheduledFuture f3344g;

    /* renamed from: h */
    public volatile RequestState f3345h;

    /* renamed from: e */
    public AtomicBoolean f3342e = new AtomicBoolean();

    /* renamed from: i */
    public boolean f3346i = false;

    /* renamed from: j */
    public boolean f3347j = false;

    /* renamed from: k */
    public LoginClient.Request f3348k = null;

    /* loaded from: classes2-dex2jar.jar:com/facebook/login/DeviceAuthDialog$RequestState.class */
    public static class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new C1237a();

        /* renamed from: a */
        public String f3349a;

        /* renamed from: b */
        public String f3350b;

        /* renamed from: c */
        public String f3351c;

        /* renamed from: d */
        public long f3352d;

        /* renamed from: e */
        public long f3353e;

        /* renamed from: com.facebook.login.DeviceAuthDialog$RequestState$a */
        /* loaded from: classes2-dex2jar.jar:com/facebook/login/DeviceAuthDialog$RequestState$a.class */
        public static final class C1237a implements Parcelable.Creator<RequestState> {
            @Override // android.os.Parcelable.Creator
            public RequestState createFromParcel(Parcel parcel) {
                return new RequestState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public RequestState[] newArray(int i) {
                return new RequestState[i];
            }
        }

        public RequestState() {
        }

        public RequestState(Parcel parcel) {
            this.f3349a = parcel.readString();
            this.f3350b = parcel.readString();
            this.f3351c = parcel.readString();
            this.f3352d = parcel.readLong();
            this.f3353e = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f3349a);
            parcel.writeString(this.f3350b);
            parcel.writeString(this.f3351c);
            parcel.writeLong(this.f3352d);
            parcel.writeLong(this.f3353e);
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/DeviceAuthDialog$a.class */
    public class DialogC1238a extends Dialog {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DialogC1238a(Context context, int i) {
            super(context, i);
            DeviceAuthDialog.this = r5;
        }

        @Override // android.app.Dialog
        public void onBackPressed() {
            Objects.requireNonNull(DeviceAuthDialog.this);
            super.onBackPressed();
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/DeviceAuthDialog$b.class */
    public class C1239b implements GraphRequest.AbstractC0922b {
        public C1239b() {
            DeviceAuthDialog.this = r4;
        }

        @Override // com.facebook.GraphRequest.AbstractC0922b
        /* renamed from: a */
        public void mo7325a(C23244l0 c23244l0) {
            DeviceAuthDialog deviceAuthDialog = DeviceAuthDialog.this;
            if (deviceAuthDialog.f3346i) {
                return;
            }
            FacebookRequestError facebookRequestError = c23244l0.f64335e;
            if (facebookRequestError != null) {
                deviceAuthDialog.m41605RA(facebookRequestError.f2537i);
                return;
            }
            JSONObject jSONObject = c23244l0.f64333c;
            RequestState requestState = new RequestState();
            try {
                String string = jSONObject.getString("user_code");
                requestState.f3350b = string;
                requestState.f3349a = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", string);
                requestState.f3351c = jSONObject.getString("code");
                requestState.f3352d = jSONObject.getLong("interval");
                DeviceAuthDialog.this.m41602UA(requestState);
            } catch (JSONException e) {
                DeviceAuthDialog.this.m41605RA(new C23222c0(e));
            }
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/DeviceAuthDialog$c.class */
    public class View$OnClickListenerC1240c implements View.OnClickListener {
        public View$OnClickListenerC1240c() {
            DeviceAuthDialog.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C1220a.m41623b(this)) {
                return;
            }
            try {
                DeviceAuthDialog.this.m41600f0();
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
            }
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$d */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/DeviceAuthDialog$d.class */
    public class RunnableC1241d implements Runnable {
        public RunnableC1241d() {
            DeviceAuthDialog.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C1220a.m41623b(this)) {
                return;
            }
            try {
                DeviceAuthDialog deviceAuthDialog = DeviceAuthDialog.this;
                int i = DeviceAuthDialog.f3337l;
                deviceAuthDialog.m41604SA();
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
            }
        }
    }

    /* renamed from: OA */
    public static void m41608OA(DeviceAuthDialog deviceAuthDialog, String str, Long l, Long l2) {
        Date date;
        Objects.requireNonNull(deviceAuthDialog);
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,permissions,name");
        Date date2 = null;
        if (l.longValue() != 0) {
            date = new Date((l.longValue() * 1000) + C22128a.m8638c());
        } else {
            date = null;
        }
        if (l2.longValue() != 0) {
            date2 = new Date(l2.longValue() * 1000);
        }
        String m7353b = C23228f0.m7353b();
        l.e(str, "accessToken");
        l.e(m7353b, "applicationId");
        l.e(DtbConstants.NETWORK_TYPE_UNKNOWN, "userId");
        new GraphRequest(new AccessToken(str, m7353b, DtbConstants.NETWORK_TYPE_UNKNOWN, null, null, null, null, date, null, date2, null, 1024), "me", bundle, EnumC23246m0.GET, new C1275n(deviceAuthDialog, str, date, date2)).m42016d();
    }

    /* renamed from: PA */
    public static void m41607PA(DeviceAuthDialog deviceAuthDialog, String str, C1168q0.C1170b c1170b, String str2, Date date, Date date2) {
        DeviceAuthMethodHandler deviceAuthMethodHandler = deviceAuthDialog.f3341d;
        String m7353b = C23228f0.m7353b();
        List<String> list = c1170b.f3198a;
        List<String> list2 = c1170b.f3199b;
        List<String> list3 = c1170b.f3200c;
        EnumC23273w enumC23273w = EnumC23273w.DEVICE_AUTH;
        Objects.requireNonNull(deviceAuthMethodHandler);
        l.e(str2, "accessToken");
        l.e(m7353b, "applicationId");
        l.e(str, "userId");
        AccessToken accessToken = new AccessToken(str2, m7353b, str, list, list2, list3, enumC23273w, date, null, date2, null, 1024);
        LoginClient.Request request = deviceAuthMethodHandler.m41582g().f3372g;
        l.e(accessToken, AnalyticsConstants.TOKEN);
        deviceAuthMethodHandler.m41582g().m41595d(new LoginClient.Result(request, LoginClient.Result.EnumC1248a.SUCCESS, accessToken, null, null));
        deviceAuthDialog.getDialog().dismiss();
    }

    /* renamed from: QA */
    public View m41606QA(boolean z) {
        View inflate = getActivity().getLayoutInflater().inflate(z ? C1107R.layout.com_facebook_smart_device_dialog_fragment : C1107R.layout.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        this.f3338a = inflate.findViewById(C1107R.C1109id.progress_bar);
        this.f3339b = (TextView) inflate.findViewById(C1107R.C1109id.confirmation_code);
        ((Button) inflate.findViewById(C1107R.C1109id.cancel_button)).setOnClickListener(new View$OnClickListenerC1240c());
        TextView textView = (TextView) inflate.findViewById(C1107R.C1109id.com_facebook_device_auth_instructions);
        this.f3340c = textView;
        textView.setText(Html.fromHtml(getString(C1107R.string.com_facebook_device_auth_instructions)));
        return inflate;
    }

    /* renamed from: RA */
    public void m41605RA(C23222c0 c23222c0) {
        if (!this.f3342e.compareAndSet(false, true)) {
            return;
        }
        if (this.f3345h != null) {
            C23274a.m7299a(this.f3345h.f3350b);
        }
        DeviceAuthMethodHandler deviceAuthMethodHandler = this.f3341d;
        Objects.requireNonNull(deviceAuthMethodHandler);
        l.e(c23222c0, "ex");
        LoginClient.Request request = deviceAuthMethodHandler.m41582g().f3372g;
        String message = c23222c0.getMessage();
        ArrayList arrayList = new ArrayList();
        if (message != null) {
            arrayList.add(message);
        }
        deviceAuthMethodHandler.m41582g().m41595d(new LoginClient.Result(request, LoginClient.Result.EnumC1248a.ERROR, null, TextUtils.join(": ", arrayList), null));
        getDialog().dismiss();
    }

    /* renamed from: SA */
    public final void m41604SA() {
        this.f3345h.f3353e = C22128a.m8638c();
        Bundle bundle = new Bundle();
        bundle.putString("code", this.f3345h.f3351c);
        this.f3343f = new GraphRequest(null, "device/login_status", bundle, EnumC23246m0.POST, new C1272k(this)).m42016d();
    }

    /* renamed from: TA */
    public final void m41603TA() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceAuthMethodHandler.class) {
            try {
                synchronized (DeviceAuthMethodHandler.f3358d) {
                    if (DeviceAuthMethodHandler.f3359e == null) {
                        DeviceAuthMethodHandler.f3359e = new ScheduledThreadPoolExecutor(1);
                    }
                    scheduledThreadPoolExecutor = DeviceAuthMethodHandler.f3359e;
                    if (scheduledThreadPoolExecutor == null) {
                        l.l("backgroundExecutor");
                        throw null;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f3344g = scheduledThreadPoolExecutor.schedule(new RunnableC1241d(), this.f3345h.f3352d, TimeUnit.SECONDS);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x019b  */
    /* renamed from: UA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m41602UA(com.facebook.login.DeviceAuthDialog.RequestState r10) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.DeviceAuthDialog.m41602UA(com.facebook.login.DeviceAuthDialog$RequestState):void");
    }

    /* renamed from: VA */
    public void m41601VA(LoginClient.Request request) {
        this.f3348k = request;
        Bundle bundle = new Bundle();
        bundle.putString("scope", TextUtils.join(",", request.f3379b));
        String str = request.f3384g;
        if (str != null) {
            bundle.putString("redirect_uri", str);
        }
        String str2 = request.f3386i;
        if (str2 != null) {
            bundle.putString("target_user_id", str2);
        }
        StringBuilder sb = new StringBuilder();
        C1172r0 c1172r0 = C1172r0.f3203a;
        C23228f0 c23228f0 = C23228f0.f64291a;
        sb.append(C23228f0.m7353b());
        sb.append("|");
        sb.append(C23228f0.m7351d());
        bundle.putString("access_token", sb.toString());
        String str3 = C23274a.f64428a;
        String str4 = null;
        if (!C1220a.m41623b(C23274a.class)) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put(AnalyticsConstants.DEVICE, Build.DEVICE);
                hashMap.put("model", Build.MODEL);
                str4 = new JSONObject(hashMap).toString();
            } catch (Throwable th) {
                C1220a.m41624a(th, C23274a.class);
            }
        }
        bundle.putString("device_info", str4);
        new GraphRequest(null, "device/login", bundle, EnumC23246m0.POST, new C1239b()).m42016d();
    }

    /* renamed from: f0 */
    public void m41600f0() {
        if (!this.f3342e.compareAndSet(false, true)) {
            return;
        }
        if (this.f3345h != null) {
            C23274a.m7299a(this.f3345h.f3350b);
        }
        DeviceAuthMethodHandler deviceAuthMethodHandler = this.f3341d;
        if (deviceAuthMethodHandler != null) {
            deviceAuthMethodHandler.m41582g().m41595d(new LoginClient.Result(deviceAuthMethodHandler.m41582g().f3372g, LoginClient.Result.EnumC1248a.CANCEL, null, "User canceled log in.", null));
        }
        getDialog().dismiss();
    }

    public Dialog onCreateDialog(Bundle bundle) {
        DialogC1238a dialogC1238a = new DialogC1238a(getActivity(), C1107R.style.com_facebook_auth_dialog);
        dialogC1238a.setContentView(m41606QA(C23274a.m7297c() && !this.f3347j));
        return dialogC1238a;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = DeviceAuthDialog.super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f3341d = (DeviceAuthMethodHandler) getActivity().f2526a.m41556OA().m41593f();
        if (bundle != null && (requestState = (RequestState) bundle.getParcelable("request_state")) != null) {
            m41602UA(requestState);
        }
        return onCreateView;
    }

    public void onDestroyView() {
        this.f3346i = true;
        this.f3342e.set(true);
        DeviceAuthDialog.super.onDestroyView();
        if (this.f3343f != null) {
            this.f3343f.cancel(true);
        }
        if (this.f3344g != null) {
            this.f3344g.cancel(true);
        }
        this.f3338a = null;
        this.f3339b = null;
        this.f3340c = null;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        DeviceAuthDialog.super.onDismiss(dialogInterface);
        if (!this.f3346i) {
            m41600f0();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        DeviceAuthDialog.super.onSaveInstanceState(bundle);
        if (this.f3345h != null) {
            bundle.putParcelable("request_state", this.f3345h);
        }
    }
}
