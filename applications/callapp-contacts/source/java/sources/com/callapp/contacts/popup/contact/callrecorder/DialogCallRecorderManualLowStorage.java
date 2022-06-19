package com.callapp.contacts.popup.contact.callrecorder;

import android.app.Activity;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.loader.CallRecorderLoader;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage.class */
public class DialogCallRecorderManualLowStorage extends DialogPopup {

    /* renamed from: a */
    private final CallData f27296a;

    /* renamed from: b */
    private final CallRecorder f27297b;

    /* renamed from: c */
    private final ContactData f27298c;

    public DialogCallRecorderManualLowStorage(ContactData contactData, CallData callData, CallRecorder callRecorder) {
        this.f27296a = callData;
        this.f27297b = callRecorder;
        this.f27298c = contactData;
        AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "Storage exception display");
    }

    private void setupViews(View view) {
        int color = ThemeUtils.getColor(2131100228);
        int color2 = ThemeUtils.getColor(2131100108);
        int color3 = ThemeUtils.getColor(2131100140);
        ((ImageView) view.findViewById(2131362989)).setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        TextView textView = (TextView) view.findViewById(2131364429);
        textView.setText(Activities.getString(2131886417));
        textView.setTextColor(color);
        TextView textView2 = (TextView) view.findViewById(2131364424);
        textView2.setText(Activities.getString(2131886416));
        textView2.setTextColor(color3);
        TextView textView3 = (TextView) view.findViewById(2131363546);
        textView3.setText(this.f27296a.getNumber().getPhoneInfo());
        textView3.setTextColor(color3);
        TextView textView4 = (TextView) view.findViewById(2131363540);
        textView4.setText(Activities.getString(2131887328));
        textView4.setTextColor(color2);
        ImageUtils.m27529a((ImageView) view.findViewById(2131363545), CallLogUtils.m27570a(this.f27296a), (ColorFilter) null);
        TextView textView5 = (TextView) view.findViewById(2131363541);
        textView5.setText(String.valueOf((int) ((System.currentTimeMillis() - this.f27296a.getTalkingStartTime()) / 1000)));
        textView5.setTextColor(color2);
        setupButton(view, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderManualLowStorage.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        }, 2131362584, Activities.getString(2131887588), false);
        setupButton(view, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderManualLowStorage.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                CallRecorderManager.get().m27877a(DialogCallRecorderManualLowStorage.this.f27297b);
                CallRecorderLoader.m27830a(DialogCallRecorderManualLowStorage.this.f27298c);
                EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL_RECORDERS, false);
            }
        }, 2131362581, Activities.getString(2131886774), ThemeUtils.getColor(2131100108));
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558600, (ViewGroup) null);
        setupViews(inflate);
        setCancelable(false);
        return inflate;
    }
}
