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
import androidx.core.content.C0790b;
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

    /* renamed from: c */
    private IDateAndTimeDialogListener f27063c;

    /* renamed from: d */
    private Calendar f27064d;

    /* renamed from: b */
    private long f27062b = 0;

    /* renamed from: a */
    public int f27061a = 1;

    /* renamed from: e */
    private boolean f27065e = true;

    /* renamed from: f */
    private String f27066f = Activities.getString(2131887338);

    /* renamed from: g */
    private String f27067g = Activities.getString(2131886505);

    /* renamed from: h */
    private String f27068h = null;

    /* renamed from: i */
    private TextView f27069i = null;

    /* renamed from: j */
    private TextView f27070j = null;

    /* renamed from: k */
    private TextView f27071k = null;

    /* renamed from: l */
    private ViewGroup f27072l = null;

    /* renamed from: m */
    private TextView f27073m = null;

    /* renamed from: n */
    private ImageView f27074n = null;

    /* renamed from: o */
    private Long f27075o = Long.valueOf(new Date().getTime() - 1000);

    /* renamed from: p */
    private Long f27076p = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener.class */
    public interface IDateAndTimeDialogListener {
        /* renamed from: a */
        void mo27973a();

        /* renamed from: a */
        void mo27972a(long j);
    }

    public DialogDateAndTime(Calendar calendar, IDateAndTimeDialogListener iDateAndTimeDialogListener) {
        this.f27063c = null;
        this.f27063c = iDateAndTimeDialogListener;
        this.f27064d = calendar;
    }

    /* renamed from: a */
    static /* synthetic */ Calendar m27985a(DatePicker datePicker, TimePicker timePicker) {
        return new GregorianCalendar(datePicker.getYear(), datePicker.getMonth(), datePicker.getDayOfMonth(), timePicker.getCurrentHour().intValue(), timePicker.getCurrentMinute().intValue());
    }

    /* renamed from: a */
    private static void m27984a(TextView textView, String str) {
        if (textView != null) {
            textView.setText(str);
            textView.setVisibility(StringUtils.m26059a((CharSequence) str) ? 8 : 0);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m27982a(DialogDateAndTime dialogDateAndTime, DatePicker datePicker, TimePicker timePicker, TextView textView) {
        dialogDateAndTime.f27061a = dialogDateAndTime.f27061a == 0 ? 1 : 0;
        dialogDateAndTime.m27979b(datePicker, timePicker);
    }

    /* renamed from: a */
    private void m27980a(boolean z) {
        ImageView imageView = this.f27074n;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_ATOP));
            this.f27074n.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: b */
    private void m27979b(DatePicker datePicker, TimePicker timePicker) {
        int i = this.f27061a;
        if (i != 0) {
            if (i != 1) {
                return;
            }
            this.f27072l.setVisibility(0);
            datePicker.setVisibility(8);
            timePicker.setVisibility(0);
            setDialogTitleText(getDateTextByDate());
            m27984a(this.f27069i, (String) null);
            return;
        }
        datePicker.setVisibility(0);
        timePicker.setVisibility(8);
        this.f27072l.setVisibility(8);
        TextView textView = this.f27069i;
        String str = null;
        if (this.f27065e) {
            str = Activities.getString(2131886287);
        }
        m27984a(textView, str);
    }

    private String getDateTextByDate() {
        return DateUtils.m27128a(this.f27064d, Calendar.getInstance()) ? Activities.getString(2131886454) : Activities.m27697a(2131886443, Integer.valueOf(this.f27064d.get(2) + 1), Integer.valueOf(this.f27064d.get(5)));
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
        this.f27073m = (TextView) inflate.findViewById(2131362587);
        this.f27070j = (TextView) inflate.findViewById(2131362584);
        this.f27069i = (TextView) inflate.findViewById(2131362583);
        this.f27071k = (TextView) inflate.findViewById(2131362581);
        this.f27074n = (ImageView) inflate.findViewById(2131362588);
        String str = this.f27068h;
        String str2 = str;
        if (str == null) {
            str2 = getDateTextByDate();
        }
        setDialogTitleText(str2);
        m27984a(this.f27070j, this.f27066f);
        m27984a(this.f27071k, this.f27067g);
        m27980a(this.f27065e);
        this.f27073m.setText(Activities.getString(2131886454));
        this.f27072l = (FrameLayout) inflate.findViewById(2131362328);
        timePicker.setIs24HourView(Boolean.valueOf(DateFormat.is24HourFormat(layoutInflater.getContext())));
        int i = this.f27064d.get(1);
        int i2 = this.f27064d.get(2);
        int i3 = this.f27064d.get(5);
        int i4 = this.f27064d.get(11);
        int i5 = this.f27064d.get(12);
        this.f27062b = this.f27064d.getTimeInMillis();
        datePicker.updateDate(i, i2, i3);
        timePicker.setCurrentHour(Integer.valueOf(i4));
        timePicker.setCurrentMinute(Integer.valueOf(i5));
        Long l = this.f27075o;
        if (l != null) {
            datePicker.setMinDate(l.longValue());
        }
        Long l2 = this.f27076p;
        if (l2 != null) {
            datePicker.setMaxDate(l2.longValue());
        }
        datePicker.setCalendarViewShown(false);
        this.f27072l.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.DialogDateAndTime.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                if (DialogDateAndTime.this.f27065e) {
                    DialogDateAndTime.this.f27064d.set(datePicker.getYear(), datePicker.getMonth(), datePicker.getDayOfMonth(), timePicker.getCurrentHour().intValue(), timePicker.getCurrentMinute().intValue());
                    DialogDateAndTime dialogDateAndTime = DialogDateAndTime.this;
                    DialogDateAndTime.m27982a(dialogDateAndTime, datePicker, timePicker, dialogDateAndTime.f27073m);
                }
            }
        });
        int color = ThemeUtils.getColor(2131099784);
        this.f27069i.setTextColor(color);
        this.f27069i.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogDateAndTime.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogDateAndTime.this.f27064d = DialogDateAndTime.m27985a(datePicker, timePicker);
                if (!DialogDateAndTime.this.f27065e) {
                    DialogDateAndTime.this.dismiss();
                    return;
                }
                DialogDateAndTime dialogDateAndTime = DialogDateAndTime.this;
                DialogDateAndTime.m27982a(dialogDateAndTime, datePicker, timePicker, dialogDateAndTime.f27073m);
            }
        });
        this.f27071k.setTextColor(color);
        this.f27071k.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.DialogDateAndTime.3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                if (DialogDateAndTime.this.f27063c != null) {
                    DialogDateAndTime.this.f27063c.mo27973a();
                }
                DialogDateAndTime.this.dismiss();
            }
        });
        this.f27070j.setTextColor(color);
        this.f27070j.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.DialogDateAndTime.4
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                Calendar m27985a = DialogDateAndTime.m27985a(datePicker, timePicker);
                long timeInMillis = m27985a.getTimeInMillis();
                if (DialogDateAndTime.this.f27061a == 0) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTimeInMillis(DialogDateAndTime.this.f27062b);
                    if (m27985a.get(11) == calendar.get(11) && m27985a.get(12) == calendar.get(12)) {
                        DialogDateAndTime.this.f27064d.set(datePicker.getYear(), datePicker.getMonth(), datePicker.getDayOfMonth(), timePicker.getCurrentHour().intValue(), timePicker.getCurrentMinute().intValue());
                        if (DialogDateAndTime.this.f27065e) {
                            DialogDateAndTime dialogDateAndTime = DialogDateAndTime.this;
                            DialogDateAndTime.m27982a(dialogDateAndTime, datePicker, timePicker, dialogDateAndTime.f27073m);
                            return;
                        }
                    }
                }
                if (DialogDateAndTime.this.f27063c != null) {
                    DialogDateAndTime.this.f27063c.mo27972a(timeInMillis);
                }
                DialogDateAndTime.this.dismiss();
            }
        });
        m27979b(datePicker, timePicker);
        return inflate;
    }

    public void setAllowToggleState(boolean z) {
        this.f27065e = z;
        m27980a(z);
    }

    public void setDialogTitleText(String str) {
        this.f27068h = str;
        TextView textView = this.f27073m;
        if (textView != null) {
            textView.setTextColor(C0790b.m44492c(textView.getContext(), 2131100140));
            this.f27073m.setText(str);
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setGravity(17);
    }

    public void setMaxDate(Long l) {
        this.f27076p = l;
    }

    public void setMinDate(Long l) {
        this.f27075o = l;
    }

    public void setNegativeBtnText(String str) {
        this.f27067g = str;
        m27984a(this.f27071k, str);
    }
}
