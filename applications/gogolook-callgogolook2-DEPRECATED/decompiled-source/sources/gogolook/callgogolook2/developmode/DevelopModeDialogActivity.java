package gogolook.callgogolook2.developmode;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.annotation.NonNull;
import gogolook.callgogolook2.AbstractDialogActivity;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p564s.DialogC13566w;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/developmode/DevelopModeDialogActivity.class */
public class DevelopModeDialogActivity extends AbstractDialogActivity {

    /* renamed from: f */
    public DialogC13566w f10778f;

    /* renamed from: gogolook.callgogolook2.developmode.DevelopModeDialogActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/developmode/DevelopModeDialogActivity$a.class */
    public class DialogInterface$OnDismissListenerC4468a implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC4468a() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            DevelopModeDialogActivity.this.finish();
        }
    }

    /* renamed from: a */
    public static Intent m28589a(@NonNull Context context, boolean z) {
        Intent intent = new Intent(context, DevelopModeDialogActivity.class);
        intent.putExtra("bundle.key.is.init", z);
        return intent;
    }

    @Override // gogolook.callgogolook2.AbstractDialogActivity
    /* renamed from: a */
    public Dialog mo26021a(Activity activity) {
        if (!C13565v.m3921g().m3924e() && !C13565v.m3921g().m23335b()) {
            return null;
        }
        this.f10778f = new DialogC13566w(this, getIntent().getBooleanExtra("bundle.key.is.init", false));
        this.f10778f.setOnDismissListener(new DialogInterface$OnDismissListenerC4468a());
        return this.f10778f;
    }

    @Override // gogolook.callgogolook2.AbstractDialogActivity
    /* renamed from: c */
    public boolean mo28588c() {
        return false;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        DialogC13566w wVar = this.f10778f;
        if (wVar != null) {
            wVar.m3918a(this, i, i2, intent);
        }
    }
}
