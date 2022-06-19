package com.callapp.contacts.api.helper.backup;

import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.backup.BackupSetupActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.BaseTransparentActivity;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.CallAppRadioButton;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u001cH\u0014J\b\u0010\u001e\u001a\u00020\u0016H\u0002J\u0012\u0010\u001f\u001a\u00020\u00162\b\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001aH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\fR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006%"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;", "Lcom/callapp/contacts/util/BaseTransparentActivity;", "()V", "backViaGroup", "Landroid/widget/RadioGroup;", "getBackViaGroup", "()Landroid/widget/RadioGroup;", "setBackViaGroup", "(Landroid/widget/RadioGroup;)V", "dropboxLoginListener", "Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;", "getDropboxLoginListener", "()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;", "googleLoginListener", "getGoogleLoginListener", "okBtn", "Landroid/widget/TextView;", "getOkBtn", "()Landroid/widget/TextView;", "setOkBtn", "(Landroid/widget/TextView;)V", "enableNextBtn", "", "view", "Landroid/view/View;", "isEnable", "", "getCurrentCheckViaResId", "", "getLayoutResourceId", "initViews", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "toOneOrZero", "", "bol", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupSetupActivity.class */
public final class BackupSetupActivity extends BaseTransparentActivity {

    /* renamed from: a */
    public TextView f24718a;

    /* renamed from: b */
    public RadioGroup f24719b;

    /* renamed from: c */
    private final BackupLoginCallBack f24720c = new BackupSetupActivity$dropboxLoginListener$1(this);

    /* renamed from: d */
    private final BackupLoginCallBack f24721d = new BackupSetupActivity$googleLoginListener$1(this);

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupSetupActivity$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f24722a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f24723b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f24724c;

