package p459j.p460a.p564s;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.Toast;
import androidx.annotation.MainThread;
import androidx.appcompat.app.AlertDialog;
import com.mopub.common.AdType;
import gogolook.callgogolook2.gson.AdsSettingsKt;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.p074ad.AppAdsSettingsUtils;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p161a.p165k.C6232c;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0013\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007¨\u0006\u0012"}, m815d2 = {"Lgogolook/callgogolook2/developmode/AdDevelopTool;", "", "()V", "getAdnTestSource", "", "", "()[Ljava/lang/String;", "getAdsSettings", "", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", AdType.STATIC_NATIVE, "Lorg/json/JSONObject;", "getMobPubSdkInitTestSettingFlag", "getMobPubTestSettingFlag", "showAppAdsSettingsDialog", "context", "Landroid/content/Context;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.s.r */
/* loaded from: classes2-dex2jar.jar:j/a/s/r.class */
public final class C13466r {

    /* renamed from: a */
    public static final C13466r f30266a = new C13466r();

    /* renamed from: j.a.s.r$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/r$a.class */
    public static final class DialogInterface$OnClickListenerC13467a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC13467a f30267a = new DialogInterface$OnClickListenerC13467a();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    @MainThread
    /* renamed from: a */
    public static final void m3999a(Context context) {
        C15149k.m377b(context, "context");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ad_sms_request_timeout", AppAdsSettingsUtils.INSTANCE.m28782c());
            jSONObject.put("ad_call_log_content_feed", AppAdsSettingsUtils.INSTANCE.m28793a());
            jSONObject.put("ad_call_end_full", AppAdsSettingsUtils.INSTANCE.m28791a(AdUnit.CALL_END_FULL));
            jSONObject.put("mopub_init_scenario_application", AppAdsSettingsUtils.m28792a(2L));
            jSONObject.put("mopub_init_scenario_service", AppAdsSettingsUtils.m28792a(1L));
            f30266a.m3998a(AdUnit.ENTER, jSONObject);
            f30266a.m3998a(AdUnit.AFTER_DB_UPDATE, jSONObject);
            f30266a.m3998a(AdUnit.CALL_END_FULL, jSONObject);
            f30266a.m3998a(AdUnit.CALL_END_BANNER, jSONObject);
            f30266a.m3998a(AdUnit.CALL_END_DIALOG, jSONObject);
            f30266a.m3998a(AdUnit.SMS, jSONObject);
        } catch (JSONException e) {
            Toast.makeText(context, e.getMessage(), 0).show();
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, 2131952145);
        builder.setTitle("App Ads Settings");
        String jSONObject2 = jSONObject.toString();
        C15149k.m383a((Object) jSONObject2, "json.toString()");
        builder.setMessage(C13449h0.m4036a(jSONObject2));
        builder.setPositiveButton("Close", DialogInterface$OnClickListenerC13467a.f30267a);
        builder.show();
    }

    /* renamed from: a */
    public static final String[] m4000a() {
        return new String[]{C6232c.m23507e(), C6232c.m23511b(), C6232c.m23519a(), C6232c.m23509c(), C6232c.m23506f(), C6232c.m23501k(), C6232c.m23508d(), C6232c.m23505g(), C6232c.m23503i(), C6232c.m23504h(), C6232c.m23502j()};
    }

    /* renamed from: b */
    public static final String[] m3997b() {
        return new String[]{AdUtils.KEY_DEBUG_MOPUB_SDK_INIT_PRODUCTION, AdUtils.KEY_DEBUG_MOPUB_SDK_INIT_DEV};
    }

    /* renamed from: c */
    public static final String[] m3996c() {
        return new String[]{AdUtils.KEY_MOPUB_ADS_PRODUCTION_ADUNIT, AdUtils.KEY_MOPUB_ADS_DEV_ADUNIT};
    }

    /* renamed from: a */
    public final void m3998a(AdUnit adUnit, JSONObject jSONObject) {
        JSONObject jSONObject2;
        switch (C13465q.f30265a[adUnit.ordinal()]) {
            case 1:
            case 2:
            case 3:
                jSONObject2 = new JSONObject().put(AdsSettingsKt.KEY_ENABLE, AppAdsSettingsUtils.m28789a(adUnit, (Boolean) false)).put("remain_feq_pre_day", AppAdsSettingsUtils.m28784b(adUnit)).put("is_over_display_delay_days_for_new_users", AppAdsSettingsUtils.m28775e(adUnit));
                break;
            case 4:
            case 5:
                jSONObject2 = new JSONObject().put(AdsSettingsKt.KEY_ENABLE, AppAdsSettingsUtils.m28789a(adUnit, (Boolean) true)).put("remain_feq_pre_day", AppAdsSettingsUtils.m28784b(adUnit)).put("is_over_display_delay_days_for_new_users", AppAdsSettingsUtils.m28775e(adUnit));
                break;
            case 6:
                jSONObject2 = new JSONObject().put("layoutType", AppAdsSettingsUtils.m28781c(adUnit));
                break;
            default:
                jSONObject2 = null;
                break;
        }
        if (jSONObject2 != null) {
            jSONObject.put(adUnit.m28821a(), jSONObject2);
        }
    }
}
