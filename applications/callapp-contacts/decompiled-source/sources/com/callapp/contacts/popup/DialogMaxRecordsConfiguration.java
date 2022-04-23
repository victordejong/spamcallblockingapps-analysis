package com.callapp.contacts.popup;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
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
import com.callapp.contacts.recorder.enums.MaxRecordConfiguration;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/DialogMaxRecordsConfiguration.class */
public class DialogMaxRecordsConfiguration extends DialogPopup {
    private RadioGroup buttonGroup;
    private int index;
    private IRecordingToSave listener;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave.class */
    public interface IRecordingToSave {
        void openPlanPageViaRecordDialog();

        void recordingToSave(String str, int i);
    }

    public DialogMaxRecordsConfiguration(int i, IRecordingToSave iRecordingToSave) {
        this.listener = iRecordingToSave;
        this.index = i;
    }

    private void setupGroup(LayoutInflater layoutInflater, RadioGroup radioGroup, MaxRecordConfiguration[] maxRecordConfigurationArr) {
        float dimension = CallAppApplication.get().getResources().getDimension(2131165526);
        ViewUtils.a(radioGroup, ThemeUtils.getDrawable(2131230995));
        for (int i = 0; i < maxRecordConfigurationArr.length; i++) {
            RadioButton radioButton = (RadioButton) layoutInflater.inflate(2131558980, (ViewGroup) radioGroup, false);
            radioButton.setTextColor(ThemeUtils.getColor(2131100140));
            if (maxRecordConfigurationArr[i] != MaxRecordConfiguration.CONF_1000 || Prefs.cJ.get().booleanValue()) {
                radioButton.setText(String.valueOf(maxRecordConfigurationArr[i].getValue()));
            } else {
                String string = Activities.getString(2131886394);
                SpannableString spannableString = new SpannableString(String.valueOf(MaxRecordConfiguration.CONF_1000.getValue()));
                spannableString.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131099890)), 0, spannableString.length(), 33);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannableString);
                SpannableString spannableString2 = new SpannableString(string);
                spannableString2.setSpan(new UnderlineSpan(), 0, spannableString2.length(), 0);
                spannableString2.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131099784)), 0, spannableString2.length(), 33);
                spannableString2.setSpan(new StyleSpan(1), 0, spannableString2.length(), 33);
                spannableStringBuilder.append((CharSequence) StringUtils.SPACE).append((CharSequence) spannableString2);
                radioButton.setText(spannableStringBuilder);
            }
            radioButton.setMinimumHeight((int) dimension);
            radioButton.setId(i);
            radioGroup.addView(radioButton);
        }
        radioGroup.check(this.index);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.callapp.contacts.popup.DialogMaxRecordsConfiguration.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup2, int i2) {
                if (MaxRecordConfiguration.values()[i2] != MaxRecordConfiguration.CONF_1000 || Prefs.cJ.get().booleanValue()) {
                    Prefs.eS.set(Integer.valueOf(i2));
                    int value = MaxRecordConfiguration.values()[i2].getValue();
                    String a2 = Activities.a(2131887868, Integer.valueOf(value));
                    if (DialogMaxRecordsConfiguration.this.listener != null) {
                        DialogMaxRecordsConfiguration.this.listener.recordingToSave(a2, value);
                    }
                } else if (DialogMaxRecordsConfiguration.this.listener != null) {
                    DialogMaxRecordsConfiguration.this.listener.openPlanPageViaRecordDialog();
                }
                DialogMaxRecordsConfiguration.this.dismiss();
            }
        });
    }

    private void setupGroups(LayoutInflater layoutInflater, View view) {
        RadioGroup radioGroup = (RadioGroup) view.findViewById(2131362180);
        this.buttonGroup = radioGroup;
        setupGroup(layoutInflater, radioGroup, MaxRecordConfiguration.values());
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558615, (ViewGroup) null);
        ViewUtils.a(inflate, ThemeUtils.getDrawable(2131230995));
        int color = ThemeUtils.getColor(2131099784);
        int color2 = ThemeUtils.getColor(2131100140);
        ImageView imageView = (ImageView) inflate.findViewById(2131362968);
        TextView textView = (TextView) inflate.findViewById(2131362972);
        textView.setText(Activities.getString(2131887879));
        textView.setTextColor(color2);
        imageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        setupGroups(layoutInflater, inflate);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }
}
