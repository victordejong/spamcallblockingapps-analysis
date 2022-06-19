package com.callapp.contacts.activity.settings;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.ContactAction;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/PostCallDefaultIMDialog.class */
public class PostCallDefaultIMDialog extends DialogPopup {

    /* renamed from: a */
    private RadioGroup f24117a;

    /* renamed from: b */
    private List<ContactAction> f24118b = new ArrayList();

    /* renamed from: a */
    private void m29671a(LayoutInflater layoutInflater, final View view, RadioGroup radioGroup, List<ContactAction> list) {
        int i;
        float dimension = CallAppApplication.get().getResources().getDimension(2131165526);
        ViewUtils.m27320a(radioGroup, ThemeUtils.getDrawable(2131230995));
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= list.size()) {
                break;
            }
            RadioButton radioButton = (RadioButton) layoutInflater.inflate(2131558980, (ViewGroup) radioGroup, false);
            radioButton.setTextColor(ThemeUtils.getColor(2131100140));
            radioButton.setText(list.get(i2).getNameString());
            radioButton.setMinimumHeight((int) dimension);
            radioButton.setId(i2);
            int i4 = i;
            if (Prefs.f26632hl.get() != ContactAction.UNKNOWN) {
                i4 = i;
                if (list.get(i2).getNameString().equals(((ContactAction) Prefs.f26632hl.get()).getNameString())) {
                    i4 = i2;
                }
            }
            radioGroup.addView(radioButton);
            i2++;
            i3 = i4;
        }
        if (Prefs.f26632hl.get() != ContactAction.UNKNOWN) {
            radioGroup.check(i);
        }
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.settings.PostCallDefaultIMDialog.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup2, int i5) {
                PostCallDefaultIMDialog.this.m29670a(view, true);
            }
        });
    }

    /* renamed from: a */
    public void m29670a(View view, boolean z) {
        TextView textView = (TextView) view.findViewById(2131362581);
        textView.setText(Activities.getString(2131886505));
        textView.setTextColor(ThemeUtils.getColor(2131099890));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.settings.PostCallDefaultIMDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PostCallDefaultIMDialog.this.dismiss();
            }
        });
        TextView textView2 = (TextView) view.findViewById(2131362584);
        textView2.setText(Activities.getString(2131887588));
        textView2.setTextColor(-1);
        textView2.setBackgroundResource(z ? 2131232141 : 2131231001);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.settings.PostCallDefaultIMDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PostCallDefaultIMDialog.m29669a(PostCallDefaultIMDialog.this);
                PostCallDefaultIMDialog.this.dismiss();
            }
        });
    }

    /* renamed from: a */
    static /* synthetic */ void m29669a(PostCallDefaultIMDialog postCallDefaultIMDialog) {
        if (!CollectionUtils.m26068b(postCallDefaultIMDialog.f24118b) || postCallDefaultIMDialog.f24117a.getCheckedRadioButtonId() == -1) {
            return;
        }
        Prefs.f26632hl.set(postCallDefaultIMDialog.f24118b.get(postCallDefaultIMDialog.f24117a.getCheckedRadioButtonId()));
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        ImSender imSender;
        View inflate = layoutInflater.inflate(2131558609, (ViewGroup) null);
        ViewUtils.m27320a(inflate, ThemeUtils.getDrawable(2131230995));
        TextView textView = (TextView) inflate.findViewById(2131364130);
        textView.setText(Activities.getString(2131887635));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        ContactAction[] values = ContactAction.values();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < values.length; i++) {
            if (values[i].getType() != null) {
                Singletons.get();
                imSender = Singletons.m28494a(values[i].getType());
            } else {
                imSender = null;
            }
            if (values[i].isIM() && imSender != null && imSender.isAppInstalled()) {
                arrayList.add(values[i].getNameString());
                arrayList2.add(Integer.valueOf(values[i].getLargeIcon()));
                this.f24118b.add(values[i]);
            }
        }
        if (CollectionUtils.m26076a(this.f24118b)) {
            FeedbackManager.get().m28669a(Activities.getString(2131887310), (Integer) null);
            dismiss();
        }
        RadioGroup radioGroup = (RadioGroup) inflate.findViewById(2131362180);
        this.f24117a = radioGroup;
        m29671a(layoutInflater, inflate, radioGroup, this.f24118b);
        m29670a(inflate, false);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }
}
