package com.callerid.block.mvc.controller;

import android.app.role.RoleManager;
import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.widget.AdapterView;
import androidx.fragment.app.AbstractC0334p;
import androidx.fragment.app.Fragment;
import com.callerid.block.R$string;
import com.callerid.block.R$style;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.p060x0.C1230a;
import com.hzy.lib7z.ErrorCode;
import com.rey.material.app.C2824a;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/CallLogActivity$1.class */
class CallLogActivity$1 implements AdapterView.OnItemLongClickListener {

    /* renamed from: a */
    final /* synthetic */ CallLogActivity f4611a;

    CallLogActivity$1(CallLogActivity callLogActivity) {
        this.f4611a = callLogActivity;
    }

    /* renamed from: a */
    private void m10159a(int i) {
        1 r0 = new 1(this, (int) R$style.SimpleDialogLight, i);
        r0.m1517n(this.f4611a.getResources().getString(R$string.delete_dialog));
        r0.m1519g(this.f4611a.getResources().getString(R$string.cancel_dialog));
        r0.m1516o(((CallLogBean) CallLogActivity.Q(this.f4611a).get(i)).m10045o() + "\n" + ((CallLogBean) CallLogActivity.Q(this.f4611a).get(i)).m10059g());
        Fragment m1467K1 = C2824a.m1467K1(r0);
        AbstractC0334p m13186i = this.f4611a.v().m13186i();
        m13186i.m13093d(m1467K1, CallLogActivity$1.class.getSimpleName());
        m13186i.m13089h();
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        Intent intent;
        CallLogActivity callLogActivity;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23 || C1230a.m9509g(EZCallApplication.m10163c())) {
            m10159a(i);
            return true;
        }
        try {
            if (i2 >= 29) {
                RoleManager roleManager = (RoleManager) this.f4611a.getSystemService(RoleManager.class);
                if (roleManager != null && roleManager.isRoleAvailable("android.app.role.DIALER")) {
                    if (roleManager.isRoleHeld("android.app.role.DIALER")) {
                        if (C1227w.f5084a) {
                            C1227w.m9527a("default_dialer", "This app is the default dialer app");
                        }
                        m10159a(i);
                    } else {
                        if (C1227w.f5084a) {
                            C1227w.m9527a("default_dialer", "This app isn't the default dialer app");
                        }
                        intent = roleManager.createRequestRoleIntent("android.app.role.DIALER");
                        callLogActivity = this.f4611a;
                    }
                }
                C1186k.m9816c().m9812g("delete_request_default_dialer");
                return true;
            }
            intent = new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
            intent.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", C1216t0.m9552y(EZCallApplication.m10163c()));
            callLogActivity = this.f4611a;
            callLogActivity.startActivityForResult(intent, (int) ErrorCode.ERROR_CODE_PATH_ERROR);
            C1186k.m9816c().m9812g("delete_request_default_dialer");
            return true;
        } catch (Exception e) {
            m10159a(i);
            e.printStackTrace();
            return true;
        }
    }
}
