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
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
import com.callapp.contacts.loader.vk.VKLoader;
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

    /* renamed from: a  reason: collision with root package name */
    private static final String f10574a = Activities.getString(2131886181);

    /* renamed from: b  reason: collision with root package name */
    private ShareContactState f10575b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.action.shared.ShareContactAction$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$1.class */
    public class AnonymousClass1 extends Task {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ContactData f10576a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Activity f10577b;

        AnonymousClass1(ContactData contactData, Activity activity) {
            this.f10576a = contactData;
            this.f10577b = activity;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:6:0x0015 -> B:3:0x0006). Please submit an issue!!! */
        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e) {
            }
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.action.shared.ShareContactAction.1.1
                @Override // java.lang.Runnable
                public void run() {
                    final DialogList dialogList = new DialogList(Activities.getString(2131886782));
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new AdapterText.ItemText(Activities.getString(2131886182), 2131886182));
                    arrayList.add(new AdapterText.ItemText(Activities.getString(2131886183), 2131886183));
                    arrayList.add(new AdapterText.ItemText(Activities.a(2131886179, AnonymousClass1.this.f10576a.getFirstName()), 2131886179));
                    if (!AnonymousClass1.this.f10576a.isActiveCallAppUserDuringPeriod()) {
                        arrayList.add(new AdapterText.ItemText(Activities.a(2131887067, AnonymousClass1.this.f10576a.getFirstName()), 2131887067));
                    }
                    AdapterText adapterText = new AdapterText(AnonymousClass1.this.f10577b, 2131558570, arrayList);
                    adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.action.shared.ShareContactAction.1.1.1
                        @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                        public void onRowClicked(int i) {
                            AndroidUtils.a(AnonymousClass1.this.f10577b);
                            dialogList.dismiss();
                            switch (i) {
                                case 2131886179:
                                    ShareContactAction.a(AnonymousClass1.this.f10576a, AnonymousClass1.this.f10577b);
                                    return;
                                case 2131886182:
                                    ShareContactAction.this.c(AnonymousClass1.this.f10576a, AnonymousClass1.this.f10577b);
                                    return;
                                case 2131886183:
                                    ShareContactAction.this.b(AnonymousClass1.this.f10576a, AnonymousClass1.this.f10577b);
                                    return;
                                case 2131887067:
                                    ShareContactAction.this.d(AnonymousClass1.this.f10576a, AnonymousClass1.this.f10577b);
                                    return;
                                default:
                                    return;
                            }
                        }
                    });
                    dialogList.setAdapter(adapterText);
                    PopupManager.get().a(AnonymousClass1.this.f10577b, dialogList);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.action.shared.ShareContactAction$4  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$4.class */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10596a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f10597b;

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
            f10597b = iArr;
            try {
                iArr[PhoneType.HOME.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10597b[PhoneType.MOBILE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10597b[PhoneType.WORK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10597b[PhoneType.FAX_HOME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10597b[PhoneType.FAX_WORK.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            int[] iArr2 = new int[ShareContactState.values().length];
            f10596a = iArr2;
            try {
                iArr2[ShareContactState.openShareContactDialog.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10596a[ShareContactState.sendingMyOwnInfo.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f10596a[ShareContactState.sendingOthersInfo.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f10596a[ShareContactState.sendingThisContactsInfo.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f10596a[ShareContactState.inviteToCallApp.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup.class */
    public class ShareContactPopup extends ResultPopup {

        /* renamed from: a  reason: collision with root package name */
        ContactData f10598a;

        /* renamed from: b  reason: collision with root package name */
        Activity f10599b;

        /* renamed from: c  reason: collision with root package name */
        boolean f10600c;

        private ShareContactPopup(Activity activity, ContactData contactData, boolean z) {
            this.f10600c = z;
            this.f10598a = contactData;
            this.f10599b = activity;
        }

        /* synthetic */ ShareContactPopup(ShareContactAction shareContactAction, Activity activity, ContactData contactData, boolean z, AnonymousClass1 r11) {
            this(activity, contactData, z);
        }

        @Override // com.callapp.contacts.manager.popup.ResultPopup
        public final void a(Activity activity) {
            Intent intent = new Intent(activity, ChooseContactFromContactsActivity.class);
            String firstName = this.f10598a.getFirstName();
            String str = firstName;
            if (StringUtils.a((CharSequence) firstName)) {
                str = this.f10598a.getNameOrNumber();
            }
            intent.putExtra("activity_title", this.f10600c ? Activities.a(2131887627, str) : Activities.a(2131887626, str));
            Activities.a(activity, intent, this);
        }

        @Override // com.callapp.contacts.manager.popup.ActivityResult
        public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
            activity.finish();
            if (i2 == -1) {
                long j = intent.getExtras().getLong(Constants.EXTRA_CONTACT_ID);
                if (j != 0) {
                    Phone b2 = ContactUtils.b(j);
                    ContactLoader disableContactEvents = new ContactLoader().addFields(ContactField.deviceId, ContactField.fullName, ContactField.emails, ContactField.phones, ContactField.addresses).addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).addSyncLoader(new CacheLoader()).addSyncLoader(new NotificationTelegramLoader()).addSyncLoader(new NotificationViberLoader()).addSyncLoader(new LocalGenomeLoader(false)).addSyncLoader(new FacebookLoader()).addSyncLoader(new TwitterLoader()).addSyncLoader(new PinterestLoader()).addSyncLoader(new VKLoader()).setLoadOnlyFromCache().setDisableContactEvents();
                    ContactData load = b2 != null ? disableContactEvents.load(b2, j) : disableContactEvents.load(Phone.f17100b, j);
                    String a2 = load.getPhone().a();
                    String str = a2;
                    if (StringUtils.a((CharSequence) a2)) {
                        str = a2;
                        if (!load.getPhones().isEmpty()) {
                            str = load.getPhones().iterator().next().a();
                        }
                    }
                    if (load.getEmails().size() == 0 && StringUtils.a((CharSequence) str) && !this.f10600c) {
                        FeedbackManager.get().a(Activities.getString(2131886178), (Integer) null);
                    } else if (StringUtils.a((CharSequence) load.getFullName())) {
                        FeedbackManager.get().a(Activities.getString(2131886181), (Integer) null);
                    } else if (this.f10600c) {
                        ArrayList b3 = ShareContactAction.b(load, this.f10598a);
                        if (b3.isEmpty()) {
                            FeedbackManager.get().a(Activities.getString(2131886181), (Integer) null);
                        } else {
                            ShareContactAction.a(this.f10599b, load, this.f10598a, b3, ShareContactState.sendingOthersInfo);
                        }
                    } else {
                        ArrayList b4 = ShareContactAction.b(this.f10598a, load);
                        if (b4.isEmpty()) {
                            FeedbackManager.get().a(Activities.getString(2131886181), (Integer) null);
                        } else {
                            ShareContactAction.a(this.f10599b, this.f10598a, load, b4, ShareContactState.sendingThisContactsInfo);
                        }
                    }
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

        /* renamed from: a  reason: collision with root package name */
        public ShareType f10602a;

        /* renamed from: b  reason: collision with root package name */
        public T f10603b;

        /* renamed from: c  reason: collision with root package name */
        public String f10604c;

        ShareItem(ShareType shareType, T t, String str) {
            this.f10602a = shareType;
            this.f10603b = t;
            this.f10604c = str;
        }

        public String toString() {
            return this.f10604c;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$ShareType.class */
    public enum ShareType {
        Phone,
        Email,
        Address
    }

    public ShareContactAction(ShareContactState shareContactState) {
        this.f10575b = shareContactState;
    }

    public static String a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        File a2 = ImageUtils.a(bitmap, (String) null, (String) null);
        String b2 = AWSUtils.b("jpg");
        if (StringUtils.a((CharSequence) b2)) {
            FeedbackManager.get().a(Activities.getString(2131886192), (Integer) null);
            return null;
        }
        Intent intent = new Intent(CallAppApplication.get(), UploadFileService.class);
        intent.setAction("com.callapp.contacts.ACTION_UPLOAD_FILE");
        intent.putExtra("uploadFile", a2.getAbsolutePath());
        intent.putExtra("uploadFileName", b2);
        JobIntentService.a(CallAppApplication.get(), UploadFileService.class, 3, intent);
        String str = AWSUtils.a("callapp") + b2;
        String a3 = HttpUtils.a(HttpUtils.getCallappServerPrefix() + "ssd?imgurl=" + UrlUtils.a(str) + "&bd=0");
        if (!StringUtils.a((CharSequence) a3)) {
            return a3;
        }
        FeedbackManager.get().a(Activities.getString(2131886192), (Integer) null);
        return null;
    }

    private static String a(PhoneType phoneType) {
        int i = AnonymousClass4.f10597b[phoneType.ordinal()];
        return Activities.getString(i != 1 ? i != 2 ? i != 3 ? (i == 4 || i == 5) ? 2131887393 : 2131887397 : 2131887402 : 2131887395 : 2131887394);
    }

    static /* synthetic */ void a(Activity activity, ContactData contactData, ContactData contactData2, ArrayList arrayList, ShareContactState shareContactState) {
        ShareContactViaSmsOrEmailPopup shareContactViaSmsOrEmailPopup = new ShareContactViaSmsOrEmailPopup(arrayList, contactData, contactData2, shareContactState, activity);
        if (shareContactViaSmsOrEmailPopup.isNeedToShowPopup()) {
            PopupManager.get().a(activity, shareContactViaSmsOrEmailPopup);
            return;
        }
        List<Phone> phones = shareContactViaSmsOrEmailPopup.getPhones();
        String[] emailsFromContact = shareContactViaSmsOrEmailPopup.getEmailsFromContact();
        if (phones != null && phones.size() > 0) {
            shareContactViaSmsOrEmailPopup.a(activity, phones);
        } else if (StringUtils.b((CharSequence) emailsFromContact[0])) {
            shareContactViaSmsOrEmailPopup.a(activity, emailsFromContact);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(ContactData contactData, Activity activity) {
        ShareContactViaSendIntentPopup shareContactViaSendIntentPopup = new ShareContactViaSendIntentPopup(b(contactData, (ContactData) null), contactData, ShareContactState.sendingThisContactsInfo, activity);
        if (shareContactViaSendIntentPopup.isNeedToShowPopup()) {
            PopupManager.get().a(activity, shareContactViaSendIntentPopup);
            return;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", shareContactViaSendIntentPopup.a(false));
        intent.setType("text/plain");
        activity.startActivity(Intent.createChooser(intent, Activities.getString(2131887665)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ArrayList<ShareItem> b(ContactData contactData, ContactData contactData2) {
        String countryIso = (contactData2 == null || contactData2.getPhone().getRawNumber().equals("0")) ? PhoneManager.get().getCountryIso() : contactData2.getPhone().getRegionCode();
        ArrayList<ShareItem> arrayList = new ArrayList<>();
        for (Phone phone : contactData.getPhones()) {
            if (!phone.getRawNumber().equals("0")) {
                String a2 = phone.a((CharSequence) countryIso);
                arrayList.add(new ShareItem(ShareType.Phone, phone, contactData.isContactInDevice() ? String.format("%s (%s)", a2, a(phone.getType())) : String.format("%s", a2)));
            }
        }
        for (JSONEmail jSONEmail : contactData.getVisibleEmails()) {
            arrayList.add(new ShareItem(ShareType.Email, jSONEmail, jSONEmail.getEmail()));
        }
        Collection<JSONAddress> addresses = contactData.getAddresses();
        String str = null;
        for (JSONAddress jSONAddress : addresses) {
            if (jSONAddress != null && StringUtils.b((CharSequence) jSONAddress.getFullAddress()) && !StringUtils.b(str, jSONAddress.getFullAddress())) {
                arrayList.add(new ShareItem(ShareType.Address, jSONAddress, jSONAddress.getFullAddress()));
                str = jSONAddress.getFullAddress();
            }
        }
        if (arrayList.isEmpty()) {
            FeedbackManager.get().b(f10574a);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final ContactData contactData, Activity activity) {
        PopupManager.get().a(activity, new DialogSimpleMessage(Activities.getString(2131886160), Activities.a(2131886161, contactData.getFirstName()), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.shared.ShareContactAction.2

            /* renamed from: com.callapp.contacts.action.shared.ShareContactAction$2$1  reason: invalid class name */
            /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/ShareContactAction$2$1.class */
            class AnonymousClass1 extends Task {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Activity f10584a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ List f10585b;

                AnonymousClass1(Activity activity, List list) {
                    this.f10584a = activity;
                    this.f10585b = list;
                }

                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    SmsUtils.a(this.f10584a, this.f10585b, new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.action.shared.ShareContactAction.2.1.1
                        @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
                        public final void a(final Phone phone) {
                            new Task() { // from class: com.callapp.contacts.action.shared.ShareContactAction.2.1.1.1
                                @Override // com.callapp.contacts.manager.task.Task
                                public void doTask() {
                                    Activity activity = AnonymousClass1.this.f10584a;
                                    Phone phone2 = phone;
                                    SmsUtils.b(activity, phone2, Activities.getString(2131887073) + org.apache.commons.lang3.StringUtils.SPACE + Activities.a(2131886719, HttpUtils.getCallAppDomain()));
                                }
                            }.execute();
                        }
                    });
                }
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                new AnonymousClass1(activity2, contactData.getPhonesList()).execute();
            }
        }, null));
    }

    @Override // com.callapp.contacts.action.shared.SharedAction
    protected final String a(OutgoingMessage outgoingMessage) {
        JSONContact jSONContact;
        StringBuilder sb;
        String body = outgoingMessage.getBody();
        if (StringUtils.a((CharSequence) body) || (jSONContact = (JSONContact) Parser.a(body, JSONContact.class)) == null) {
            return null;
        }
        if (StringUtils.a((CharSequence) jSONContact.getName())) {
            sb = new StringBuilder();
        } else {
            sb = new StringBuilder(jSONContact.getName());
            sb.append(":\n");
        }
        List<JSONPhoneNumber> phoneNumbers = jSONContact.getPhoneNumbers();
        if (phoneNumbers != null) {
            for (JSONPhoneNumber jSONPhoneNumber : phoneNumbers) {
                sb.append(jSONPhoneNumber.getPhoneNumber());
                sb.append(org.apache.commons.lang3.StringUtils.LF);
            }
        }
        List<JSONEmail> emails = jSONContact.getEmails();
        if (emails != null) {
            for (JSONEmail jSONEmail : emails) {
                sb.append(jSONEmail.getEmail());
                sb.append(org.apache.commons.lang3.StringUtils.LF);
            }
        }
        List<JSONAddress> addresses = jSONContact.getAddresses();
        if (addresses != null) {
            for (JSONAddress jSONAddress : addresses) {
                sb.append(jSONAddress.getFullAddress());
                sb.append(org.apache.commons.lang3.StringUtils.LF);
            }
        }
        sb.append(Activities.getString(2131886180));
        sb.append(org.apache.commons.lang3.StringUtils.SPACE);
        sb.append(Activities.a(2131887724, HttpUtils.getCallAppDomain()));
        return sb.toString();
    }

    @Override // com.callapp.contacts.action.shared.SharedAction, com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null) {
            return false;
        }
        if (AnonymousClass4.f10596a[this.f10575b.ordinal()] == 5 && contextType != Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET) {
            return false;
        }
        return super.a(contextType, contactData, baseAdapterItemData);
    }

    @Override // com.callapp.contacts.action.Action
    public void b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Share contact action", Constants.CLICK);
        Activity activity = (Activity) context;
        int i = AnonymousClass4.f10596a[this.f10575b.ordinal()];
        if (i == 1) {
            new AnonymousClass1(contactData, activity).execute();
        } else if (i == 2) {
            c(contactData, activity);
        } else if (i == 3) {
            b(contactData, activity);
        } else if (i == 4) {
            a(contactData, activity);
        } else if (i == 5) {
            d(contactData, activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(ContactData contactData, Activity activity) {
        PopupManager.get().a(activity, new ShareContactPopup(this, activity, contactData, true, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(final ContactData contactData, final Activity activity) {
        new Task() { // from class: com.callapp.contacts.action.shared.ShareContactAction.3
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                final ContactData b2 = ContactUtils.b(false);
                final ArrayList b3 = ShareContactAction.b(b2, contactData);
                if (b3.isEmpty()) {
                    FeedbackManager.get().a(Activities.getString(2131886181), (Integer) null);
                } else {
                    activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.action.shared.ShareContactAction.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ShareContactAction.a(activity, b2, contactData, b3, ShareContactState.sendingMyOwnInfo);
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
        return super.getKey() + this.f10575b.ordinal();
    }
}
