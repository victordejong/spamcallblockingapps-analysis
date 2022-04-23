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
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u001cH\u0014J\b\u0010\u001e\u001a\u00020\u0016H\u0002J\u0012\u0010\u001f\u001a\u00020\u00162\b\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001aH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\fR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006%"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;", "Lcom/callapp/contacts/util/BaseTransparentActivity;", "()V", "backViaGroup", "Landroid/widget/RadioGroup;", "getBackViaGroup", "()Landroid/widget/RadioGroup;", "setBackViaGroup", "(Landroid/widget/RadioGroup;)V", "dropboxLoginListener", "Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;", "getDropboxLoginListener", "()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;", "googleLoginListener", "getGoogleLoginListener", "okBtn", "Landroid/widget/TextView;", "getOkBtn", "()Landroid/widget/TextView;", "setOkBtn", "(Landroid/widget/TextView;)V", "enableNextBtn", "", "view", "Landroid/view/View;", "isEnable", "", "getCurrentCheckViaResId", "", "getLayoutResourceId", "initViews", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "toOneOrZero", "", "bol", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupSetupActivity.class */
public final class BackupSetupActivity extends BaseTransparentActivity {

    /* renamed from: a  reason: collision with root package name */
    public TextView f14068a;

    /* renamed from: b  reason: collision with root package name */
    public RadioGroup f14069b;

    /* renamed from: c  reason: collision with root package name */
    private final BackupLoginCallBack f14070c = new BackupSetupActivity$dropboxLoginListener$1(this);

    /* renamed from: d  reason: collision with root package name */
    private final BackupLoginCallBack f14071d = new BackupSetupActivity$googleLoginListener$1(this);

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupSetupActivity$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f14072a;

        /* renamed from: b  reason: collision with root package name */
        public static final /* synthetic */ int[] f14073b;

        /* renamed from: c  reason: collision with root package name */
        public static final /* synthetic */ int[] f14074c;

