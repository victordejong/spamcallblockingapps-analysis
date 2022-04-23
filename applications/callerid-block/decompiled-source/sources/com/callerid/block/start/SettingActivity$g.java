package com.callerid.block.start;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.callerid.block.bean.EZCountryCode;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.util.C1169c0;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1200o;
import com.callerid.block.util.C1216t0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$g.class */
class SettingActivity$g implements AdapterView.OnItemClickListener {

    /* renamed from: b */
    final /* synthetic */ SettingActivity f4947b;

    /* renamed from: com.callerid.block.start.SettingActivity$g$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$g$a.class */
    class RunnableC1157a implements Runnable {

        /* renamed from: com.callerid.block.start.SettingActivity$g$a$a */
        /* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$g$a$a.class */
        class RunnableC1158a implements Runnable {
            RunnableC1158a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent();
                intent.setAction("com.callerid.block.RELOAD_DATA_VEST");
                SettingActivity$g.this.f4947b.sendOrderedBroadcast(intent, null);
                String country_code = C1184j.m9826d(SettingActivity$g.this.f4947b.getApplicationContext()).getCountry_code();
                String iso_code = C1184j.m9826d(SettingActivity$g.this.f4947b.getApplicationContext()).getIso_code();
                if (country_code != null && !"".equals(country_code)) {
                    C1200o.m9644a(SettingActivity$g.this.f4947b.getApplicationContext(), "60", country_code, "android", C1216t0.m9552y(SettingActivity$g.this.f4947b.getApplicationContext()), C1216t0.m9605G(SettingActivity$g.this.f4947b.getApplicationContext()), iso_code.split("/")[0].toLowerCase());
                }
            }
        }

        RunnableC1157a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C0947d.m10470b().m10471a();
            } catch (Exception e) {
                e.printStackTrace();
            }
            SettingActivity$g.this.f4947b.runOnUiThread(new RunnableC1158a());
        }
    }

    SettingActivity$g(SettingActivity settingActivity) {
        this.f4947b = settingActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        String charSequence = SettingActivity.Y(this.f4947b).getText().toString();
        C1184j.m9822h(this.f4947b.getApplicationContext(), (EZCountryCode) SettingActivity.Z(this.f4947b).get(i));
        SettingActivity.Y(this.f4947b).setText(C1184j.m9826d(this.f4947b).getCountry_name());
        if (!charSequence.equals(SettingActivity.Y(this.f4947b).getText().toString()) && C1216t0.m9590V(EZCallApplication.m10163c())) {
            try {
                C1169c0.m9902a().f4994a.execute(new RunnableC1157a());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        SettingActivity.a0(this.f4947b).dismiss();
    }
}