        static {
            int[] iArr = new int[BackupViaType.values().length];
            f24722a = iArr;
            iArr[BackupViaType.GOOGLE_DRIVE.ordinal()] = 1;
            iArr[BackupViaType.DROP_BOX.ordinal()] = 2;
            iArr[BackupViaType.UN_KNOWN.ordinal()] = 3;
            int[] iArr2 = new int[BackupViaType.values().length];
            f24723b = iArr2;
            iArr2[BackupViaType.GOOGLE_DRIVE.ordinal()] = 1;
            iArr2[BackupViaType.DROP_BOX.ordinal()] = 2;
            int[] iArr3 = new int[BackupViaType.values().length];
            f24724c = iArr3;
            iArr3[BackupViaType.GOOGLE_DRIVE.ordinal()] = 1;
            iArr3[BackupViaType.DROP_BOX.ordinal()] = 2;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ String m29305a(boolean z) {
        if (z) {
            return "1";
        }
        if (z) {
            throw new NoWhenBranchMatchedException();
        }
        return "0";
    }

    /* renamed from: a */
    public final void m29307a(final View view, final boolean z) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$enableNextBtn$1
            @Override // java.lang.Runnable
            public final void run() {
                if (z) {
                    view.setClickable(true);
                    view.setBackgroundResource(2131232141);
                    view.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$enableNextBtn$1.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            String str;
                            StringBuilder sb = new StringBuilder();
                            BackupViaType backupViaType = (BackupViaType) Prefs.f26605hK.get();
                            if (backupViaType != null) {
                                int i = BackupSetupActivity.WhenMappings.f24724c[backupViaType.ordinal()];
                                if (i == 1) {
                                    str = "ggl";
                                } else if (i == 2) {
                                    str = "drx";
                                }
                                sb.append("dr:".concat(str));
                                StringBuilder sb22 = new StringBuilder(",ch:");
                                Boolean bool5 = Prefs.f26608hN.get();
                                C18524p.m3843b(bool5, "Prefs.backupCallLog.get()");
                                sb22.append(BackupSetupActivity.m29305a(bool5.booleanValue()));
                                sb.append(sb22.toString());
                                StringBuilder sb32 = new StringBuilder(",ct:");
                                Boolean bool22 = Prefs.f26607hM.get();
                                C18524p.m3843b(bool22, "Prefs.backupContacts.get()");
                                sb32.append(BackupSetupActivity.m29305a(bool22.booleanValue()));
                                sb.append(sb32.toString());
                                StringBuilder sb42 = new StringBuilder(",rec:");
                                Boolean bool32 = Prefs.f26610hP.get();
                                C18524p.m3843b(bool32, "Prefs.backupRecording.get()");
                                sb42.append(BackupSetupActivity.m29305a(bool32.booleanValue()));
                                sb.append(sb42.toString());
                                StringBuilder sb52 = new StringBuilder(",pvr:");
                                Boolean bool42 = Prefs.f26609hO.get();
                                C18524p.m3843b(bool42, "Prefs.backupVideoRingTones.get()");
                                sb52.append(BackupSetupActivity.m29305a(bool42.booleanValue()));
                                sb.append(sb52.toString());
                                sb.append(",per:" + Prefs.f26606hL.get() + 'd');
                                AnalyticsManager.get().m28449a(Constants.BACKUP_CATEGORY, "BackupSetup", sb.toString());
                                Prefs.f26613hS.set(Boolean.TRUE);
                                PopupManager.get().m28209a(CallAppApplication.get(), new BackUpInfoPopup());
                                BackupSetupActivity.this.finish();
                            }
                            str = "unknown";
                            sb.append("dr:".concat(str));
                            StringBuilder sb222 = new StringBuilder(",ch:");
                            Boolean bool52 = Prefs.f26608hN.get();
                            C18524p.m3843b(bool52, "Prefs.backupCallLog.get()");
                            sb222.append(BackupSetupActivity.m29305a(bool52.booleanValue()));
                            sb.append(sb222.toString());
                            StringBuilder sb322 = new StringBuilder(",ct:");
                            Boolean bool222 = Prefs.f26607hM.get();
                            C18524p.m3843b(bool222, "Prefs.backupContacts.get()");
                            sb322.append(BackupSetupActivity.m29305a(bool222.booleanValue()));
                            sb.append(sb322.toString());
                            StringBuilder sb422 = new StringBuilder(",rec:");
                            Boolean bool322 = Prefs.f26610hP.get();
                            C18524p.m3843b(bool322, "Prefs.backupRecording.get()");
                            sb422.append(BackupSetupActivity.m29305a(bool322.booleanValue()));
                            sb.append(sb422.toString());
                            StringBuilder sb522 = new StringBuilder(",pvr:");
                            Boolean bool422 = Prefs.f26609hO.get();
                            C18524p.m3843b(bool422, "Prefs.backupVideoRingTones.get()");
                            sb522.append(BackupSetupActivity.m29305a(bool422.booleanValue()));
                            sb.append(sb522.toString());
                            sb.append(",per:" + Prefs.f26606hL.get() + 'd');
                            AnalyticsManager.get().m28449a(Constants.BACKUP_CATEGORY, "BackupSetup", sb.toString());
                            Prefs.f26613hS.set(Boolean.TRUE);
                            PopupManager.get().m28209a(CallAppApplication.get(), new BackUpInfoPopup());
                            BackupSetupActivity.this.finish();
                        }
                    });
                    return;
                }
                view.setClickable(false);
                view.setBackgroundResource(2131231001);
                view.setOnClickListener(null);
            }
        });
    }

    public final RadioGroup getBackViaGroup() {
        RadioGroup radioGroup = this.f24719b;
        if (radioGroup == null) {
            C18524p.m3848a("backViaGroup");
        }
        return radioGroup;
    }

    public final BackupLoginCallBack getDropboxLoginListener() {
        return this.f24720c;
    }

    public final BackupLoginCallBack getGoogleLoginListener() {
        return this.f24721d;
    }

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public final int getLayoutResourceId() {
        return 2131558497;
    }

    public final TextView getOkBtn() {
        TextView textView = this.f24718a;
        if (textView == null) {
            C18524p.m3848a("okBtn");
        }
        return textView;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        findViewById(2131362051).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$onCreate$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BackupSetupActivity.this.finish();
            }
        });
        ConstraintLayout forground = (ConstraintLayout) findViewById(2131362861);
        C18524p.m3843b(forground, "forground");
        forground.setBackground(ThemeUtils.getDialogRoundedCenterBackgroundDrawable());
        View findViewById = findViewById(2131362584);
        C18524p.m3843b(findViewById, "findViewById(R.id.dialog_btn_ok)");
        TextView textView = (TextView) findViewById;
        this.f24718a = textView;
        if (textView == null) {
            C18524p.m3848a("okBtn");
        }
        textView.setText(Activities.getString(2131886784));
        TextView textView2 = this.f24718a;
        if (textView2 == null) {
            C18524p.m3848a("okBtn");
        }
        textView2.setTextColor(-1);
        TextView textView3 = this.f24718a;
        if (textView3 == null) {
            C18524p.m3848a("okBtn");
        }
        m29307a(textView3, false);
        View findViewById2 = findViewById(2131362059);
        C18524p.m3843b(findViewById2, "findViewById(R.id.backupTitle)");
        TextView textView4 = (TextView) findViewById2;
        textView4.setTextColor(ThemeUtils.getColor(2131100140));
        textView4.setText(Activities.getString(2131886305));
        View findViewById3 = findViewById(2131362061);
        C18524p.m3843b(findViewById3, "findViewById(R.id.backupToTitle)");
        TextView textView5 = (TextView) findViewById3;
        textView5.setTextColor(ThemeUtils.getColor(2131099784));
        textView5.setText(Activities.getString(2131888212));
        View findViewById4 = findViewById(2131363494);
        C18524p.m3843b(findViewById4, "findViewById(R.id.periodBackup)");
        TextView textView6 = (TextView) findViewById4;
        textView6.setTextColor(ThemeUtils.getColor(2131099784));
        textView6.setText(Activities.getString(2131886303));
        View findViewById5 = findViewById(2131362794);
        C18524p.m3843b(findViewById5, "findViewById(R.id.fileBackTitle)");
        TextView textView7 = (TextView) findViewById5;
        textView7.setTextColor(ThemeUtils.getColor(2131099784));
        textView7.setText(Activities.getString(2131886296));
        int i = 2131364452;
        View findViewById6 = findViewById(2131364452);
        C18524p.m3843b(findViewById6, "findViewById(R.id.twoDays)");
        CallAppRadioButton callAppRadioButton = (CallAppRadioButton) findViewById6;
        callAppRadioButton.setTextColor(ThemeUtils.getColor(2131100140));
        callAppRadioButton.setText(Activities.getString(2131886097));
        View findViewById7 = findViewById(2131364453);
        C18524p.m3843b(findViewById7, "findViewById(R.id.twoWeeks)");
        CallAppRadioButton callAppRadioButton2 = (CallAppRadioButton) findViewById7;
        callAppRadioButton2.setTextColor(ThemeUtils.getColor(2131100140));
        callAppRadioButton2.setText(Activities.getString(2131886096));
        View findViewById8 = findViewById(2131363292);
        C18524p.m3843b(findViewById8, "findViewById(R.id.month)");
        CallAppRadioButton callAppRadioButton3 = (CallAppRadioButton) findViewById8;
        callAppRadioButton3.setTextColor(ThemeUtils.getColor(2131100140));
        callAppRadioButton3.setText(Activities.getString(2131886098));
        View findViewById9 = findViewById(2131362644);
        C18524p.m3843b(findViewById9, "findViewById(R.id.dropBoxBackup)");
        CallAppRadioButton callAppRadioButton4 = (CallAppRadioButton) findViewById9;
        callAppRadioButton4.setTextColor(ThemeUtils.getColor(2131100140));
        callAppRadioButton4.setText(Activities.getString(2131886799));
        View findViewById10 = findViewById(2131362907);
        C18524p.m3843b(findViewById10, "findViewById(R.id.googleDriveBackup)");
        CallAppRadioButton callAppRadioButton5 = (CallAppRadioButton) findViewById10;
        callAppRadioButton5.setTextColor(ThemeUtils.getColor(2131100140));
        callAppRadioButton5.setText(Activities.getString(2131886940));
        View findViewById11 = findViewById(2131362244);
        C18524p.m3843b(findViewById11, "findViewById(R.id.calllogBackup)");
        CheckBox checkBox = (CheckBox) findViewById11;
        checkBox.setTextColor(ThemeUtils.getColor(2131100140));
        checkBox.setText(Activities.getString(2131886381));
        checkBox.setOnCheckedChangeListener(BackupSetupActivity$initViews$1.f24737a);
        Boolean bool = Prefs.f26608hN.get();
        C18524p.m3843b(bool, "Prefs.backupCallLog.get()");
        checkBox.setChecked(bool.booleanValue());
        View findViewById12 = findViewById(2131362464);
        C18524p.m3843b(findViewById12, "findViewById(R.id.contactsBackup)");
        CheckBox checkBox2 = (CheckBox) findViewById12;
        checkBox2.setTextColor(ThemeUtils.getColor(2131100140));
        checkBox2.setText(Activities.getString(2131886655));
        checkBox2.setOnCheckedChangeListener(BackupSetupActivity$initViews$2.f24738a);
        Boolean bool2 = Prefs.f26607hM.get();
        C18524p.m3843b(bool2, "Prefs.backupContacts.get()");
        checkBox2.setChecked(bool2.booleanValue());
        View findViewById13 = findViewById(2131363639);
        C18524p.m3843b(findViewById13, "findViewById(R.id.recordingBackup)");
        CheckBox checkBox3 = (CheckBox) findViewById13;
        checkBox3.setTextColor(ThemeUtils.getColor(2131100140));
        checkBox3.setText(Activities.getString(2131886432));
        checkBox3.setOnCheckedChangeListener(BackupSetupActivity$initViews$3.f24739a);
        Boolean bool3 = Prefs.f26610hP.get();
        C18524p.m3843b(bool3, "Prefs.backupRecording.get()");
        checkBox3.setChecked(bool3.booleanValue());
        View findViewById14 = findViewById(2131363695);
        C18524p.m3843b(findViewById14, "findViewById(R.id.ringtoneBackup)");
        CheckBox checkBox4 = (CheckBox) findViewById14;
        checkBox4.setTextColor(ThemeUtils.getColor(2131100140));
        checkBox4.setText(Activities.getString(2131887391));
        checkBox4.setOnCheckedChangeListener(BackupSetupActivity$initViews$4.f24740a);
        Boolean bool4 = Prefs.f26609hO.get();
        C18524p.m3843b(bool4, "Prefs.backupVideoRingTones.get()");
        checkBox4.setChecked(bool4.booleanValue());
        View findViewById15 = findViewById(2131362060);
        C18524p.m3843b(findViewById15, "findViewById(R.id.backupToGroup)");
        RadioGroup radioGroup = (RadioGroup) findViewById15;
        this.f24719b = radioGroup;
        if (radioGroup == null) {
            C18524p.m3848a("backViaGroup");
        }
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$initViews$5
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i2) {
                if (i2 == 2131362644) {
                    if (!DropBoxHelper.f24761c.get().isLoggedIn()) {
                        DropBoxHelper.f24761c.get().setLoginListener(BackupSetupActivity.this.getDropboxLoginListener());
                        DropBoxHelper.f24761c.get().m29287a(BackupSetupActivity.this);
                        return;
                    }
                    Prefs.f26605hK.set(BackupViaType.DROP_BOX);
                    BackupSetupActivity backupSetupActivity = BackupSetupActivity.this;
                    backupSetupActivity.m29307a(backupSetupActivity.getOkBtn(), true);
                } else if (i2 != 2131362907) {
                    BackupViaType backupViaType = BackupViaType.UN_KNOWN;
                } else if (!GoogleDriveHelper.f24766c.get().isLoggedIn()) {
                    GoogleDriveHelper.f24766c.get().setLoginListener(BackupSetupActivity.this.getGoogleLoginListener());
                    GoogleDriveHelper.f24766c.get().m29279a(BackupSetupActivity.this);
                } else {
                    Prefs.f26605hK.set(BackupViaType.GOOGLE_DRIVE);
                    BackupSetupActivity backupSetupActivity2 = BackupSetupActivity.this;
                    backupSetupActivity2.m29307a(backupSetupActivity2.getOkBtn(), true);
                }
            }
        });
        View findViewById16 = findViewById(2131363495);
        C18524p.m3843b(findViewById16, "findViewById(R.id.periodGroup)");
        RadioGroup radioGroup2 = (RadioGroup) findViewById16;
        radioGroup2.setOnCheckedChangeListener(BackupSetupActivity$initViews$6.f24742a);
        Integer num = Prefs.f26606hL.get();
        int daysInterval = BackupIntervalPeriod.TWO_DAYS.getDaysInterval();
        if (num == null || num.intValue() != daysInterval) {
            i = (num != null && num.intValue() == BackupIntervalPeriod.HALF_MONTH.getDaysInterval()) ? 2131364453 : 2131363292;
        }
        radioGroup2.check(i);
        BackupViaType backupViaType = (BackupViaType) Prefs.f26605hK.get();
        if (backupViaType == null) {
            CLog.m27611a(BackupSetupActivity.class, "Prefs.backupVia is null");
            return;
        }
        int i2 = WhenMappings.f24722a[backupViaType.ordinal()];
        if (i2 == 1) {
            RadioGroup radioGroup3 = this.f24719b;
            if (radioGroup3 == null) {
                C18524p.m3848a("backViaGroup");
            }
            radioGroup3.check(2131362907);
        } else if (i2 == 2) {
            RadioGroup radioGroup4 = this.f24719b;
            if (radioGroup4 == null) {
                C18524p.m3848a("backViaGroup");
            }
            radioGroup4.check(2131362644);
        } else if (i2 != 3) {
        } else {
            RadioGroup radioGroup5 = this.f24719b;
            if (radioGroup5 == null) {
                C18524p.m3848a("backViaGroup");
            }
            radioGroup5.clearCheck();
        }
    }
}
