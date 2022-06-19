package com.callapp.contacts.manager;

import androidx.core.content.C0790b;
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

    /* renamed from: a */
    private final Map<String, Action> f25584a = new HashMap();

    /* renamed from: b */
    private final Map<String, WidgetMetaData> f25585b = new HashMap();

    /* renamed from: a */
    private void m28770a(int i, String str, int i2, int i3, Action action) {
        String key = action.getKey();
        this.f25584a.put(key, action);
        WidgetMetaData widgetMetaData = new WidgetMetaData(i, i2, i3, str, key, GroupConstants.idForItemWithoutGroup());
        this.f25585b.put(widgetMetaData.key, widgetMetaData);
    }

    /* renamed from: a */
    private void m28769a(Action action) {
        this.f25584a.put(action.getKey(), action);
    }

    /* renamed from: a */
    private void m28764a(String str, int i, int i2, Action action) {
        m28770a(ThemeUtils.m27386a(CallAppApplication.get(), 2131099784), str, i, i2, action);
    }

    /* renamed from: b */
    private void m28763b(int i, String str, int i2, int i3, Action action) {
        m28770a(i, str, i2, i3, action);
    }

    public static ActionsManager get() {
        return Singletons.get().getActionsManager();
    }

    /* renamed from: a */
    public final <A extends Action> A m28766a(Class<A> cls) {
        return (A) m28765a(cls.getSimpleName());
    }

    /* renamed from: a */
    public final Action m28765a(String str) {
        return this.f25584a.get(str);
    }

    /* renamed from: a */
    public final List<WidgetMetaData> m28768a(ContactData contactData, Action.ContextType contextType, BaseAdapterItemData baseAdapterItemData) {
        return m28767a(contactData, contextType, this.f25585b.values(), baseAdapterItemData);
    }

    /* renamed from: a */
    public final List<WidgetMetaData> m28767a(ContactData contactData, Action.ContextType contextType, Collection<WidgetMetaData> collection, BaseAdapterItemData baseAdapterItemData) {
        String nameOrNumber = contactData == null ? null : contactData.getNameOrNumber();
        ArrayList arrayList = new ArrayList();
        for (WidgetMetaData widgetMetaData : collection) {
            if (this.f25584a.get(widgetMetaData.key).mo31798a(contextType, contactData, baseAdapterItemData) && StringUtils.m26045b((CharSequence) nameOrNumber)) {
                arrayList.add(widgetMetaData);
            }
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f25584a.clear();
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
            WidgetMetaData widgetMetaData = this.f25585b.get(new String[]{key, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14, key15, key16, key17}[i]);
            if (widgetMetaData != null) {
                arrayList.add(widgetMetaData);
            }
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        int m44492c = C0790b.m44492c(CallAppApplication.get(), 2131099675);
        int m44492c2 = C0790b.m44492c(CallAppApplication.get(), 2131099914);
        m28764a(Activities.getString(2131887029), 2131231440, 2131231527, new AddIncognitoContactAction());
        m28764a(Activities.getString(2131887574), 2131231449, 2131231764, new RemoveIncognitoContactAction());
        m28764a(Activities.getString(2131886141), 2131231436, 2131231751, new BlockCallAction());
        m28764a(Activities.getString(2131886202), 2131231448, 2131231762, new UnBlockCallAction());
        m28764a(Activities.getString(2131886153), 2131231438, 2131231525, new DeleteContactAction());
        m28763b(m44492c2, Activities.getString(2131886433), 2131231444, 2131231529, new AddCallReminderAction());
        m28764a(Activities.getString(2131886166), 2131231864, 2131231864, new RemoveFromCallLogAction());
        m28764a(Activities.getString(2131886171), 2131231896, 2131231896, new SmsAction());
        m28764a(Activities.getString(2131886156), 2131231439, 2131231439, new EditContactsAction());
        m28764a(Activities.getString(2131886155), 2131231439, 2131231439, new EditBlockedContactAction());
        m28764a(Activities.getString(2131886150), 2131231435, 2131231785, new CreateContactsAction());
        m28764a(Activities.getString(2131886149), 2131231615, 2131231615, new CopyContactNumberAction());
        m28764a(Activities.getString(2131886140), 2131231680, 2131231763, new AddRemoveFavoritesAction(true));
        m28764a(Activities.getString(2131886167), 2131231679, 2131231526, new AddRemoveFavoritesAction(false));
        m28764a(Activities.getString(2131886167), 2131231679, 2131231526, new AddRemoveCallRecorderFavoritesAction(false));
        m28764a(Activities.getString(2131886151), 2131231438, 2131231525, new DeleteCallRecordAction());
        m28763b(m44492c, Activities.getString(2131886200), 2131231447, 2131231761, new SpamAction());
        m28763b(m44492c, Activities.getString(2131886203), 2131231450, 2131231765, new UnSpamAction());
        m28764a(Activities.getString(2131886147), 2131231799, 2131231799, new StartContactCallLogActivityAction());
        m28764a(Activities.getString(2131886172), 2131231443, 2131231443, new ICSEventAction());
        m28764a(Activities.getString(2131886168), 2131231446, 2131231446, new ChangePreferredSimAction());
        m28764a(Activities.getString(2131886185), 2131231442, 2131231442, new ShareLocationAction());
        m28764a(Activities.getString(2131886191), 2131231685, 2131231685, new ShareFileAction());
        m28764a(Activities.getString(2131886197), 2131231581, 2131231581, new ShareCameraAction());
        m28764a(Activities.getString(2131886184), 2131231445, 2131231530, new ShareDetailsAction());
        m28764a(Activities.getString(2131886160), 2131231441, 2131231441, new ShareContactAction(ShareContactAction.ShareContactState.inviteToCallApp));
        m28764a(Activities.getString(2131886157), 2131231439, 2131231439, new NoteAction());
        m28764a(Activities.getString(2131886146), 2131231835, 2131231835, new CallAction());
        m28764a(Activities.getString(2131886152), 2131231438, 2131231525, new DeleteCallRemindersAction());
        m28769a(new EmailAction());
        m28769a(new ShareContactAction(ShareContactAction.ShareContactState.inviteToCallApp));
        m28769a(new ShareContactAction(ShareContactAction.ShareContactState.sendingThisContactsInfo));
        m28769a(new ShareContactAction(ShareContactAction.ShareContactState.sendingMyOwnInfo));
        m28769a(new ShareContactAction(ShareContactAction.ShareContactState.sendingOthersInfo));
        m28764a(Activities.getString(2131886154), 2131231438, 2131231525, new DeleteCallAppPlusNumberAction());
        m28764a(Activities.getString(2131886737), 2131231438, 2131231525, new DeleteViewerProfileAction());
        m28764a(Activities.getString(2131886196), 2131231747, 2131231747, new ShowMissedCallReminderAction());
        m28764a(Activities.getString(2131886159), 2131231793, 2131231793, new ExcludeAnalyticsAction());
        m28764a(Activities.getString(2131886292), 2131231464, 2131231464, new BackupAction());
        m28764a(Activities.getString(2131886201), 2131231886, 2131231886, new UnExcludeAnalyticsAction());
    }
}
