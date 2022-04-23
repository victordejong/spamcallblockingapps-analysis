package com.callapp.contacts.popup.contact.callrecorder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog.class */
public class AccessibilityServiceDialog extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private final PopupDoneListener f15554a;

    public AccessibilityServiceDialog(PopupDoneListener popupDoneListener) {
        this.f15554a = popupDoneListener;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558598, (ViewGroup) null);
        ViewUtils.a(inflate, ThemeUtils.getDrawable(2131230995));
        TextView textView = (TextView) inflate.findViewById(2131364421);
        textView.setText(Activities.getString(2131886137));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setTypeface(null, 1);
        textView.setVisibility(0);
        TextView textView2 = (TextView) inflate.findViewById(2131363274);
        textView2.setText(Activities.getString(2131886132));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView3 = (TextView) inflate.findViewById(2131363971);
        textView3.setText(Activities.getString(2131886135));
        textView3.setTextColor(ThemeUtils.getColor(2131099784));
        TextView textView4 = (TextView) inflate.findViewById(2131363976);
        textView4.setText(Activities.getString(2131886136));
        textView4.setTextColor(ThemeUtils.getColor(2131099784));
        new GlideUtils.GifPlayer(getActivity(), (ImageView) inflate.findViewById(2131363972), 2131230815, -1, true);
        TextView textView5 = (TextView) inflate.findViewById(2131362584);
        textView5.setText(Activities.getString(2131886231));
        textView5.setTextColor(-1);
        textView5.setBackgroundResource(2131232141);
        textView5.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.AccessibilityServiceDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activities.a(AccessibilityServiceDialog.this.getActivity(), new PopupDoneListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.AccessibilityServiceDialog.1.1
                    @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                    public void popupDone(boolean z) {
                        if (Activities.isCallAppAccessibilityServiceEnabled()) {
                            Prefs.eP.set(RecordConfiguration.AUDIO_SOURCE.VOICE_RECOGNITION);
                        }
                        if (AccessibilityServiceDialog.this.f15554a != null) {
                            AccessibilityServiceDialog.this.f15554a.popupDone(z);
                        }
                        AccessibilityServiceDialog.this.dismiss();
                    }
                });
            }
        });
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }
}
