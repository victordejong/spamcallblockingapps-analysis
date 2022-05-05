package gogolook.callgogolook2.main.dialer;

import android.app.Dialog;
import android.content.Intent;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Unbinder;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p582w0.C14206w4;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialerShortcutIntroDialog.class */
public class DialerShortcutIntroDialog extends Dialog {

    /* renamed from: b */
    public static String f11128b = DialerShortcutIntroDialog.class.getSimpleName();

    /* renamed from: a */
    public Unbinder f11129a;
    @BindView(R$id.btn_later)
    public TextView mBtnLater;
    @BindView(R$id.btn_replace_now)
    public Button mBtnReplaceNow;
    @BindView(R$id.txv_intro_description)
    public TextView mTvDescription;
    @BindView(R$id.txv_intro_title)
    public TextView mTvTitle;

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.f11129a.unbind();
        super.dismiss();
    }

    @OnClick({R$id.btn_later})
    public void onLaterButtonClick() {
        dismiss();
    }

    @OnClick({R$id.btn_replace_now})
    public void onReplaceNowButtonClick() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        getContext().startActivity(intent);
        dismiss();
        Toast.makeText(MyApplication.m29013o(), C14206w4.m2225a((int) R$string.dialer_shortcut_tips_toast), 1).show();
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().setBackgroundDrawableResource(17170445);
        try {
            super.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
