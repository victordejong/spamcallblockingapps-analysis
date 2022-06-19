package com.callapp.contacts.activity.settings;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileNotificationWorker;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions.class */
public class WhoViewedMyProfileAdvancedOptions extends DialogPopup {

    /* renamed from: a */
    private List<WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile> f24361a = new ArrayList();

    /* renamed from: b */
    private RadioGroup f24362b;

    /* renamed from: c */
    private whoViewedMyProfileNotificationTimeChange f24363c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/WhoViewedMyProfileAdvancedOptions$whoViewedMyProfileNotificationTimeChange.class */
    public interface whoViewedMyProfileNotificationTimeChange {
        /* renamed from: b */
        void mo29562b();
    }

    public WhoViewedMyProfileAdvancedOptions(whoViewedMyProfileNotificationTimeChange whoviewedmyprofilenotificationtimechange) {
        this.f24363c = whoviewedmyprofilenotificationtimechange;
    }

    /* renamed from: a */
    static /* synthetic */ void m29564a() {
        if (Prefs.f26645hy.get() == WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile.INSTANT) {
            WhoViewedMyProfileNotificationWorker.f24650a.m29337b();
            return;
        }
        WhoViewedMyProfileNotificationWorker.f24650a.m29337b();
        WhoViewedMyProfileNotificationWorker.f24650a.m29338a();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558635, (ViewGroup) null);
        ViewUtils.m27320a(inflate, ThemeUtils.getDrawable(2131230995));
        this.f24361a.add(WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile.INSTANT);
        this.f24361a.add(WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile.DAILY);
        this.f24361a.add(WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile.WEEKLY);
        final RadioGroup radioGroup = (RadioGroup) inflate.findViewById(2131362180);
        this.f24362b = radioGroup;
        final List<WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile> list = this.f24361a;
        float dimension = CallAppApplication.get().getResources().getDimension(2131165526);
        ViewUtils.m27320a(radioGroup, ThemeUtils.getDrawable(2131230995));
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            RadioButton radioButton = (RadioButton) layoutInflater.inflate(2131558980, (ViewGroup) radioGroup, false);
            radioButton.setTextColor(ThemeUtils.getColor(2131100140));
            radioButton.setText(list.get(i2).getType());
            radioButton.setMinimumHeight((int) dimension);
            radioButton.setId(i2);
            if (list.get(i2).getType().equals(((WhoViewedMyProfileDataManager.NotificationWhoViewedMyProfile) Prefs.f26645hy.get()).getType())) {
                i = i2;
            }
            radioGroup.addView(radioButton);
        }
        radioGroup.check(i);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.settings.WhoViewedMyProfileAdvancedOptions.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup2, int i3) {
                Prefs.f26645hy.set(list.get(radioGroup.getCheckedRadioButtonId()));
                WhoViewedMyProfileAdvancedOptions.m29564a();
                WhoViewedMyProfileAdvancedOptions.this.dismiss();
                if (WhoViewedMyProfileAdvancedOptions.this.f24363c != null) {
                    WhoViewedMyProfileAdvancedOptions.this.f24363c.mo29562b();
                }
            }
        });
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }
}