        static {
            int[] iArr = new int[BackupViaType.values().length];
            f14072a = iArr;
            iArr[BackupViaType.GOOGLE_DRIVE.ordinal()] = 1;
            iArr[BackupViaType.DROP_BOX.ordinal()] = 2;
            iArr[BackupViaType.UN_KNOWN.ordinal()] = 3;
            int[] iArr2 = new int[BackupViaType.values().length];
            f14073b = iArr2;
            iArr2[BackupViaType.GOOGLE_DRIVE.ordinal()] = 1;
            iArr2[BackupViaType.DROP_BOX.ordinal()] = 2;
            int[] iArr3 = new int[BackupViaType.values().length];
            f14074c = iArr3;
            iArr3[BackupViaType.GOOGLE_DRIVE.ordinal()] = 1;
            iArr3[BackupViaType.DROP_BOX.ordinal()] = 2;
        }
    }

    public static final /* synthetic */ String a(boolean z) {
        if (z) {
            return "1";
        }
        if (!z) {
            return "0";
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final View view, final boolean z) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$enableNextBtn$1
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
                            BackupViaType backupViaType = (BackupViaType) Prefs.hK.get();
                            if (backupViaType != null) {
                                int i = BackupSetupActivity.WhenMappings.f14074c[backupViaType.ordinal()];
                                if (i == 1) {
                                    str = "ggl";
                                } else if (i == 2) {
                                    str = "drx";
                                }
                                sb.append("dr:".concat(str));
                                StringBuilder sb2 = new StringBuilder(",ch:");
                                Boolean bool = Prefs.hN.get();
                                p.b(bool, "Prefs.backupCallLog.get()");
                                sb2.append(BackupSetupActivity.a(bool.booleanValue()));
                                sb.append(sb2.toString());
                                StringBuilder sb3 = new StringBuilder(",ct:");
                                Boolean bool2 = Prefs.hM.get();
                                p.b(bool2, "Prefs.backupContacts.get()");
                                sb3.append(BackupSetupActivity.a(bool2.booleanValue()));
                                sb.append(sb3.toString());
                                StringBuilder sb4 = new StringBuilder(",rec:");
                                Boolean bool3 = Prefs.hP.get();
                                p.b(bool3, "Prefs.backupRecording.get()");
                                sb4.append(BackupSetupActivity.a(bool3.booleanValue()));
                                sb.append(sb4.toString());
                                StringBuilder sb5 = new StringBuilder(",pvr:");
                                Boolean bool4 = Prefs.hO.get();
                                p.b(bool4, "Prefs.backupVideoRingTones.get()");
                                sb5.append(BackupSetupActivity.a(bool4.booleanValue()));
                                sb.append(sb5.toString());
                                sb.append(",per:" + Prefs.hL.get() + 'd');
                                AnalyticsManager.get().a(Constants.BACKUP_CATEGORY, "BackupSetup", sb.toString());
                                Prefs.hS.set(Boolean.TRUE);
                                PopupManager.get().a(CallAppApplication.get(), new BackUpInfoPopup());
                                BackupSetupActivity.this.finish();
                            }
                            str = "unknown";
                            sb.append("dr:".concat(str));
                            StringBuilder sb22 = new StringBuilder(",ch:");
                            Boolean bool5 = Prefs.hN.get();
                            p.b(bool5, "Prefs.backupCallLog.get()");
                            sb22.append(BackupSetupActivity.a(bool5.booleanValue()));
                            sb.append(sb22.toString());
                            StringBuilder sb32 = new StringBuilder(",ct:");
                            Boolean bool22 = Prefs.hM.get();
                            p.b(bool22, "Prefs.backupContacts.get()");
                            sb32.append(BackupSetupActivity.a(bool22.booleanValue()));
                            sb.append(sb32.toString());
                            StringBuilder sb42 = new StringBuilder(",rec:");
                            Boolean bool32 = Prefs.hP.get();
                            p.b(bool32, "Prefs.backupRecording.get()");
                            sb42.append(BackupSetupActivity.a(bool32.booleanValue()));
                            sb.append(sb42.toString());
                            StringBuilder sb52 = new StringBuilder(",pvr:");
                            Boolean bool42 = Prefs.hO.get();
                            p.b(bool42, "Prefs.backupVideoRingTones.get()");
                            sb52.append(BackupSetupActivity.a(bool42.booleanValue()));
                            sb.append(sb52.toString());
                            sb.append(",per:" + Prefs.hL.get() + 'd');
                            AnalyticsManager.get().a(Constants.BACKUP_CATEGORY, "BackupSetup", sb.toString());
                            Prefs.hS.set(Boolean.TRUE);
                            PopupManager.get().a(CallAppApplication.get(), new BackUpInfoPopup());
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
        RadioGroup radioGroup = this.f14069b;
        if (radioGroup == null) {
            p.a("backViaGroup");
        }
        return radioGroup;
    }

    public final BackupLoginCallBack getDropboxLoginListener() {
        return this.f14070c;
    }

    public final BackupLoginCallBack getGoogleLoginListener() {
        return this.f14071d;
    }

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public final int getLayoutResourceId() {
        return 2131558497;
    }

    public final TextView getOkBtn() {
        TextView textView = this.f14068a;
        if (textView == null) {
            p.a("okBtn");
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
        p.b(forground, "forground");
        forground.setBackground(ThemeUtils.getDialogRoundedCenterBackgroundDrawable());
        View findViewById = findViewById(2131362584);
        p.b(findViewById, "findViewById(R.id.dialog_btn_ok)");
        TextView textView = (TextView) findViewById;
        this.f14068a = textView;
        if (textView == null) {
            p.a("okBtn");
        }
        textView.setText(Activities.getString(2131886784));
        TextView textView2 = this.f14068a;
        if (textView2 == null) {
            p.a("okBtn");
        }
        textView2.setTextColor(-1);
        TextView textView3 = this.f14068a;
        if (textView3 == null) {
            p.a("okBtn");
        }
        a(textView3, false);
        View findViewById2 = findViewById(2131362059);
        p.b(findViewById2, "findViewById(R.id.backupTitle)");
        TextView textView4 = (TextView) findViewById2;
        textView4.setTextColor(ThemeUtils.getColor(2131100140));
        textView4.setText(Activities.getString(2131886305));
        View findViewById3 = findViewById(2131362061);
        p.b(findViewById3, "findViewById(R.id.backupToTitle)");
        TextView textView5 = (TextView) findViewById3;
        textView5.setTextColor(ThemeUtils.getColor(2131099784));
        textView5.setText(Activities.getString(2131888212));
        View findViewById4 = findViewById(2131363494);
        p.b(findViewById4, "findViewById(R.id.periodBackup)");
        TextView textView6 = (TextView) findViewById4;
        textView6.setTextColor(ThemeUtils.getColor(2131099784));
        textView6.setText(Activities.getString(2131886303));
        View findViewById5 = findViewById(2131362794);
        p.b(findViewById5, "findViewById(R.id.fileBackTitle)");
        TextView textView7 = (TextView) findViewById5;
        textView7.setTextColor(ThemeUtils.getColor(2131099784));
        textView7.setText(Activities.getString(2131886296));
        int i = 2131364452;
        View findViewById6 = findViewById(2131364452);
        p.b(findViewById6, "findViewById(R.id.twoDays)");
        CallAppRadioButton callAppRadioButton = (CallAppRadioButton) findViewById6;
        callAppRadioButton.setTextColor(ThemeUtils.getColor(2131100140));
        callAppRadioButton.setText(Activities.getString(2131886097));
        View findViewById7 = findViewById(2131364453);
        p.b(findViewById7, "findViewById(R.id.twoWeeks)");
        CallAppRadioButton callAppRadioButton2 = (CallAppRadioButton) findViewById7;
        callAppRadioButton2.setTextColor(ThemeUtils.getColor(2131100140));
        callAppRadioButton2.setText(Activities.getString(2131886096));
        View findViewById8 = findViewById(2131363292);
        p.b(findViewById8, "findViewById(R.id.month)");
        CallAppRadioButton callAppRadioButton3 = (CallAppRadioButton) findViewById8;
        callAppRadioButton3.setTextColor(ThemeUtils.getColor(2131100140));
        callAppRadioButton3.setText(Activities.getString(2131886098));
        View findViewById9 = findViewById(2131362644);
        p.b(findViewById9, "findViewById(R.id.dropBoxBackup)");
        CallAppRadioButton callAppRadioButton4 = (CallAppRadioButton) findViewById9;
        callAppRadioButton4.setTextColor(ThemeUtils.getColor(2131100140));
        callAppRadioButton4.setText(Activities.getString(2131886799));
        View findViewById10 = findViewById(2131362907);
        p.b(findViewById10, "findViewById(R.id.googleDriveBackup)");
        CallAppRadioButton callAppRadioButton5 = (CallAppRadioButton) findViewById10;
        callAppRadioButton5.setTextColor(ThemeUtils.getColor(2131100140));
        callAppRadioButton5.setText(Activities.getString(2131886940));
        View findViewById11 = findViewById(2131362244);
        p.b(findViewById11, "findViewById(R.id.calllogBackup)");
        CheckBox checkBox = (CheckBox) findViewById11;
        checkBox.setTextColor(ThemeUtils.getColor(2131100140));
        checkBox.setText(Activities.getString(2131886381));
        checkBox.setOnCheckedChangeListener(BackupSetupActivity$initViews$1.f14087a);
        Boolean bool = Prefs.hN.get();
        p.b(bool, "Prefs.backupCallLog.get()");
        checkBox.setChecked(bool.booleanValue());
        View findViewById12 = findViewById(2131362464);
        p.b(findViewById12, "findViewById(R.id.contactsBackup)");
        CheckBox checkBox2 = (CheckBox) findViewById12;
        checkBox2.setTextColor(ThemeUtils.getColor(2131100140));
        checkBox2.setText(Activities.getString(2131886655));
        checkBox2.setOnCheckedChangeListener(BackupSetupActivity$initViews$2.f14088a);
        Boolean bool2 = Prefs.hM.get();
        p.b(bool2, "Prefs.backupContacts.get()");
        checkBox2.setChecked(bool2.booleanValue());
        View findViewById13 = findViewById(2131363639);
        p.b(findViewById13, "findViewById(R.id.recordingBackup)");
        CheckBox checkBox3 = (CheckBox) findViewById13;
        checkBox3.setTextColor(ThemeUtils.getColor(2131100140));
        checkBox3.setText(Activities.getString(2131886432));
        checkBox3.setOnCheckedChangeListener(BackupSetupActivity$initViews$3.f14089a);
        Boolean bool3 = Prefs.hP.get();
        p.b(bool3, "Prefs.backupRecording.get()");
        checkBox3.setChecked(bool3.booleanValue());
        View findViewById14 = findViewById(2131363695);
        p.b(findViewById14, "findViewById(R.id.ringtoneBackup)");
        CheckBox checkBox4 = (CheckBox) findViewById14;
        checkBox4.setTextColor(ThemeUtils.getColor(2131100140));
        checkBox4.setText(Activities.getString(2131887391));
        checkBox4.setOnCheckedChangeListener(BackupSetupActivity$initViews$4.f14090a);
        Boolean bool4 = Prefs.hO.get();
        p.b(bool4, "Prefs.backupVideoRingTones.get()");
        checkBox4.setChecked(bool4.booleanValue());
        View findViewById15 = findViewById(2131362060);
        p.b(findViewById15, "findViewById(R.id.backupToGroup)");
        RadioGroup radioGroup = (RadioGroup) findViewById15;
        this.f14069b = radioGroup;
        if (radioGroup == null) {
            p.a("backViaGroup");
        }
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.callapp.contacts.api.helper.backup.BackupSetupActivity$initViews$5
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i2) {
                if (i2 != 2131362644) {
                    if (i2 != 2131362907) {
                        BackupViaType backupViaType = BackupViaType.UN_KNOWN;
                    } else if (GoogleDriveHelper.f14115c.get().isLoggedIn()) {
                        Prefs.hK.set(BackupViaType.GOOGLE_DRIVE);
                        BackupSetupActivity backupSetupActivity = BackupSetupActivity.this;
                        backupSetupActivity.a(backupSetupActivity.getOkBtn(), true);
                    } else {
                        GoogleDriveHelper.f14115c.get().setLoginListener(BackupSetupActivity.this.getGoogleLoginListener());
                        GoogleDriveHelper.f14115c.get().a(BackupSetupActivity.this);
                    }
                } else if (DropBoxHelper.f14111c.get().isLoggedIn()) {
                    Prefs.hK.set(BackupViaType.DROP_BOX);
                    BackupSetupActivity backupSetupActivity2 = BackupSetupActivity.this;
                    backupSetupActivity2.a(backupSetupActivity2.getOkBtn(), true);
                } else {
                    DropBoxHelper.f14111c.get().setLoginListener(BackupSetupActivity.this.getDropboxLoginListener());
                    DropBoxHelper.f14111c.get().a(BackupSetupActivity.this);
                }
            }
        });
        View findViewById16 = findViewById(2131363495);
        p.b(findViewById16, "findViewById(R.id.periodGroup)");
        RadioGroup radioGroup2 = (RadioGroup) findViewById16;
        radioGroup2.setOnCheckedChangeListener(BackupSetupActivity$initViews$6.f14092a);
        Integer num = Prefs.hL.get();
        int daysInterval = BackupIntervalPeriod.TWO_DAYS.getDaysInterval();
        if (num == null || num.intValue() != daysInterval) {
            i = (num != null && num.intValue() == BackupIntervalPeriod.HALF_MONTH.getDaysInterval()) ? 2131364453 : 2131363292;
        }
        radioGroup2.check(i);
        BackupViaType backupViaType = (BackupViaType) Prefs.hK.get();
        if (backupViaType == null) {
            CLog.a(BackupSetupActivity.class, "Prefs.backupVia is null");
            return;
        }
        int i2 = WhenMappings.f14072a[backupViaType.ordinal()];
        if (i2 == 1) {
            RadioGroup radioGroup3 = this.f14069b;
            if (radioGroup3 == null) {
                p.a("backViaGroup");
            }
            radioGroup3.check(2131362907);
        } else if (i2 == 2) {
            RadioGroup radioGroup4 = this.f14069b;
            if (radioGroup4 == null) {
                p.a("backViaGroup");
            }
            radioGroup4.check(2131362644);
        } else if (i2 == 3) {
            RadioGroup radioGroup5 = this.f14069b;
            if (radioGroup5 == null) {
                p.a("backViaGroup");
            }
            radioGroup5.clearCheck();
        }
    }
}
