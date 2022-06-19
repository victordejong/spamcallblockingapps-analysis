package com.callapp.contacts.popup.contact;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment;
import com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSocialProfileCard;
import com.callapp.contacts.activity.select.PersonSelectActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.SocialDataUtils;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogConfirmProfile.class */
public class DialogConfirmProfile extends DialogPopup {

    /* renamed from: a */
    private final ContactData f27025a;

    /* renamed from: b */
    private final DataSource f27026b;

    /* renamed from: c */
    private final boolean f27027c;

    /* renamed from: d */
    private String f27028d;

    public DialogConfirmProfile(ContactData contactData, DataSource dataSource, boolean z, String str) {
        this.f27025a = contactData;
        this.f27026b = dataSource;
        this.f27027c = z;
        this.f27028d = str;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(final LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558560, (ViewGroup) null);
        inflate.setPadding(inflate.getPaddingLeft(), inflate.getPaddingTop(), inflate.getPaddingRight(), (int) (inflate.getPaddingBottom() + Activities.m27699a(CallAppApplication.get().getResources().getDimension(2131165583))));
        ViewUtils.m27320a(inflate.findViewById(2131362580), ThemeUtils.getDrawable(2131232196));
        final ConfirmSingleProfileFragment.ViewHolder viewHolder = new ConfirmSingleProfileFragment.ViewHolder(inflate);
        int i = this.f27026b.dbCode;
        final String contactPhotoUrlOnSocial = ContactDataUtils.getContactPhotoUrlOnSocial(this.f27025a, i, false);
        final ConfirmSocialProfileCard.ConfirmSocialProfileObject confirmSocialProfileObject = new ConfirmSocialProfileCard.ConfirmSocialProfileObject(null, this.f27025a.getNameOrNumber(), this.f27026b, contactPhotoUrlOnSocial, 2131232143, 2131100228, i, RemoteAccountHelper.getSocialBadgeBgColor(i), new ConfirmSingleProfileFragment.ConfirmOrDismissClicked() { // from class: com.callapp.contacts.popup.contact.DialogConfirmProfile.1
            @Override // com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ConfirmOrDismissClicked
            /* renamed from: a */
            public final void mo28001a(int i2) {
                Singletons.get().getRemoteAccountHelper(i2).m29245a(DialogConfirmProfile.this.f27025a, ContactDataUtils.getSocialNetworkID(DialogConfirmProfile.this.f27025a, i2).getId(), true);
                DialogConfirmProfile.this.dismiss();
            }

            @Override // com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ConfirmOrDismissClicked
            /* renamed from: b */
            public final void mo28000b(final int i2) {
                SocialDataUtils.onUserDismissingSocial(layoutInflater.getContext(), Integer.valueOf(i2), DialogConfirmProfile.this.f27025a, ContactDataUtils.getSocialNetworkID(DialogConfirmProfile.this.f27025a, i2), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogConfirmProfile.1.1
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        PersonSelectActivity.m29699a(DialogConfirmProfile.this.getActivity(), DialogConfirmProfile.this.f27025a, Integer.valueOf(i2), DialogConfirmProfile.this.f27025a.getFullName(), DialogConfirmProfile.this.f27028d);
                        DialogConfirmProfile.this.dismiss();
                    }
                });
            }

            @Override // com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ConfirmOrDismissClicked
            /* renamed from: c */
            public final void mo27999c(int i2) {
            }
        });
        if (!Singletons.get().getRemoteAccountHelper(i).mo29105a(contactPhotoUrlOnSocial)) {
            new Task() { // from class: com.callapp.contacts.popup.contact.DialogConfirmProfile.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    if (StringUtils.m26045b((CharSequence) contactPhotoUrlOnSocial)) {
                        confirmSocialProfileObject.setPhotoUrl(contactPhotoUrlOnSocial);
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.popup.contact.DialogConfirmProfile.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                viewHolder.m31151a(confirmSocialProfileObject, DialogConfirmProfile.this.f27027c);
                            }
                        });
                    }
                }
            }.execute();
        }
        viewHolder.m31151a(confirmSocialProfileObject, this.f27027c);
        inflate.setBackgroundColor(ThemeUtils.m27388a(confirmSocialProfileObject.getBgColor()));
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }
}
