package p131c.p431l.p432a.p433a.p438e;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.netqin.p525cm.utils.NQSPFManager;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6851j;
import p131c.p431l.p432a.p468n.C6860r;
import p131c.p431l.p478c.C6871a;
/* renamed from: c.l.a.a.e.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/e/a.class */
public class AlertDialogC6710a extends AlertDialog implements View.OnClickListener {

    /* renamed from: a */
    public final Activity f20675a;

    public AlertDialogC6710a(Activity activity, int i) {
        super(activity);
        this.f20675a = activity;
        C6850i.m19580a("弹窗显示Self_AD:" + i);
        setCanceledOnTouchOutside(false);
        NQSPFManager.m3184a(this.f20675a).f35743b.m19568b((C6851j<NQSPFManager.EnumNetQin>) NQSPFManager.EnumNetQin.wifi_doctor_state, 2);
        C6850i.m19580a("Self_AD状态设置为:FIRST_SHOW");
    }

    /* renamed from: a */
    public static boolean m20012a(Context context) {
        return C6860r.m19541a(context, "com.security.wifi.boost");
    }

    /* renamed from: a */
    public final void m20013a() throws WindowManager.BadTokenException {
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.gravity = 17;
            attributes.dimAmount = 0.75f;
            attributes.width = C6860r.m19547a(309.0f);
            attributes.height = C6860r.m19547a(441.0f);
            window.setAttributes(attributes);
            window.setContentView(2131427459);
            window.findViewById(2131230892).setOnClickListener(this);
            window.findViewById(2131231091).setOnClickListener(this);
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131230892) {
            dismiss();
            this.f20675a.finish();
        } else if (id == 2131231091) {
            C6860r.m19540a(getContext(), "com.security.wifi.boost", "&referrer=utm_source%3DCallBlocker%26utm_medium%3DMainPage%26utm_campaign%3DExitPopup_ad");
            C6850i.m19579a("GA_REFERRER", "&referrer=utm_source%3DCallBlocker%26utm_medium%3DMainPage%26utm_campaign%3DExitPopup_ad");
            C6871a.m19506a(null, "Ad Clicks", "Main Page WiFi Doctor Popup Ad Click", 0L, null);
            dismiss();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            m20013a();
            C6871a.m19506a(null, "Ad Impressions", "Main Page WiFi Doctor Popup Ad Show", 0L, null);
        } catch (Exception e) {
        }
    }
}
