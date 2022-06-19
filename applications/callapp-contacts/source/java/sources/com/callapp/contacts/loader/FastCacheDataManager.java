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
import io.objectbox.C17944a;
import io.objectbox.query.AbstractC17985c;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/FastCacheDataManager.class */
public class FastCacheDataManager {

    /* renamed from: a */
    private static final C17944a<FastCacheData> f25221a = CallAppApplication.get().getObjectBoxStore().m4727d(FastCacheData.class);

    /* renamed from: b */
    private static final Object f25222b = new Object();

    /* renamed from: c */
    private static boolean f25223c = false;

    /* renamed from: d */
    private static final HashMap<String, FastCacheData> f25224d = new HashMap<>();

    /* renamed from: a */
    public static FastCacheData m28944a(Phone phone, long j) {
        FastCacheData fastCacheData;
        String generateId = ContactData.generateId(phone, j);
        synchronized (f25222b) {
            HashMap<String, FastCacheData> hashMap = f25224d;
            FastCacheData fastCacheData2 = hashMap.get(generateId);
            fastCacheData = fastCacheData2;
            if (fastCacheData2 == null) {
                String generateId2 = ContactData.generateId(phone, j);
                QueryBuilder<FastCacheData> m4700e = f25221a.m4700e();
                m4700e.m4611a(FastCacheData_.phoneOrIdKey, generateId2);
                FastCacheData m4641a = m4700e.m4618a().m4641a();
                fastCacheData = m4641a;
                if (m4641a != null) {
                    m4641a.populateSpamScore();
                    fastCacheData = m4641a;
                    if (StringUtils.m26045b((CharSequence) m4641a.getFullName())) {
                        hashMap.put(generateId, m4641a);
                        fastCacheData = m4641a;
                    }
                }
            }
        }
        return fastCacheData;
    }

    /* renamed from: a */
    public static void m28949a() {
        synchronized (f25222b) {
            final ArrayList arrayList = new ArrayList();
            C17944a<FastCacheData> c17944a = f25221a;
            c17944a.m4700e().m4610a(FastCacheData_.expirationDate, new Date()).m4618a().m4636a(new AbstractC17985c<FastCacheData>() { // from class: com.callapp.contacts.loader.FastCacheDataManager.1
                @Override // io.objectbox.query.AbstractC17985c
                public final /* synthetic */ void accept(FastCacheData fastCacheData) {
                    FastCacheData fastCacheData2 = fastCacheData;
                    FastCacheDataManager.f25224d.remove(fastCacheData2.getPhoneOrIdKey());
                    arrayList.add(fastCacheData2);
                }
            });
            c17944a.m4704b(arrayList);
        }
    }

