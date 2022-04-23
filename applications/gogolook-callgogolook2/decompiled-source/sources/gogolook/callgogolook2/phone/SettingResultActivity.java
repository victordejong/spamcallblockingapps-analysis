package gogolook.callgogolook2.phone;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.core.role.RoleManagerCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.MDialogActivity;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import p459j.p460a.p463b0.p468u.C11396a;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/SettingResultActivity.class */
public class SettingResultActivity extends Activity {

    /* renamed from: a */
    public long f12138a = 0;

    /* renamed from: gogolook.callgogolook2.phone.SettingResultActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/SettingResultActivity$a.class */
    public class DialogInterface$OnClickListenerC4927a implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4927a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ActivityCompat.requestPermissions(SettingResultActivity.this, C13878a3.m3210h().f31182b, 1002);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.SettingResultActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/SettingResultActivity$b.class */
    public class DialogInterface$OnClickListenerC4928b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4928b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SettingResultActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.SettingResultActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/SettingResultActivity$c.class */
    public class DialogInterface$OnClickListenerC4929c implements DialogInterface.OnClickListener {

        /* renamed from: gogolook.callgogolook2.phone.SettingResultActivity$c$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/SettingResultActivity$c$a.class */
        public class RunnableC4930a implements Runnable {
            public RunnableC4930a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent(MyApplication.m29013o(), MDialogActivity.class);
                intent.putExtra("message", SettingResultActivity.this.getString(R$string.permission_setting_guide));
                intent.putExtra("negative", SettingResultActivity.this.getString(R$string.permission_setting_guide_action));
                intent.setFlags(1350598656);
                C14300r.m1653a("MDialogActivity", intent);
                C14217x3.m2156c(SettingResultActivity.this, intent);
                SettingResultActivity.this.finish();
            }
        }

