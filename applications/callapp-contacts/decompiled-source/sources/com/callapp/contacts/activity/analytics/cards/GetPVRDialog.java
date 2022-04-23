package com.callapp.contacts.activity.analytics.cards;

import android.content.Intent;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.core.content.b;
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

    /* renamed from: a  reason: collision with root package name */
    private PresentersContainer f10735a;

    /* renamed from: b  reason: collision with root package name */
    private String f10736b;

    public GetPVRDialog(PresentersContainer presentersContainer, String str) {
        this.f10735a = presentersContainer;
        this.f10736b = str;
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
            textView.setForeground(b.a(CallAppApplication.get(), 2131230873));
        }
        textView.setText(Activities.getString(2131886932));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.GetPVRDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GetPVRDialog.this.dismiss();
                AndroidUtils.a(textView, 1);
                PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.n;
                Intent a2 = PersonalCallScreenThemeDownloaderActivity.Companion.a(GetPVRDialog.this.f10735a.getRealContext(), PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE));
                a2.putExtra("EXTRA_CONTACT_ID", GetPVRDialog.this.f10736b);
                GetPVRDialog.this.f10735a.getRealContext().startActivity(a2);
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
