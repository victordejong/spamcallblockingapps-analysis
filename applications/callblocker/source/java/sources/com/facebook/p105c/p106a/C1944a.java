package com.facebook.p105c.p106a;

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
import androidx.fragment.app.ActivityC0664d;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0662c;
import com.facebook.C1990i;
import com.facebook.C2102k;
import com.facebook.C2194n;
import com.facebook.EnumC2195o;
import com.facebook.common.C1974a;
import com.facebook.internal.C2084y;
import com.facebook.p103b.p104a.C1936a;
import com.facebook.p105c.p107b.AbstractC1955a;
import com.facebook.p105c.p107b.C1959c;
import com.facebook.p105c.p107b.C1966g;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.c.a.a */
/* loaded from: classes-dex2jar.jar:com/facebook/c/a/a.class */
public class C1944a extends DialogInterface$OnCancelListenerC0662c {

    /* renamed from: aj */
    private static ScheduledThreadPoolExecutor f5860aj;

    /* renamed from: ae */
    private ProgressBar f5861ae;

    /* renamed from: af */
    private TextView f5862af;

    /* renamed from: ag */
    private Dialog f5863ag;

    /* renamed from: ah */
    private volatile C1948a f5864ah;

    /* renamed from: ai */
    private volatile ScheduledFuture f5865ai;

    /* renamed from: ak */
    private AbstractC1955a f5866ak;

    /* renamed from: com.facebook.c.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/c/a/a$a.class */
    public static class C1948a implements Parcelable {
        public static final Parcelable.Creator<C1948a> CREATOR = new Parcelable.Creator<C1948a>() { // from class: com.facebook.c.a.a.a.1
            /* renamed from: a */
            public C1948a createFromParcel(Parcel parcel) {
                return new C1948a(parcel);
            }

            /* renamed from: a */
            public C1948a[] newArray(int i) {
                return new C1948a[i];
            }
        };

        /* renamed from: a */
        private String f5870a;

        /* renamed from: b */
        private long f5871b;

        C1948a() {
        }

        protected C1948a(Parcel parcel) {
            this.f5870a = parcel.readString();
            this.f5871b = parcel.readLong();
        }

        /* renamed from: a */
        public String m15784a() {
            return this.f5870a;
        }

        /* renamed from: a */
        public void m15783a(long j) {
            this.f5871b = j;
        }

        /* renamed from: a */
        public void m15782a(String str) {
            this.f5870a = str;
        }