        public DialogInterface$OnClickListenerC4929c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13878a3.m3248a((Activity) SettingResultActivity.this);
            new Handler().postDelayed(new RunnableC4930a(), 1000L);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.SettingResultActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/SettingResultActivity$d.class */
    public class DialogInterface$OnClickListenerC4931d implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4931d() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SettingResultActivity.this.finish();
        }
    }

    /* renamed from: a */
    public static Intent m26751a(Context context, int i, Integer num) {
        Intent intent = new Intent(context, SettingResultActivity.class);
        intent.putExtra("key.request.code", i);
        if (num != null) {
            intent.putExtra("key.gf.source", num);
        }
        return intent;
    }

    /* renamed from: a */
    public static Intent m26750a(Context context, String str, Integer num) {
        Intent a = m26751a(context, 1001, num);
        if (str != null) {
            a.putExtra("key.role.name", str);
        }
        return a;
    }

    /* renamed from: a */
    public static void m26752a(Context context, int i) {
        m26747b(context, i, (Integer) (-1));
    }

    /* renamed from: b */
    public static void m26747b(Context context, int i, Integer num) {
        C14217x3.m2156c(context, m26751a(context, i, num));
    }

    /* renamed from: b */
    public static void m26746b(Context context, String str, Integer num) {
        C14217x3.m2156c(context, m26750a(context, str, num));
    }

    /* renamed from: a */
    public final boolean m26749a(@NonNull String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == -1309649439) {
            if (str.equals(RoleManagerCompat.ROLE_CALL_SCREENING)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != 443215373) {
            if (hashCode == 666116809 && str.equals(RoleManagerCompat.ROLE_DIALER)) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals(RoleManagerCompat.ROLE_SMS)) {
                c = 2;
            }
            c = 65535;
        }
        if (c == 0) {
            boolean z = false;
            if (CallUtils.m26551c()) {
                z = false;
                if (CallUtils.m26561b(this, 1001)) {
                    z = true;
                }
            }
            return z;
        } else if (c == 1) {
            boolean z2 = false;
            if (CallUtils.m26598a()) {
                z2 = false;
                if (CallUtils.m26594a(this, 1001)) {
                    z2 = true;
                }
            }
            return z2;
        } else if (c != 2) {
            return false;
        } else {
            if (!C12810o.m5236i()) {
                boolean z3 = false;
                if (C12810o.m5230o()) {
                    z3 = false;
                    if (C12810o.m5270a(this, 1001)) {
                        z3 = true;
                    }
                }
                return z3;
            } else if (C13878a3.m3202p()) {
                return false;
            } else {
                ActivityCompat.requestPermissions(this, C13878a3.m3210h().f31182b, 1002);
                return true;
            }
        }
    }

    /* renamed from: a */
    public final boolean m26748a(@NonNull String str, boolean z, int i) {
        char c;
        int hashCode = str.hashCode();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        if (hashCode == -1309649439) {
            if (str.equals(RoleManagerCompat.ROLE_CALL_SCREENING)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != 443215373) {
            if (hashCode == 666116809 && str.equals(RoleManagerCompat.ROLE_DIALER)) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals(RoleManagerCompat.ROLE_SMS)) {
                c = 2;
            }
            c = 65535;
        }
        int i5 = 9;
        if (c == 0) {
            boolean h = CallUtils.m26536h();
            if (h) {
                C14687h.m862a(this, (int) R$string.default_app_successfully_enabled, 1).m858c();
            } else if (z) {
                C13878a3.m3238a(this, RoleManagerCompat.ROLE_DIALER, 1001);
                return false;
            }
            if (i != -1) {
                if (!h) {
                    i5 = 8;
                }
                C11396a.m9698a(1, i, i5);
            }
            if (h) {
                i3 = -1;
            }
            setResult(i3);
            return true;
        } else if (c == 1) {
            boolean p = CallUtils.m26528p();
            if (p) {
                C14687h.m862a(this, (int) R$string.default_app_successfully_enabled, 1).m858c();
            } else if (z) {
                C13878a3.m3238a(this, RoleManagerCompat.ROLE_CALL_SCREENING, 1001);
                return false;
            }
            if (i != -1) {
                if (!p) {
                    i5 = 8;
                }
                C11396a.m9698a(2, i, i5);
            }
            if (p) {
                i2 = -1;
            }
            setResult(i2);
            return true;
        } else if (c != 2) {
            return true;
        } else {
            boolean i6 = C12810o.m5236i();
            if (i6) {
                C14687h.m862a(this, (int) R$string.default_app_successfully_enabled, 1).m858c();
                C13915b3.m3055b("first_enable_default_sms", true);
                ActivityCompat.requestPermissions(this, C13878a3.m3210h().f31182b, 1002);
            } else if (z) {
                C13878a3.m3238a(this, RoleManagerCompat.ROLE_SMS, 1001);
                return false;
            }
            if (i != -1) {
                C14289m.m1867c(i, i6);
            }
            if (i6) {
                i4 = -1;
            }
            setResult(i4);
            return true;
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        int i3 = 0;
        boolean z = i2 == 0 && System.currentTimeMillis() - this.f12138a < 300;
        int intExtra = getIntent().getIntExtra("key.gf.source", -1);
        String stringExtra = getIntent().getStringExtra("key.role.name");
        if (i == 1000) {
            boolean e = C13878a3.m3215e(this);
            if (intExtra != -1) {
                C14289m.m1914a(intExtra, e ? 1 : 0);
            }
            if (e) {
                i3 = -1;
            }
            setResult(i3);
        } else if (i == 1001 && !TextUtils.isEmpty(stringExtra) && !m26748a(stringExtra, z, intExtra)) {
            return;
        }
        finish();
        if (isTaskRoot()) {
            Intent intent2 = new Intent(this, MainActivity.class);
            intent2.addFlags(67141632);
            startActivity(intent2);
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        C14300r.m1652b("SettingResultActivity", getIntent());
        int intExtra = getIntent().getIntExtra("key.request.code", -1);
        String stringExtra = getIntent().getStringExtra("key.role.name");
        boolean z = false;
        C14123p4.m2442a(getWindow(), 0);
        this.f12138a = System.currentTimeMillis();
        switch (intExtra) {
            case 1000:
                if (C14017g4.m2803u()) {
                    if (getIntent().getIntExtra("key.gf.source", -1) != 4) {
                        z = true;
                    }
                    startActivityForResult(C13878a3.m3237a(this, z), intExtra);
                    return;
                }
                finish();
                return;
            case 1001:
                if (TextUtils.isEmpty(stringExtra) || !m26749a(stringExtra)) {
                    finish();
                    return;
                }
                return;
            case 1002:
                ActivityCompat.requestPermissions(this, C13878a3.m3210h().f31182b, intExtra);
                return;
            default:
                finish();
                return;
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (1002 != i) {
            return;
        }
        if (strArr.length == 0) {
            finish();
            return;
        }
        String str = strArr[0];
        if (iArr[0] == 0) {
            setResult(-1);
            finish();
        } else if (ActivityCompat.shouldShowRequestPermissionRationale(this, str)) {
            DialogC14618f fVar = new DialogC14618f(this);
            fVar.setTitle(R$string.SMS_permission_dialog_title);
            fVar.m995c(R$string.SMS_permission_dialog_content);
            fVar.m999b(R$string.SMS_permission_dialog_action_button_yes, new DialogInterface$OnClickListenerC4927a());
            fVar.m1007a(R$string.SMS_permission_dialog_action_button_no, new DialogInterface$OnClickListenerC4928b());
            fVar.show();
        } else {
            DialogC14618f fVar2 = new DialogC14618f(this);
            fVar2.setTitle(R$string.SMS_permission_dialog_title_no_ask_again);
            fVar2.m995c(R$string.SMS_permission_dialog_content_no_ask_again);
            fVar2.m999b(R$string.button_go_to_setting, new DialogInterface$OnClickListenerC4929c());
            fVar2.m1007a(R$string.intro_cover_permission_confirm, new DialogInterface$OnClickListenerC4931d());
            fVar2.show();
        }
    }
}
