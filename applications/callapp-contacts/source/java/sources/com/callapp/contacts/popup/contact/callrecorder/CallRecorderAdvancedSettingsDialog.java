package com.callapp.contacts.popup.contact.callrecorder;

import android.graphics.PorterDuff;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog.class */
public class CallRecorderAdvancedSettingsDialog extends DialogPopup {

    /* renamed from: a */
    private RadioGroup f27289a;

    /* renamed from: b */
    private RadioGroup f27290b;

    /* renamed from: c */
    private RadioGroup f27291c;

    /* renamed from: a */
    private void m27934a(LayoutInflater layoutInflater, final View view, RadioGroup radioGroup, String[] strArr, int i, int i2, String str) {
        float dimension = CallAppApplication.get().getResources().getDimension(2131165526);
        ViewUtils.m27320a(radioGroup, ThemeUtils.getDrawable(2131230995));
        for (int i3 = 0; i3 < strArr.length; i3++) {
            RadioButton radioButton = (RadioButton) layoutInflater.inflate(2131558697, (ViewGroup) radioGroup, false);
            radioButton.setTextColor(ThemeUtils.getColor(2131100140));
            radioButton.setText(strArr[i3]);
            radioButton.setMinimumHeight((int) dimension);
            radioButton.setId(i3);
            radioGroup.addView(radioButton);
        }
        radioGroup.check(i);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.CallRecorderAdvancedSettingsDialog.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup2, int i4) {
                CallRecorderAdvancedSettingsDialog.this.m27933a(view, true);
            }
        });
        TextView textView = (TextView) view.findViewById(i2);
        textView.setText(str);
        textView.setTextColor(ThemeUtils.getColor(2131099784));
    }

    /* renamed from: a */
    public void m27933a(View view, boolean z) {
        TextView textView = (TextView) view.findViewById(2131362581);
        textView.setText(Activities.getString(2131886289));
        textView.setTextColor(ThemeUtils.getColor(2131099890));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.CallRecorderAdvancedSettingsDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                RecordConfiguration.setDefaults();
                CallRecorderAdvancedSettingsDialog.this.dismiss();
            }
        });
        TextView textView2 = (TextView) view.findViewById(2131362584);
        textView2.setText(Activities.getString(2131887588));
        textView2.setTextColor(-1);
        textView2.setBackgroundResource(z ? 2131232141 : 2131231001);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.CallRecorderAdvancedSettingsDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                CallRecorderAdvancedSettingsDialog.m27932a(CallRecorderAdvancedSettingsDialog.this);
                CallRecorderAdvancedSettingsDialog.this.dismiss();
            }
        });
    }

    /* renamed from: a */
    static /* synthetic */ void m27932a(CallRecorderAdvancedSettingsDialog callRecorderAdvancedSettingsDialog) {
        Prefs.f26450eO.set(RecordConfiguration.METHOD.values()[callRecorderAdvancedSettingsDialog.f27289a.getCheckedRadioButtonId()]);
        Prefs.f26451eP.set(RecordConfiguration.AUDIO_SOURCE.values()[callRecorderAdvancedSettingsDialog.f27290b.getCheckedRadioButtonId()]);
        Prefs.f26452eQ.set(RecordConfiguration.FILE_FORMAT.values()[callRecorderAdvancedSettingsDialog.f27291c.getCheckedRadioButtonId()]);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558624, (ViewGroup) null);
        ViewUtils.m27320a(inflate, ThemeUtils.getDrawable(2131230995));
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(2131558700, (ViewGroup) inflate.findViewById(2131364182), true).findViewById(2131362828);
        ((ImageView) viewGroup2.findViewById(2131362989)).setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
        TextView textView = (TextView) viewGroup2.findViewById(2131364130);
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setText(Activities.getString(2131887528));
        TextView textView2 = (TextView) inflate.findViewById(2131364421);
        textView2.setText(Activities.getString(2131887523));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        textView2.setVisibility(0);
        RecordConfiguration.METHOD[] values = RecordConfiguration.METHOD.values();
        String[] strArr = new String[values.length];
        for (int i = 0; i < values.length; i++) {
            strArr[i] = values[i].getTitle();
        }
        RadioGroup radioGroup = (RadioGroup) inflate.findViewById(2131363275);
        this.f27289a = radioGroup;
        m27934a(layoutInflater, inflate, radioGroup, strArr, ((RecordConfiguration.METHOD) Prefs.f26450eO.get()).ordinal(), 2131363276, Activities.getString(2131887529));
        RecordConfiguration.AUDIO_SOURCE[] values2 = RecordConfiguration.AUDIO_SOURCE.values();
        String[] strArr2 = new String[values2.length];
        for (int i2 = 0; i2 < values2.length; i2++) {
            strArr2[i2] = values2[i2].getTitle();
        }
        RadioGroup radioGroup2 = (RadioGroup) inflate.findViewById(2131362038);
        this.f27290b = radioGroup2;
        m27934a(layoutInflater, inflate, radioGroup2, strArr2, ((RecordConfiguration.AUDIO_SOURCE) Prefs.f26451eP.get()).ordinal(), 2131362039, Activities.getString(2131887524));
        RecordConfiguration.FILE_FORMAT[] values3 = RecordConfiguration.FILE_FORMAT.values();
        String[] strArr3 = new String[values3.length];
        for (int i3 = 0; i3 < values3.length; i3++) {
            strArr3[i3] = values3[i3].getTitle();
        }
        RadioGroup radioGroup3 = (RadioGroup) inflate.findViewById(2131362795);
        this.f27291c = radioGroup3;
        m27934a(layoutInflater, inflate, radioGroup3, strArr3, ((RecordConfiguration.FILE_FORMAT) Prefs.f26452eQ.get()).ordinal(), 2131362796, Activities.getString(2131887526));
        m27933a(inflate, false);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }
}
