package com.callapp.contacts.popup;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.CallAppCheckBox;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/OptInWithTopImagePopup.class */
public class OptInWithTopImagePopup extends DialogMessageWithTopImage {

    /* renamed from: a */
    private final BooleanPref f26889a;

    /* renamed from: b */
    private CallAppCheckBox f26890b;

    private OptInWithTopImagePopup(int i, CharSequence charSequence, CharSequence charSequence2, String str, final DialogPopup.IDialogOnClickListener iDialogOnClickListener, String str2, int i2, DialogPopup.IDialogOnClickListener iDialogOnClickListener2, BooleanPref booleanPref) {
        super(i, charSequence, charSequence2, str, iDialogOnClickListener, str2, i2, iDialogOnClickListener2);
        this.f26889a = booleanPref;
        setPositiveListener(new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup._$$Lambda$OptInWithTopImagePopup$X5xcmnkmzdCtEChHjElaFVJX2n0
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                OptInWithTopImagePopup.this.m28053a(iDialogOnClickListener, activity);
            }
        });
    }

    /* renamed from: a */
    public static void m28056a(Context context, DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        PopupManager.get().m28209a(context, new OptInWithTopImagePopup(2131232023, Activities.getString(2131887041), HtmlUtils.m27537b(Activities.getString(2131887040)), Activities.getString(2131887338), iDialogOnClickListener, null, -1, null, Prefs.f26503fO));
    }

    /* renamed from: a */
    public static void m28055a(Context context, DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        if (m28057a()) {
            PopupManager.get().m28209a(context, new OptInWithTopImagePopup(2131232023, Activities.getString(2131887039), Activities.getString(2131887038), Activities.getString(2131887338), iDialogOnClickListener, Activities.getString(2131886563), ThemeUtils.getColor(2131099920), iDialogOnClickListener2, Prefs.f26502fN));
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m28054a(View view) {
        CallAppCheckBox callAppCheckBox = this.f26890b;
        callAppCheckBox.setChecked(!callAppCheckBox.isChecked());
    }

    /* renamed from: a */
    public /* synthetic */ void m28053a(DialogPopup.IDialogOnClickListener iDialogOnClickListener, Activity activity) {
        if (this.f26890b.isChecked()) {
            this.f26889a.set(Boolean.FALSE);
        }
        iDialogOnClickListener.onClickListener(activity);
    }

    /* renamed from: a */
    public static boolean m28057a() {
        return Prefs.f26502fN.get().booleanValue();
    }

    /* renamed from: b */
    public static void m28051b(Context context, DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        PopupManager.get().m28209a(context, new OptInWithTopImagePopup(2131232023, Activities.getString(2131887039), Activities.getString(2131887037), Activities.getString(2131887338), iDialogOnClickListener, Activities.getString(2131886563), ThemeUtils.getColor(2131099920), iDialogOnClickListener2, Prefs.f26501fM));
    }

    /* renamed from: b */
    public static boolean m28052b() {
        return Prefs.f26501fM.get().booleanValue();
    }

    /* renamed from: c */
    public static boolean m28050c() {
        return Prefs.f26503fO.get().booleanValue();
    }

    @Override // com.callapp.contacts.popup.contact.DialogMessageWithTopImage
    public int getLayoutResource() {
        return 2131558619;
    }

    @Override // com.callapp.contacts.popup.contact.DialogMessageWithTopImage, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        ((TextView) ovViewCreated.findViewById(2131364425)).setText(Activities.getString(2131887362));
        this.f26890b = (CallAppCheckBox) ovViewCreated.findViewById(2131363418);
        ovViewCreated.findViewById(2131363419).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup._$$Lambda$OptInWithTopImagePopup$1prs42S7UOTLZv5YVrMjcRIP86g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OptInWithTopImagePopup.this.m28054a(view);
            }
        });
        this.f26890b.setChecked(false);
        return ovViewCreated;
    }
}
