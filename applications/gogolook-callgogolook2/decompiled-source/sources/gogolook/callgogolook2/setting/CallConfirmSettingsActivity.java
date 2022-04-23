package gogolook.callgogolook2.setting;

import android.os.Bundle;
import android.view.ContextMenu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckedTextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.phone.CallReceiver;
import gogolook.callgogolook2.view.SizedTextView;
import java.util.HashMap;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14133r0;
import p459j.p460a.p582w0.p590x4.C14299q;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CallConfirmSettingsActivity.class */
public class CallConfirmSettingsActivity extends WhoscallActivity {

    /* renamed from: e */
    public HashMap<Integer, String> f12781e;

    /* renamed from: f */
    public HashMap<Integer, String> f12782f;

    /* renamed from: g */
    public HashMap<String, String> f12783g;
    @BindView(R$id.cktxv_contact_popup_dialog)
    public CheckedTextView mCkTxvContactPopupDialog;
    @BindView(R$id.cktxv_stranger_popup_dialog)
    public CheckedTextView mCkTxvStrangerPopupDialog;
    @BindView(R$id.txv_dialog_mode_inapp_choose)
    public SizedTextView mTxvDialogModeInAppChoose;
    @BindView(R$id.txv_dialog_mode_outapp_choose)
    public SizedTextView mTxvDialogModeOutAppChoose;

