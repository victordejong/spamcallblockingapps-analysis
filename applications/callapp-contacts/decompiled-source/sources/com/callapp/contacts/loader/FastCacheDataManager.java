package com.callapp.contacts.loader;

import android.util.Pair;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.FastCacheChangedListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.PhotoUrls;
import com.callapp.contacts.model.objectbox.FastCacheData;
import com.callapp.contacts.model.objectbox.FastCacheData_;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.NameValidationUtils;
import com.callapp.framework.util.StringUtils;
import io.objectbox.a;
import io.objectbox.query.QueryBuilder;
import io.objectbox.query.c;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/FastCacheDataManager.class */
public class FastCacheDataManager {

    /* renamed from: a  reason: collision with root package name */
    private static final a<FastCacheData> f14438a = CallAppApplication.get().getObjectBoxStore().d(FastCacheData.class);

    /* renamed from: b  reason: collision with root package name */
    private static final Object f14439b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static boolean f14440c = false;

    /* renamed from: d  reason: collision with root package name */
    private static final HashMap<String, FastCacheData> f14441d = new HashMap<>();

    public static FastCacheData a(Phone phone, long j) {
        FastCacheData fastCacheData;
        String generateId = ContactData.generateId(phone, j);
        synchronized (f14439b) {
            HashMap<String, FastCacheData> hashMap = f14441d;
            FastCacheData fastCacheData2 = hashMap.get(generateId);
            fastCacheData = fastCacheData2;
            if (fastCacheData2 == null) {
                String generateId2 = ContactData.generateId(phone, j);
                QueryBuilder<FastCacheData> e = f14438a.e();
                e.a(FastCacheData_.phoneOrIdKey, generateId2);
                FastCacheData a2 = e.a().a();
                fastCacheData = a2;
                if (a2 != null) {
                    a2.populateSpamScore();
                    fastCacheData = a2;
                    if (StringUtils.b((CharSequence) a2.getFullName())) {
                        hashMap.put(generateId, a2);
                        fastCacheData = a2;
                    }
                }
            }
        }
        return fastCacheData;
    }

    public static void a() {
        synchronized (f14439b) {
            final ArrayList arrayList = new ArrayList();
            a<FastCacheData> aVar = f14438a;
            aVar.e().a(FastCacheData_.expirationDate, new Date()).a().a(new c<FastCacheData>() { // from class: com.callapp.contacts.loader.FastCacheDataManager.1
                @Override // io.objectbox.query.c
                public final /* synthetic */ void accept(FastCacheData fastCacheData) {
                    FastCacheData fastCacheData2 = fastCacheData;
                    FastCacheDataManager.f14441d.remove(fastCacheData2.getPhoneOrIdKey());
                    arrayList.add(fastCacheData2);
                }
            });
            aVar.b(arrayList);
        }
    }

