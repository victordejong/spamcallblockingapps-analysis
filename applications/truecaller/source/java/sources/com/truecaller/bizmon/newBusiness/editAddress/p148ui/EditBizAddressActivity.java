package com.truecaller.bizmon.newBusiness.editAddress.p148ui;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.truecaller.bizmon.C3478R;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p294b.p295a.p325h.p328c.View$OnClickListenerC7819a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/editAddress/ui/EditBizAddressActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onBackPressed", "()V", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.newBusiness.editAddress.ui.EditBizAddressActivity */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/editAddress/ui/EditBizAddressActivity.class */
public final class EditBizAddressActivity extends h {
    public void onBackPressed() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        View$OnClickListenerC7819a view$OnClickListenerC7819a = View$OnClickListenerC7819a.f24339f;
        String str = View$OnClickListenerC7819a.f24338e;
        View$OnClickListenerC7819a m42942K = supportFragmentManager.m42942K(View$OnClickListenerC7819a.f24338e);
        if (m42942K == null || !(m42942K instanceof View$OnClickListenerC7819a)) {
            EditBizAddressActivity.super.onBackPressed();
        } else {
            m42942K.m29273QA().m29262i();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        EditBizAddressActivity.super.onCreate(bundle);
        C18334g0.m15219l(this);
        setContentView(C3478R.layout.activity_edit_biz_address);
        if (bundle != null) {
            return;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        C26907a c26907a = new C26907a(supportFragmentManager);
        l.d(c26907a, "beginTransaction()");
        int i = C3478R.C3480id.fragment_container;
        View$OnClickListenerC7819a view$OnClickListenerC7819a = new View$OnClickListenerC7819a();
        View$OnClickListenerC7819a view$OnClickListenerC7819a2 = View$OnClickListenerC7819a.f24339f;
        String str = View$OnClickListenerC7819a.f24338e;
        c26907a.m1120m(i, view$OnClickListenerC7819a, View$OnClickListenerC7819a.f24338e);
        c26907a.mo1127f();
    }
}
