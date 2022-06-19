package com.callapp.contacts.action.shared;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import androidx.core.app.JobIntentService;
import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONContact;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONPhoneNumber;
import com.callapp.common.model.message.OutgoingMessage;
import com.callapp.common.util.UrlUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.chooseContact.ChooseContactFromContactsActivity;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.loader.external.NotificationTelegramLoader;
import com.callapp.contacts.loader.external.NotificationViberLoader;
import com.callapp.contacts.loader.p239vk.VKLoader;
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.popup.ResultPopup;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.popup.ShareContactViaSendIntentPopup;
import com.callapp.contacts.popup.ShareContactViaSmsOrEmailPopup;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.service.jobs.UploadFileService;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.aws.AWSUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneType;
import com.callapp.framework.util.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction.class */
public class ShareContactAction extends SharedAction {

    /* renamed from: a */
    private static final String f19347a = Activities.getString(2131886181);

    /* renamed from: b */
    private ShareContactState f19348b;

    /* renamed from: com.callapp.contacts.action.shared.ShareContactAction$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$1.class */
    public class C56291 extends Task {

        /* renamed from: a */
        final /* synthetic */ ContactData f19349a;

        /* renamed from: b */
        final /* synthetic */ Activity f19350b;

        C56291(ContactData contactData, Activity activity) {
            ShareContactAction.this = r4;
            this.f19349a = contactData;
            this.f19350b = activity;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:6:0x0015 -> B:3:0x0006). Please submit an issue!!! */
        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e) {
            }
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.action.shared.ShareContactAction.1.1
                @Override // java.lang.Runnable
                public void run() {
                    final DialogList dialogList = new DialogList(Activities.getString(2131886782));
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new AdapterText.ItemText(Activities.getString(2131886182), 2131886182));
                    arrayList.add(new AdapterText.ItemText(Activities.getString(2131886183), 2131886183));
                    arrayList.add(new AdapterText.ItemText(Activities.m27697a(2131886179, C56291.this.f19349a.getFirstName()), 2131886179));
                    if (!C56291.this.f19349a.isActiveCallAppUserDuringPeriod()) {
                        arrayList.add(new AdapterText.ItemText(Activities.m27697a(2131887067, C56291.this.f19349a.getFirstName()), 2131887067));
                    }
                    AdapterText adapterText = new AdapterText(C56291.this.f19350b, 2131558570, arrayList);
                    adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.action.shared.ShareContactAction.1.1.1
                        @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                        public void onRowClicked(int i) {
                            AndroidUtils.m27635a(C56291.this.f19350b);
                            dialogList.dismiss();
                            switch (i) {
                                case 2131886179:
                                    ShareContactAction.m31812a(C56291.this.f19349a, C56291.this.f19350b);
                                    return;
                                case 2131886182:
                                    ShareContactAction.this.m31807c(C56291.this.f19349a, C56291.this.f19350b);
                                    return;
                                case 2131886183:
                                    ShareContactAction.this.m31809b(C56291.this.f19349a, C56291.this.f19350b);
                                    return;
                                case 2131887067:
                                    ShareContactAction.this.m31806d(C56291.this.f19349a, C56291.this.f19350b);
                                    return;
                                default:
                                    return;
                            }
                        }
                    });
                    dialogList.setAdapter(adapterText);
                    PopupManager.get().m28209a(C56291.this.f19350b, dialogList);
                }
            });
        }
    }

    /* renamed from: com.callapp.contacts.action.shared.ShareContactAction$4 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$4.class */
    public static /* synthetic */ class C56384 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19369a;

        /* renamed from: b */
        static final /* synthetic */ int[] f19370b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:46:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:40:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:36:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:50:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:12:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:38:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:34:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:48:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a1 -> B:42:0x0075). Please submit an issue!!! */
        static {
            int[] iArr = new int[PhoneType.values().length];
            f19370b = iArr;
            try {
                iArr[PhoneType.HOME.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19370b[PhoneType.MOBILE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19370b[PhoneType.WORK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19370b[PhoneType.FAX_HOME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19370b[PhoneType.FAX_WORK.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            int[] iArr2 = new int[ShareContactState.values().length];
            f19369a = iArr2;
            try {
                iArr2[ShareContactState.openShareContactDialog.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19369a[ShareContactState.sendingMyOwnInfo.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f19369a[ShareContactState.sendingOthersInfo.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f19369a[ShareContactState.sendingThisContactsInfo.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f19369a[ShareContactState.inviteToCallApp.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup.class */
    public class ShareContactPopup extends ResultPopup {

        /* renamed from: a */
        ContactData f19371a;

        /* renamed from: b */
        Activity f19372b;

        /* renamed from: c */
        boolean f19373c;

        private ShareContactPopup(Activity activity, ContactData contactData, boolean z) {
            ShareContactAction.this = r4;
            this.f19373c = z;
            this.f19371a = contactData;
            this.f19372b = activity;
        }

        /* synthetic */ ShareContactPopup(ShareContactAction shareContactAction, Activity activity, ContactData contactData, boolean z, C56291 c56291) {
            this(activity, contactData, z);
        }

        @Override // com.callapp.contacts.manager.popup.ResultPopup
        /* renamed from: a */
        public final void mo27637a(Activity activity) {
            Intent intent = new Intent(activity, ChooseContactFromContactsActivity.class);
            String firstName = this.f19371a.getFirstName();
            String str = firstName;
            if (StringUtils.m26059a((CharSequence) firstName)) {
                str = this.f19371a.getNameOrNumber();
            }
            intent.putExtra("activity_title", this.f19373c ? Activities.m27697a(2131887627, str) : Activities.m27697a(2131887626, str));
            Activities.m27683a(activity, intent, this);
        }

        @Override // com.callapp.contacts.manager.popup.ActivityResult
        public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
            activity.finish();
            if (i2 != -1) {
                return;
            }
            long j = intent.getExtras().getLong(Constants.EXTRA_CONTACT_ID);
            if (j == 0) {
                return;
            }
            Phone m28311b = ContactUtils.m28311b(j);
            ContactLoader disableContactEvents = new ContactLoader().addFields(ContactField.deviceId, ContactField.fullName, ContactField.emails, ContactField.phones, ContactField.addresses).addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).addSyncLoader(new CacheLoader()).addSyncLoader(new NotificationTelegramLoader()).addSyncLoader(new NotificationViberLoader()).addSyncLoader(new LocalGenomeLoader(false)).addSyncLoader(new FacebookLoader()).addSyncLoader(new TwitterLoader()).addSyncLoader(new PinterestLoader()).addSyncLoader(new VKLoader()).setLoadOnlyFromCache().setDisableContactEvents();
            ContactData load = m28311b != null ? disableContactEvents.load(m28311b, j) : disableContactEvents.load(Phone.f29662b, j);
            String m26101a = load.getPhone().m26101a();
            String str = m26101a;
            if (StringUtils.m26059a((CharSequence) m26101a)) {
                str = m26101a;
                if (!load.getPhones().isEmpty()) {
                    str = load.getPhones().iterator().next().m26101a();
                }
            }
            if (load.getEmails().size() == 0 && StringUtils.m26059a((CharSequence) str) && !this.f19373c) {
                FeedbackManager.get().m28669a(Activities.getString(2131886178), (Integer) null);
            } else if (StringUtils.m26059a((CharSequence) load.getFullName())) {
                FeedbackManager.get().m28669a(Activities.getString(2131886181), (Integer) null);
            } else if (this.f19373c) {
                ArrayList m31808b = ShareContactAction.m31808b(load, this.f19371a);
                if (m31808b.isEmpty()) {
                    FeedbackManager.get().m28669a(Activities.getString(2131886181), (Integer) null);
                } else {
                    ShareContactAction.m31815a(this.f19372b, load, this.f19371a, m31808b, ShareContactState.sendingOthersInfo);
                }
            } else {
                ArrayList m31808b2 = ShareContactAction.m31808b(this.f19371a, load);
                if (m31808b2.isEmpty()) {
                    FeedbackManager.get().m28669a(Activities.getString(2131886181), (Integer) null);
                } else {
                    ShareContactAction.m31815a(this.f19372b, this.f19371a, load, m31808b2, ShareContactState.sendingThisContactsInfo);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$ShareContactState.class */
    public enum ShareContactState {
        sendingMyOwnInfo,
        sendingOthersInfo,
        sendingThisContactsInfo,
        inviteToCallApp,
        openShareContactDialog,
        shareContactDetails
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$ShareItem.class */
    public static class ShareItem<T> {

        /* renamed from: a */
        public ShareType f19375a;

        /* renamed from: b */
        public T f19376b;

        /* renamed from: c */
        public String f19377c;

        ShareItem(ShareType shareType, T t, String str) {
            this.f19375a = shareType;
            this.f19376b = t;
            this.f19377c = str;
        }

        public String toString() {
            return this.f19377c;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$ShareType.class */
    public enum ShareType {
        Phone,
        Email,
        Address
    }

    public ShareContactAction(ShareContactState shareContactState) {
        this.f19348b = shareContactState;
    }

    /* renamed from: a */
    public static String m31814a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        File m27533a = ImageUtils.m27533a(bitmap, (String) null, (String) null);
        String m27161b = AWSUtils.m27161b("jpg");
        if (StringUtils.m26059a((CharSequence) m27161b)) {
            FeedbackManager.get().m28669a(Activities.getString(2131886192), (Integer) null);
            return null;
        }
        Intent intent = new Intent(CallAppApplication.get(), UploadFileService.class);
        intent.setAction("com.callapp.contacts.ACTION_UPLOAD_FILE");
        intent.putExtra("uploadFile", m27533a.getAbsolutePath());
        intent.putExtra("uploadFileName", m27161b);
        JobIntentService.m44627a(CallAppApplication.get(), UploadFileService.class, 3, intent);
        String str = AWSUtils.m27162a("callapp") + m27161b;
        String m26979a = HttpUtils.m26979a(HttpUtils.getCallappServerPrefix() + "ssd?imgurl=" + UrlUtils.m31878a(str) + "&bd=0");
        if (!StringUtils.m26059a((CharSequence) m26979a)) {
            return m26979a;
        }
        FeedbackManager.get().m28669a(Activities.getString(2131886192), (Integer) null);
        return null;
    }

    /* renamed from: a */
    private static String m31810a(PhoneType phoneType) {
        int i = C56384.f19370b[phoneType.ordinal()];
        return Activities.getString(i != 1 ? i != 2 ? i != 3 ? (i == 4 || i == 5) ? 2131887393 : 2131887397 : 2131887402 : 2131887395 : 2131887394);
    }

    /* renamed from: a */
    static /* synthetic */ void m31815a(Activity activity, ContactData contactData, ContactData contactData2, ArrayList arrayList, ShareContactState shareContactState) {
        ShareContactViaSmsOrEmailPopup shareContactViaSmsOrEmailPopup = new ShareContactViaSmsOrEmailPopup(arrayList, contactData, contactData2, shareContactState, activity);
        if (shareContactViaSmsOrEmailPopup.isNeedToShowPopup()) {
            PopupManager.get().m28209a(activity, shareContactViaSmsOrEmailPopup);
            return;
        }
        List<Phone> phones = shareContactViaSmsOrEmailPopup.getPhones();
        String[] emailsFromContact = shareContactViaSmsOrEmailPopup.getEmailsFromContact();
        if (phones != null && phones.size() > 0) {
            shareContactViaSmsOrEmailPopup.m28038a(activity, phones);
        } else if (!StringUtils.m26045b((CharSequence) emailsFromContact[0])) {
        } else {
            shareContactViaSmsOrEmailPopup.m28037a(activity, emailsFromContact);
        }
    }

    /* renamed from: a */
    public static void m31812a(ContactData contactData, Activity activity) {
        ShareContactViaSendIntentPopup shareContactViaSendIntentPopup = new ShareContactViaSendIntentPopup(m31808b(contactData, (ContactData) null), contactData, ShareContactState.sendingThisContactsInfo, activity);
        if (shareContactViaSendIntentPopup.isNeedToShowPopup()) {
            PopupManager.get().m28209a(activity, shareContactViaSendIntentPopup);
            return;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", shareContactViaSendIntentPopup.m28039a(false));
        intent.setType("text/plain");
        activity.startActivity(Intent.createChooser(intent, Activities.getString(2131887665)));
    }

    /* renamed from: b */
    public static ArrayList<ShareItem> m31808b(ContactData contactData, ContactData contactData2) {
        String countryIso = (contactData2 == null || contactData2.getPhone().getRawNumber().equals("0")) ? PhoneManager.get().getCountryIso() : contactData2.getPhone().getRegionCode();
        ArrayList<ShareItem> arrayList = new ArrayList<>();
        for (Phone phone : contactData.getPhones()) {
            if (!phone.getRawNumber().equals("0")) {
                String m26098a = phone.m26098a((CharSequence) countryIso);
                arrayList.add(new ShareItem(ShareType.Phone, phone, contactData.isContactInDevice() ? String.format("%s (%s)", m26098a, m31810a(phone.getType())) : String.format("%s", m26098a)));
            }
        }
        for (JSONEmail jSONEmail : contactData.getVisibleEmails()) {
            arrayList.add(new ShareItem(ShareType.Email, jSONEmail, jSONEmail.getEmail()));
        }
        Collection<JSONAddress> addresses = contactData.getAddresses();
        String str = null;
        for (JSONAddress jSONAddress : addresses) {
            if (jSONAddress != null && StringUtils.m26045b((CharSequence) jSONAddress.getFullAddress()) && !StringUtils.m26042b(str, jSONAddress.getFullAddress())) {
                arrayList.add(new ShareItem(ShareType.Address, jSONAddress, jSONAddress.getFullAddress()));
                str = jSONAddress.getFullAddress();
            }
        }
        if (arrayList.isEmpty()) {
            FeedbackManager.get().m28666b(f19347a);
        }
        return arrayList;
    }

    /* renamed from: d */
    public void m31806d(final ContactData contactData, Activity activity) {
        PopupManager.get().m28209a(activity, new DialogSimpleMessage(Activities.getString(2131886160), Activities.m27697a(2131886161, contactData.getFirstName()), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.shared.ShareContactAction.2

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.callapp.contacts.action.shared.ShareContactAction$2$1 */
            /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$2$1.class */
            public class C56331 extends Task {

                /* renamed from: a */
                final /* synthetic */ Activity f19357a;

                /* renamed from: b */
                final /* synthetic */ List f19358b;

                C56331(Activity activity, List list) {
                    C56322.this = r4;
                    this.f19357a = activity;
                    this.f19358b = list;
                }

                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    SmsUtils.m27394a(this.f19357a, this.f19358b, new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.action.shared.ShareContactAction.2.1.1
                        @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
                        /* renamed from: a */
                        public final void mo27390a(final Phone phone) {
                            new Task() { // from class: com.callapp.contacts.action.shared.ShareContactAction.2.1.1.1
                                @Override // com.callapp.contacts.manager.task.Task
                                public void doTask() {
                                    Activity activity = C56331.this.f19357a;
                                    Phone phone2 = phone;
                                    SmsUtils.m27392b(activity, phone2, Activities.getString(2131887073) + org.apache.commons.lang3.StringUtils.SPACE + Activities.m27697a(2131886719, HttpUtils.getCallAppDomain()));
                                }
                            }.execute();
                        }
                    });
                }
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                new C56331(activity2, contactData.getPhonesList()).execute();
            }
        }, null));
    }

    @Override // com.callapp.contacts.action.shared.SharedAction
    /* renamed from: a */
    protected final String mo31799a(OutgoingMessage outgoingMessage) {
        JSONContact jSONContact;
        StringBuilder sb;
        String body = outgoingMessage.getBody();
        if (!StringUtils.m26059a((CharSequence) body) && (jSONContact = (JSONContact) Parser.m26915a(body, JSONContact.class)) != null) {
            if (StringUtils.m26059a((CharSequence) jSONContact.getName())) {
                sb = new StringBuilder();
            } else {
                sb = new StringBuilder(jSONContact.getName());
                sb.append(":\n");
            }
            List<JSONPhoneNumber> phoneNumbers = jSONContact.getPhoneNumbers();
            if (phoneNumbers != null) {
                for (JSONPhoneNumber jSONPhoneNumber : phoneNumbers) {
                    sb.append(jSONPhoneNumber.getPhoneNumber());
                    sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
                }
            }
            List<JSONEmail> emails = jSONContact.getEmails();
            if (emails != null) {
                for (JSONEmail jSONEmail : emails) {
                    sb.append(jSONEmail.getEmail());
                    sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
                }
            }
            List<JSONAddress> addresses = jSONContact.getAddresses();
            if (addresses != null) {
                for (JSONAddress jSONAddress : addresses) {
                    sb.append(jSONAddress.getFullAddress());
                    sb.append(org.apache.commons.lang3.StringUtils.f67179LF);
                }
            }
            sb.append(Activities.getString(2131886180));
            sb.append(org.apache.commons.lang3.StringUtils.SPACE);
            sb.append(Activities.m27697a(2131887724, HttpUtils.getCallAppDomain()));
            return sb.toString();
        }
        return null;
    }

    @Override // com.callapp.contacts.action.shared.SharedAction, com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        if (C56384.f19369a[this.f19348b.ordinal()] != 5 || contextType == Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET) {
            return super.mo31798a(contextType, contactData, baseAdapterItemData);
        }
        return false;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public void mo31800b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Share contact action", Constants.CLICK);
        Activity activity = (Activity) context;
        int i = C56384.f19369a[this.f19348b.ordinal()];
        if (i == 1) {
            new C56291(contactData, activity).execute();
        } else if (i == 2) {
            m31807c(contactData, activity);
        } else if (i == 3) {
            m31809b(contactData, activity);
        } else if (i == 4) {
            m31812a(contactData, activity);
        } else if (i != 5) {
        } else {
            m31806d(contactData, activity);
        }
    }

    /* renamed from: b */
    public final void m31809b(ContactData contactData, Activity activity) {
        PopupManager.get().m28207a(activity, new ShareContactPopup(this, activity, contactData, true, null));
    }

    /* renamed from: c */
    public final void m31807c(final ContactData contactData, final Activity activity) {
        new Task() { // from class: com.callapp.contacts.action.shared.ShareContactAction.3
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                final ContactData m28308b = ContactUtils.m28308b(false);
                final ArrayList m31808b = ShareContactAction.m31808b(m28308b, contactData);
                if (m31808b.isEmpty()) {
                    FeedbackManager.get().m28669a(Activities.getString(2131886181), (Integer) null);
                } else {
                    activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.action.shared.ShareContactAction.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ShareContactAction.m31815a(activity, m28308b, contactData, m31808b, ShareContactState.sendingMyOwnInfo);
                        }
                    });
                }
            }
        }.execute();
    }

    @Override // com.callapp.contacts.action.Action
    public String getDescriptionMessage$469752d4() {
        return null;
    }

    @Override // com.callapp.contacts.action.shared.SharedAction, com.callapp.contacts.action.Action
    public String getKey() {
        return super.getKey() + this.f19348b.ordinal();
    }
}
