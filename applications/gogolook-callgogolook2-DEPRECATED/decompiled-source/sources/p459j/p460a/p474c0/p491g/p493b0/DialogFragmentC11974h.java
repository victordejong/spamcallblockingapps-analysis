package p459j.p460a.p474c0.p491g.p493b0;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.EditText;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p474c0.p475c.C11560u;
import p459j.p460a.p474c0.p499h.AbstractC12178k;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: j.a.c0.g.b0.h */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/h.class */
public class DialogFragmentC11974h extends DialogFragment {

    /* renamed from: a */
    public EditText f26850a;

    /* renamed from: b */
    public int f26851b;

    /* renamed from: j.a.c0.g.b0.h$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/h$a.class */
    public class DialogInterface$OnClickListenerC11975a implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC11975a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            String obj = DialogFragmentC11974h.this.f26850a.getText().toString();
            DialogFragmentC11974h.this.dismiss();
            if (!TextUtils.isEmpty(obj)) {
                DialogFragmentC11974h.this.m7686a(obj);
                C12212s0.m6796a((int) R$string.toast_after_setting_default_sms_app_for_message_send);
            }
        }
    }

    /* renamed from: j.a.c0.g.b0.h$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/h$b.class */
    public class DialogInterface$OnClickListenerC11976b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC11976b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            DialogFragmentC11974h.this.dismiss();
        }
    }

    /* renamed from: a */
    public static DialogFragmentC11974h m7689a(int i) {
        DialogFragmentC11974h hVar = new DialogFragmentC11974h();
        hVar.f26851b = i;
        return hVar;
    }

    /* renamed from: a */
    public final void m7686a(String str) {
        AbstractC12178k.m6913a(this.f26851b).mo6903b(getString(R$string.mms_phone_number_pref_key), str);
        C11560u.m9140h();
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Activity activity = getActivity();
        this.f26850a = (EditText) LayoutInflater.from(activity).inflate(R$layout.enter_phone_number_view, (ViewGroup) null, false);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(R$string.enter_phone_number_title).setMessage(R$string.enter_phone_number_text).setView(this.f26850a).setNegativeButton(17039360, new DialogInterface$OnClickListenerC11976b()).setPositiveButton(17039370, new DialogInterface$OnClickListenerC11975a());
        return builder.create();
    }
}