    /* renamed from: a */
    public static void m28948a(ContactData contactData) {
        FastCacheData m28940d;
        synchronized (contactData.getLock(ContactData.class)) {
            String fullName = contactData.getFullName();
            DataSource dataSource = contactData.getDataSource(ContactField.fullName);
            m28940d = m28940d(contactData);
            String fullName2 = m28940d.getFullName();
            DataSource nameDataSource = m28940d.getNameDataSource();
            if (!StringUtils.m26045b((CharSequence) fullName) || dataSource == DataSource.device) {
                m28945a(m28940d, null, null);
            } else if (dataSource != DataSource.intent) {
                m28945a(m28940d, fullName, dataSource);
                IMDataExtractionUtils.m28622a(contactData.getPhone(), fullName);
            }
            if (!StringUtils.m26042b(fullName2, m28940d.getFullName()) || !Objects.m31915a(nameDataSource, m28940d.getNameDataSource())) {
                f25221a.m4711a((C17944a<FastCacheData>) m28940d);
                if (StringUtils.m26045b((CharSequence) m28940d.getFullName())) {
                    IMDataExtractionUtils.m28622a(contactData.getPhone(), m28940d.getFullName());
                }
                CLog.m27611a(FastCacheDataManager.class, "saveFastCacheName: " + m28940d.toString());
                EventBusManager.f25138a.m29043c(FastCacheChangedListener.f23119b, contactData);
            }
        }
        synchronized (f25222b) {
            f25224d.put(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId()), m28940d);
        }
        ContactPlusUtils.m28345a();
    }

    /* renamed from: a */
    public static void m28947a(DataSource dataSource, FastCacheData fastCacheData, Phone phone, long j) {
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
            f25221a.m4711a((C17944a<FastCacheData>) fastCacheData);
            CLog.m27611a(FastCacheDataManager.class, "resetFastCachePhotoAndName: " + fastCacheData.toString());
            Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(phone, j);
            if (contactDataOnlyIfAlreadyLoaded == null || contactDataOnlyIfAlreadyLoaded.first == null) {
                return;
            }
            EventBusManager.f25138a.m29043c(FastCacheChangedListener.f23119b, contactDataOnlyIfAlreadyLoaded.first);
        }
    }

    /* renamed from: a */
    private static void m28946a(FastCacheData fastCacheData, PhotoUrls photoUrls, DataSource dataSource, Integer num) {
        fastCacheData.setExpirationDate(DateUtils.m27136a(1, 1).getTime());
        fastCacheData.setPhotoDataSource(dataSource);
        fastCacheData.setPhotoUrls(photoUrls);
        fastCacheData.setPhotoBackGroundColor(num);
    }

    /* renamed from: a */
    private static void m28945a(FastCacheData fastCacheData, String str, DataSource dataSource) {
        fastCacheData.setExpirationDate(DateUtils.m27136a(1, 1).getTime());
        fastCacheData.setNameDataSource(dataSource);
        fastCacheData.setFullName(str);
    }

    /* renamed from: b */
    public static void m28942b(ContactData contactData) {
        PhotoUrls photoUrls = contactData.getPhotoUrls();
        synchronized (contactData.getLock(ContactData.class)) {
            FastCacheData m28940d = m28940d(contactData);
            PhotoUrls photoUrls2 = m28940d.getPhotoUrls();
            DataSource photoDataSource = m28940d.getPhotoDataSource();
            if (photoUrls == null || !photoUrls.isNotEmpty() || contactData.getDataSource(ContactField.photoUrl) == DataSource.device) {
                m28946a(m28940d, (PhotoUrls) null, (DataSource) null, (Integer) null);
            } else {
                m28946a(m28940d, photoUrls, contactData.getDataSource(ContactField.photoUrl), contactData.getPhotoBGColor());
            }
            if ((photoUrls2 != null && m28940d.getPhotoUrls() != null && !photoUrls2.equals(m28940d.getPhotoUrls())) || !Objects.m31915a(photoDataSource, m28940d.getPhotoDataSource())) {
                f25221a.m4711a((C17944a<FastCacheData>) m28940d);
                CLog.m27611a(FastCacheDataManager.class, "saveFastCachePhoto: " + m28940d.toString());
                EventBusManager.f25138a.m29043c(FastCacheChangedListener.f23119b, contactData);
            }
        }
    }

    /* renamed from: c */
    public static void m28941c(ContactData contactData) {
        FastCacheData m28940d;
        synchronized (contactData.getLock(ContactData.class)) {
            m28940d = m28940d(contactData);
            if (m28940d.isSpam() != contactData.isSpammer()) {
                m28940d.setSpam(contactData.isSpammer());
                f25221a.m4711a((C17944a<FastCacheData>) m28940d);
            }
            CLog.m27611a(FastCacheDataManager.class, "saveFastCacheSpam: " + m28940d.toString());
        }
        synchronized (f25222b) {
            HashMap<String, FastCacheData> hashMap = f25224d;
            if (hashMap.get(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId())) != null) {
                hashMap.put(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId()), m28940d);
            }
        }
    }

    /* renamed from: d */
    private static FastCacheData m28940d(ContactData contactData) {
        FastCacheData fastCacheData = contactData.getFastCacheData();
        FastCacheData fastCacheData2 = fastCacheData;
        if (fastCacheData == null) {
            FastCacheData m28944a = m28944a(contactData.getPhone(), contactData.getDeviceId());
            fastCacheData2 = m28944a;
            if (m28944a == null) {
                fastCacheData2 = new FastCacheData();
            }
            contactData.setFastCacheData(fastCacheData2);
        }
        fastCacheData2.setPhoneOrIdKey(ContactData.generateId(contactData.getPhone(), contactData.getDeviceId()));
        return fastCacheData2;
    }

    public static Map<String, FastCacheData> getAllFastCacheDataWithName() {
        HashMap<String, FastCacheData> hashMap;
        synchronized (f25222b) {
            if (!f25223c) {
                f25223c = true;
                List<FastCacheData> m4628c = f25221a.m4700e().m4604b(FastCacheData_.fullName, "").m4606b(FastCacheData_.fullName).m4618a().m4628c();
                if (CollectionUtils.m26068b(m4628c)) {
                    for (FastCacheData fastCacheData : m4628c) {
                        if (fastCacheData.getNameDataSource() != DataSource.whitePages || NameValidationUtils.m26063b(fastCacheData.getFullName())) {
                            fastCacheData.populateSpamScore();
                            f25224d.put(fastCacheData.getPhoneOrIdKey(), fastCacheData);
                        }
                    }
                }
            }
            hashMap = f25224d;
        }
        return hashMap;
    }
}
