package com.callapp.contacts.manager;

import androidx.core.content.b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.action.local.AddCallReminderAction;
import com.callapp.contacts.action.local.AddIncognitoContactAction;
import com.callapp.contacts.action.local.AddRemoveCallRecorderFavoritesAction;
import com.callapp.contacts.action.local.AddRemoveFavoritesAction;
import com.callapp.contacts.action.local.BackupAction;
import com.callapp.contacts.action.local.BlockCallAction;
import com.callapp.contacts.action.local.CallAction;
import com.callapp.contacts.action.local.ChangePreferredSimAction;
import com.callapp.contacts.action.local.CopyContactNumberAction;
import com.callapp.contacts.action.local.CreateContactsAction;
import com.callapp.contacts.action.local.DeleteCallAppPlusNumberAction;
import com.callapp.contacts.action.local.DeleteCallRecordAction;
import com.callapp.contacts.action.local.DeleteCallRemindersAction;
import com.callapp.contacts.action.local.DeleteContactAction;
import com.callapp.contacts.action.local.DeleteViewerProfileAction;
import com.callapp.contacts.action.local.EditBlockedContactAction;
import com.callapp.contacts.action.local.EditContactsAction;
import com.callapp.contacts.action.local.EmailAction;
import com.callapp.contacts.action.local.ExcludeAnalyticsAction;
import com.callapp.contacts.action.local.ICSEventAction;
import com.callapp.contacts.action.local.NoteAction;
import com.callapp.contacts.action.local.RemoveFromCallLogAction;
import com.callapp.contacts.action.local.RemoveIncognitoContactAction;
import com.callapp.contacts.action.local.ShowMissedCallReminderAction;
import com.callapp.contacts.action.local.SmsAction;
import com.callapp.contacts.action.local.SpamAction;
import com.callapp.contacts.action.local.StartContactCallLogActivityAction;
import com.callapp.contacts.action.local.UnBlockCallAction;
import com.callapp.contacts.action.local.UnExcludeAnalyticsAction;
import com.callapp.contacts.action.local.UnSpamAction;
import com.callapp.contacts.action.shared.ShareCameraAction;
import com.callapp.contacts.action.shared.ShareContactAction;
import com.callapp.contacts.action.shared.ShareDetailsAction;
import com.callapp.contacts.action.shared.ShareFileAction;
import com.callapp.contacts.action.shared.ShareLocationAction;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.model.GroupConstants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.widget.WidgetMetaData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/ActionsManager.class */
public class ActionsManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Action> f14789a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, WidgetMetaData> f14790b = new HashMap();

    private void a(int i, String str, int i2, int i3, Action action) {
        String key = action.getKey();
        this.f14789a.put(key, action);
        WidgetMetaData widgetMetaData = new WidgetMetaData(i, i2, i3, str, key, GroupConstants.idForItemWithoutGroup());
        this.f14790b.put(widgetMetaData.key, widgetMetaData);
    }

    private void a(Action action) {
        this.f14789a.put(action.getKey(), action);
    }

    private void a(String str, int i, int i2, Action action) {
        a(ThemeUtils.a(CallAppApplication.get(), 2131099784), str, i, i2, action);
    }

    private void b(int i, String str, int i2, int i3, Action action) {
        a(i, str, i2, i3, action);
    }

    public static ActionsManager get() {
        return Singletons.get().getActionsManager();
    }

    public final <A extends Action> A a(Class<A> cls) {
        return (A) a(cls.getSimpleName());
    }

    public final Action a(String str) {
        return this.f14789a.get(str);
    }

    public final List<WidgetMetaData> a(ContactData contactData, Action.ContextType contextType, BaseAdapterItemData baseAdapterItemData) {
        return a(contactData, contextType, this.f14790b.values(), baseAdapterItemData);
    }

    public final List<WidgetMetaData> a(ContactData contactData, Action.ContextType contextType, Collection<WidgetMetaData> collection, BaseAdapterItemData baseAdapterItemData) {
        String nameOrNumber = contactData == null ? null : contactData.getNameOrNumber();
        ArrayList arrayList = new ArrayList();
        for (WidgetMetaData widgetMetaData : collection) {
            if (this.f14789a.get(widgetMetaData.key).a(contextType, contactData, baseAdapterItemData) && StringUtils.b((CharSequence) nameOrNumber)) {
                arrayList.add(widgetMetaData);
            }
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f14789a.clear();
    }

    public List<WidgetMetaData> getContactDetailsBottomActionList() {
        ArrayList arrayList = new ArrayList();
        String key = new ExcludeAnalyticsAction().getKey();
        String key2 = new BackupAction().getKey();
        String key3 = new UnExcludeAnalyticsAction().getKey();
        String key4 = new ShareDetailsAction().getKey();
        String key5 = new SpamAction().getKey();
        String key6 = new UnSpamAction().getKey();
        String key7 = new ShareLocationAction().getKey();
        String key8 = new ICSEventAction().getKey();
        String key9 = new ChangePreferredSimAction().getKey();
        String key10 = new CreateContactsAction().getKey();
        String key11 = new ShareContactAction(ShareContactAction.ShareContactState.inviteToCallApp).getKey();
        String key12 = new AddIncognitoContactAction().getKey();
        String key13 = new RemoveIncognitoContactAction().getKey();
        String key14 = new AddCallReminderAction().getKey();
        String key15 = new BlockCallAction().getKey();
        String key16 = new UnBlockCallAction().getKey();
        String key17 = new DeleteContactAction().getKey();
        for (int i = 0; i < 17; i++) {
            WidgetMetaData widgetMetaData = this.f14790b.get(new String[]{key, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14, key15, key16, key17}[i]);
            if (widgetMetaData != null) {
                arrayList.add(widgetMetaData);
            }
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        int c2 = b.c(CallAppApplication.get(), 2131099675);
        int c3 = b.c(CallAppApplication.get(), 2131099914);
        a(Activities.getString(2131887029), 2131231440, 2131231527, new AddIncognitoContactAction());
        a(Activities.getString(2131887574), 2131231449, 2131231764, new RemoveIncognitoContactAction());
        a(Activities.getString(2131886141), 2131231436, 2131231751, new BlockCallAction());
        a(Activities.getString(2131886202), 2131231448, 2131231762, new UnBlockCallAction());
        a(Activities.getString(2131886153), 2131231438, 2131231525, new DeleteContactAction());
        b(c3, Activities.getString(2131886433), 2131231444, 2131231529, new AddCallReminderAction());
        a(Activities.getString(2131886166), 2131231864, 2131231864, new RemoveFromCallLogAction());
        a(Activities.getString(2131886171), 2131231896, 2131231896, new SmsAction());
        a(Activities.getString(2131886156), 2131231439, 2131231439, new EditContactsAction());
        a(Activities.getString(2131886155), 2131231439, 2131231439, new EditBlockedContactAction());
        a(Activities.getString(2131886150), 2131231435, 2131231785, new CreateContactsAction());
        a(Activities.getString(2131886149), 2131231615, 2131231615, new CopyContactNumberAction());
        a(Activities.getString(2131886140), 2131231680, 2131231763, new AddRemoveFavoritesAction(true));
        a(Activities.getString(2131886167), 2131231679, 2131231526, new AddRemoveFavoritesAction(false));
        a(Activities.getString(2131886167), 2131231679, 2131231526, new AddRemoveCallRecorderFavoritesAction(false));
        a(Activities.getString(2131886151), 2131231438, 2131231525, new DeleteCallRecordAction());
        b(c2, Activities.getString(2131886200), 2131231447, 2131231761, new SpamAction());
        b(c2, Activities.getString(2131886203), 2131231450, 2131231765, new UnSpamAction());
        a(Activities.getString(2131886147), 2131231799, 2131231799, new StartContactCallLogActivityAction());
        a(Activities.getString(2131886172), 2131231443, 2131231443, new ICSEventAction());
        a(Activities.getString(2131886168), 2131231446, 2131231446, new ChangePreferredSimAction());
        a(Activities.getString(2131886185), 2131231442, 2131231442, new ShareLocationAction());
        a(Activities.getString(2131886191), 2131231685, 2131231685, new ShareFileAction());
        a(Activities.getString(2131886197), 2131231581, 2131231581, new ShareCameraAction());
        a(Activities.getString(2131886184), 2131231445, 2131231530, new ShareDetailsAction());
        a(Activities.getString(2131886160), 2131231441, 2131231441, new ShareContactAction(ShareContactAction.ShareContactState.inviteToCallApp));
        a(Activities.getString(2131886157), 2131231439, 2131231439, new NoteAction());
        a(Activities.getString(2131886146), 2131231835, 2131231835, new CallAction());
        a(Activities.getString(2131886152), 2131231438, 2131231525, new DeleteCallRemindersAction());
        a(new EmailAction());
        a(new ShareContactAction(ShareContactAction.ShareContactState.inviteToCallApp));
        a(new ShareContactAction(ShareContactAction.ShareContactState.sendingThisContactsInfo));
        a(new ShareContactAction(ShareContactAction.ShareContactState.sendingMyOwnInfo));
        a(new ShareContactAction(ShareContactAction.ShareContactState.sendingOthersInfo));
        a(Activities.getString(2131886154), 2131231438, 2131231525, new DeleteCallAppPlusNumberAction());
        a(Activities.getString(2131886737), 2131231438, 2131231525, new DeleteViewerProfileAction());
        a(Activities.getString(2131886196), 2131231747, 2131231747, new ShowMissedCallReminderAction());
        a(Activities.getString(2131886159), 2131231793, 2131231793, new ExcludeAnalyticsAction());
        a(Activities.getString(2131886292), 2131231464, 2131231464, new BackupAction());
        a(Activities.getString(2131886201), 2131231886, 2131231886, new UnExcludeAnalyticsAction());
    }
}
