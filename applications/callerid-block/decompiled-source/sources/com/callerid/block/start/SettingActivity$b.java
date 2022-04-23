package com.callerid.block.start;

import android.view.View;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.p060x0.C1234b;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$b.class */
class SettingActivity$b implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ SettingActivity f4942b;

    /* renamed from: com.callerid.block.start.SettingActivity$b$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$b$a.class */
    class C1156a extends TimerTask {
        C1156a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            SettingActivity.U(SettingActivity$b.this.f4942b);
        }
    }

    SettingActivity$b(SettingActivity settingActivity) {
        this.f4942b = settingActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        C1186k kVar;
        C1186k.m9816c().m9812g("wa_seeting_click");
        if (!C1234b.m9501a(this.f4942b.getApplicationContext())) {
            SettingActivity.Q(this.f4942b, true);
            C1234b.m9500b(this.f4942b.getApplicationContext());
            SettingActivity.S(this.f4942b, new C1156a());
            SettingActivity.V(this.f4942b).schedule(SettingActivity.R(this.f4942b), 0L, 500L);
            return;
        }
        if (SettingActivity.W(this.f4942b).isChecked()) {
            SettingActivity.W(this.f4942b).setChecked(false);
            C1199n0.m9654w1(false);
            kVar = C1186k.m9816c();
            str = "whatsapp_identify_close";
        } else {
            SettingActivity.W(this.f4942b).setChecked(true);
            C1199n0.m9654w1(true);
            C1199n0.m9687l1(false);
            kVar = C1186k.m9816c();
            str = "whatsapp_identify_open";
        }
        kVar.m9812g(str);
    }
}
