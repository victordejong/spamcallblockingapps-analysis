package com.callapp.contacts.manager;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.Html;
import android.text.Spanned;
import android.util.Pair;
import androidx.core.app.C0745g;
import androidx.core.app.C0761k;
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

    /* renamed from: a */
    public final HashMap<String, StoredNotificationData> f25764a = new HashMap<>();

    /* renamed from: b */
    public HashMap<Pair<Phone, IMDataExtractionUtils.RecognizedPersonOrigin>, IMDataExtractionUtils.ImDataForCallappNotification> f25765b = new HashMap<>();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData.class */
    public class StoredNotificationData {

        /* renamed from: a */
        public final ContactData f25766a;

        /* renamed from: c */
        private final ContactDataChangeListener f25768c;

        /* renamed from: d */
        private final IMDataExtractionUtils.RecognizedPersonOrigin f25769d;

        private StoredNotificationData(ContactData contactData, ContactDataChangeListener contactDataChangeListener, IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin) {
            RecognizedContactNotificationManager.this = r4;
            this.f25766a = contactData;
            this.f25768c = contactDataChangeListener;
            this.f25769d = recognizedPersonOrigin;
        }
    }

    /* renamed from: a */
    private static Pair<ContactData, Set<ContactField>> m28504a(Phone phone, ExtractedInfo extractedInfo, ContactDataChangeListener contactDataChangeListener) {
        return Singletons.get().getContactLoaderManager().registerForContactDetailsStack(phone, extractedInfo, 0L, contactDataChangeListener, ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS);
    }

    /* renamed from: a */
    public static void m28505a(ExtractedInfo extractedInfo) {
        Pair<ContactData, Set<ContactField>> m28504a = m28504a(PhoneManager.get().m28239a(extractedInfo.phoneAsRaw), extractedInfo, null);
        if (((Set) m28504a.second).size() > 0) {
            ((ContactData) m28504a.first).fireChange((Set) m28504a.second);
        }
    }

    /* renamed from: b */
    private static String m28502b(IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification) {
        return String.format("%s@%s", imDataForCallappNotification.getSourcePhone().m26101a(), Integer.valueOf(((ExtractedInfo) imDataForCallappNotification.f25754a).recognizedPersonOrigin.ordinal()));
    }

    /* renamed from: b */
    public void m28501b(List<IMDataExtractionUtils.ImDataForCallappNotification> list) {
        Bitmap bitmap;
        ArrayList arrayList = new ArrayList(list);
        m28500c(arrayList);
        if (CollectionUtils.m26068b(arrayList)) {
            for (IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification : list) {
                Phone sourcePhone = imDataForCallappNotification.getSourcePhone();
                IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin = ((ExtractedInfo) imDataForCallappNotification.f25754a).recognizedPersonOrigin;
                if (recognizedPersonOrigin != null && recognizedPersonOrigin.showsRecognizedNotification) {
                    this.f25765b.put(Pair.create(sourcePhone, recognizedPersonOrigin), imDataForCallappNotification);
                }
            }
            ArrayList arrayList2 = new ArrayList(this.f25765b.values());
            if (arrayList2.size() == 0) {
                return;
            }
            NotificationManager notificationManager = NotificationManager.get();
            C0745g.C0751e imDetailNotificationBuilder = notificationManager.getImDetailNotificationBuilder();
            if (arrayList2.size() == 1) {
                IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification2 = (IMDataExtractionUtils.ImDataForCallappNotification) arrayList2.get(0);
                Spanned fromHtml = Html.fromHtml(NotificationManager.ContactDataForNotification.m28529a(imDataForCallappNotification2) + StringUtils.SPACE + notificationManager.m28547a(imDataForCallappNotification2.getSourceDate()));
                String string = ((ExtractedInfo) imDataForCallappNotification2.f25754a).recognizedPersonOrigin.comtype == IMDataExtractionUtils.ComType.CALL ? Activities.getString(2131887014) : Activities.m27697a(2131887013, ((ExtractedInfo) imDataForCallappNotification2.f25754a).recognizedPersonOrigin.getDisplayName());
                imDetailNotificationBuilder.m44571a(string);
                imDetailNotificationBuilder.m44567b(fromHtml);
                int incrementAndGet = notificationManager.f25739c.incrementAndGet();
                Bitmap m28685a = notificationManager.f25740d.m28685a(imDataForCallappNotification2.getPhotoUrl(), incrementAndGet, imDataForCallappNotification2.getContactData());
                if (m28685a != null) {
                    imDetailNotificationBuilder.m44576a(m28685a);
                    bitmap = m28685a;
                } else {
                    bitmap = null;
                }
                imDetailNotificationBuilder.m44581a(2131231913);
                NotificationManager.m28563a(imDetailNotificationBuilder, bitmap, (List<C0745g.C0747a>) null);
                notificationManager.m28566a(imDetailNotificationBuilder, 50, imDataForCallappNotification2, incrementAndGet);
                if (m28685a != null && Prefs.f26588gu.get().booleanValue()) {
                    C0761k.C0762a c0762a = new C0761k.C0762a();
                    c0762a.f3409b = IconCompat.m44372a(m28685a);
                    c0762a.f3408a = string;
                    C0761k m44535a = c0762a.m44535a();
                    C0745g.C0754h c0754h = new C0745g.C0754h(m44535a);
                    c0754h.f3357a.add(new C0745g.C0754h.C0755a(fromHtml, 0L, m44535a));
                    if (c0754h.f3357a.size() > 25) {
                        c0754h.f3357a.remove(0);
                    }
                    imDetailNotificationBuilder.m44572a(c0754h.m44559a(true));
                    imDetailNotificationBuilder.m44576a(BitmapFactory.decodeResource(CallAppApplication.get().getResources(), 2131230839));
                    Prefs.f26588gu.set(Boolean.FALSE);
                }
            } else {
                notificationManager.m28545a(arrayList2, imDetailNotificationBuilder);
            }
            notificationManager.m28573a(50, imDetailNotificationBuilder);
        }
    }

    /* renamed from: c */
    private static void m28500c(List<IMDataExtractionUtils.ImDataForCallappNotification> list) {
        if (CollectionUtils.m26076a(list)) {
            return;
        }
        Iterator<IMDataExtractionUtils.ImDataForCallappNotification> it2 = list.iterator();
        while (it2.hasNext()) {
            if (com.callapp.framework.util.StringUtils.m26059a((CharSequence) it2.next().getCallappName())) {
                it2.remove();
            }
        }
    }

    public static RecognizedContactNotificationManager get() {
        return Singletons.get().getRecognizedContactNotificationManager();
    }

    /* renamed from: a */
    public final StoredNotificationData m28507a(IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification) {
        StoredNotificationData storedNotificationData;
        synchronized (this.f25764a) {
            storedNotificationData = this.f25764a.get(m28502b(imDataForCallappNotification));
        }
        return storedNotificationData;
    }

    /* renamed from: a */
    public final void m28503a(final List<IMDataExtractionUtils.ImDataForCallappNotification> list) {
        synchronized (this.f25764a) {
            ArrayList<IMDataExtractionUtils.ImDataForCallappNotification> arrayList = new ArrayList(list);
            for (IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification : list) {
                StoredNotificationData m28507a = m28507a(imDataForCallappNotification);
                if (m28507a != null) {
                    imDataForCallappNotification.setContactData(m28507a.f25766a);
                    arrayList.remove(imDataForCallappNotification);
                }
            }
            for (final IMDataExtractionUtils.ImDataForCallappNotification imDataForCallappNotification2 : arrayList) {
                ContactDataChangeListener contactDataChangeListener = new ContactDataChangeListener() { // from class: com.callapp.contacts.manager.RecognizedContactNotificationManager.1
                    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
                    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
                        if (CollectionUtils.m26073a(set, ContactField.deviceId, ContactField.fullName, ContactField.photoUrl)) {
                            boolean m26045b = com.callapp.framework.util.StringUtils.m26045b((CharSequence) contactData.getFullName());
                            if (!m26045b && !com.callapp.framework.util.StringUtils.m26045b((CharSequence) contactData.getThumbnailUrl())) {
                                return;
                            }
                            if (m26045b) {
                                FastCacheDataManager.m28948a(contactData);
                            }
                            imDataForCallappNotification2.setContactData(contactData);
                            RecognizedContactNotificationManager.this.m28501b(list);
                        }
                    }
                };
                Pair<ContactData, Set<ContactField>> m28504a = m28504a(PhoneManager.get().m28239a(((ExtractedInfo) imDataForCallappNotification2.f25754a).phoneAsRaw), (ExtractedInfo) imDataForCallappNotification2.f25754a, contactDataChangeListener);
                ContactData contactData = (ContactData) m28504a.first;
                this.f25764a.put(m28502b(imDataForCallappNotification2), new StoredNotificationData(contactData, contactDataChangeListener, ((ExtractedInfo) imDataForCallappNotification2.f25754a).recognizedPersonOrigin));
                if (((Set) m28504a.second).size() > 0) {
                    contactDataChangeListener.onContactChanged(contactData, (Set) m28504a.second);
                }
            }
        }
        m28501b(list);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        HashMap<String, StoredNotificationData> hashMap = this.f25764a;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
