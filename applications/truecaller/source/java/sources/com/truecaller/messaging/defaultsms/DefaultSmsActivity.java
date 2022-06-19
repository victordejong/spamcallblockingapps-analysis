package com.truecaller.messaging.defaultsms;

import android.app.role.RoleManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.defaultsms.DefaultSmsActivity;
import java.util.Objects;
import javax.inject.Inject;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7156p;
import p193e.p194a.p195a.p279r0.AbstractC7201a;
import p193e.p194a.p195a.p280s0.AbstractC7249d;
import p193e.p194a.p195a.p280s0.AbstractC7254f;
import p193e.p194a.p195a.p280s0.AbstractC7257i;
import p193e.p194a.p195a.p280s0.C7255g;
import p193e.p194a.p195a.p280s0.C7256h;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/defaultsms/DefaultSmsActivity.class */
public class DefaultSmsActivity extends h implements AbstractC7257i {

    /* renamed from: b */
    public static final /* synthetic */ int f13485b = 0;
    @Inject

    /* renamed from: a */
    public AbstractC7254f f13486a;

    /* renamed from: pa */
    public static Intent m34991pa(Context context, String str) {
        return m34990qa(context, str, null);
    }

    /* renamed from: qa */
    public static Intent m34990qa(Context context, String str, String str2) {
        Intent intent = new Intent(context, DefaultSmsActivity.class);
        intent.putExtra("AppUserInteraction.Context", str);
        intent.putExtra("DEFAULT_SMS_APP_URI_CONTEXT", str2);
        intent.putExtra("PREP_MESSAGE", (String) null);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p280s0.AbstractC7257i
    /* renamed from: I8 */
    public void mo29890I8() {
        Toast.makeText((Context) this, (int) C2752R.string.DefaultSmsRequestFailed, 0).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p280s0.AbstractC7257i
    /* renamed from: S9 */
    public void mo29889S9(String str) {
        C19291g.m13561c1(this, str, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p280s0.AbstractC7257i
    /* renamed from: b2 */
    public void mo29888b2() {
        setResult(0);
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p280s0.AbstractC7257i
    /* renamed from: b9 */
    public void mo29887b9() {
        try {
            RoleManager roleManager = (RoleManager) getSystemService("role");
            if (roleManager == null) {
                return;
            }
            startActivityForResult(roleManager.createRequestRoleIntent("android.app.role.SMS"), 1);
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            this.f13486a.mo29896Kj();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p280s0.AbstractC7257i
    /* renamed from: d2 */
    public void mo29886d2(String str) {
        g$a g_a = new g$a(this);
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f156f = str;
        c0037b.f163m = false;
        g_a.m3660i(C2752R.string.DialogButtonGivePermission, new DialogInterface.OnClickListener() { // from class: e.a.a.s0.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DefaultSmsActivity.this.f13486a.mo29897Jj();
            }
        });
        g_a.m3662g(2131888483, new DialogInterface.OnClickListener() { // from class: e.a.a.s0.c
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DefaultSmsActivity.this.f13486a.mo29898Ij();
            }
        });
        g_a.m3668a().show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p280s0.AbstractC7257i
    /* renamed from: e2 */
    public void mo29885e2(int i) {
        int i2 = i == 1 ? 2131886703 : 2131886702;
        g$a g_a = new g$a(this);
        g_a.m3664e(i2);
        g_a.f70854a.f163m = false;
        g_a.m3660i(C2752R.string.EnablePermissionManuallyBtn, new DialogInterface.OnClickListener() { // from class: e.a.a.s0.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                DefaultSmsActivity.this.f13486a.mo29899Hj();
            }
        });
        g_a.m3668a().show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p280s0.AbstractC7257i
    /* renamed from: n2 */
    public void mo29884n2() {
        Toast.makeText((Context) this, (int) C2752R.string.DefaultSmsChangeInDeviceSettings, 1).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p280s0.AbstractC7257i
    /* renamed from: na */
    public boolean mo29883na(int i) {
        boolean z = false;
        if (i != 1) {
            try {
                Intent intent = new Intent();
                intent.setClassName("com.coloros.safecenter", "com.coloros.safecenter.permission.PermissionManagerActivity");
                startActivity(intent);
                z = true;
            } catch (RuntimeException e) {
            }
            return z;
        }
        Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
        try {
            intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
            intent2.putExtra("extra_pkgname", getPackageName());
            startActivity(intent2);
        } catch (RuntimeException e2) {
            try {
                intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
                startActivity(intent2);
            } catch (RuntimeException e3) {
                try {
                    startActivity(C19291g.m13506v(this));
                } catch (RuntimeException e4) {
                    AssertionUtil.reportThrowableButNeverCrash(e4);
                }
            }
        }
        z = true;
        return z;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        DefaultSmsActivity.super.onActivityResult(i, i2, intent);
        this.f13486a.mo29891q(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C7255g c7255g;
        DefaultSmsActivity.super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        C17422k.m16069l(getTheme());
        String stringExtra = getIntent().getStringExtra("AppUserInteraction.Context");
        String stringExtra2 = getIntent().getStringExtra("DEFAULT_SMS_APP_URI_CONTEXT");
        AssertionUtil.isNotNull(stringExtra, new String[0]);
        String stringExtra3 = getIntent().getStringExtra("PREP_MESSAGE");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC7201a mo12277n4 = mo10154s.mo12277n4();
        Objects.requireNonNull(mo12277n4, "Cannot return null from a non-@Nullable component method");
        AbstractC19230g mo12512W = mo10154s.mo12512W();
        Objects.requireNonNull(mo12512W, "Cannot return null from a non-@Nullable component method");
        AbstractC19854f<AbstractC19463a0> mo12217s = mo10154s.mo12217s();
        Objects.requireNonNull(mo12217s, "Cannot return null from a non-@Nullable component method");
        AbstractC6392i0 mo12565S = mo10154s.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        AbstractC19219a0 mo11647c = mo10154s.mo11647c();
        Objects.requireNonNull(mo11647c, "Cannot return null from a non-@Nullable component method");
        AbstractC7156p mo12347i1 = mo10154s.mo12347i1();
        Objects.requireNonNull(mo12347i1, "Cannot return null from a non-@Nullable component method");
        AbstractC7249d mo12167v7 = mo10154s.mo12167v7();
        Objects.requireNonNull(mo12167v7, "Cannot return null from a non-@Nullable component method");
        AbstractC19510i0 mo12264o4 = mo10154s.mo12264o4();
        Objects.requireNonNull(mo12264o4, "Cannot return null from a non-@Nullable component method");
        String str = Build.MANUFACTURER;
        if (!mo12565S.mo31217E0()) {
            boolean z = false;
            if (str.equalsIgnoreCase("xiaomi")) {
                z = false;
                if (Build.VERSION.SDK_INT < 24) {
                    z = true;
                }
            }
            if (z) {
                c7255g = new C7255g(mo12277n4, mo12512W, stringExtra, mo12217s, mo12565S, str, mo11647c, mo12347i1, mo12167v7, mo12264o4, stringExtra2, stringExtra3);
                this.f13486a = c7255g;
                c7255g.mo9029Y0(this);
            }
        }
        c7255g = new C7256h(mo12277n4, mo12512W, stringExtra, mo12217s, mo12565S, mo11647c, mo12347i1, mo12167v7, mo12264o4, stringExtra2, stringExtra3);
        this.f13486a = c7255g;
        c7255g.mo9029Y0(this);
    }

    public void onDestroy() {
        this.f13486a.mo9806c();
        DefaultSmsActivity.super.onDestroy();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        DefaultSmsActivity.super.onRequestPermissionsResult(i, strArr, iArr);
        this.f13486a.mo29895Lj(strArr, iArr);
    }

    public void onResume() {
        DefaultSmsActivity.super.onResume();
        this.f13486a.onResume();
    }

    @Override // p193e.p194a.p195a.p280s0.AbstractC7257i
    /* renamed from: w2 */
    public void mo29882w2() {
        try {
            Intent intent = new Intent("android.provider.Telephony.ACTION_CHANGE_DEFAULT");
            intent.putExtra("package", "com.truecaller");
            startActivityForResult(intent, 1);
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            this.f13486a.mo29896Kj();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p280s0.AbstractC7257i
    /* renamed from: z8 */
    public void mo29881z8() {
        setResult(-1);
        finish();
    }
}
