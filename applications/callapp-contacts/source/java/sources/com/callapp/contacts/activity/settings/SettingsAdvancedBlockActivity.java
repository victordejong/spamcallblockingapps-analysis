package com.callapp.contacts.activity.settings;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.CompoundButton;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseTopBarActivity;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.SettingsRowCompoundBtn;
import com.callapp.contacts.widget.SettingsRowSelectSingleChoice;
import com.callapp.contacts.widget.TopBarFragment;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity.class */
public class SettingsAdvancedBlockActivity extends BaseTopBarActivity implements TopBarFragment.TopBarEvents {
    @Override // com.callapp.contacts.widget.TopBarFragment.TopBarEvents
    /* renamed from: a */
    public final void mo26320a(TopBarFragment.TopBarIconStates topBarIconStates) {
        finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558467;
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getSupportActionBar().mo46237a(true);
        setTitle(Activities.getString(2131886226));
        AnalyticsManager.get().mo28441b(Constants.ADVANCED_BLOCK_SCREEN);
        int m27386a = ThemeUtils.m27386a(CallAppApplication.get(), 2131099686);
        View findViewById = findViewById(2131363717);
        SettingsRowCompoundBtn settingsRowCompoundBtn = (SettingsRowCompoundBtn) findViewById.findViewById(2131363716);
        findViewById.setBackgroundColor(m27386a);
        settingsRowCompoundBtn.setTitle(Activities.getString(2131887061));
        settingsRowCompoundBtn.setChecked(Prefs.f26287bK.get().booleanValue());
        settingsRowCompoundBtn.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsAdvancedBlockActivity.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                AndroidUtils.m27635a((Activity) SettingsAdvancedBlockActivity.this);
                Prefs.f26287bK.set(Boolean.valueOf(z));
                AnalyticsManager.get().m28449a(Constants.ADVANCED_BLOCK_SETTINGS, "Block international numbers toggled. is enabled: ".concat(String.valueOf(z)), Constants.CLICK);
            }
        });
        View findViewById2 = findViewById(2131363721);
        final SettingsRowCompoundBtn settingsRowCompoundBtn2 = (SettingsRowCompoundBtn) findViewById2.findViewById(2131363720);
        findViewById2.setBackgroundColor(m27386a);
        settingsRowCompoundBtn2.setTitle(Activities.getString(2131887322));
        settingsRowCompoundBtn2.setChecked(Prefs.f26288bL.get().booleanValue());
        settingsRowCompoundBtn2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.settings.SettingsAdvancedBlockActivity.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, final boolean z) {
                AndroidUtils.m27635a((Activity) SettingsAdvancedBlockActivity.this);
                if (z) {
                    PopupManager.get().m28209a(SettingsAdvancedBlockActivity.this, new DialogSimpleMessage(null, Activities.getString(2131886353), Activities.getString(2131887338), Activities.getString(2131886505), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsAdvancedBlockActivity.2.1
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            new Task() { // from class: com.callapp.contacts.activity.settings.SettingsAdvancedBlockActivity.2.1.1
                                @Override // com.callapp.contacts.manager.task.Task
                                public void doTask() {
                                    Prefs.f26288bL.set(Boolean.TRUE);
                                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                                    analyticsManager.m28449a(Constants.ADVANCED_BLOCK_SETTINGS, "Block non contacts toggled. is enabled: true" + z, Constants.CLICK);
                                }
                            }.execute();
                        }
                    }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsAdvancedBlockActivity.2.2
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            settingsRowCompoundBtn2.setChecked(Prefs.f26288bL.get().booleanValue());
                        }
                    }, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.settings.SettingsAdvancedBlockActivity.2.3
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        /* renamed from: a */
                        public final void mo26209a(DialogPopup dialogPopup) {
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        /* renamed from: b */
                        public final void mo26208b(DialogPopup dialogPopup) {
                            settingsRowCompoundBtn2.setChecked(Prefs.f26288bL.get().booleanValue());
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                        public void onShow(DialogInterface dialogInterface) {
                        }
                    }));
                    return;
                }
                Prefs.f26288bL.set(Boolean.valueOf(z));
                AnalyticsManager.get().m28449a(Constants.ADVANCED_BLOCK_SETTINGS, "Block non contacts toggled. is enabled: ".concat(String.valueOf(z)), Constants.CLICK);
            }
        });
        View findViewById3 = findViewById(2131363719);
        SettingsRowSelectSingleChoice settingsRowSelectSingleChoice = (SettingsRowSelectSingleChoice) findViewById3.findViewById(2131363718);
        final BlockManager.BlockMethod[] values = BlockManager.BlockMethod.values();
        String[] strArr = new String[values.length];
        for (int i = 0; i < values.length; i++) {
            strArr[i] = values[i].getTitle();
        }
        int ordinal = ((BlockManager.BlockMethod) Prefs.f26289bM.get()).ordinal();
        findViewById3.setBackgroundColor(m27386a);
        settingsRowSelectSingleChoice.setTitle(Activities.getString(2131886224));
        settingsRowSelectSingleChoice.setChoices(ordinal, strArr, Activities.getString(2131886224));
        settingsRowSelectSingleChoice.setListener(new DialogSelectSingleChoiceBase.SingleChoiceListenerImpel() { // from class: com.callapp.contacts.activity.settings.SettingsAdvancedBlockActivity.3
            @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
            /* renamed from: b */
            public final void mo26631b(int i2) {
                BlockManager.BlockMethod blockMethod = values[i2];
                Prefs.f26289bM.set(blockMethod);
                AnalyticsManager analyticsManager = AnalyticsManager.get();
                analyticsManager.m28449a(Constants.ADVANCED_BLOCK_SETTINGS, "Block method option changed to: " + blockMethod.getTitle(), Constants.CLICK);
            }
        });
        settingsRowSelectSingleChoice.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.settings.SettingsAdvancedBlockActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27635a((Activity) SettingsAdvancedBlockActivity.this);
                AnalyticsManager.get().m28449a(Constants.ADVANCED_BLOCK_SETTINGS, "Block method option clicked.", Constants.CLICK);
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.ADVANCED_BLOCK_SCREEN);
    }
}
