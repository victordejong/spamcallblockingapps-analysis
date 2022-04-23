package com.callapp.contacts.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/WhatsNewPopup.class */
public class WhatsNewPopup extends DialogPopup {
    static /* synthetic */ void a() {
    }

    public static boolean a(Context context, DialogPopup.IDialogSimpleListener iDialogSimpleListener) {
        if (!Prefs.bb.get().booleanValue()) {
            return false;
        }
        Prefs.bb.set(Boolean.FALSE);
        if (Prefs.ai.get() == null) {
            return false;
        }
        WhatsNewPopup whatsNewPopup = new WhatsNewPopup();
        whatsNewPopup.setDialogCustomListener(iDialogSimpleListener);
        PopupManager.get().a(context, whatsNewPopup);
        return true;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558634, (ViewGroup) null);
        ViewUtils.a(inflate.findViewById(2131362580), ThemeUtils.getDrawable(2131232196));
        TextView textView = (TextView) inflate.findViewById(2131362584);
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        textView.setText(Activities.getString(2131887338));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.WhatsNewPopup.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                WhatsNewPopup.this.getActivity();
                WhatsNewPopup.a();
                WhatsNewPopup.this.dismiss();
            }
        });
        ListView listView = (ListView) inflate.findViewById(16908298);
        ArrayList arrayList = new ArrayList();
        String substring = String.format("%X", Integer.valueOf(ThemeUtils.a(CallAppApplication.get(), 2131099784))).substring(2);
        arrayList.add(new WhatsNewItemData(2131231463, Activities.getString(2131888200), HtmlUtils.b(Activities.getString(2131888199))));
        arrayList.add(new WhatsNewItemData(2131231825, Activities.getString(2131888207), HtmlUtils.b(Activities.getString(2131888206))));
        arrayList.add(new WhatsNewItemData(Activities.getString(2131888204)));
        arrayList.add(new WhatsNewItemData(2131231767, Activities.getString(2131888210), HtmlUtils.b(Activities.getString(2131888209))));
        arrayList.add(new WhatsNewItemData(2131231451, Activities.getString(2131888168), HtmlUtils.b(Activities.getString(2131888167))));
        arrayList.add(new WhatsNewItemData(2131231880, Activities.getString(2131888182), HtmlUtils.b(Activities.getString(2131888181))));
        arrayList.add(new WhatsNewItemData(2131231772, Activities.getString(2131888184), HtmlUtils.b(Activities.getString(2131888183))));
        arrayList.add(new WhatsNewItemData(2131231824, HtmlUtils.b(Activities.getString(2131888186)), HtmlUtils.b(Activities.getString(2131888185))));
        arrayList.add(new WhatsNewItemData(2131231772, Activities.getString(2131888188), HtmlUtils.b(Activities.getString(2131888187))));
        arrayList.add(new WhatsNewItemData(2131231824, Activities.getString(2131888190), HtmlUtils.b(Activities.getString(2131888189))));
        arrayList.add(new WhatsNewItemData(2131231385, Activities.getString(2131888192), HtmlUtils.b(Activities.getString(2131888191))));
        arrayList.add(new WhatsNewItemData(2131231531, Activities.getString(2131888194), HtmlUtils.b(Activities.getString(2131888193))));
        arrayList.add(new WhatsNewItemData(2131231718, Activities.getString(2131888196), HtmlUtils.b(Activities.getString(2131888195))));
        arrayList.add(new WhatsNewItemData(2131231920, Activities.getString(2131888198), HtmlUtils.b(Activities.getString(2131888197))));
        arrayList.add(new WhatsNewItemData(2131231384, Activities.getString(2131888202), HtmlUtils.b(Activities.getString(2131888201))));
        arrayList.add(new WhatsNewItemData(2131231384, Activities.getString(2131888170), HtmlUtils.b(Activities.getString(2131888169))));
        arrayList.add(new WhatsNewItemData(2131231609, Activities.getString(2131888172), HtmlUtils.b(Activities.getString(2131888171))));
        arrayList.add(new WhatsNewItemData(2131231555, Activities.getString(2131888174), HtmlUtils.b(String.format(Activities.getString(2131888173), substring))));
        arrayList.add(new WhatsNewItemData(2131231899, Activities.getString(2131888176), HtmlUtils.b(String.format(Activities.getString(2131888175), substring))));
        arrayList.add(new WhatsNewItemData(2131231869, Activities.getString(2131888178), HtmlUtils.b(String.format(Activities.getString(2131888177), substring))));
        arrayList.add(new WhatsNewItemData(2131231894, Activities.getString(2131888180), HtmlUtils.b(Activities.getString(2131888179))));
        ((WhatsNewItemData) arrayList.get(0)).setExpanded(true);
        View inflate2 = layoutInflater.inflate(2131559178, (ViewGroup) null);
        TextView textView2 = (TextView) inflate2.findViewById(2131364421);
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        textView2.setText(Activities.getString(2131888208));
        listView.addHeaderView(inflate2);
        listView.setAdapter((ListAdapter) new WhatsNewAdapter(arrayList));
        ((ImageView) inflate.findViewById(2131364173)).setImageResource(2131231462);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }
}
