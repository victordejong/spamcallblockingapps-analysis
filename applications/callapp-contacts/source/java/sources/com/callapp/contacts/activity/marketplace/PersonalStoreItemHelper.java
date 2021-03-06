package com.callapp.contacts.activity.marketplace;

import android.app.Activity;
import android.content.Context;
import android.text.SpannableString;
import android.view.View;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.ProgressCardView;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0004J*\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u001f"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;", "", "()V", "ASSIGN_TO_ALL_FLOW", "", "ASSIGN_TO_CONTACT_FLOW", "ASSIGN_TO_SPECIFIC_CONTACT_FLOW", "CUSTOM_CALL_SCREEN_SKU", "", "CUSTOM_COVER_SKU", "EXTRA_ASSIGN_FLOW", "EXTRA_CONTACT_ID", "EXTRA_START_CHOOSE", "FULL_FLOW", "UPDATE_VIDEO_URL_FLOW", "getSkuByType", "personalStoreItemType", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;", "startFirstTimeExperiencePopUp", "", "context", "Landroid/content/Context;", "message", "image", "startUserDidNotPurchaseItem", "activity", "Landroid/app/Activity;", "progressCardView", "Lcom/callapp/contacts/widget/ProgressCardView;", "price", "Landroid/text/SpannableString;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/PersonalStoreItemHelper.class */
public final class PersonalStoreItemHelper {

    /* renamed from: a */
    public static final PersonalStoreItemHelper f23491a = new PersonalStoreItemHelper();

    private PersonalStoreItemHelper() {
    }

    /* renamed from: a */
    public static final String m30047a(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
        C18524p.m3840d(personalStoreItemType, "personalStoreItemType");
        return personalStoreItemType == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE ? "custom_callscreen" : "personal_cover";
    }

    /* renamed from: a */
    public static void m30049a(final Activity activity, final ProgressCardView progressCardView, SpannableString spannableString, PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
        String str;
        C18524p.m3840d(activity, "activity");
        C18524p.m3840d(personalStoreItemType, "personalStoreItemType");
        if (personalStoreItemType == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
            str = Activities.getString(2131887080);
            C18524p.m3843b(str, "Activities.getString(R.s…item_not_purchased_video)");
        } else {
            str = Activities.getString(2131887079);
            C18524p.m3843b(str, "Activities.getString(R.s…item_not_purchased_cover)");
        }
        PopupManager.get().m28209a(activity, DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27962a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27961a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27966a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27965a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27964a(new DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder(), spannableString, Integer.valueOf(ThemeUtils.getColor(2131099784)), 2131232141, null, null, Integer.valueOf(ThemeUtils.getColor(2131100228)), null, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper$startUserDidNotPurchaseItem$dialogMessageWithTopImageNew$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ProgressCardView progressCardView2 = ProgressCardView.this;
                if (progressCardView2 != null) {
                    progressCardView2.m26671a();
                }
            }
        }, false, null, true, false, 40, 0, 15, null, null, 224088), new SpannableString(Activities.getString(2131886505)), null, null, null, null, Integer.valueOf(ThemeUtils.getColor(2131099919)), null, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper$startUserDidNotPurchaseItem$dialogMessageWithTopImageNew$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                activity.finish();
            }
        }, false, null, false, 40, 15, 0, null, null, 241502), 30, 30, 20, 20, false, 67), str, Integer.valueOf(ThemeUtils.getColor(2131100140)), true, 0, 244), Activities.getString(2131887413), Integer.valueOf(ThemeUtils.getColor(2131100140)), 15).m27967a());
    }

    /* renamed from: a */
    public static void m30048a(Context context, String message, int i) {
        C18524p.m3840d(context, "context");
        C18524p.m3840d(message, "message");
        DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder m27959b = DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27959b(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27964a(new DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder(), new SpannableString(Activities.getString(2131886946)), null, null, null, null, Integer.valueOf(ThemeUtils.getColor(2131099784)), Float.valueOf(14.0f), null, true, null, true, true, 40, 0, 0, null, null, 254622), Integer.valueOf(i));
        m27959b.f27149a = Float.valueOf(0.8f);
        PopupManager.get().m28209a(context, DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27962a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27961a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27966a(m27959b, 80, 40, 40, 40, false, 67), Activities.getString(2131886500), Integer.valueOf(ThemeUtils.getColor(2131100140)), true, 60, 228), message, Integer.valueOf(ThemeUtils.getColor(2131100140)), 30).m27967a());
    }
}
