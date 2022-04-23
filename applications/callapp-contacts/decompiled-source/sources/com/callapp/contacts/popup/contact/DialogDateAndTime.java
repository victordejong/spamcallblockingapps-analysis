package com.callapp.contacts.popup.contact;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.DatePicker;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.core.content.b;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogDateAndTime.class */
public class DialogDateAndTime extends DialogPopup {

    /* renamed from: c  reason: collision with root package name */
    private IDateAndTimeDialogListener f15467c;

    /* renamed from: d  reason: collision with root package name */
    private Calendar f15468d;

    /* renamed from: b  reason: collision with root package name */
    private long f15466b = 0;

    /* renamed from: a  reason: collision with root package name */
    public int f15465a = 1;
    private boolean e = true;
    private String f = Activities.getString(2131887338);
    private String g = Activities.getString(2131886505);
    private String h = null;
    private TextView i = null;
    private TextView j = null;
    private TextView k = null;
    private ViewGroup l = null;
    private TextView m = null;
    private ImageView n = null;
    private Long o = Long.valueOf(new Date().getTime() - 1000);
    private Long p = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener.class */
    public interface IDateAndTimeDialogListener {
        void a();

        void a(long j);
    }

    public DialogDateAndTime(Calendar calendar, IDateAndTimeDialogListener iDateAndTimeDialogListener) {
        this.f15467c = null;
        this.f15467c = iDateAndTimeDialogListener;
        this.f15468d = calendar;
    }

    static /* synthetic */ Calendar a(DatePicker datePicker, TimePicker timePicker) {
        return new GregorianCalendar(datePicker.getYear(), datePicker.getMonth(), datePicker.getDayOfMonth(), timePicker.getCurrentHour().intValue(), timePicker.getCurrentMinute().intValue());
    }

    private static void a(TextView textView, String str) {
        if (textView != null) {
            textView.setText(str);
            textView.setVisibility(StringUtils.a((CharSequence) str) ? 8 : 0);
        }
    }

    static /* synthetic */ void a(DialogDateAndTime dialogDateAndTime, DatePicker datePicker, TimePicker timePicker, TextView textView) {
        dialogDateAndTime.f15465a = dialogDateAndTime.f15465a == 0 ? 1 : 0;
        dialogDateAndTime.b(datePicker, timePicker);
    }

