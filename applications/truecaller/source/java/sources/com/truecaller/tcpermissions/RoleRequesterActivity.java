package com.truecaller.tcpermissions;

import android.app.role.RoleManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p851h5.AbstractC14942i;
import p193e.p194a.p851h5.AbstractC14948o;
import p193e.p194a.p851h5.C14949p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0015\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0017¢\u0006\u0004\b\f\u0010\u000bJ)\u0010\u0010\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0014\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/truecaller/tcpermissions/RoleRequesterActivity;", "Ln3/b/a/h;", "Le/a/h5/o;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "requestCode", "R8", "(I)V", "z", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "finish", "()V", "onDestroy", "<init>", "tc-permissions_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes14-dex2jar.jar:com/truecaller/tcpermissions/RoleRequesterActivity.class */
public final class RoleRequesterActivity extends AbstractC14942i implements AbstractC14948o {
    @Inject

    /* renamed from: d */
    public C14949p f15333d;

    /* renamed from: pa */
    public static final Intent m34617pa(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent(context, RoleRequesterActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("request_role", "call_screening");
        return intent;
    }

    /* renamed from: qa */
    public static final Intent m34616qa(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent(context, RoleRequesterActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("request_role", "default_dialer");
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p851h5.AbstractC14948o
    /* renamed from: R8 */
    public void mo19392R8(int i) {
        Intent intent;
        if (Build.VERSION.SDK_INT >= 29) {
            Object systemService = getSystemService("role");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.role.RoleManager");
            intent = ((RoleManager) systemService).createRequestRoleIntent("android.app.role.DIALER");
        } else {
            intent = new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
            intent.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", getPackageName());
        }
        l.d(intent, "if (Build.VERSION.SDK_IN…)\n            }\n        }");
        try {
            startActivityForResult(intent, i);
        } catch (ActivityNotFoundException e) {
            C14949p c14949p = this.f15333d;
            if (c14949p == null) {
                l.l("presenter");
                throw null;
            }
            c14949p.f42681b = false;
            AbstractC14948o abstractC14948o = (AbstractC14948o) c14949p.f57683a;
            if (abstractC14948o == null) {
                return;
            }
            abstractC14948o.finish();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p851h5.AbstractC14948o
    public void finish() {
        RoleRequesterActivity.super.finish();
        overridePendingTransition(0, 0);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        RoleRequesterActivity.super.onActivityResult(i, i2, intent);
        C14949p c14949p = this.f15333d;
        if (c14949p == null) {
            l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c14949p);
        if (i != 19018) {
            return;
        }
        c14949p.f42681b = i2 == -1;
        AbstractC14948o abstractC14948o = (AbstractC14948o) c14949p.f57683a;
        if (abstractC14948o == null) {
            return;
        }
        abstractC14948o.finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        RoleRequesterActivity.super.onCreate(bundle);
        Resources.Theme theme = getTheme();
        l.d(theme, "theme");
        boolean z = false;
        C17422k.m16065n(theme, false, 1);
        C14949p c14949p = this.f15333d;
        if (c14949p == null) {
            l.l("presenter");
            throw null;
        }
        c14949p.f57683a = this;
        if (c14949p == null) {
            l.l("presenter");
            throw null;
        }
        if (bundle != null) {
            z = true;
        }
        String stringExtra = getIntent().getStringExtra("request_role");
        l.c(stringExtra);
        l.d(stringExtra, "intent.getStringExtra(REQUESTED_ROLE_EXTRA)!!");
        Objects.requireNonNull(c14949p);
        l.e(stringExtra, "requestedRole");
        AbstractC14948o abstractC14948o = (AbstractC14948o) c14949p.f57683a;
        if (abstractC14948o == null || z) {
            return;
        }
        int hashCode = stringExtra.hashCode();
        if (hashCode == 1715849179) {
            if (!stringExtra.equals("default_dialer")) {
                return;
            }
            abstractC14948o.mo19392R8(19018);
        } else if (hashCode != 1988986709 || !stringExtra.equals("call_screening")) {
        } else {
            abstractC14948o.mo19391z(19018);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onDestroy() {
        if (isFinishing()) {
            C14949p c14949p = this.f15333d;
            if (c14949p == null) {
                l.l("presenter");
                throw null;
            }
            c14949p.f42682c.mo19385f(c14949p.f42681b);
        }
        RoleRequesterActivity.super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p851h5.AbstractC14948o
    /* renamed from: z */
    public void mo19391z(int i) {
        Object systemService = getSystemService("role");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.role.RoleManager");
        Intent createRequestRoleIntent = ((RoleManager) systemService).createRequestRoleIntent("android.app.role.CALL_SCREENING");
        l.d(createRequestRoleIntent, "roleManager.createReques…ager.ROLE_CALL_SCREENING)");
        try {
            startActivityForResult(createRequestRoleIntent, i);
        } catch (ActivityNotFoundException e) {
            C14949p c14949p = this.f15333d;
            if (c14949p == null) {
                l.l("presenter");
                throw null;
            }
            c14949p.f42681b = false;
            AbstractC14948o abstractC14948o = (AbstractC14948o) c14949p.f57683a;
            if (abstractC14948o == null) {
                return;
            }
            abstractC14948o.finish();
        }
    }
}
