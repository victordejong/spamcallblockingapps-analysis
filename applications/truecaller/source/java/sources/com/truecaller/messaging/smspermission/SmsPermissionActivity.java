package com.truecaller.messaging.smspermission;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.defaultsms.DefaultSmsActivity;
import com.truecaller.messaging.smspermission.SmsPermissionActivity;
import com.truecaller.p183ui.TruecallerInit;
import java.util.Objects;
import javax.inject.Inject;
import n3.b.a.h;
import p1727n3.p1807k.p1808a.C26413b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p195a.p228e1.AbstractC6039b;
import p193e.p194a.p195a.p228e1.AbstractC6041d;
import p193e.p194a.p195a.p228e1.C6040c;
import p193e.p194a.p851h5.AbstractC14965w;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/smspermission/SmsPermissionActivity.class */
public class SmsPermissionActivity extends h implements AbstractC6041d {

    /* renamed from: c */
    public static final /* synthetic */ int f13672c = 0;
    @Inject

    /* renamed from: a */
    public AbstractC6039b f13673a;
    @Inject

    /* renamed from: b */
    public AbstractC14965w f13674b;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p228e1.AbstractC6041d
    /* renamed from: A1 */
    public Intent mo31933A1() {
        return (Intent) getIntent().getParcelableExtra("success_intent");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p228e1.AbstractC6041d
    /* renamed from: R2 */
    public void mo31932R2(String str) {
        TruecallerInit.m34567Va(this, "messages", false, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p228e1.AbstractC6041d
    /* renamed from: j2 */
    public void mo31931j2(String str) {
        startActivity(DefaultSmsActivity.m34991pa(this, str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16068l0(this);
        SmsPermissionActivity.super.onCreate(bundle);
        setContentView((int) C2752R.layout.view_sms_app_big);
        String stringExtra = getIntent().getStringExtra("AppUserInteraction.Context");
        AssertionUtil.isNotNull(stringExtra, "Setting context should not be null. Use SmsPermissionActivity.createIntent().");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC19219a0 mo11647c = mo10154s.mo11647c();
        Objects.requireNonNull(mo11647c, "Cannot return null from a non-@Nullable component method");
        AbstractC19230g mo12512W = mo10154s.mo12512W();
        Objects.requireNonNull(mo12512W, "Cannot return null from a non-@Nullable component method");
        this.f13673a = new C6040c(mo11647c, mo12512W, stringExtra);
        AbstractC14965w mo12182u6 = mo10154s.mo12182u6();
        Objects.requireNonNull(mo12182u6, "Cannot return null from a non-@Nullable component method");
        this.f13674b = mo12182u6;
        this.f13673a.f57683a = this;
        findViewById((int) C2752R.C2754id.sms_app_button).setOnClickListener(new View.OnClickListener() { // from class: e.a.a.e1.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SmsPermissionActivity.this.f13673a.mo31934Hj();
            }
        });
    }

    public void onDestroy() {
        this.f13673a.f57683a = null;
        SmsPermissionActivity.super.onDestroy();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        SmsPermissionActivity.super.onRequestPermissionsResult(i, strArr, iArr);
        C19291g.m13608M0(strArr, iArr);
    }

    public void onResume() {
        SmsPermissionActivity.super.onResume();
        this.f13673a.onResume();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p228e1.AbstractC6041d
    /* renamed from: t0 */
    public void mo31930t0() {
        String[] mo19356a = this.f13674b.mo19356a();
        for (String str : mo19356a) {
            if (C19291g.m13501w1(this, str)) {
                return;
            }
        }
        for (String str2 : mo19356a) {
            if (C19291g.m13502w0(this, str2)) {
                C19291g.m13570Z0(this);
                return;
            }
        }
        C26413b.m1895g(this, mo19356a, 1);
    }
}
