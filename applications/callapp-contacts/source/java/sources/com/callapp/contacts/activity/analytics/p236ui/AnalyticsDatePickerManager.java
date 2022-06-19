package com.callapp.contacts.activity.analytics.p236ui;

import android.widget.ImageView;
import com.callapp.contacts.activity.analytics.p236ui.BaseInsightsFragment;
import com.shehabic.droppy.DroppyMenuPopup;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/* renamed from: com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager */
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager.class */
public class AnalyticsDatePickerManager {

    /* renamed from: a */
    DroppyMenuPopup f20194a = null;

    /* renamed from: com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager$DatePicker */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker.class */
    public enum DatePicker {
        WEEK("week"),
        MONTH("month"),
        LIFE("life");
        
        private String type;

        DatePicker(String str) {
            this.type = str;
        }

        public final String getType() {
            return this.type;
        }
    }

    /* renamed from: com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener.class */
    public interface OnAnalyticsDatePickerDialogItemClickListener {
        void onDatePick(DatePicker datePicker);
    }

    /* renamed from: a */
    public static void m31524a(ImageView imageView, ImageView imageView2, ImageView imageView3) {
        imageView.setVisibility(0);
        imageView2.setVisibility(4);
        imageView3.setVisibility(4);
    }

    /* renamed from: a */
    static /* synthetic */ void m31523a(AnalyticsDatePickerManager analyticsDatePickerManager) {
        DroppyMenuPopup droppyMenuPopup = analyticsDatePickerManager.f20194a;
        if (droppyMenuPopup != null) {
            droppyMenuPopup.m5879a(true);
        }
    }

    public static BaseInsightsFragment.DateTexts getDateText(int i) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM dd");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy");
        Calendar calendar = Calendar.getInstance();
        String format = simpleDateFormat.format(calendar.getTime());
        calendar.add(6, -i);
        Date time = calendar.getTime();
        return new BaseInsightsFragment.DateTexts(format, simpleDateFormat.format(time), simpleDateFormat2.format(time));
    }
}
