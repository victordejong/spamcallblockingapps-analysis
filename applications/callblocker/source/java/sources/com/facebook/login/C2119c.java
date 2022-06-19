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
import androidx.fragment.app.DialogInterface$OnCancelListenerC0662c;
import com.facebook.AsyncTaskC2115l;
import com.facebook.C1803a;
import com.facebook.C1990i;
import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.C2194n;
import com.facebook.EnumC1981d;
import com.facebook.EnumC2195o;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.common.C1974a;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
import com.facebook.internal.EnumC2078w;
import com.facebook.login.C2141j;
import com.facebook.p094a.C1927m;
import com.facebook.p103b.p104a.C1936a;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.login.c */
/* loaded from: classes-dex2jar.jar:com/facebook/login/c.class */
public class C2119c extends DialogInterface$OnCancelListenerC0662c {

    /* renamed from: ae */
    private View f6234ae;

    /* renamed from: af */
    private TextView f6235af;

    /* renamed from: ag */
    private TextView f6236ag;

    /* renamed from: ah */
    private C2129d f6237ah;

    /* renamed from: aj */
    private volatile AsyncTaskC2115l f6239aj;

    /* renamed from: ak */
    private volatile ScheduledFuture f6240ak;

    /* renamed from: al */
    private volatile C2127a f6241al;

    /* renamed from: am */
    private Dialog f6242am;

    /* renamed from: ai */
    private AtomicBoolean f6238ai = new AtomicBoolean();

    /* renamed from: an */
    private boolean f6243an = false;

    /* renamed from: ao */
    private boolean f6244ao = false;

    /* renamed from: ap */
    private C2141j.C2145c f6245ap = null;

    /* renamed from: com.facebook.login.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/c$a.class */
    public static class C2127a implements Parcelable {
        public static final Parcelable.Creator<C2127a> CREATOR = new Parcelable.Creator<C2127a>() { // from class: com.facebook.login.c.a.1
            /* renamed from: a */
            public C2127a createFromParcel(Parcel parcel) {
                return new C2127a(parcel);
            }

            /* renamed from: a */
            public C2127a[] newArray(int i) {
                return new C2127a[i];
            }
        };

        /* renamed from: a */
        private String f6261a;

        /* renamed from: b */
        private String f6262b;

        /* renamed from: c */
        private String f6263c;

        /* renamed from: d */
        private long f6264d;

        /* renamed from: e */
        private long f6265e;

        C2127a() {
        }

        protected C2127a(Parcel parcel) {
            this.f6261a = parcel.readString();
            this.f6262b = parcel.readString();
            this.f6263c = parcel.readString();
            this.f6264d = parcel.readLong();
            this.f6265e = parcel.readLong();
        }

        /* renamed from: a */
        public String m15228a() {
            return this.f6261a;
        }

        /* renamed from: a */
        public void m15227a(long j) {
            this.f6264d = j;
        }

        /* renamed from: a */
        public void m15226a(String str) {
            this.f6262b = str;
            this.f6261a = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", str);
        }

        /* renamed from: b */
        public String m15225b() {
            return this.f6262b;
        }

        /* renamed from: b */
        public void m15224b(long j) {
            this.f6265e = j;
        }

        /* renamed from: b */
        public void m15223b(String str) {
            this.f6263c = str;
        }

        /* renamed from: c */
        public String m15222c() {
            return this.f6263c;
        }

        /* renamed from: d */
        public long m15221d() {
            return this.f6264d;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: e */
        public boolean m15220e() {
            boolean z = false;
            if (this.f6265e != 0 && (new Date().getTime() - this.f6265e) - (this.f6264d * 1000) < 0) {
                z = true;
            }
            return z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f6261a);
            parcel.writeString(this.f6262b);
            parcel.writeString(this.f6263c);
            parcel.writeLong(this.f6264d);
            parcel.writeLong(this.f6265e);
        }
    }