    /* renamed from: a */
    public final void m26157a(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R$id.menu_dialog_mode_inapp_dual /* 2131362847 */:
            case R$id.menu_dialog_mode_outapp_dual /* 2131362850 */:
            default:
                return;
            case R$id.menu_dialog_mode_inapp_no_popup /* 2131362848 */:
                C14299q.m1776L0();
                return;
            case R$id.menu_dialog_mode_inapp_single /* 2131362849 */:
                C14299q.m1774M0();
                return;
            case R$id.menu_dialog_mode_outapp_no_popup /* 2131362851 */:
                C14299q.m1784H0();
                return;
            case R$id.menu_dialog_mode_outapp_single /* 2131362852 */:
                C14299q.m1782I0();
                return;
        }
    }

    /* renamed from: a */
    public final void m26156a(View view) {
        registerForContextMenu(view);
        openContextMenu(view);
        unregisterForContextMenu(view);
    }

    /* renamed from: c */
    public String m26155c(int i) {
        m26151o();
        return this.f12781e.get(Integer.valueOf(i));
    }

    /* renamed from: c */
    public String m26154c(String str) {
        m26149q();
        return this.f12783g.get(str);
    }

    /* renamed from: d */
    public String m26153d(int i) {
        m26150p();
        return this.f12782f.get(Integer.valueOf(i));
    }

    /* renamed from: d */
    public final void m26152d(String str) {
        if (str.equals("single")) {
            if (!C13915b3.m3062a("prefs_callconfirm_has_click_intro_dialog", false)) {
                C13915b3.m3055b("prefs_callconfirm_has_click_intro_dialog", true);
                C14037j3.m2731a().mo2704a(new C14133r0());
            }
            if (!C13915b3.m3062a("prefs_callconfirm_has_checked_disclaimer", false)) {
                CallReceiver.m26756b(this, null);
            }
        }
    }

    /* renamed from: o */
    public final void m26151o() {
        if (this.f12781e == null) {
            this.f12781e = new HashMap<>();
            this.f12781e.put(Integer.valueOf((int) R$id.menu_dialog_mode_inapp_no_popup), "no_popup");
            this.f12781e.put(Integer.valueOf((int) R$id.menu_dialog_mode_inapp_single), "single");
            this.f12781e.put(Integer.valueOf((int) R$id.menu_dialog_mode_inapp_dual), "dual");
        }
    }

    @OnClick({R$id.lnrlayout_dialog_mode_inapp, R$id.lnrlayout_dialog_mode_outapp, R$id.cktxv_stranger_popup_dialog, R$id.cktxv_contact_popup_dialog})
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.cktxv_contact_popup_dialog /* 2131362074 */:
                boolean isChecked = this.mCkTxvContactPopupDialog.isChecked();
                C13915b3.m3055b("prefs_callconfirm_popup_dialog_contact", !isChecked);
                this.mCkTxvContactPopupDialog.setChecked(!isChecked);
                if (!isChecked) {
                    C14299q.m1654z0();
                    return;
                } else {
                    C14299q.m1657y0();
                    return;
                }
            case R$id.cktxv_stranger_popup_dialog /* 2131362078 */:
                boolean isChecked2 = this.mCkTxvStrangerPopupDialog.isChecked();
                C13915b3.m3055b("prefs_callconfirm_popup_dialog_stranger", !isChecked2);
                this.mCkTxvStrangerPopupDialog.setChecked(!isChecked2);
                if (!isChecked2) {
                    C14299q.m1778K0();
                    return;
                } else {
                    C14299q.m1780J0();
                    return;
                }
            case R$id.lnrlayout_dialog_mode_inapp /* 2131362748 */:
            case R$id.lnrlayout_dialog_mode_outapp /* 2131362749 */:
                m26156a(view);
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        switch (itemId) {
            case R$id.menu_dialog_mode_inapp_dual /* 2131362847 */:
            case R$id.menu_dialog_mode_inapp_no_popup /* 2131362848 */:
            case R$id.menu_dialog_mode_inapp_single /* 2131362849 */:
                String c = m26155c(itemId);
                C13915b3.m3044e("prefs_callconfirm_dialog_mode_inapp", c);
                m26152d(c);
                this.mTxvDialogModeInAppChoose.setText(m26154c(c));
                m26147s();
                break;
            case R$id.menu_dialog_mode_outapp_dual /* 2131362850 */:
            case R$id.menu_dialog_mode_outapp_no_popup /* 2131362851 */:
            case R$id.menu_dialog_mode_outapp_single /* 2131362852 */:
                String d = m26153d(itemId);
                C13915b3.m3044e("prefs_callconfirm_dialog_mode_outapp", d);
                m26152d(d);
                this.mTxvDialogModeOutAppChoose.setText(m26154c(d));
                m26147s();
                break;
        }
        m26157a(menuItem);
        return super.onContextItemSelected(menuItem);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.callconfirm_settings_activity);
        C12484b i = m28683i();
        i.m6043a(true);
        i.m6032c(false);
        i.m6028d(true);
        i.m6038b(WhoscallActivity.m28686b(R$string.setting_call_confirm));
        ButterKnife.bind(this);
        m26148r();
        m26147s();
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        MenuInflater menuInflater = getMenuInflater();
        switch (view.getId()) {
            case R$id.lnrlayout_dialog_mode_inapp /* 2131362748 */:
                menuInflater.inflate(R$menu.context_callconfirm_settings_inapp, contextMenu);
                break;
            case R$id.lnrlayout_dialog_mode_outapp /* 2131362749 */:
                menuInflater.inflate(R$menu.context_callconfirm_settings_outapp, contextMenu);
                break;
        }
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    /* renamed from: p */
    public final void m26150p() {
        if (this.f12782f == null) {
            this.f12782f = new HashMap<>();
            this.f12782f.put(Integer.valueOf((int) R$id.menu_dialog_mode_outapp_no_popup), "no_popup");
            this.f12782f.put(Integer.valueOf((int) R$id.menu_dialog_mode_outapp_single), "single");
            this.f12782f.put(Integer.valueOf((int) R$id.menu_dialog_mode_outapp_dual), "dual");
        }
    }

    /* renamed from: q */
    public final void m26149q() {
        if (this.f12783g == null) {
            this.f12783g = new HashMap<>();
            this.f12783g.put("no_popup", WhoscallActivity.m28686b(R$string.setting_call_confirm_mode_no_popup));
            this.f12783g.put("single", WhoscallActivity.m28686b(R$string.setting_call_confirm_mode_popup));
            this.f12783g.put("dual", "Dual mode");
        }
    }

    /* renamed from: r */
    public final void m26148r() {
        this.mTxvDialogModeInAppChoose.setText(m26154c(C13915b3.m3056b("prefs_callconfirm_dialog_mode_inapp", "no_popup")));
        this.mTxvDialogModeOutAppChoose.setText(m26154c(C13915b3.m3056b("prefs_callconfirm_dialog_mode_outapp", "no_popup")));
        this.mCkTxvStrangerPopupDialog.setChecked(C13915b3.m3062a("prefs_callconfirm_popup_dialog_stranger", true));
        this.mCkTxvContactPopupDialog.setChecked(C13915b3.m3062a("prefs_callconfirm_popup_dialog_contact", false));
    }

    /* renamed from: s */
    public final void m26147s() {
        boolean equals = C13915b3.m3056b("prefs_callconfirm_dialog_mode_inapp", "no_popup").equals("no_popup");
        boolean equals2 = C13915b3.m3056b("prefs_callconfirm_dialog_mode_outapp", "no_popup").equals("no_popup");
        if (!equals || !equals2) {
            this.mCkTxvStrangerPopupDialog.setEnabled(true);
            this.mCkTxvContactPopupDialog.setEnabled(true);
            return;
        }
        this.mCkTxvStrangerPopupDialog.setEnabled(false);
        this.mCkTxvContactPopupDialog.setEnabled(false);
    }
}
