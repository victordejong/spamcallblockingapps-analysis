package com.callapp.contacts.activity.identify;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.date.DateUtils;
import java.util.Date;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsDialog.class */
public class IdentifyContactsDialog extends DialogPopup {
    public static void a(final Context context) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsDialog.1
            @Override // java.lang.Runnable
            public final void run() {
                PopupManager.get().a(context, new IdentifyContactsDialog());
            }
        });
    }

    public static void b(final Context context) {
        new Task() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsDialog.2
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                Set<Long> set = Prefs.fn.get();
                if (set != null && set.size() > 1 && !Prefs.fq.get().booleanValue()) {
                    Date date = new Date(System.currentTimeMillis());
                    Date date2 = Prefs.ai.get();
                    if (date2 != null) {
                        if (DateUtils.a(date2, date, TimeUnit.DAYS) >= 1) {
                            Prefs.fq.set(Boolean.TRUE);
                            IdentifyContactsDialog.a(context);
                        }
                    } else if (DateUtils.a(Prefs.ah.get(), date, TimeUnit.DAYS) >= 1) {
                        Prefs.fq.set(Boolean.TRUE);
                        IdentifyContactsDialog.a(context);
                    }
                }
            }
        }.execute();
    }

    private void setupViews(View view) {
        int color = ThemeUtils.getColor(2131100140);
        int color2 = ThemeUtils.getColor(2131099784);
        int color3 = ThemeUtils.getColor(2131100108);
        TextView textView = (TextView) view.findViewById(2131364130);
        TextView textView2 = (TextView) view.findViewById(2131362469);
        textView.setTextColor(color);
        textView.setText(Activities.getString(2131887875));
        textView2.setTextColor(color);
        textView2.setText(Activities.getString(2131887866));
        TextView textView3 = (TextView) view.findViewById(2131363404);
        textView3.setTypeface(textView3.getTypeface(), 1);
        textView3.setTextColor(color2);
        textView3.setText(Activities.getString(2131887338));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                IdentifyContactsDialog.this.dismiss();
                AnalyticsManager.get().a(Constants.OPTIMIZE_CONTACTS, "Optimize contacts popup shown", "Accept", 0.0d, new String[0]);
                IdentifyContactsActivity.a(view2.getContext());
            }
        });
        TextView textView4 = (TextView) view.findViewById(2131363372);
        textView4.setTextColor(color3);
        textView4.setText(Activities.getString(2131887314));
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                IdentifyContactsDialog.this.dismiss();
                AnalyticsManager.get().a(Constants.OPTIMIZE_CONTACTS, "Optimize contacts popup shown", "Decline", 0.0d, new String[0]);
            }
        });
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        AnalyticsManager.get().a(Constants.OPTIMIZE_CONTACTS, "Optimize contacts popup shown");
        View inflate = layoutInflater.inflate(2131558613, (ViewGroup) null);
        setupViews(inflate);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public boolean shouldCanceledOnTouchOutside() {
        return false;
    }
}
