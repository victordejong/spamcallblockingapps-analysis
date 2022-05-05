package gogolook.callgogolook2.setting;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.CheckBox;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.StringRes;
import androidx.core.role.RoleManagerCompat;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import butterknife.BindView;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.block.BlockManageActivity;
import gogolook.callgogolook2.main.dialer.DialerUtils;
import gogolook.callgogolook2.phone.SettingResultActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.setting.SettingsActivity;
import gogolook.callgogolook2.util.ProgressWheel;
import gogolook.callgogolook2.view.DescriptionCheckedTextView;
import gogolook.callgogolook2.view.SizedTextView;
import gogolook.callgogolook2.view.ToastDialog;
import gogolook.callgogolook2.view.ToggleButton;
import io.realm.RealmObject;
import java.text.SimpleDateFormat;
import java.util.List;
import kotlinx.coroutines.DebugKt;
import p459j.p460a.p463b0.DialogC11125g;
import p459j.p460a.p463b0.p466s.C11243e;
import p459j.p460a.p463b0.p468u.C11396a;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p521j0.p522u.p523d.C12612g0;
import p459j.p460a.p521j0.p522u.p523d.C12629k0;
import p459j.p460a.p521j0.p529x.C12754a;
import p459j.p460a.p521j0.p529x.C12758e;
import p459j.p460a.p521j0.p529x.C12778k;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p563r0.C13392c;
import p459j.p460a.p563r0.DialogInterface$OnClickListenerC13393d;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14023h4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p587d5.C13981h;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p459j.p460a.p613z0.p617p.DialogC14669c;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p660rx.Observer;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action0;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity.class */
public class SettingsActivity extends WhoscallActivity {

    /* renamed from: e */
    public Context f12840e;
    @BindView(R$id.cb_incall_screen)
    public CheckBox mCbInCallScreen;
    @BindView(R$id.cktxv_block_call_waiting)
    public CheckedTextView mCkTxvBlockCallWaiting;
    @BindView(R$id.cktxv_block_notification)
    public CheckedTextView mCkTxvBlockNotification;
    @BindView(R$id.cktxv_contact_sms)
    public CheckedTextView mCkTxvContactSms;
    @BindView(R$id.cktxv_missing_call_badge)
    public CheckedTextView mCkTxvMissingCallBadge;
    @BindView(R$id.cktxv_newscenter_notification)
    public CheckedTextView mCkTxvNewsCenterNotification;
    @BindView(R$id.tv_smsdialog_popup_directly)
    public CheckedTextView mCkTxvSmsPopupDirectly;
    @BindView(R$id.txv_sms_urlscan)
    public CheckedTextView mCkTxvSmsUrlScan;
    @BindView(R$id.cktxv_stranger_sms)
    public CheckedTextView mCkTxvStrangerSms;
    @BindView(R$id.divider_phone)
    public View mDividerPhone;
    @BindView(R$id.imgv_contact_dialog)
    public ImageView mImgvContactDialog;
    @BindView(R$id.imgv_ctc_dialog)
    public ImageView mImgvCtcDialog;
    @BindView(R$id.imgv_stranger_dialog)
    public ImageView mImgvStrangerDialog;
    @BindView(R$id.imgv_sync_status)
    public ImageView mImgvSyncStatus;
    @BindView(R$id.ll_incall_screen)
    public LinearLayout mLlInCallScreen;
    @BindView(R$id.lnr_settings_default_sms_app)
    public LinearLayout mLlSettingDefaultSmsApp;
    @BindView(R$id.ll_suggest_settings)
    public LinearLayout mLlSuggestedSettings;
    @BindView(R$id.lnrlayout_ctc_dialog)
    public LinearLayout mLnrCtcDialog;
    @BindView(R$id.lnrlayout_setting_calldialog)
    public LinearLayout mLnrLayoutCallDialog;
    @BindView(R$id.lnrlayout_calldialog_position)
    public LinearLayout mLnrLayoutCallDialogPosition;
    @BindView(R$id.lnrlayout_contact_dialog)
    public LinearLayout mLnrLayoutContactDialog;
    @BindView(R$id.lnrlayout_ddd)
    public LinearLayout mLnrLayoutDdd;
    @BindView(R$id.lnrlayout_default_caller_id)
    public LinearLayout mLnrLayoutDefaultCallerId;
    @BindView(R$id.lnrlayout_default_phone)
    public LinearLayout mLnrLayoutDefaultPhone;
    @BindView(R$id.lnrlayout_dialer_shortcut)
    public LinearLayout mLnrLayoutDialerShortcut;
    @BindView(R$id.lnrlayout_font_size)
    public LinearLayout mLnrLayoutFontSize;
    @BindView(R$id.lnrlayout_inapp_disclosure)
    public LinearLayout mLnrLayoutInAppDisclosure;
    @BindView(R$id.lnrlayout_roaming)
    public LinearLayout mLnrLayoutRoaming;
    @BindView(R$id.lnr_settings_sms_popup)
    public LinearLayout mLnrLayoutSmsDialog;
    @BindView(R$id.lnrlayout_sms_feature)
    public LinearLayout mLnrLayoutSmsFeature;
    @BindView(R$id.lnr_settings_sms_filter)
    public LinearLayout mLnrLayoutSmsFilter;
    @BindView(R$id.lnrlayout_stranger_dialog)
    public LinearLayout mLnrLayoutStrangerDialog;
    @BindView(R$id.lnr_sync_and_delete)
    public LinearLayout mLnrLayoutSyncAndDelete;
    @BindView(R$id.pgw_waiting)
    public ProgressWheel mPgwWaiting;
    @BindView(R$id.scrlv_whole)
    public ScrollView mScrlvWhole;
    @BindView(R$id.setting_phone)
    public SizedTextView mSectionTitlePhone;
    @BindView(R$id.tb_enable_sms_filter)
    public ToggleButton mTbSmsFilter;
    @BindView(R$id.txv_do_not_disturb_when_driving)
    public TextView mTextViewDoNotDisturbWhenDriving;
    @BindView(R$id.v_top_divider)
    public View mTopDivider;
    @BindView(R$id.v_top_shadow)
    public View mTopShadow;
    @BindView(R$id.tv_calldialog_position)
    public TextView mTvCallDialogPosition;
    @BindView(R$id.tv_calldialog_position_choose)
    public TextView mTvCallDialogPositionChoose;
    @BindView(R$id.tv_incall_screen)
    public TextView mTvInCallScreen;
    @BindView(R$id.cktxv_auto_fetch_mms_image)
    public DescriptionCheckedTextView mTxvAutoFetchMmsImage;
    @BindView(R$id.cktxv_auto_fetch_mms_image_when_roaming)
    public DescriptionCheckedTextView mTxvAutoFetchMmsImageWhenRoaming;
    @BindView(R$id.txv_call_confirm)
    public TextView mTxvCallConfirm;
    @BindView(R$id.txv_ddd)
    public TextView mTxvDdd;
    @BindView(R$id.txv_ddd_choose)
    public TextView mTxvDddChoose;
    @BindView(R$id.txv_default_caller_id_desc)
    public SizedTextView mTxvDefaultCallerIdDesc;
    @BindView(R$id.txv_default_caller_id_title)
    public SizedTextView mTxvDefaultCallerIdTitle;
    @BindView(R$id.txv_default_phone_desc)
    public SizedTextView mTxvDefaultPhoneDesc;
    @BindView(R$id.txv_default_phone_title)
    public SizedTextView mTxvDefaultPhoneTitle;
    @BindView(R$id.txv_dialer_shortcut)
    public TextView mTxvDialerShortcut;
    @BindView(R$id.txv_font_size)
    public TextView mTxvFontSize;
    @BindView(R$id.txv_go_to_block)
    public TextView mTxvGoToBlock;
    @BindView(R$id.txv_roaming_choose)
    public TextView mTxvRoamingChoose;
    @BindView(R$id.txv_sms_feature_status)
    public TextView mTxvSmsFeatureStatus;
    @BindView(R$id.txv_sms_title)
    public TextView mTxvSmsFeatureTitle;
    @BindView(R$id.txv_sms_filter_title)
    public TextView mTxvSmsFilter;
    @BindView(R$id.txv_sync_settings)
    public TextView mTxvSyncSettings;
    @BindView(R$id.txv_sync_status)
    public TextView mTxvSyncStatus;
    @BindView(R$id.txv_sync_title)
    public TextView mTxvSyncTitle;
    @BindView(R$id.tv_vas_sms)
    public CheckedTextView mVasSms;