    private void a(boolean z) {
        ImageView imageView = this.n;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_ATOP));
            this.n.setVisibility(z ? 0 : 8);
        }
    }

    private void b(DatePicker datePicker, TimePicker timePicker) {
        int i = this.f15465a;
        String str = null;
        if (i == 0) {
            datePicker.setVisibility(0);
            timePicker.setVisibility(8);
            this.l.setVisibility(8);
            TextView textView = this.i;
            if (this.e) {
                str = Activities.getString(2131886287);
            }
            a(textView, str);
        } else if (i == 1) {
            this.l.setVisibility(0);
            datePicker.setVisibility(8);
            timePicker.setVisibility(0);
            setDialogTitleText(getDateTextByDate());
            a(this.i, (String) null);
        }
    }

    private String getDateTextByDate() {
        return DateUtils.a(this.f15468d, Calendar.getInstance()) ? Activities.getString(2131886454) : Activities.a(2131886443, Integer.valueOf(this.f15468d.get(2) + 1), Integer.valueOf(this.f15468d.get(5)));
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.legacyDialogs;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558582, (ViewGroup) null);
        final DatePicker datePicker = (DatePicker) inflate.findViewById(2131362528);
        final TimePicker timePicker = (TimePicker) inflate.findViewById(2131364128);
        this.m = (TextView) inflate.findViewById(2131362587);
        this.j = (TextView) inflate.findViewById(2131362584);
        this.i = (TextView) inflate.findViewById(2131362583);
        this.k = (TextView) inflate.findViewById(2131362581);
        this.n = (ImageView) inflate.findViewById(2131362588);
        String str = this.h;
        String str2 = str;
        if (str == null) {
            str2 = getDateTextByDate();
        }
        setDialogTitleText(str2);
        a(this.j, this.f);
        a(this.k, this.g);
        a(this.e);
        this.m.setText(Activities.getString(2131886454));
        this.l = (FrameLayout) inflate.findViewById(2131362328);
        timePicker.setIs24HourView(Boolean.valueOf(DateFormat.is24HourFormat(layoutInflater.getContext())));
        int i = this.f15468d.get(1);
        int i2 = this.f15468d.get(2);
        int i3 = this.f15468d.get(5);
        int i4 = this.f15468d.get(11);
        int i5 = this.f15468d.get(12);
        this.f15466b = this.f15468d.getTimeInMillis();
        datePicker.updateDate(i, i2, i3);
        timePicker.setCurrentHour(Integer.valueOf(i4));
        timePicker.setCurrentMinute(Integer.valueOf(i5));
        Long l = this.o;
        if (l != null) {
            datePicker.setMinDate(l.longValue());
        }
        Long l2 = this.p;
        if (l2 != null) {
            datePicker.setMaxDate(l2.longValue());
        }
        datePicker.setCalendarViewShown(false);
        this.l.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.DialogDateAndTime.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                if (DialogDateAndTime.this.e) {
                    DialogDateAndTime.this.f15468d.set(datePicker.getYear(), datePicker.getMonth(), datePicker.getDayOfMonth(), timePicker.getCurrentHour().intValue(), timePicker.getCurrentMinute().intValue());
                    DialogDateAndTime dialogDateAndTime = DialogDateAndTime.this;
                    DialogDateAndTime.a(dialogDateAndTime, datePicker, timePicker, dialogDateAndTime.m);
                }
            }
        });
        int color = ThemeUtils.getColor(2131099784);
        this.i.setTextColor(color);
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogDateAndTime.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogDateAndTime.this.f15468d = DialogDateAndTime.a(datePicker, timePicker);
                if (DialogDateAndTime.this.e) {
                    DialogDateAndTime dialogDateAndTime = DialogDateAndTime.this;
                    DialogDateAndTime.a(dialogDateAndTime, datePicker, timePicker, dialogDateAndTime.m);
                    return;
                }
                DialogDateAndTime.this.dismiss();
            }
        });
        this.k.setTextColor(color);
        this.k.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.DialogDateAndTime.3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                if (DialogDateAndTime.this.f15467c != null) {
                    DialogDateAndTime.this.f15467c.a();
                }
                DialogDateAndTime.this.dismiss();
            }
        });
        this.j.setTextColor(color);
        this.j.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.DialogDateAndTime.4
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                Calendar a2 = DialogDateAndTime.a(datePicker, timePicker);
                long timeInMillis = a2.getTimeInMillis();
                if (DialogDateAndTime.this.f15465a == 0) {
                    Calendar instance = Calendar.getInstance();
                    instance.setTimeInMillis(DialogDateAndTime.this.f15466b);
                    if (a2.get(11) == instance.get(11) && a2.get(12) == instance.get(12)) {
                        DialogDateAndTime.this.f15468d.set(datePicker.getYear(), datePicker.getMonth(), datePicker.getDayOfMonth(), timePicker.getCurrentHour().intValue(), timePicker.getCurrentMinute().intValue());
                        if (DialogDateAndTime.this.e) {
                            DialogDateAndTime dialogDateAndTime = DialogDateAndTime.this;
                            DialogDateAndTime.a(dialogDateAndTime, datePicker, timePicker, dialogDateAndTime.m);
                            return;
                        }
                    }
                }
                if (DialogDateAndTime.this.f15467c != null) {
                    DialogDateAndTime.this.f15467c.a(timeInMillis);
                }
                DialogDateAndTime.this.dismiss();
            }
        });
        b(datePicker, timePicker);
        return inflate;
    }

    public void setAllowToggleState(boolean z) {
        this.e = z;
        a(z);
    }

    public void setDialogTitleText(String str) {
        this.h = str;
        TextView textView = this.m;
        if (textView != null) {
            textView.setTextColor(b.c(textView.getContext(), 2131100140));
            this.m.setText(str);
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setGravity(17);
    }

    public void setMaxDate(Long l) {
        this.p = l;
    }

    public void setMinDate(Long l) {
        this.o = l;
    }

    public void setNegativeBtnText(String str) {
        this.g = str;
        a(this.k, str);
    }
}