        /* renamed from: b */
        public long m15781b() {
            return this.f5871b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f5870a);
            parcel.writeLong(this.f5871b);
        }
    }

    /* renamed from: a */
    private void m15795a(int i, Intent intent) {
        if (this.f5864ah != null) {
            C1936a.m15814c(this.f5864ah.m15784a());
        }
        C1990i c1990i = (C1990i) intent.getParcelableExtra("error");
        if (c1990i != null) {
            Toast.makeText(m19924p(), c1990i.m15704e(), 0).show();
        }
        if (m19914z()) {
            ActivityC0664d r = m19922r();
            r.setResult(i, intent);
            r.finish();
        }
    }

    /* renamed from: a */
    public void m15794a(C1948a c1948a) {
        this.f5864ah = c1948a;
        this.f5862af.setText(c1948a.m15784a());
        this.f5862af.setVisibility(0);
        this.f5861ae.setVisibility(8);
        this.f5865ai = m15785av().schedule(new Runnable() { // from class: com.facebook.c.a.a.3
            @Override // java.lang.Runnable
            public void run() {
                C1944a.this.f5863ag.dismiss();
            }
        }, c1948a.m15781b(), TimeUnit.SECONDS);
    }

    /* renamed from: a */
    public void m15789a(C1990i c1990i) {
        m15788as();
        Intent intent = new Intent();
        intent.putExtra("error", c1990i);
        m15795a(-1, intent);
    }

    /* renamed from: as */
    private void m15788as() {
        if (m19914z()) {
            m19918v().mo19803a().mo19661a(this).mo19657b();
        }
    }

    /* renamed from: at */
    private Bundle m15787at() {
        AbstractC1955a abstractC1955a = this.f5866ak;
        return abstractC1955a == null ? null : abstractC1955a instanceof C1959c ? C1954d.m15766a((C1959c) abstractC1955a) : abstractC1955a instanceof C1966g ? C1954d.m15765a((C1966g) abstractC1955a) : null;
    }

    /* renamed from: au */
    private void m15786au() {
        Bundle m15787at = m15787at();
        if (m15787at == null || m15787at.size() == 0) {
            m15789a(new C1990i(0, "", "Failed to get share content"));
        }
        m15787at.putString("access_token", C2084y.m15414b() + "|" + C2084y.m15411c());
        m15787at.putString("device_info", C1936a.m15818a());
        new C2102k(null, "device/share", m15787at, EnumC2195o.POST, new C2102k.AbstractC2108b() { // from class: com.facebook.c.a.a.2
            @Override // com.facebook.C2102k.AbstractC2108b
            /* renamed from: a */
            public void mo15229a(C2194n c2194n) {
                C1990i m14987a = c2194n.m14987a();
                if (m14987a != null) {
                    C1944a.this.m15789a(m14987a);
                    return;
                }
                JSONObject m14980b = c2194n.m14980b();
                C1948a c1948a = new C1948a();
                try {
                    c1948a.m15782a(m14980b.getString("user_code"));
                    c1948a.m15783a(m14980b.getLong("expires_in"));
                    C1944a.this.m15794a(c1948a);
                } catch (JSONException e) {
                    C1944a.this.m15789a(new C1990i(0, "", "Malformed server response"));
                }
            }
        }).m15292j();
    }

    /* renamed from: av */
    private static ScheduledThreadPoolExecutor m15785av() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (C1944a.class) {
            try {
                if (f5860aj == null) {
                    f5860aj = new ScheduledThreadPoolExecutor(1);
                }
                scheduledThreadPoolExecutor = f5860aj;
            } catch (Throwable th) {
                throw th;
            }
        }
        return scheduledThreadPoolExecutor;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1948a c1948a;
        View a = super.mo850a(layoutInflater, viewGroup, bundle);
        if (bundle != null && (c1948a = (C1948a) bundle.getParcelable("request_state")) != null) {
            m15794a(c1948a);
        }
        return a;
    }

    /* renamed from: a */
    public void m15790a(AbstractC1955a abstractC1955a) {
        this.f5866ak = abstractC1955a;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c
    /* renamed from: c */
    public Dialog mo3162c(Bundle bundle) {
        this.f5863ag = new Dialog(m19922r(), C1974a.C1980f.com_facebook_auth_dialog);
        View inflate = m19922r().getLayoutInflater().inflate(C1974a.C1978d.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        this.f5861ae = (ProgressBar) inflate.findViewById(C1974a.C1977c.progress_bar);
        this.f5862af = (TextView) inflate.findViewById(C1974a.C1977c.confirmation_code);
        ((Button) inflate.findViewById(C1974a.C1977c.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.c.a.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C1944a.this.f5863ag.dismiss();
            }
        });
        ((TextView) inflate.findViewById(C1974a.C1977c.com_facebook_device_auth_instructions)).setText(Html.fromHtml(m19959b(C1974a.C1979e.com_facebook_device_auth_instructions)));
        this.f5863ag.setContentView(inflate);
        m15786au();
        return this.f5863ag;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, androidx.fragment.app.Fragment
    /* renamed from: e */
    public void mo3147e(Bundle bundle) {
        super.mo3147e(bundle);
        if (this.f5864ah != null) {
            bundle.putParcelable("request_state", this.f5864ah);
        }
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0662c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.f5865ai != null) {
            this.f5865ai.cancel(true);
        }
        m15795a(-1, new Intent());
    }
}
