package com.callapp.contacts.action;

import android.content.Context;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.preferences.prefs.IntegerPref;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/Action.class */
public abstract class Action<T extends BaseAdapterItemData> {

    /* renamed from: com.callapp.contacts.action.Action$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/Action$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10456a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[ContextType.values().length];
            f10456a = iArr;
            try {
                iArr[ContextType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10456a[ContextType.CONTACT_ITEM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10456a[ContextType.FAVORITE_ITEM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10456a[ContextType.BLOCKED_ITEM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10456a[ContextType.CALL_LOG_ITEM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/Action$ContextType.class */
    public enum ContextType {
        ALL,
        CONTACT_ITEM,
        FAVORITE_ITEM,
        BLOCKED_ITEM,
        BIRTHDAY_ITEM,
        MISSED_CALL_ITEM,
        NOTES_ITEM,
        CALL_LOG_ITEM,
        CONTACT_DETAILS_ACTION_BOTTOM_SHEET,
        CALL_RECORDER_ITEM,
        CALLAPP_PLUS_STARRED_ITEM,
        CALLAPP_PLUS_ITEM,
        NETWORK_ITEM,
        MISSED_CALL_CARD_ITEM,
        SUMMARY_CALLAPP_PLUS,
        WHO_VIEW_PROFILE_ITEM
    }

    public final void a(Context context, ContactData contactData) {
        a(context, contactData, (ContactData) null);
    }

    public final void a(Context context, ContactData contactData, T t) {
        FeedbackManager feedbackManager = FeedbackManager.get();
        CallAppApplication.get().getResources();
        String descriptionMessage$469752d4 = getDescriptionMessage$469752d4();
        if (StringUtils.b((CharSequence) descriptionMessage$469752d4)) {
            IntegerPref integerPref = new IntegerPref(getKey() + ".toast", 0);
            if (integerPref.get().intValue() <= 5) {
                integerPref.b(1);
                feedbackManager.b(descriptionMessage$469752d4, (Integer) null);
            }
        }
        b(context, contactData, t);
    }

    public boolean a(ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        int i = AnonymousClass1.f10456a[contextType.ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4 || i == 5;
    }

    protected abstract void b(Context context, ContactData contactData, T t);

    protected abstract String getDescriptionMessage$469752d4();

    public abstract String getKey();
}
