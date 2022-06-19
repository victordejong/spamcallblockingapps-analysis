package p068d2;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: d2.l */
/* loaded from: classes-dex2jar.jar:d2/l.class */
public class C2357l {

    /* renamed from: b */
    public String[] f8368b;

    /* renamed from: d */
    public C2267f4 f8370d;

    /* renamed from: a */
    public String f8367a = "";

    /* renamed from: c */
    public C2200d4 f8369c = new C2200d4();

    public C2357l() {
        C2267f4 c2267f4 = new C2267f4();
        this.f8370d = c2267f4;
        C2227e4.m3744i(c2267f4, "origin_store", "google");
        if (C2408t.m3589f()) {
            C2230f1 m3591d = C2408t.m3591d();
            if (!(m3591d.f8103r != null)) {
                return;
            }
            m3631a(m3591d.m3715s().f8367a);
            m3630b(m3591d.m3715s().f8368b);
        }
    }

    /* renamed from: a */
    public C2357l m3631a(String str) {
        if (str == null) {
            return this;
        }
        this.f8367a = str;
        C2227e4.m3744i(this.f8370d, "app_id", str);
        return this;
    }

    /* renamed from: b */
    public C2357l m3630b(String... strArr) {
        if (strArr == null) {
            return this;
        }
        this.f8368b = strArr;
        this.f8369c = new C2200d4();
        for (String str : strArr) {
            this.f8369c.m3763b(str);
        }
        return this;
    }

    /* renamed from: c */
    public void m3629c(Context context) {
        String str;
        Boolean bool;
        boolean optBoolean;
        ExecutorService executorService = C2315i3.f8262a;
        try {
            str = context.getPackageName();
        } catch (Exception e) {
            str = "unknown";
        }
        C2227e4.m3744i(this.f8370d, "bundle_id", str);
        C2267f4 c2267f4 = this.f8370d;
        Objects.requireNonNull(c2267f4);
        try {
            synchronized (c2267f4.f8159a) {
                bool = Boolean.valueOf(c2267f4.f8159a.getBoolean("use_forced_controller"));
            }
        } catch (JSONException e2) {
            bool = null;
        }
        if (bool != null) {
            C2441x3.f8627R = bool.booleanValue();
        }
        C2267f4 c2267f42 = this.f8370d;
        synchronized (c2267f42.f8159a) {
            optBoolean = c2267f42.f8159a.optBoolean("use_staging_launch_server");
        }
        if (optBoolean) {
            C2230f1.f8061X = "https://adc3-launch-staging.adcolony.com/v4/launch";
        }
        String m3656o = C2315i3.m3656o(context, "IABUSPrivacy_String");
        String m3656o2 = C2315i3.m3656o(context, "IABTCF_TCString");
        int i = -1;
        boolean z = false;
        try {
            i = C2315i3.m3651t(context).getInt("IABTCF_gdprApplies", -1);
        } catch (ClassCastException e3) {
            C0082b.m8750l(0, 1, "Key IABTCF_gdprApplies in SharedPreferences does not have an int value.", true);
        }
        if (m3656o != null) {
            C2227e4.m3744i(this.f8370d, "ccpa_consent_string", m3656o);
        }
        if (m3656o2 != null) {
            C2227e4.m3744i(this.f8370d, "gdpr_consent_string", m3656o2);
        }
        if (i == 0 || i == 1) {
            C2267f4 c2267f43 = this.f8370d;
            if (i == 1) {
                z = true;
            }
            C2227e4.m3739n(c2267f43, "gdpr_required", z);
        }
    }

    /* renamed from: d */
    public JSONObject m3628d() {
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, AppMeasurementSdk.ConditionalUserProperty.NAME, this.f8370d.m3697o("mediation_network"));
        C2227e4.m3744i(c2267f4, "version", this.f8370d.m3697o("mediation_network_version"));
        return c2267f4.f8159a;
    }

    /* renamed from: e */
    public JSONObject m3627e() {
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, AppMeasurementSdk.ConditionalUserProperty.NAME, this.f8370d.m3697o("plugin"));
        C2227e4.m3744i(c2267f4, "version", this.f8370d.m3697o("plugin_version"));
        return c2267f4.f8159a;
    }
}
