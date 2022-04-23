package com.callapp.contacts.activity.analytics.ui;

import android.widget.ImageView;
import com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment;
import com.shehabic.droppy.DroppyMenuPopup;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager.class */
public class AnalyticsDatePickerManager {

    /* renamed from: a  reason: collision with root package name */
    DroppyMenuPopup f11031a = null;

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

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener.class */
    public interface OnAnalyticsDatePickerDialogItemClickListener {
        void onDatePick(DatePicker datePicker);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ImageView imageView, ImageView imageView2, ImageView imageView3) {
        imageView.setVisibility(0);
        imageView2.setVisibility(4);
        imageView3.setVisibility(4);
    }

    static /* synthetic */ void a(AnalyticsDatePickerManager analyticsDatePickerManager) {
        DroppyMenuPopup droppyMenuPopup = analyticsDatePickerManager.f11031a;
        if (droppyMenuPopup != null) {
            droppyMenuPopup.a(true);
        }
    }

    public static BaseInsightsFragment.DateTexts getDateText(int i) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMM dd");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy");
        Calendar instance = Calendar.getInstance();
        String format = simpleDateFormat.format(instance.getTime());
        instance.add(6, -i);
        Date time = instance.getTime();
        return new BaseInsightsFragment.DateTexts(format, simpleDateFormat.format(time), simpleDateFormat2.format(time));
    }
}