    public static void a(ContactData contactData) {
        FastCacheData d2;
        synchronized (contactData.getLock(ContactData.class)) {
            String fullName = contactData.getFullName();
            DataSource dataSource = contactData.getDataSource(ContactField.fullName);
            d2 = d(contactData);
            String fullName2 = d2.getFullName();
            DataSource nameDataSource = d2.getNameDataSource();
            if (!StringUtils.b((CharSequence) fullName) || dataSource == DataSource.device) {
                a(d2, null, null);
            } else if (dataSource != DataSource.intent) {
                a(d2, fullName, dataSource);
                IMDataExtractionUtils.a(contactData.getPhone(), fullName);
            }
            if (!StringUtils.b(fullName2, d2.getFullName()) || !Objects.a(nameDataSource, d2.getNameDataSource())) {
                f14438a.a((a<FastCacheData>) d2);
                if (StringUtils.b((CharSequence) d2.getFullName())) {
                    IMDataExtractionUtils.a(contactData.getPhone(), d2.getFullName());
                }
                CLog.a(FastCacheDataManager.class, "saveFastCacheName: " + d2.toString());
                EventBusManager.f14368a.c(FastCacheChangedListener.f12946b, contactData);
            }
        }
        synchronized (f14439b) {
            f14441d.put(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId()), d2);
        }
        ContactPlusUtils.a();
    }

    public static void a(DataSource dataSource, FastCacheData fastCacheData, Phone phone, long j) {
        if (fastCacheData != null) {
            if (dataSource == fastCacheData.getPhotoDataSource()) {
                fastCacheData.setPhotoDataSource(null);
                fastCacheData.setPhotoUrls(null);
                fastCacheData.setPhotoBackGroundColor(null);
            }
            if (dataSource == fastCacheData.getNameDataSource()) {
                fastCacheData.setNameDataSource(null);
                fastCacheData.setFullName(null);
            }
            f14438a.a((a<FastCacheData>) fastCacheData);
            CLog.a(FastCacheDataManager.class, "resetFastCachePhotoAndName: " + fastCacheData.toString());
            Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(phone, j);
            if (contactDataOnlyIfAlreadyLoaded != null && contactDataOnlyIfAlreadyLoaded.first != null) {
                EventBusManager.f14368a.c(FastCacheChangedListener.f12946b, contactDataOnlyIfAlreadyLoaded.first);
            }
        }
    }

    private static void a(FastCacheData fastCacheData, PhotoUrls photoUrls, DataSource dataSource, Integer num) {
        fastCacheData.setExpirationDate(DateUtils.a(1, 1).getTime());
        fastCacheData.setPhotoDataSource(dataSource);
        fastCacheData.setPhotoUrls(photoUrls);
        fastCacheData.setPhotoBackGroundColor(num);
    }

    private static void a(FastCacheData fastCacheData, String str, DataSource dataSource) {
        fastCacheData.setExpirationDate(DateUtils.a(1, 1).getTime());
        fastCacheData.setNameDataSource(dataSource);
        fastCacheData.setFullName(str);
    }

    public static void b(ContactData contactData) {
        PhotoUrls photoUrls = contactData.getPhotoUrls();
        synchronized (contactData.getLock(ContactData.class)) {
            FastCacheData d2 = d(contactData);
            PhotoUrls photoUrls2 = d2.getPhotoUrls();
            DataSource photoDataSource = d2.getPhotoDataSource();
            if (photoUrls == null || !photoUrls.isNotEmpty() || contactData.getDataSource(ContactField.photoUrl) == DataSource.device) {
                a(d2, (PhotoUrls) null, (DataSource) null, (Integer) null);
            } else {
                a(d2, photoUrls, contactData.getDataSource(ContactField.photoUrl), contactData.getPhotoBGColor());
            }
            if (!(photoUrls2 == null || d2.getPhotoUrls() == null || photoUrls2.equals(d2.getPhotoUrls())) || !Objects.a(photoDataSource, d2.getPhotoDataSource())) {
                f14438a.a((a<FastCacheData>) d2);
                CLog.a(FastCacheDataManager.class, "saveFastCachePhoto: " + d2.toString());
                EventBusManager.f14368a.c(FastCacheChangedListener.f12946b, contactData);
            }
        }
    }

    public static void c(ContactData contactData) {
        FastCacheData d2;
        synchronized (contactData.getLock(ContactData.class)) {
            d2 = d(contactData);
            if (d2.isSpam() != contactData.isSpammer()) {
                d2.setSpam(contactData.isSpammer());
                f14438a.a((a<FastCacheData>) d2);
            }
            CLog.a(FastCacheDataManager.class, "saveFastCacheSpam: " + d2.toString());
        }
        synchronized (f14439b) {
            HashMap<String, FastCacheData> hashMap = f14441d;
            if (hashMap.get(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId())) != null) {
                hashMap.put(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId()), d2);
            }
        }
    }

    private static FastCacheData d(ContactData contactData) {
        FastCacheData fastCacheData = contactData.getFastCacheData();
        FastCacheData fastCacheData2 = fastCacheData;
        if (fastCacheData == null) {
            FastCacheData a2 = a(contactData.getPhone(), contactData.getDeviceId());
            fastCacheData2 = a2;
            if (a2 == null) {
                fastCacheData2 = new FastCacheData();
            }
            contactData.setFastCacheData(fastCacheData2);
        }
        fastCacheData2.setPhoneOrIdKey(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId()));
        return fastCacheData2;
    }

    public static Map<String, FastCacheData> getAllFastCacheDataWithName() {
        HashMap<String, FastCacheData> hashMap;
        synchronized (f14439b) {
            if (!f14440c) {
                f14440c = true;
                List<FastCacheData> c2 = f14438a.e().b(FastCacheData_.fullName, "").b(FastCacheData_.fullName).a().c();
                if (CollectionUtils.b(c2)) {
                    for (FastCacheData fastCacheData : c2) {
                        if (fastCacheData.getNameDataSource() != DataSource.whitePages || NameValidationUtils.b(fastCacheData.getFullName())) {
                            fastCacheData.populateSpamScore();
                            f14441d.put(fastCacheData.getPhoneOrIdKey(), fastCacheData);
                        }
                    }
                }
            }
            hashMap = f14441d;
        }
        return hashMap;
    }
}
