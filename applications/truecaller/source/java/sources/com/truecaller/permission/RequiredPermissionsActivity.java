package com.truecaller.permission;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.p183ui.TruecallerInit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import n3.b.a.h;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.C21846z1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1079n5.AbstractC18492b;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p851h5.AbstractC14965w;
import s1.z.c.l;
/* loaded from: classes11-dex2jar.jar:com/truecaller/permission/RequiredPermissionsActivity.class */
public class RequiredPermissionsActivity extends h implements View.OnClickListener {

    /* renamed from: c */
    public static final /* synthetic */ int f14129c = 0;

    /* renamed from: a */
    public AbstractC19219a0 f14130a;

    /* renamed from: b */
    public AbstractC14965w f14131b;

    /* renamed from: qa */
    public static void m34830qa(Context context) {
        Intent intent = new Intent(context, RequiredPermissionsActivity.class);
        intent.setFlags(268468224);
        context.startActivity(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: H8 */
    public final void m34832H8() {
        finish();
        if (getIntent().hasExtra("return_to_tab")) {
            TruecallerInit.m34567Va(this, getIntent().getStringExtra("return_to_tab"), false, "requiredPermission");
        } else {
            TruecallerInit.m34568Ua(this, "requiredPermission");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131362526) {
            ArrayList arrayList = new ArrayList();
            if (!m34831pa(arrayList, this.f14131b.mo19355b()) || !m34831pa(arrayList, this.f14131b.mo19346k()) || !m34831pa(arrayList, this.f14131b.mo19350g())) {
                return;
            }
            if (arrayList.isEmpty()) {
                m34832H8();
            } else {
                requestPermissions((String[]) arrayList.toArray(new String[arrayList.size()]), 1);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16068l0(this);
        RequiredPermissionsActivity.super.onCreate(bundle);
        setContentView((int) C2752R.layout.activity_required_permission);
        AbstractC15539j2 mo10154s = ((TrueApp) getApplicationContext()).mo10154s();
        this.f14130a = mo10154s.mo11647c();
        this.f14131b = mo10154s.mo12182u6();
        int i = AbstractC18492b.f52197b;
        l.e(this, AnalyticsConstants.CONTEXT);
        Object m3820x0 = C25225a.m3820x0(getApplicationContext(), AbstractC18492b.class);
        l.d(m3820x0, "EntryPointAccessors.from…GCEntryPoint::class.java)");
        if (!((AbstractC18492b) m3820x0).mo12579R().mo14860a()) {
            ((TextView) findViewById((int) C2752R.C2754id.phone_permission_details_text)).setText(C2752R.string.PhonePermissionDetailsGooglePlay);
        }
        findViewById((int) C2752R.C2754id.button_accept).setOnClickListener(this);
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        RequiredPermissionsActivity.super.onRequestPermissionsResult(i, strArr, iArr);
        C19291g.m13608M0(strArr, iArr);
    }

    public void onResume() {
        RequiredPermissionsActivity.super.onResume();
        if (!this.f14131b.mo19348i() || !this.f14131b.mo19341p()) {
            C22128a.m8596m1().mo13274b(C19597a.m13114b("requiredPermission"));
        } else {
            m34832H8();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: pa */
    public final boolean m34831pa(List<String> list, String... strArr) {
        if (!this.f14130a.mo13825h(strArr)) {
            for (String str : strArr) {
                if (C19291g.m13502w0(this, str)) {
                    new C21846z1((Context) this, (int) C2752R.string.PhonePermissionDenied).m8995cB(getSupportFragmentManager());
                    return false;
                }
            }
            list.addAll(Arrays.asList(strArr));
            return true;
        }
        return true;
    }
}
