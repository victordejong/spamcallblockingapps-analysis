package p160l8;

import android.app.TimePickerDialog;
import android.text.format.DateFormat;
import android.view.View;
import android.widget.Button;
import android.widget.TimePicker;
import java.util.Date;
import java.util.Objects;
import p095f8.C2779g;
import p117h8.C3047u;
/* renamed from: l8.u */
/* loaded from: classes2-dex2jar.jar:l8/u.class */
public final /* synthetic */ class View$OnClickListenerC3538u implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f11697a;

    /* renamed from: b */
    public final /* synthetic */ C3540w f11698b;

    /* renamed from: c */
    public final /* synthetic */ Object f11699c;

    public /* synthetic */ View$OnClickListenerC3538u(C3540w c3540w, Object obj, int i) {
        this.f11697a = i;
        this.f11698b = c3540w;
        this.f11699c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f11697a) {
            case 0:
                C3540w c3540w = this.f11698b;
                c3540w.m2208j(4, true ^ c3540w.m2215c(4));
                c3540w.m2203o((View) this.f11699c);
                return;
            case 1:
                final C3540w c3540w2 = this.f11698b;
                final Button button = (Button) this.f11699c;
                boolean is24HourFormat = DateFormat.is24HourFormat(c3540w2.f11702a);
                Date m3106i = C2779g.m3106i(c3540w2.m2213e(2));
                TimePickerDialog timePickerDialog = new TimePickerDialog(view.getContext(), new TimePickerDialog.OnTimeSetListener() { // from class: l8.o
                    @Override // android.app.TimePickerDialog.OnTimeSetListener
                    public final void onTimeSet(TimePicker timePicker, int i, int i2) {
                        C3540w c3540w3 = C3540w.this;
                        Button button2 = button;
                        Objects.requireNonNull(c3540w3);
                        Date m3107h = C2779g.m3107h(i, i2);
                        button2.setText(C2779g.m3102m(c3540w3.f11702a, C2779g.m3107h(i, i2)));
                        c3540w3.m2207k(2, C2779g.m3101n(m3107h));
                    }
                }, C2779g.m3097r(m3106i), C2779g.m3094u(m3106i), is24HourFormat);
                timePickerDialog.setTitle("");
                timePickerDialog.show();
                int color = c3540w2.f11702a.getResources().getColor(2131099739);
                timePickerDialog.getButton(-1).setTextColor(color);
                timePickerDialog.getButton(-2).setTextColor(color);
                return;
            default:
                C3540w c3540w3 = this.f11698b;
                Objects.requireNonNull(c3540w3);
                int i = ((C3047u) this.f11699c).f10325e;
                if (i == 1) {
                    return;
                }
                c3540w3.m2202p(i - 1, i);
                c3540w3.f11704c--;
                return;
        }
    }
}