    /* renamed from: f */
    public boolean f12841f = false;

    /* renamed from: g */
    public SimpleDateFormat f12842g = new SimpleDateFormat("MM/dd HH:mm");

    /* renamed from: h */
    public DialerUtils.ShortcutReceiver f12843h = null;

    /* renamed from: i */
    public View.OnClickListener f12844i = new View.OnClickListener() { // from class: j.a.r0.k
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsActivity.this.m26116a(view);
        }
    };

    /* renamed from: j */
    public View.OnClickListener f12845j = new View.OnClickListener() { // from class: j.a.r0.j
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsActivity.this.m26105b(view);
        }
    };

    /* renamed from: k */
    public View.OnClickListener f12846k = new View.OnClickListener() { // from class: j.a.r0.l
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsActivity.this.m26100c(view);
        }
    };

    /* renamed from: l */
    public View.OnClickListener f12847l = new View.OnClickListener() { // from class: j.a.r0.m
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsActivity.this.m26098d(view);
        }
    };

    /* renamed from: m */
    public View.OnClickListener f12848m = new View$OnClickListenerC5208h();

    /* renamed from: n */
    public View.OnClickListener f12849n = new View$OnClickListenerC5199b();

    /* renamed from: o */
    public View.OnClickListener f12850o = new View$OnClickListenerC5200c();

    /* renamed from: p */
    public View.OnClickListener f12851p = new View$OnClickListenerC5201d();

    /* renamed from: q */
    public View.OnClickListener f12852q = new View$OnClickListenerC5202e();

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$a.class */
    public class View$OnClickListenerC5198a implements View.OnClickListener {
        public View$OnClickListenerC5198a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(SettingsActivity.this.f12840e);
            fVar.m979b(WhoscallActivity.m28686b(R$string.settings_sync_content));
            fVar.m978b(WhoscallActivity.m28686b(R$string.close), (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$b.class */
    public class View$OnClickListenerC5199b implements View.OnClickListener {
        public View$OnClickListenerC5199b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.equals(SettingsActivity.this.mLnrLayoutStrangerDialog)) {
                if (SettingsActivity.this.mImgvStrangerDialog.getTag() instanceof Boolean) {
                    C13915b3.m3055b("is_stranger_call_popup", !((Boolean) SettingsActivity.this.mImgvStrangerDialog.getTag()).booleanValue());
                    SettingsActivity.this.m26084u();
                }
            } else if (view.equals(SettingsActivity.this.mLnrCtcDialog)) {
                if (SettingsActivity.this.mImgvCtcDialog.getTag() != null) {
                    C13915b3.m3055b("isCalloutDialogEnabled", false);
                    C11243e.m9942f();
                    SettingsActivity.this.m26084u();
                    return;
                }
                C13915b3.m3055b("isCalloutDialogEnabled", true);
                C11243e.m9942f();
                SettingsActivity.this.m26084u();
            } else if (view.equals(SettingsActivity.this.mLnrLayoutContactDialog) && (SettingsActivity.this.mImgvContactDialog.getTag() instanceof Boolean)) {
                C13915b3.m3055b("is_contact_call_popup", !((Boolean) SettingsActivity.this.mImgvContactDialog.getTag()).booleanValue());
                SettingsActivity.this.m26084u();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$c.class */
    public class View$OnClickListenerC5200c implements View.OnClickListener {
        public View$OnClickListenerC5200c() {
        }

        /* renamed from: a */
        public /* synthetic */ C14989s m26078a(C11507b.C11508a aVar) {
            aVar.m9447a("isCallBlockNotification", SettingsActivity.this.mCkTxvBlockNotification.isChecked());
            aVar.m9447a("isStrangerSmsPopup", SettingsActivity.this.mCkTxvStrangerSms.isChecked());
            aVar.m9447a("isContactSmsPopup", SettingsActivity.this.mCkTxvContactSms.isChecked());
            aVar.m9447a("isVasSmsPopup", SettingsActivity.this.mVasSms.isChecked());
            aVar.m9447a("smsDialogDirectly", SettingsActivity.this.mCkTxvSmsPopupDirectly.isChecked());
            aVar.m9447a("enable_missing_call_badge", SettingsActivity.this.mCkTxvMissingCallBadge.isChecked());
            aVar.m9447a("isNewsCenterNotification", SettingsActivity.this.mCkTxvNewsCenterNotification.isChecked());
            aVar.m9447a("isBlockCallWaiting", SettingsActivity.this.mCkTxvBlockCallWaiting.isChecked());
            return null;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = false;
            if (SettingsActivity.this.mLnrLayoutInAppDisclosure.equals(view)) {
                if (!C13878a3.m3250a()) {
                    C13878a3.m3213f(SettingsActivity.this.f12840e);
                } else if (!C13915b3.m3062a("isNumberTransmissionAccepted", false)) {
                    ToastDialog toastDialog = new ToastDialog(SettingsActivity.this.f12840e);
                    toastDialog.setTitle(R$string.settings_callerid_activated);
                    toastDialog.show();
                }
                C13915b3.m3055b("isNumberTransmissionAccepted", true);
                SettingsActivity.this.m26087r();
            } else if (SettingsActivity.this.mTextViewDoNotDisturbWhenDriving.equals(view)) {
                SettingResultActivity.m26747b((Context) SettingsActivity.this, 1000, (Integer) 1);
            } else if (SettingsActivity.this.mTxvSmsFeatureTitle.equals(view)) {
                DialogC14618f fVar = new DialogC14618f(SettingsActivity.this);
                fVar.m995c(R$string.setting_enable_sms_function_description_block_sms);
                fVar.m993d(R$string.close);
                fVar.show();
            } else if (SettingsActivity.this.mLnrLayoutSmsFeature.equals(view)) {
                if (C12810o.m5232m()) {
                    SettingsActivity.this.m26118a((int) R$string.setting_phone_default_app_revert_dialog_title, (int) R$string.setting_sms_default_app_revert_dialog, RoleManagerCompat.ROLE_SMS);
                } else {
                    SettingResultActivity.m26746b((Context) SettingsActivity.this, RoleManagerCompat.ROLE_SMS, (Integer) 0);
                }
            } else if (SettingsActivity.this.mTxvAutoFetchMmsImage.equals(view)) {
                if (C12810o.m5232m()) {
                    boolean z2 = !C11834j.m8070i();
                    C13981h.m2937a(C12810o.m5237h()).m9459a(SettingsActivity.this.getString(R$string.auto_retrieve_mms_pref_key), (String) Boolean.valueOf(z2));
                    SettingsActivity.this.mTxvAutoFetchMmsImage.m25924a(z2);
                    DescriptionCheckedTextView descriptionCheckedTextView = SettingsActivity.this.mTxvAutoFetchMmsImageWhenRoaming;
                    boolean z3 = false;
                    if (C12810o.m5232m()) {
                        z3 = false;
                        if (z2) {
                            z3 = true;
                        }
                    }
                    descriptionCheckedTextView.setEnabled(z3);
                }
            } else if (SettingsActivity.this.mTxvAutoFetchMmsImageWhenRoaming.equals(view)) {
                if (C12810o.m5232m()) {
                    boolean z4 = !C11834j.m8069j();
                    C13981h.m2937a(C12810o.m5237h()).m9459a(SettingsActivity.this.getString(R$string.auto_retrieve_mms_when_roaming_pref_key), (String) Boolean.valueOf(z4));
                    SettingsActivity.this.mTxvAutoFetchMmsImageWhenRoaming.m25924a(z4);
                }
            } else if (SettingsActivity.this.mTxvSmsFilter.equals(view)) {
                int i = (!C12754a.m5427e() || C14217x3.m2207A()) ? R$string.sms_filter_setting_desc_fraud : R$string.sms_filter_setting_desc;
                DialogC14618f fVar2 = new DialogC14618f(SettingsActivity.this);
                fVar2.m995c(i);
                fVar2.m993d(R$string.close);
                fVar2.show();
            } else {
                if (SettingsActivity.this.mCkTxvBlockCallWaiting.equals(view)) {
                    C14687h.m861a(SettingsActivity.this.f12840e, WhoscallActivity.m28686b(R$string.settings_block_callwaiting_wording), 1).m858c();
                }
                CheckedTextView checkedTextView = (CheckedTextView) view;
                checkedTextView.toggle();
                C13978e.f31386a.m9457a(new AbstractC15118l() { // from class: j.a.r0.b
                    @Override // p626l.p641z.p642c.AbstractC15118l
                    public final Object invoke(Object obj) {
                        return SettingsActivity.View$OnClickListenerC5200c.this.m26078a((C11507b.C11508a) obj);
                    }
                });
                if (SettingsActivity.this.mCkTxvMissingCallBadge.equals(checkedTextView)) {
                    if (SettingsActivity.this.mCkTxvMissingCallBadge.isChecked()) {
                        C14023h4.m2758b();
                    } else {
                        C14023h4.m2769a();
                    }
                }
                SettingsActivity settingsActivity = SettingsActivity.this;
                CheckedTextView checkedTextView2 = settingsActivity.mCkTxvSmsPopupDirectly;
                if (settingsActivity.mCkTxvStrangerSms.isChecked() || SettingsActivity.this.mCkTxvContactSms.isChecked() || SettingsActivity.this.mVasSms.isChecked()) {
                    z = true;
                }
                checkedTextView2.setEnabled(z);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$d.class */
    public class View$OnClickListenerC5201d implements View.OnClickListener {
        public View$OnClickListenerC5201d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SettingsActivity.this.registerForContextMenu(view);
            SettingsActivity.this.openContextMenu(view);
            SettingsActivity.this.unregisterForContextMenu(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$e.class */
    public class View$OnClickListenerC5202e implements View.OnClickListener {

        /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$e$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$e$a.class */
        public class C5203a implements Action1<Integer> {

            /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$e$a$a */
            /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$e$a$a.class */
            public class C5204a implements Observer<List<RealmObject>> {

                /* renamed from: a */
                public final /* synthetic */ Integer f12858a;

                public C5204a(C5203a aVar, Integer num) {
                    this.f12858a = num;
                }

                /* renamed from: a */
                public void onNext(List<RealmObject> list) {
                    C13625a.m3813a(MyApplication.m29013o(), this.f12858a.intValue(), list);
                }

                @Override // p660rx.Observer
                public void onCompleted() {
                }

                @Override // p660rx.Observer
                public void onError(Throwable th) {
                    C14080m2.m2612a(th);
                }
            }

            public C5203a(View$OnClickListenerC5202e eVar) {
            }

            /* renamed from: a */
            public void call(Integer num) {
                C13625a.m3823a(num.intValue(), Schedulers.m0io()).subscribe(new C5204a(this, num));
            }
        }

        /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$e$b */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$e$b.class */
        public class C5205b implements Action0 {
            public C5205b() {
            }

            @Override // p660rx.functions.Action0
            public void call() {
                long currentTimeMillis = System.currentTimeMillis();
                C13915b3.m3057b("syncmanager.sync_time", currentTimeMillis);
                SettingsActivity.this.mImgvSyncStatus.setVisibility(0);
                SettingsActivity.this.mPgwWaiting.setVisibility(8);
                if (currentTimeMillis != 0) {
                    SettingsActivity settingsActivity = SettingsActivity.this;
                    settingsActivity.mTxvSyncStatus.setText(WhoscallActivity.m28687a((int) R$string.settings_sync_time, settingsActivity.f12842g.format(Long.valueOf(currentTimeMillis))));
                }
                SettingsActivity settingsActivity2 = SettingsActivity.this;
                settingsActivity2.mLnrLayoutSyncAndDelete.setOnClickListener(settingsActivity2.f12852q);
            }
        }

        public View$OnClickListenerC5202e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SettingsActivity.this.mImgvSyncStatus.setVisibility(8);
            SettingsActivity.this.mPgwWaiting.setVisibility(0);
            SettingsActivity.this.mLnrLayoutSyncAndDelete.setOnClickListener(null);
            C13625a.m3799b(0, Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).doAfterTerminate(new C5205b()).observeOn(Schedulers.m0io()).forEach(new C5203a(this));
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$f.class */
    public class RunnableC5206f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f12860a;

        /* renamed from: b */
        public final /* synthetic */ Drawable f12861b;

        public RunnableC5206f(SettingsActivity settingsActivity, View view, Drawable drawable) {
            this.f12860a = view;
            this.f12861b = drawable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f12860a.setBackground(this.f12861b);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$g.class */
    public class C5207g extends DialerUtils.ShortcutReceiver {
        public C5207g() {
        }

        @Override // gogolook.callgogolook2.main.dialer.DialerUtils.ShortcutReceiver
        /* renamed from: a */
        public void mo26075a() {
            C14687h.m862a(SettingsActivity.this, (int) R$string.whoscall_dialer_trigger_toast_done, 0).m858c();
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$h.class */
    public class View$OnClickListenerC5208h implements View.OnClickListener {
        public View$OnClickListenerC5208h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean q = CallUtils.m26527q();
            CallUtils.m26571a(!q);
            SettingsActivity.this.mCbInCallScreen.setChecked(!q);
            C14289m.m1864c(!q);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$i.class */
    public class View$OnClickListenerC5209i implements View.OnClickListener {
        public View$OnClickListenerC5209i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SettingsActivity settingsActivity = SettingsActivity.this;
            settingsActivity.m26114a((View) settingsActivity.mLnrLayoutDialerShortcut, settingsActivity.mTxvDialerShortcut, true);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$j.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC5210j implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f12865a;

        /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$j$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$j$a.class */
        public class RunnableC5211a implements Runnable {
            public RunnableC5211a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ViewTreeObserver$OnGlobalLayoutListenerC5210j jVar = ViewTreeObserver$OnGlobalLayoutListenerC5210j.this;
                SettingsActivity.this.m26092g(jVar.f12865a);
                ViewTreeObserver$OnGlobalLayoutListenerC5210j jVar2 = ViewTreeObserver$OnGlobalLayoutListenerC5210j.this;
                if (jVar2.f12865a.equals(SettingsActivity.this.mLnrLayoutSmsDialog)) {
                    SettingsActivity settingsActivity = SettingsActivity.this;
                    settingsActivity.m26094f(settingsActivity.findViewById(R$id.cktxv_contact_sms));
                    SettingsActivity settingsActivity2 = SettingsActivity.this;
                    settingsActivity2.m26094f(settingsActivity2.findViewById(R$id.cktxv_stranger_sms));
                    return;
                }
                ViewTreeObserver$OnGlobalLayoutListenerC5210j jVar3 = ViewTreeObserver$OnGlobalLayoutListenerC5210j.this;
                SettingsActivity.this.m26094f(jVar3.f12865a);
            }
        }

        public ViewTreeObserver$OnGlobalLayoutListenerC5210j(View view) {
            this.f12865a = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            SettingsActivity.this.mScrlvWhole.post(new RunnableC5211a());
            SettingsActivity.this.mScrlvWhole.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$k */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$k.class */
    public class View$OnClickListenerC5212k implements View.OnClickListener {
        public View$OnClickListenerC5212k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14289m.m1868c(1, 1);
            SuggestedSettingsActivity.m26073a(SettingsActivity.this, 3);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$l */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$l.class */
    public class View$OnClickListenerC5213l implements View.OnClickListener {
        public View$OnClickListenerC5213l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SettingsActivity.this.startActivity(new Intent(SettingsActivity.this.f12840e, BlockManageActivity.class));
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$m */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$m.class */
    public class View$OnClickListenerC5214m implements View.OnClickListener {
        public View$OnClickListenerC5214m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14299q.m1660x0();
            SettingsActivity.this.f12840e.startActivity(new Intent(SettingsActivity.this.f12840e, CallConfirmSettingsActivity.class));
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$n */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$n.class */
    public class View$OnClickListenerC5215n implements View.OnClickListener {
        public View$OnClickListenerC5215n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C12629k0.m5706i()) {
                C13915b3.m3048d("calldialog_portrait_y", C12629k0.m5712c());
                C13915b3.m3048d("calldialog_landscape_y", C12629k0.m5713b());
                SettingsActivity.this.m26082w();
                C14687h.m862a(SettingsActivity.this, (int) R$string.setting_dialog_position_reset_toast, 0).m858c();
                return;
            }
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(SettingsActivity.this);
            fVar.m981b(R$string.setting_dialog_position_custom_dialog_description);
            fVar.m987a(R$string.close, (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$o */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$o.class */
    public class View$OnClickListenerC5216o implements View.OnClickListener {

        /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$o$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$o$a.class */
        public class C5217a implements DialogC11125g.AbstractC11127b {
            public C5217a() {
            }

            @Override // p459j.p460a.p463b0.DialogC11125g.AbstractC11127b
            /* renamed from: a */
            public void mo5752a(String str) {
                C14108o4.m2506a();
                C13915b3.m3044e("DDDSetting", str);
                SettingsActivity.this.mTxvDddChoose.setText(str);
            }
        }

        public View$OnClickListenerC5216o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C12612g0.m5755v()) {
                SettingsActivity settingsActivity = SettingsActivity.this;
                settingsActivity.startActivity(DualSimDddSettingActivity.m26141a(settingsActivity, 1));
            } else {
                DialogC11125g gVar = new DialogC11125g(SettingsActivity.this);
                gVar.m10247a(new C5217a());
                gVar.show();
            }
            C14299q.m1752X0();
            C14299q.m1786G0();
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$p */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$p.class */
    public class View$OnClickListenerC5218p implements View.OnClickListener {

        /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$p$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$p$a.class */
        public class DialogInterface$OnClickListenerC5219a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC5219a() {
            }

            /* renamed from: a */
            public static /* synthetic */ C14989s m26074a(C11507b.C11508a aVar) {
                aVar.m9447a("isSmsUrlScanConfirmPopupInSetting", true);
                aVar.m9447a("isSmsUrlScanConfirmPopup", true);
                aVar.m9447a("isSmsUrlScanConfirmPopupInMain", true);
                aVar.m9447a("sms_checker_warning", true);
                return null;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C13978e.f31386a.m9457a(C13392c.f30127a);
                SettingsActivity.this.mCkTxvSmsUrlScan.setChecked(true);
            }
        }

        /* renamed from: gogolook.callgogolook2.setting.SettingsActivity$p$b */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity$p$b.class */
        public class DialogInterface$OnClickListenerC5220b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC5220b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C13915b3.m3055b("sms_checker_warning", false);
                SettingsActivity.this.mCkTxvSmsUrlScan.setChecked(false);
            }
        }

        public View$OnClickListenerC5218p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((CheckedTextView) view).toggle();
            if (!SettingsActivity.this.mCkTxvSmsUrlScan.isChecked()) {
                C13915b3.m3055b("sms_checker_warning", false);
            } else if (!C13915b3.m3062a("isSmsUrlScanConfirmPopupInSetting", false)) {
                SettingsActivity.this.mCkTxvSmsUrlScan.setChecked(false);
                C12778k.m5339a(SettingsActivity.this.f12840e, 3, false, (DialogInterface.OnClickListener) new DialogInterface$OnClickListenerC5219a(), (DialogInterface.OnClickListener) new DialogInterface$OnClickListenerC5220b());
            } else {
                C13915b3.m3055b("sms_checker_warning", true);
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m26117a(DialogInterface dialogInterface, int i) {
    }

    /* renamed from: A */
    public final void m26120A() {
        this.mTxvSmsFeatureStatus.setText(C12810o.m5232m() ? R$string.setting_enable_SMS_function_disable_button : R$string.setting_enable_SMS_function_enable_button);
        boolean i = C11834j.m8070i();
        this.mTxvAutoFetchMmsImage.setEnabled(C12810o.m5232m());
        this.mTxvAutoFetchMmsImage.m25924a(i);
        this.mTxvAutoFetchMmsImageWhenRoaming.setEnabled(C12810o.m5232m() && i);
        this.mTxvAutoFetchMmsImageWhenRoaming.m25924a(C11834j.m8069j());
    }

    /* renamed from: B */
    public final void m26119B() {
        ToastDialog toastDialog = new ToastDialog(this.f12840e);
        toastDialog.setTitle(R$string.setting_disclosure_toast_successfully);
        toastDialog.show();
    }

    /* renamed from: a */
    public final int m26115a(View view, View view2) {
        return view.getParent() == view2 ? view.getTop() : view.getTop() + m26115a((View) view.getParent(), view2);
    }

    /* renamed from: a */
    public final void m26118a(@StringRes int i, @StringRes int i2, final String str) {
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this);
        fVar.m975d(i);
        fVar.m981b(i2);
        fVar.m980b(R$string.setting_phone_default_app_revert_dialog_no, new DialogInterface.OnClickListener() { // from class: j.a.r0.h
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                C14080m2.m2615a("SettingsActivity", "User clicks cancel, role=" + str);
            }
        });
        fVar.m987a(R$string.setting_phone_default_app_revert_dialog_yes, new DialogInterface.OnClickListener() { // from class: j.a.r0.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                SettingsActivity.this.m26107a(str, dialogInterface, i3);
            }
        });
        fVar.m983a(true);
        fVar.m989a().show();
    }

    /* renamed from: a */
    public /* synthetic */ void m26116a(View view) {
        C11396a.m9698a(1, 1, 6);
        m26118a(R$string.setting_phone_default_app_revert_dialog_title, CallUtils.m26565b() ? R$string.setting_phone_default_app_revert_dialog_desc_v2 : R$string.setting_phone_default_app_revert_dialog_desc, RoleManagerCompat.ROLE_DIALER);
    }

    /* renamed from: a */
    public final void m26114a(View view, TextView textView, boolean z) {
        if (C14217x3.m2202a()) {
            view.setVisibility(0);
            if (z) {
                if (this.f12843h == null) {
                    this.f12843h = new C5207g();
                    DialerUtils.m27820a(this, this.f12843h);
                }
                DialerUtils.m27817c(this);
                C14289m.m1877b(0, 2, 0);
            }
            textView.setText(R$string.whoscall_dialer_setting_create);
            return;
        }
        view.setVisibility(8);
        C13915b3.m3055b("prefs_promote_dialer_shortcut", false);
    }

    /* renamed from: a */
    public /* synthetic */ void m26113a(View view, boolean z) {
        C13978e.f31386a.m9459a("enable_sms_filter", (String) Boolean.valueOf(z));
        C14687h.m862a(this.f12840e, z ? R$string.sms_filter_enabled_toast : R$string.sms_filter_disabled_toast, 0).m858c();
    }

    /* renamed from: a */
    public /* synthetic */ void m26107a(String str, DialogInterface dialogInterface, int i) {
        C13878a3.m3238a(this, str, 0);
        if (RoleManagerCompat.ROLE_CALL_SCREENING.equals(str)) {
            C11396a.m9698a(2, 1, 7);
        } else if (RoleManagerCompat.ROLE_DIALER.equals(str)) {
            C11396a.m9698a(1, 1, 7);
        }
    }

    /* renamed from: a */
    public final void m26106a(boolean z, final ToggleButton toggleButton) {
        int i;
        int i2;
        int i3;
        if (z) {
            i3 = R$string.sms_filter_disable_dialog_title;
            i2 = R$string.sms_filter_disable_dialog_content;
            i = R$string.sms_filter_disable_dialog_pos_btn;
        } else {
            i3 = R$string.sms_filter_enable_dialog_title;
            i2 = R$string.sms_filter_enable_dialog_content;
            i = R$string.sms_filter_enable_dialog_pos_btn;
        }
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this);
        fVar.m975d(i3);
        fVar.m981b(i2);
        fVar.m980b(i, new DialogInterface.OnClickListener() { // from class: j.a.r0.f
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                ToggleButton.this.m25829g();
            }
        });
        fVar.m987a(R$string.vas_cancel_btn, DialogInterface$OnClickListenerC13393d.f30128a);
        fVar.m983a(true);
        fVar.m989a().show();
    }

    /* renamed from: b */
    public /* synthetic */ void m26105b(View view) {
        C11396a.m9698a(2, 1, 6);
        m26118a(R$string.setting_default_caller_id_app_revert_dialog_title, R$string.setting_default_caller_id_app_revert_dialog_desc, RoleManagerCompat.ROLE_CALL_SCREENING);
    }

    /* renamed from: c */
    public final void m26101c(int i) {
        C13915b3.m3048d(TtmlNode.ATTR_TTS_FONT_SIZE, i);
        super.finish();
        Intent intent = new Intent();
        intent.setClass(this, SettingsActivity.class);
        try {
            intent.setFlags(32768);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        C14217x3.m2165b(this, intent);
    }

    /* renamed from: c */
    public /* synthetic */ void m26100c(View view) {
        C11396a.m9698a(1, 1, 1);
        SettingResultActivity.m26746b((Context) this, RoleManagerCompat.ROLE_DIALER, (Integer) 1);
    }

    /* renamed from: d */
    public /* synthetic */ void m26098d(View view) {
        C11396a.m9698a(2, 1, 1);
        SettingResultActivity.m26746b((Context) this, RoleManagerCompat.ROLE_CALL_SCREENING, (Integer) 1);
    }

    /* renamed from: e */
    public /* synthetic */ void m26096e(View view) {
        m26106a(C13978e.f31386a.m9462a("enable_sms_filter", (Boolean) true), this.mTbSmsFilter);
    }

    /* renamed from: f */
    public final void m26094f(View view) {
        Drawable background = view.getBackground();
        ObjectAnimator ofObject = ObjectAnimator.ofObject(view, TtmlNode.ATTR_TTS_BACKGROUND_COLOR, new ArgbEvaluator(), -1, -2236963, -1, -2236963, -1);
        ofObject.setDuration(3600L);
        ofObject.start();
        view.postDelayed(new RunnableC5206f(this, view, background), 3700L);
    }

    /* renamed from: g */
    public final void m26092g(View view) {
        int a = m26115a(view, this.mScrlvWhole) - ((this.mScrlvWhole.getHeight() / 2) - (view.getHeight() / 2));
        int i = a;
        if (a <= 0) {
            i = 0;
        }
        this.mScrlvWhole.smoothScrollTo(0, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x029e, code lost:
        if (r0.equals("focus_smsdialog") != false) goto L_0x02e2;
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m26090o() {
        /*
            Method dump skipped, instructions count: 828
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.setting.SettingsActivity.m26090o():void");
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 2131362883) {
            this.mTxvSyncSettings.setText(WhoscallActivity.m28686b(R$string.settings_sync_period_auto));
            C13915b3.m3044e("syncSettings", DebugKt.DEBUG_PROPERTY_VALUE_ON);
        } else if (itemId == 2131362885) {
            this.mTxvSyncSettings.setText(WhoscallActivity.m28686b(R$string.settings_sync_period_wifi));
            C13915b3.m3044e("syncSettings", "on_wifi_only");
        } else if (itemId == 2131362884) {
            this.mTxvSyncSettings.setText(WhoscallActivity.m28686b(R$string.settings_sync_period_none));
            C13915b3.m3044e("syncSettings", DebugKt.DEBUG_PROPERTY_VALUE_OFF);
        } else if (itemId == 2131362870) {
            C13915b3.m3044e("RoamingSettng", C14217x3.EnumC14228j.WifiOnly.toString());
            this.mTxvRoamingChoose.setText(WhoscallActivity.m28686b(R$string.setting_roaming_option_wifi));
        } else if (itemId == 2131362869) {
            C13915b3.m3044e("RoamingSettng", C14217x3.EnumC14228j.Always.toString());
            this.mTxvRoamingChoose.setText(WhoscallActivity.m28686b(R$string.setting_roaming_option_enable));
        } else if (itemId == 2131362873) {
            m26101c(102);
        } else if (itemId == 2131362874) {
            m26101c(101);
        } else if (itemId == 2131362875) {
            m26101c(100);
        }
        return super.onContextItemSelected(menuItem);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m26090o();
        m26080y();
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        MenuInflater menuInflater = getMenuInflater();
        if (view == this.mTxvSyncSettings) {
            menuInflater.inflate(R$menu.context_settings_sync_context, contextMenu);
        } else if (view == this.mLnrLayoutRoaming) {
            menuInflater.inflate(R$menu.context_settings_roaming, contextMenu);
        } else if (view == this.mLnrLayoutFontSize) {
            menuInflater.inflate(R$menu.context_settings_font, contextMenu);
        }
        DialogC14669c a = new DialogC14669c.C14674d(this, contextMenu).m891a();
        if (view == this.mLnrLayoutFontSize) {
            a.m903a(0).setTextSize(14.0f);
            a.m903a(1).setTextSize(16.0f);
            a.m903a(2).setTextSize(18.0f);
        }
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        DialerUtils.ShortcutReceiver shortcutReceiver = this.f12843h;
        if (shortcutReceiver != null) {
            unregisterReceiver(shortcutReceiver);
            this.f12843h = null;
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        setIntent(intent);
        if (intent.getBooleanExtra("intent_show_successful_activated", false)) {
            ToastDialog toastDialog = new ToastDialog(this.f12840e);
            toastDialog.setTitle(R$string.settings_callerid_activated);
            toastDialog.show();
        }
        m26087r();
        super.onNewIntent(intent);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        C14217x3.m2167b((Activity) this);
        return true;
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        ((NotificationManager) getSystemService("notification")).cancel(1981);
        m26087r();
        if (this.f12841f) {
            this.f12841f = false;
            if (m26089p()) {
                m26119B();
            }
        }
        m26088q();
        m26079z();
        m26120A();
        m26086s();
        m26082w();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
    }

    /* renamed from: p */
    public final boolean m26089p() {
        return C13915b3.m3059b("isNumberTransmissionAccepted") && C13878a3.m3250a();
    }

    /* renamed from: q */
    public final void m26088q() {
        this.mTextViewDoNotDisturbWhenDriving.setVisibility((!C14017g4.m2801w() || C13878a3.m3215e(this)) ? 8 : 0);
    }

    /* renamed from: r */
    public final void m26087r() {
        int i = 0;
        if (m26089p()) {
            this.mLnrLayoutInAppDisclosure.setVisibility(8);
            this.mLnrLayoutCallDialog.setVisibility(0);
            LinearLayout linearLayout = this.mLnrLayoutSmsDialog;
            if (!C12810o.m5233l()) {
                i = 8;
            }
            linearLayout.setVisibility(i);
            return;
        }
        this.mLnrLayoutInAppDisclosure.setVisibility(0);
        this.mLnrLayoutCallDialog.setVisibility(8);
        this.mLnrLayoutSmsDialog.setVisibility(8);
    }

    /* renamed from: s */
    public final void m26086s() {
        if (C13878a3.m3231b() || !C13878a3.m3252J()) {
            this.mLlSuggestedSettings.setVisibility(8);
            return;
        }
        C14289m.m1868c(1, 0);
        this.mLlSuggestedSettings.setVisibility(0);
        this.mTopDivider.setVisibility(8);
        this.mTopShadow.setVisibility(8);
    }

    /* renamed from: t */
    public final void m26085t() {
        if (C12612g0.m5755v()) {
            this.mLnrLayoutDdd.setVisibility(0);
            this.mTxvDdd.setText(R$string.setting_carrier_ddd);
            this.mTxvDddChoose.setVisibility(8);
        } else if (C14017g4.m2835A()) {
            this.mTxvDddChoose.setText(C13915b3.m3056b("DDDSetting", ""));
            this.mLnrLayoutDdd.setVisibility(0);
            this.mTxvDddChoose.setVisibility(0);
        } else {
            this.mLnrLayoutDdd.setVisibility(8);
            this.mTxvDddChoose.setVisibility(8);
        }
    }

    /* renamed from: u */
    public final void m26084u() {
        if (C13915b3.m3059b("is_contact_call_popup")) {
            this.mImgvContactDialog.setImageResource(R$drawable.checkbox_on);
            this.mImgvContactDialog.setTag(true);
        } else {
            this.mImgvContactDialog.setImageResource(R$drawable.checkbox_off);
            this.mImgvContactDialog.setTag(false);
        }
        if (C13915b3.m3059b("is_stranger_call_popup")) {
            this.mImgvStrangerDialog.setImageResource(R$drawable.checkbox_on);
            this.mImgvStrangerDialog.setTag(true);
        } else {
            this.mImgvStrangerDialog.setImageResource(R$drawable.checkbox_off);
            this.mImgvStrangerDialog.setTag(false);
        }
        if (C13915b3.m3059b("isCalloutDialogEnabled")) {
            this.mImgvCtcDialog.setImageResource(R$drawable.checkbox_on);
            this.mImgvCtcDialog.setTag(true);
            return;
        }
        this.mImgvCtcDialog.setImageResource(R$drawable.checkbox_off);
        this.mImgvCtcDialog.setTag(null);
    }

    /* renamed from: v */
    public final void m26083v() {
        this.mTxvSyncTitle.setOnClickListener(new View$OnClickListenerC5198a());
    }

    /* renamed from: w */
    public final void m26082w() {
        if (C12629k0.m5706i()) {
            this.mTvCallDialogPosition.setText(R$string.setting_dialog_position_reset);
            this.mTvCallDialogPositionChoose.setText("");
            return;
        }
        this.mTvCallDialogPosition.setText(R$string.setting_dialog_position);
        this.mTvCallDialogPositionChoose.setText(R$string.setting_dialog_position_reset_position);
    }

    /* renamed from: x */
    public final void m26081x() {
        if (C12758e.m5405k() || (C12754a.m5427e() && C12754a.m5429c())) {
            this.mLnrLayoutSmsFilter.setVisibility(0);
            this.mTxvSmsFilter.setOnClickListener(this.f12850o);
            if (C13978e.f31386a.m9462a("enable_sms_filter", (Boolean) true)) {
                this.mTbSmsFilter.m25833d();
            } else {
                this.mTbSmsFilter.m25835c();
            }
            this.mTbSmsFilter.setOnClickListener(new View.OnClickListener() { // from class: j.a.r0.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsActivity.this.m26096e(view);
                }
            });
            this.mTbSmsFilter.m25839a(new ToggleButton.AbstractC5295f() { // from class: j.a.r0.g
                @Override // gogolook.callgogolook2.view.ToggleButton.AbstractC5295f
                /* renamed from: a */
                public final void mo4082a(View view, boolean z) {
                    SettingsActivity.this.m26113a(view, z);
                }
            });
            return;
        }
        this.mLnrLayoutSmsFilter.setVisibility(8);
    }

    /* renamed from: y */
    public final void m26080y() {
        this.mLlSuggestedSettings.setOnClickListener(new View$OnClickListenerC5212k());
        this.mLnrLayoutStrangerDialog.setOnClickListener(this.f12849n);
        this.mLnrLayoutContactDialog.setOnClickListener(this.f12849n);
        int i = 8;
        if (C13915b3.m3059b("isCalloutDialogHidden")) {
            this.mLnrCtcDialog.setVisibility(8);
        } else {
            this.mLnrCtcDialog.setOnClickListener(this.f12849n);
        }
        this.mLnrLayoutInAppDisclosure.setOnClickListener(this.f12850o);
        this.mCkTxvSmsPopupDirectly.setOnClickListener(this.f12850o);
        this.mCkTxvStrangerSms.setOnClickListener(this.f12850o);
        this.mCkTxvContactSms.setOnClickListener(this.f12850o);
        this.mVasSms.setOnClickListener(this.f12850o);
        this.mCkTxvBlockNotification.setOnClickListener(this.f12850o);
        this.mCkTxvNewsCenterNotification.setOnClickListener(this.f12850o);
        this.mCkTxvBlockCallWaiting.setOnClickListener(this.f12850o);
        this.mTextViewDoNotDisturbWhenDriving.setOnClickListener(this.f12850o);
        this.mTxvAutoFetchMmsImage.setOnClickListener(this.f12850o);
        this.mTxvAutoFetchMmsImageWhenRoaming.setOnClickListener(this.f12850o);
        this.mTxvGoToBlock.setOnClickListener(new View$OnClickListenerC5213l());
        this.mCkTxvMissingCallBadge.setOnClickListener(this.f12850o);
        this.mTxvCallConfirm.setOnClickListener(new View$OnClickListenerC5214m());
        this.mLnrLayoutSyncAndDelete.setOnClickListener(this.f12852q);
        LinearLayout linearLayout = this.mLlSettingDefaultSmsApp;
        if (C12810o.m5230o()) {
            i = 0;
        }
        linearLayout.setVisibility(i);
        this.mLnrLayoutSmsFeature.setOnClickListener(this.f12850o);
        this.mTxvSmsFeatureTitle.setOnClickListener(this.f12850o);
        this.mTxvSyncSettings.setOnClickListener(this.f12851p);
        this.mLnrLayoutRoaming.setOnClickListener(this.f12851p);
        this.mLnrLayoutFontSize.setOnClickListener(this.f12851p);
        this.mLnrLayoutCallDialogPosition.setOnClickListener(new View$OnClickListenerC5215n());
        this.mLnrLayoutDdd.setOnClickListener(new View$OnClickListenerC5216o());
        this.mCkTxvSmsUrlScan.setOnClickListener(new View$OnClickListenerC5218p());
        m26081x();
        m26083v();
    }

    /* renamed from: z */
    public final void m26079z() {
        boolean d = CallUtils.m26546d();
        boolean b = CallUtils.m26565b();
        boolean c = CallUtils.m26551c();
        boolean z = c || b;
        C14080m2.m2615a("SettingsActivity", "setupDefaultPhoneSettings, canEnableInCallService=" + d + ", canEnableDefaultCallerIdApp=" + b + ", canEnableDefaultPhoneApp=" + c);
        int i = 8;
        this.mDividerPhone.setVisibility(z ? 0 : 8);
        this.mSectionTitlePhone.setVisibility(z ? 0 : 8);
        this.mLnrLayoutDefaultPhone.setVisibility(c ? 0 : 8);
        this.mLnrLayoutDefaultCallerId.setVisibility(b ? 0 : 8);
        if (b) {
            boolean p = CallUtils.m26528p();
            this.mTxvDefaultCallerIdDesc.setText(p ? R$string.setting_default_caller_id_app_desc_default : R$string.setting_default_caller_id_app_desc_not_default);
            this.mLnrLayoutDefaultCallerId.setOnClickListener(p ? this.f12845j : this.f12847l);
        }
        if (c) {
            boolean h = CallUtils.m26536h();
            this.mTxvDefaultPhoneDesc.setText(h ? R$string.setting_phone_default_app_desc_default : R$string.setting_phone_default_app_desc_not_default);
            this.mLnrLayoutDefaultPhone.setOnClickListener(h ? this.f12844i : this.f12846k);
            LinearLayout linearLayout = this.mLlInCallScreen;
            if (d) {
                i = 0;
            }
            linearLayout.setVisibility(i);
            if (d) {
                this.mCbInCallScreen.setChecked(CallUtils.m26527q());
                this.mCbInCallScreen.setClickable(false);
                this.mLlInCallScreen.setOnClickListener(this.f12848m);
            }
            this.mLlInCallScreen.setEnabled(h);
            this.mTvInCallScreen.setEnabled(h);
            this.mCbInCallScreen.setEnabled(h);
        }
    }
}
