package com.callapp.contacts.model.contact.social;

import android.app.Activity;
import android.content.Context;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.Objects;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/SocialDataUtils.class */
public class SocialDataUtils {
    public static String getDefaultText(int i, SocialData socialData) {
        String defaultText = i != 1 ? i != 4 ? i != 6 ? i != 7 ? i != 9 ? i != 10 ? null : VKDataUtils.getDefaultText((VKData) socialData) : PinterestDataUtils.getDefaultText((PinterestData) socialData) : InstagramDataUtils.getDefaultText((InstagramData) socialData) : FoursquareDataUtils.getDefaultText((FoursquareData) socialData) : TwitterDataUtils.getDefaultText((TwitterData) socialData) : FacebookDataUtils.getDefaultText((FacebookData) socialData);
        String str = defaultText;
        if (StringUtils.b((CharSequence) defaultText)) {
            str = HtmlUtils.a(defaultText);
        }
        return str;
    }

    public static void onUserDismissingSocial(Context context, final Integer num, final ContactData contactData, final JSONSocialNetworkID jSONSocialNetworkID, final DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        PopupManager.get().a(context, new DialogSimpleMessage(Activities.a(2131887469, Singletons.get().getRemoteAccountHelper(num.intValue()).getName()), Activities.getString(2131887468), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.model.contact.social.SocialDataUtils.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                new Task() { // from class: com.callapp.contacts.model.contact.social.SocialDataUtils.1.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        Singletons.get().getRemoteAccountHelper(num.intValue()).a(contactData, jSONSocialNetworkID.getId());
                    }
                }.execute();
                DialogPopup.IDialogOnClickListener iDialogOnClickListener2 = iDialogOnClickListener;
                if (iDialogOnClickListener2 != null) {
                    iDialogOnClickListener2.onClickListener(activity);
                }
                FeedbackManager.get().a();
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.model.contact.social.SocialDataUtils.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                FeedbackManager.get().a();
            }
        }));
    }

    public static boolean setFullName(ContactData contactData, SocialData socialData, String str) {
        if (StringUtils.b(socialData.getFullName(), str)) {
            return false;
        }
        socialData.setFullName(str);
        contactData.updateFullName();
        return true;
    }

    public static boolean setIsFriend(ContactData contactData, SocialData socialData, Boolean bool, ContactField contactField) {
        if (Objects.a(bool, socialData.isFriend())) {
            return false;
        }
        socialData.setIsFriend(bool);
        contactData.fireChange(contactField);
        return true;
    }

    public static boolean setMutualFriends(ContactData contactData, SocialData socialData, List<PersonData> list) {
        if (CollectionUtils.a((Collection) socialData.getMutualFriends(), (Collection) list)) {
            return false;
        }
        socialData.setMutualFriends(list);
        contactData.updateMutualFriends();
        return true;
    }

    public static boolean setPhotoUrl(ContactData contactData, SocialData socialData, String str, String str2) {
        boolean z = true;
        if (!StringUtils.b(socialData.getPhotoUrl(), str)) {
            socialData.setPhotoUrl(str);
            z = true;
        } else {
            z = false;
        }
        if (!StringUtils.b(socialData.getThumbnailUrl(), str2)) {
            socialData.setThumbnailUrl(str2);
        }
        if (!z) {
            return false;
        }
        contactData.updatePhoto();
        return false;
    }
}
