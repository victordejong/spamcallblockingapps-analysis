package com.truecaller.p183ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.truecaller.TrueApp;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.defaultsms.DefaultSmsActivity;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
/* renamed from: com.truecaller.ui.DefaultSmsAppSendActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/DefaultSmsAppSendActivity.class */
public class DefaultSmsAppSendActivity extends Activity {

    /* renamed from: a */
    public String f15549a;

    /* renamed from: a */
    public static void m34595a(Context context, String str) {
        try {
            context.startActivity(new Intent("android.intent.action.SENDTO", Uri.fromParts("smsto", str, null)));
        } catch (Exception e) {
            C10480a.m26057J1(e, "Failed to send SMS");
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            finish();
            m34595a(this, this.f15549a);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        this.f15549a = getIntent().getStringExtra("number");
        String stringExtra = getIntent().getStringExtra("AppUserInteraction.Context");
        AssertionUtil.isNotNull(stringExtra, new String[0]);
        if (TextUtils.isEmpty(this.f15549a)) {
            finish();
            return;
        }
        AbstractC19219a0 mo11647c = TrueApp.m36032b0().mo10154s().mo11647c();
        boolean z = false;
        if (TrueApp.m36032b0().mo10154s().mo12512W().mo13794c()) {
            z = false;
            if (mo11647c.mo13825h("android.permission.SEND_SMS")) {
                z = true;
            }
        }
        if (!z) {
            startActivityForResult(DefaultSmsActivity.m34991pa(this, stringExtra), 1);
            return;
        }
        finish();
        m34595a(this, this.f15549a);
    }
}
