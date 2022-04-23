package com.callapp.contacts.manager;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.Html;
import android.text.Spanned;
import android.util.Pair;
import androidx.core.app.g;
import androidx.core.app.k;
import androidx.core.graphics.drawable.IconCompat;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/RecognizedContactNotificationManager.class */
public class RecognizedContactNotificationManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap<String, StoredNotificationData> f14923a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    public HashMap<Pair<Phone, IMDataExtractionUtils.RecognizedPersonOrigin>, IMDataExtractionUtils.ImDataForCallappNotification> f14924b = new HashMap<>();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData.class */
    public class StoredNotificationData {

        /* renamed from: a  reason: collision with root package name */
        public final ContactData f14925a;

        /* renamed from: c  reason: collision with root package name */
        private final ContactDataChangeListener f14927c;

        /* renamed from: d  reason: collision with root package name */
        private final IMDataExtractionUtils.RecognizedPersonOrigin f14928d;

        private StoredNotificationData(ContactData contactData, ContactDataChangeListener contactDataChangeListener, IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin) {
            this.f14925a = contactData;
            this.f14927c = contactDataChangeListener;
            this.f14928d = recognizedPersonOrigin;
        }
    }

    private static Pair<ContactData, Set<ContactField>> a(Phone phone, ExtractedInfo extractedInfo, ContactDataChangeListener contactDataChangeListener) {
        return Singletons.get().getContactLoaderManager().registerForContactDetailsStack(phone, extractedInfo, 0L, contactDataChangeListener, ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS);
    }

    public static void a(ExtractedInfo extractedInfo) {
        Pair<ContactData, Set<ContactField>> a2 = a(PhoneManager.get().a(extractedInfo.phoneAsRaw), extractedInfo, null);
        if (((Set) a2.second).size() > 0) {
            ((ContactData) a2.first).fireChange((Set) a2.second);
        }
    }

    private static String b(IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification) {
        return String.format("%s@%s", imDataForCallappNotification.getSourcePhone().a(), Integer.valueOf(((ExtractedInfo) imDataForCallappNotification.f14915a).recognizedPersonOrigin.ordinal()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<IMDataExtractionUtils.ImDataForCallappNotification> list) {
        Bitmap bitmap;
        ArrayList arrayList = new ArrayList(list);
        c(arrayList);
        if (CollectionUtils.b(arrayList)) {
            for (IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification : list) {
                Phone sourcePhone = imDataForCallappNotification.getSourcePhone();
                IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin = ((ExtractedInfo) imDataForCallappNotification.f14915a).recognizedPersonOrigin;
                if (recognizedPersonOrigin != null && recognizedPersonOrigin.showsRecognizedNotification) {
                    this.f14924b.put(Pair.create(sourcePhone, recognizedPersonOrigin), imDataForCallappNotification);
                }
            }
            ArrayList arrayList2 = new ArrayList(this.f14924b.values());
            if (arrayList2.size() != 0) {
                NotificationManager notificationManager = NotificationManager.get();
                g.e imDetailNotificationBuilder = notificationManager.getImDetailNotificationBuilder();
                if (arrayList2.size() == 1) {
                    IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification2 = (IMDataExtractionUtils.ImDataForCallappNotification) arrayList2.get(0);
                    String a2 = notificationManager.a(imDataForCallappNotification2.getSourceDate());
                    Spanned fromHtml = Html.fromHtml(NotificationManager.ContactDataForNotification.a(imDataForCallappNotification2) + StringUtils.SPACE + a2);
                    String string = ((ExtractedInfo) imDataForCallappNotification2.f14915a).recognizedPersonOrigin.comtype == IMDataExtractionUtils.ComType.CALL ? Activities.getString(2131887014) : Activities.a(2131887013, ((ExtractedInfo) imDataForCallappNotification2.f14915a).recognizedPersonOrigin.getDisplayName());
                    imDetailNotificationBuilder.a(string);
                    imDetailNotificationBuilder.b(fromHtml);
                    int incrementAndGet = notificationManager.f14907c.incrementAndGet();
                    Bitmap a3 = notificationManager.f14908d.a(imDataForCallappNotification2.getPhotoUrl(), incrementAndGet, imDataForCallappNotification2.getContactData());
                    if (a3 != null) {
                        imDetailNotificationBuilder.a(a3);
                        bitmap = a3;
                    } else {
                        bitmap = null;
                    }
                    imDetailNotificationBuilder.a(2131231913);
                    NotificationManager.a(imDetailNotificationBuilder, bitmap, (List<g.a>) null);
                    notificationManager.a(imDetailNotificationBuilder, 50, imDataForCallappNotification2, incrementAndGet);
                    if (a3 != null && Prefs.gu.get().booleanValue()) {
                        k.a aVar = new k.a();
                        aVar.f1770b = IconCompat.a(a3);
                        aVar.f1769a = string;
                        k a4 = aVar.a();
                        g.h hVar = new g.h(a4);
                        hVar.f1741a.add(new g.h.a(fromHtml, 0L, a4));
                        if (hVar.f1741a.size() > 25) {
                            hVar.f1741a.remove(0);
                        }
                        imDetailNotificationBuilder.a(hVar.a(true));
                        imDetailNotificationBuilder.a(BitmapFactory.decodeResource(CallAppApplication.get().getResources(), 2131230839));
                        Prefs.gu.set(Boolean.FALSE);
                    }
                } else {
                    notificationManager.a(arrayList2, imDetailNotificationBuilder);
                }
                notificationManager.a(50, imDetailNotificationBuilder);
            }
        }
    }

    private static void c(List<IMDataExtractionUtils.ImDataForCallappNotification> list) {
        if (!CollectionUtils.a(list)) {
            Iterator<IMDataExtractionUtils.ImDataForCallappNotification> it2 = list.iterator();
            while (it2.hasNext()) {
                if (com.callapp.framework.util.StringUtils.a((CharSequence) it2.next().getCallappName())) {
                    it2.remove();
                }
            }
        }
    }

    public static RecognizedContactNotificationManager get() {
        return Singletons.get().getRecognizedContactNotificationManager();
    }

    public final StoredNotificationData a(IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification) {
        StoredNotificationData storedNotificationData;
        synchronized (this.f14923a) {
            storedNotificationData = this.f14923a.get(b(imDataForCallappNotification));
        }
        return storedNotificationData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final List<IMDataExtractionUtils.ImDataForCallappNotification> list) {
        synchronized (this.f14923a) {
            ArrayList<IMDataExtractionUtils.ImDataForCallappNotification> arrayList = new ArrayList(list);
            for (IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification : list) {
                StoredNotificationData a2 = a(imDataForCallappNotification);
                if (a2 != null) {
                    imDataForCallappNotification.setContactData(a2.f14925a);
                    arrayList.remove(imDataForCallappNotification);
                }
            }
            for (final IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification2 : arrayList) {
                ContactDataChangeListener contactDataChangeListener = new ContactDataChangeListener() { // from class: com.callapp.contacts.manager.RecognizedContactNotificationManager.1
                    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
                    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
                        if (CollectionUtils.a(set, ContactField.deviceId, ContactField.fullName, ContactField.photoUrl)) {
                            boolean b2 = com.callapp.framework.util.StringUtils.b((CharSequence) contactData.getFullName());
                            if (b2 || com.callapp.framework.util.StringUtils.b((CharSequence) contactData.getThumbnailUrl())) {
                                if (b2) {
                                    FastCacheDataManager.a(contactData);
                                }
                                imDataForCallappNotification2.setContactData(contactData);
                                RecognizedContactNotificationManager.this.b(list);
                            }
                        }
                    }
                };
                Pair<ContactData, Set<ContactField>> a3 = a(PhoneManager.get().a(((ExtractedInfo) imDataForCallappNotification2.f14915a).phoneAsRaw), (ExtractedInfo) imDataForCallappNotification2.f14915a, contactDataChangeListener);
                ContactData contactData = (ContactData) a3.first;
                this.f14923a.put(b(imDataForCallappNotification2), new StoredNotificationData(contactData, contactDataChangeListener, ((ExtractedInfo) imDataForCallappNotification2.f14915a).recognizedPersonOrigin));
                if (((Set) a3.second).size() > 0) {
                    contactDataChangeListener.onContactChanged(contactData, (Set) a3.second);
                }
            }
        }
        b(list);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        HashMap<String, StoredNotificationData> hashMap = this.f14923a;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
