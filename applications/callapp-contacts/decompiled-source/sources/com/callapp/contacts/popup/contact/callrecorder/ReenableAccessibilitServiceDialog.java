package com.callapp.contacts.popup.contact.callrecorder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog.class */
public class ReenableAccessibilitServiceDialog extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private PopupDoneListener f15601a;

    public ReenableAccessibilitServiceDialog() {
    }

    public ReenableAccessibilitServiceDialog(PopupDoneListener popupDoneListener) {
        this.f15601a = popupDoneListener;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public String getCheckBoxText() {
        return Activities.getString(2131887083);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558625, (ViewGroup) null);
        ViewUtils.a(inflate, ThemeUtils.getDrawable(2131230995));
        TextView textView = (TextView) inflate.findViewById(2131364421);
        textView.setText(Activities.getString(2131886134));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setTypeface(textView.getTypeface(), 1);
        TextView textView2 = (TextView) inflate.findViewById(2131364424);
        textView2.setText(Activities.getString(2131886133));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView3 = (TextView) inflate.findViewById(2131362584);
        textView3.setText(Activities.getString(2131886231));
        textView3.setTextColor(ThemeUtils.getColor(2131099784));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.ReenableAccessibilitServiceDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ReenableAccessibilitServiceDialog.this.isBottomBarCheckBoxChecked()) {
                    Prefs.fe.set(Boolean.TRUE);
                }
                Activities.a(ReenableAccessibilitServiceDialog.this.getActivity(), new PopupDoneListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.ReenableAccessibilitServiceDialog.1.1
                    @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                    public void popupDone(boolean z) {
                        if (Activities.isCallAppAccessibilityServiceEnabled()) {
                            Prefs.eP.set(RecordConfiguration.AUDIO_SOURCE.VOICE_RECOGNITION);
                        }
                        ReenableAccessibilitServiceDialog.this.dismiss();
                        if (ReenableAccessibilitServiceDialog.this.f15601a != null) {
                            ReenableAccessibilitServiceDialog.this.f15601a.popupDone(z);
                        }
                    }
                });
            }
        });
        TextView textView4 = (TextView) inflate.findViewById(2131362581);
        textView4.setText(Activities.getString(2131886563));
        textView4.setTextColor(ThemeUtils.getColor(2131100108));
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.ReenableAccessibilitServiceDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ReenableAccessibilitServiceDialog.this.isBottomBarCheckBoxChecked()) {
                    Prefs.fe.set(Boolean.TRUE);
                }
                ReenableAccessibilitServiceDialog.this.dismiss();
                if (ReenableAccessibilitServiceDialog.this.f15601a != null) {
                    ReenableAccessibilitServiceDialog.this.f15601a.popupDone(false);
                }
            }
        });
        showBottomBarCheckBox(true);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }
}
