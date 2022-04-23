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

    /* renamed from: a  reason: collision with root package name */
    private final ContactData f15442a;

    /* renamed from: b  reason: collision with root package name */
    private final DataSource f15443b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f15444c;

    /* renamed from: d  reason: collision with root package name */
    private String f15445d;

    public DialogConfirmProfile(ContactData contactData, DataSource dataSource, boolean z, String str) {
        this.f15442a = contactData;
        this.f15443b = dataSource;
        this.f15444c = z;
        this.f15445d = str;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(final LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558560, (ViewGroup) null);
        inflate.setPadding(inflate.getPaddingLeft(), inflate.getPaddingTop(), inflate.getPaddingRight(), (int) (inflate.getPaddingBottom() + Activities.a(CallAppApplication.get().getResources().getDimension(2131165583))));
        ViewUtils.a(inflate.findViewById(2131362580), ThemeUtils.getDrawable(2131232196));
        final ConfirmSingleProfileFragment.ViewHolder viewHolder = new ConfirmSingleProfileFragment.ViewHolder(inflate);
        int i = this.f15443b.dbCode;
        final String contactPhotoUrlOnSocial = ContactDataUtils.getContactPhotoUrlOnSocial(this.f15442a, i, false);
        final ConfirmSocialProfileCard.ConfirmSocialProfileObject confirmSocialProfileObject = new ConfirmSocialProfileCard.ConfirmSocialProfileObject(null, this.f15442a.getNameOrNumber(), this.f15443b, contactPhotoUrlOnSocial, 2131232143, 2131100228, i, RemoteAccountHelper.getSocialBadgeBgColor(i), new ConfirmSingleProfileFragment.ConfirmOrDismissClicked() { // from class: com.callapp.contacts.popup.contact.DialogConfirmProfile.1
            @Override // com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ConfirmOrDismissClicked
            public final void a(int i2) {
                Singletons.get().getRemoteAccountHelper(i2).a(DialogConfirmProfile.this.f15442a, ContactDataUtils.getSocialNetworkID(DialogConfirmProfile.this.f15442a, i2).getId(), true);
                DialogConfirmProfile.this.dismiss();
            }

            @Override // com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ConfirmOrDismissClicked
            public final void b(final int i2) {
                SocialDataUtils.onUserDismissingSocial(layoutInflater.getContext(), Integer.valueOf(i2), DialogConfirmProfile.this.f15442a, ContactDataUtils.getSocialNetworkID(DialogConfirmProfile.this.f15442a, i2), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogConfirmProfile.1.1
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        PersonSelectActivity.a(DialogConfirmProfile.this.getActivity(), DialogConfirmProfile.this.f15442a, Integer.valueOf(i2), DialogConfirmProfile.this.f15442a.getFullName(), DialogConfirmProfile.this.f15445d);
                        DialogConfirmProfile.this.dismiss();
                    }
                });
            }

            @Override // com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSingleProfileFragment.ConfirmOrDismissClicked
            public final void c(int i2) {
            }
        });
        if (!Singletons.get().getRemoteAccountHelper(i).a(contactPhotoUrlOnSocial)) {
            new Task() { // from class: com.callapp.contacts.popup.contact.DialogConfirmProfile.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    if (StringUtils.b((CharSequence) contactPhotoUrlOnSocial)) {
                        confirmSocialProfileObject.setPhotoUrl(contactPhotoUrlOnSocial);
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.popup.contact.DialogConfirmProfile.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                viewHolder.a(confirmSocialProfileObject, DialogConfirmProfile.this.f15444c);
                            }
                        });
                    }
                }
            }.execute();
        }
        viewHolder.a(confirmSocialProfileObject, this.f15444c);
        inflate.setBackgroundColor(ThemeUtils.a(confirmSocialProfileObject.getBgColor()));
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }
}
