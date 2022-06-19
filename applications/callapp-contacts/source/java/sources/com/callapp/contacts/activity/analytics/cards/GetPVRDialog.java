package com.callapp.contacts.activity.analytics.cards;

import android.content.Intent;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.core.content.C0790b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/GetPVRDialog.class */
public class GetPVRDialog extends DialogPopup {

    /* renamed from: a */
    private PresentersContainer f19554a;

    /* renamed from: b */
    private String f19555b;

    public GetPVRDialog(PresentersContainer presentersContainer, String str) {
        this.f19554a = presentersContainer;
        this.f19555b = str;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void dismiss() {
        super.dismiss();
    }

    protected int getLayoutResource() {
        return 2131558677;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResource(), (ViewGroup) null);
        ((TextView) inflate.findViewById(2131364130)).setText(Activities.getString(2131887479));
        final TextView textView = (TextView) inflate.findViewById(2131362897);
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setForeground(C0790b.m44502a(CallAppApplication.get(), 2131230873));
        }
        textView.setText(Activities.getString(2131886932));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.GetPVRDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GetPVRDialog.this.dismiss();
                AndroidUtils.m27630a(textView, 1);
                PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.f23464n;
                Intent m30054a = PersonalCallScreenThemeDownloaderActivity.Companion.m30054a(GetPVRDialog.this.f19554a.getRealContext(), PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE));
                m30054a.putExtra("EXTRA_CONTACT_ID", GetPVRDialog.this.f19555b);
                GetPVRDialog.this.f19554a.getRealContext().startActivity(m30054a);
            }
        });
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawableResource(17170445);
    }
}