    /* renamed from: a */
    public void m15253a(C2127a c2127a) {
        this.f6241al = c2127a;
        this.f6235af.setText(c2127a.m15225b());
        this.f6236ag.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, new BitmapDrawable(m19919u(), C1936a.m15815b(c2127a.m15228a())), (Drawable) null, (Drawable) null);
        this.f6235af.setVisibility(0);
        this.f6234ae.setVisibility(8);
        if (!this.f6244ao && C1936a.m15817a(c2127a.m15225b())) {
            new C1927m(m19924p()).m15860a("fb_smart_login_service");
        }
        if (c2127a.m15220e()) {
            m15240au();
        } else {
            m15241at();
        }
    }

    /* renamed from: a */
    public void m15245a(final String str, final C2079x.C2083b c2083b, final String str2, String str3, final Date date, final Date date2) {
        String string = m19919u().getString(C1974a.C1979e.com_facebook_smart_login_confirmation_title);
        String string2 = m19919u().getString(C1974a.C1979e.com_facebook_smart_login_confirmation_continue_as);
        String string3 = m19919u().getString(C1974a.C1979e.com_facebook_smart_login_confirmation_cancel);
        String format = String.format(string2, str3);
        AlertDialog.Builder builder = new AlertDialog.Builder(m19924p());
        builder.setMessage(string).setCancelable(true).setNegativeButton(format, new DialogInterface.OnClickListener() { // from class: com.facebook.login.c.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C2119c.this.m15244a(str, c2083b, str2, date, date2);
            }
        }).setPositiveButton(string3, new DialogInterface.OnClickListener() { // from class: com.facebook.login.c.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C2119c.this.f6242am.setContentView(C2119c.this.m15231l(false));
                C2119c.this.m15246a(C2119c.this.f6245ap);
            }
        });
        builder.create().show();
    }

    /* renamed from: a */
    public void m15244a(String str, C2079x.C2083b c2083b, String str2, Date date, Date date2) {
        this.f6237ah.m15216a(str2, C2095j.m15356l(), str, c2083b.m15423a(), c2083b.m15422b(), c2083b.m15421c(), EnumC1981d.DEVICE_AUTH, date, null, date2);
        this.f6242am.dismiss();
    }

    /* renamed from: a */
    public void m15243a(final String str, Long l, Long l2) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,permissions,name");
        Date date = l.longValue() != 0 ? new Date(new Date().getTime() + (l.longValue() * 1000)) : null;
        Date date2 = (l2.longValue() == 0 || l2 == null) ? null : new Date(l2.longValue() * 1000);
        final Date date3 = date;
        final Date date4 = date2;
        new C2102k(new C1803a(str, C2095j.m15356l(), "0", null, null, null, null, date, null, date2), "me", bundle, EnumC2195o.GET, new C2102k.AbstractC2108b() { // from class: com.facebook.login.c.7
            @Override // com.facebook.C2102k.AbstractC2108b
            /* renamed from: a */
            public void mo15229a(C2194n c2194n) {
                if (C2119c.this.f6238ai.get()) {
                    return;
                }
                if (c2194n.m14987a() != null) {
                    C2119c.this.m15254a(c2194n.m14987a().m15703f());
                    return;
                }
                try {
                    JSONObject m14980b = c2194n.m14980b();
                    String string = m14980b.getString("id");
                    C2079x.C2083b m15447b = C2079x.m15447b(m14980b);
                    String string2 = m14980b.getString("name");
                    C1936a.m15814c(C2119c.this.f6241al.m15225b());
                    if (!C2050m.m15586a(C2095j.m15356l()).m15600f().contains(EnumC2078w.RequireConfirm) || C2119c.this.f6244ao) {
                        C2119c.this.m15244a(string, m15447b, str, date3, date4);
                        return;
                    }
                    C2119c.this.f6244ao = true;
                    C2119c.this.m15245a(string, m15447b, str, string2, date3, date4);
                } catch (JSONException e) {
                    C2119c.this.m15254a(new FacebookException(e));
                }
            }
        }).m15292j();
    }

    /* renamed from: at */
    public void m15241at() {
        this.f6241al.m15224b(new Date().getTime());
        this.f6239aj = m15239av().m15292j();
    }

    /* renamed from: au */
    public void m15240au() {
        this.f6240ak = C2129d.m15213d().schedule(new Runnable() { // from class: com.facebook.login.c.3
            @Override // java.lang.Runnable
            public void run() {
                C2119c.this.m15241at();
            }
        }, this.f6241al.m15221d(), TimeUnit.SECONDS);
    }

    /* renamed from: av */
    private C2102k m15239av() {
        Bundle bundle = new Bundle();
        bundle.putString("code", this.f6241al.m15222c());
        return new C2102k(null, "device/login_status", bundle, EnumC2195o.POST, new C2102k.AbstractC2108b() { // from class: com.facebook.login.c.4
            @Override // com.facebook.C2102k.AbstractC2108b
            /* renamed from: a */
            public void mo15229a(C2194n c2194n) {
                if (C2119c.this.f6238ai.get()) {
                    return;
                }
                C1990i m14987a = c2194n.m14987a();
                if (m14987a == null) {
                    try {
                        JSONObject m14980b = c2194n.m14980b();
                        C2119c.this.m15243a(m14980b.getString("access_token"), Long.valueOf(m14980b.getLong("expires_in")), Long.valueOf(m14980b.optLong("data_access_expiration_time")));
                        return;
                    } catch (JSONException e) {
                        C2119c.this.m15254a(new FacebookException(e));
                        return;
                    }
                }
                switch (m14987a.m15706c()) {
                    case 1349152:
                        if (C2119c.this.f6241al != null) {
                            C1936a.m15814c(C2119c.this.f6241al.m15225b());
                        }
                        if (C2119c.this.f6245ap != null) {
                            C2119c.this.m15246a(C2119c.this.f6245ap);
                            return;
                        } else {
                            C2119c.this.m15242as();
                            return;
                        }
                    case 1349172:
                    case 1349174:
                        C2119c.this.m15240au();
                        return;
                    case 1349173:
                        C2119c.this.m15242as();
                        return;
                    default:
                        C2119c.this.m15254a(c2194n.m14987a().m15703f());
                        return;
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K */
    public void mo954K() {
        this.f6243an = true;
        this.f6238ai.set(true);
        super.mo954K();
        if (this.f6239aj != null) {
            this.f6239aj.cancel(true);
        }
        if (this.f6240ak != null) {
            this.f6240ak.cancel(true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C2127a c2127a;
        View a = super.mo850a(layoutInflater, viewGroup, bundle);
        this.f6237ah = (C2129d) ((C2150k) ((FacebookActivity) m19922r()).m16264h()).m15133f().m15171g();
        if (bundle != null && (c2127a = (C2127a) bundle.getParcelable("request_state")) != null) {
            m15253a(c2127a);
        }
        return a;
    }

    /* renamed from: a */
    protected void m15254a(FacebookException facebookException) {
        if (!this.f6238ai.compareAndSet(false, true)) {
            return;
        }
        if (this.f6241al != null) {
            C1936a.m15814c(this.f6241al.m15225b());
        }
        this.f6237ah.m15217a(facebookException);
        this.f6242am.dismiss();
    }

    /* renamed from: a */
    public void m15246a(C2141j.C2145c c2145c) {
        this.f6245ap = c2145c;
        Bundle bundle = new Bundle();
        bundle.putString("scope", TextUtils.join(",", c2145c.m15160a()));
        String m15152g = c2145c.m15152g();
        if (m15152g != null) {
            bundle.putString("redirect_uri", m15152g);
        }
        String m15151h = c2145c.m15151h();
        if (m15151h != null) {
            bundle.putString("target_user_id", m15151h);
        }
        bundle.putString("access_token", C2084y.m15414b() + "|" + C2084y.m15411c());
        bundle.putString("device_info", C1936a.m15818a());
        new C2102k(null, "device/login", bundle, EnumC2195o.POST, new C2102k.AbstractC2108b() { // from class: com.facebook.login.c.1
            @Override // com.facebook.C2102k.AbstractC2108b
            /* renamed from: a */
            public void mo15229a(C2194n c2194n) {
                if (C2119c.this.f6243an) {
                    return;
                }
                if (c2194n.m14987a() != null) {
                    C2119c.this.m15254a(c2194n.m14987a().m15703f());
                    return;
                }
                JSONObject m14980b = c2194n.m14980b();
                C2127a c2127a = new C2127a();
                try {
                    c2127a.m15226a(m14980b.getString("user_code"));
                    c2127a.m15223b(m14980b.getString("code"));
                    c2127a.m15227a(m14980b.getLong("interval"));
                    C2119c.this.m15253a(c2127a);
                } catch (JSONException e) {
                    C2119c.this.m15254a(new FacebookException(e));
                }
            }
        }).m15292j();
    }

    /* renamed from: as */
    protected void m15242as() {
        if (!this.f6238ai.compareAndSet(false, true)) {
            return;
        }
        if (this.f6241al != null) {
            C1936a.m15814c(this.f6241al.m15225b());
        }
        if (this.f6237ah != null) {
            this.f6237ah.m15214c();
        }
        this.f6242am.dismiss();
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c
    /* renamed from: c */
    public Dialog mo3162c(Bundle bundle) {
        this.f6242am = new Dialog(m19922r(), C1974a.C1980f.com_facebook_auth_dialog);
        this.f6242am.setContentView(m15231l(C1936a.m15816b() && !this.f6244ao));
        return this.f6242am;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, androidx.fragment.app.Fragment
    /* renamed from: e */
    public void mo3147e(Bundle bundle) {
        super.mo3147e(bundle);
        if (this.f6241al != null) {
            bundle.putParcelable("request_state", this.f6241al);
        }
    }

    /* renamed from: l */
    protected View m15231l(boolean z) {
        View inflate = m19922r().getLayoutInflater().inflate(m15230m(z), (ViewGroup) null);
        this.f6234ae = inflate.findViewById(C1974a.C1977c.progress_bar);
        this.f6235af = (TextView) inflate.findViewById(C1974a.C1977c.confirmation_code);
        ((Button) inflate.findViewById(C1974a.C1977c.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.c.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C2119c.this.m15242as();
            }
        });
        this.f6236ag = (TextView) inflate.findViewById(C1974a.C1977c.com_facebook_device_auth_instructions);
        this.f6236ag.setText(Html.fromHtml(m19959b(C1974a.C1979e.com_facebook_device_auth_instructions)));
        return inflate;
    }

    /* renamed from: m */
    protected int m15230m(boolean z) {
        return z ? C1974a.C1978d.com_facebook_smart_device_dialog_fragment : C1974a.C1978d.com_facebook_device_auth_dialog_fragment;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (!this.f6243an) {
            m15242as();
        }
    }
}
