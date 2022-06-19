package com.callapp.contacts.util;

import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.ContactsContract;
import androidx.work.impl.C3068j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.loader.PersonalStoreItemDataManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.UpdateContactItem;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.model.objectbox.ContactLookupData;
import com.callapp.contacts.model.objectbox.ContactLookupData_;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUserData;
import com.callapp.contacts.model.objectbox.ProfileViewedData;
import com.callapp.contacts.model.objectbox.ProfileViewedData_;
import com.callapp.contacts.model.objectbox.TYPE;
import com.callapp.contacts.observers.ContactUtilsContactsContentObserver;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/MigrationUtils.class */
public class MigrationUtils {
    /* renamed from: a */
    public static void m27454a() {
        File[] listFiles;
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(CallRecorder.class);
                List<CallRecorder> allRecords = CallRecorderManager.get().getAllRecords();
                String absolutePath = CallAppApplication.get().getExternalFilesDir(null).getAbsolutePath();
                String absolutePath2 = Environment.getExternalStorageDirectory().getAbsolutePath();
                if (CollectionUtils.m26068b(allRecords)) {
                    CLog.m27611a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: oldPath: " + absolutePath + ", newPath: " + absolutePath2);
                    int size = allRecords.size();
                    int i = 0;
                    for (CallRecorder callRecorder : allRecords) {
                        if (StringUtils.m26025g(callRecorder.getFileName(), absolutePath)) {
                            String m26036c = StringUtils.m26036c(callRecorder.getFileName(), absolutePath, absolutePath2);
                            CLog.m27611a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: callRecorder.getFileName(): " + callRecorder.getFileName() + ", changedFile: " + m26036c);
                            File file = new File(callRecorder.getFileName());
                            try {
                                IoUtils.m27512a(file, new File(m26036c));
                                IoUtils.m27513a(file);
                                callRecorder.setFileName(m26036c);
                                m4727d.m4711a((C17944a) callRecorder);
                                i++;
                            } catch (IOException e) {
                                CLog.m27609a(MigrationUtils.class, e);
                            }
                        }
                    }
                    CLog.m27611a(MigrationUtils.class, "migrateAndroidQToExternalDirectory completed. Recording files moved: " + i + " out of " + size);
                }
                File file2 = new File(absolutePath + File.separator + "CallAppRecording");
                if (file2.exists() && ((listFiles = file2.listFiles()) == null || listFiles.length == 0)) {
                    try {
                        IoUtils.m27502c(file2);
                        CLog.m27611a(MigrationUtils.class, "migrateAndroidQToExternalDirectory deleted old directory: CallAppRecording");
                    } catch (IOException e2) {
                        CLog.m27611a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: delete directory CallAppRecording, exception: ".concat(String.valueOf(e2)));
                    }
                }
                if (Prefs.f26398dP.isNotNull()) {
                    Uri m27518a = IoUtils.m27518a(CallAppApplication.get(), new File(IoUtils.m27501c("CallAppMedia"), "callAppCustomKeypad"));
                    CLog.m27611a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: CustomKeypad: " + Prefs.f26398dP.get() + ", newUri: " + m27518a.toString());
                    Prefs.f26398dP.set(m27518a.toString());
                }
                PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f25278a;
                List<PersonalStoreItemUrlData> m28913b = PersonalStoreItemDataManager.Companion.m28913b(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
                if (CollectionUtils.m26068b(m28913b)) {
                    int size2 = m28913b.size();
                    int i2 = 0;
                    for (PersonalStoreItemUrlData personalStoreItemUrlData : m28913b) {
                        if (StringUtils.m26025g(personalStoreItemUrlData.getPersonalStoreItemUrl(), absolutePath)) {
                            String m26036c2 = StringUtils.m26036c(personalStoreItemUrlData.getPersonalStoreItemUrl(), absolutePath, absolutePath2);
                            CLog.m27611a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: videoRingtoneUrlData.getVideoUrl(): " + personalStoreItemUrlData.getPersonalStoreItemUrl() + ", changedFile: " + m26036c2);
                            File file3 = new File(personalStoreItemUrlData.getPersonalStoreItemUrl());
                            try {
                                IoUtils.m27512a(file3, new File(m26036c2));
                                IoUtils.m27513a(file3);
                                personalStoreItemUrlData.setPersonalStoreItemUrl(m26036c2);
                                CallAppApplication.get().getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class).m4711a((C17944a) personalStoreItemUrlData);
                                i2++;
                            } catch (IOException e3) {
                                CLog.m27609a(MigrationUtils.class, e3);
                            }
                        }
                    }
                    CLog.m27611a(MigrationUtils.class, "migrateAndroidQToExternalDirectory completed. VideoRingtone files moved: " + i2 + " out of " + size2);
                }
                File file4 = new File(CallAppApplication.get().getExternalFilesDir(null) + File.separator + "CallAppMedia");
                if (!file4.exists()) {
                    return;
                }
                File[] listFiles2 = file4.listFiles();
                if (CollectionUtils.m26066b(listFiles2)) {
                    for (File file5 : listFiles2) {
                        try {
                            IoUtils.m27512a(file5, new File(StringUtils.m26036c(file5.getAbsolutePath(), absolutePath, absolutePath2)));
                            IoUtils.m27513a(file5);
                        } catch (IOException e4) {
                            CLog.m27611a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: delete file: " + file5.getAbsolutePath() + ", exception: " + e4);
                        }
                    }
                }
                if (!CollectionUtils.m26069a(file4.listFiles())) {
                    return;
                }
                try {
                    IoUtils.m27502c(file4);
                    CLog.m27611a(MigrationUtils.class, "migrateAndroidQToExternalDirectory deleted old directory: CallAppMedia");
                } catch (IOException e5) {
                    CLog.m27611a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: delete directory: CallAppMedia, exception: ".concat(String.valueOf(e5)));
                }
            } catch (Exception e6) {
                CLog.m27599a(e6);
            }
        }
    }

    /* renamed from: a */
    public static void m27453a(List<UpdateContactItem> list) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(ContactLookupData.class);
        ArrayList arrayList = new ArrayList();
        for (UpdateContactItem updateContactItem : list) {
            ContactLookupData contactLookupData = (ContactLookupData) m4727d.m4700e().m4613a(ContactLookupData_.contactId, updateContactItem.contactId.longValue()).m4618a().m4641a();
            if (contactLookupData != null && StringUtils.m26045b((CharSequence) updateContactItem.description)) {
                contactLookupData.setDescription(updateContactItem.description);
                arrayList.add(contactLookupData);
            }
        }
        m4727d.m4710a((Collection) arrayList);
    }

    /* renamed from: b */
    public static void m27452b() {
        List<PersonalStoreItemUrlData> m28920b = PersonalStoreItemDataManager.m28920b(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
        if (CollectionUtils.m26068b(m28920b)) {
            ArrayList arrayList = new ArrayList();
            for (PersonalStoreItemUrlData personalStoreItemUrlData : m28920b) {
                if (personalStoreItemUrlData != null) {
                    personalStoreItemUrlData.setUploaded(false);
                    arrayList.add(personalStoreItemUrlData);
                }
            }
            if (!CollectionUtils.m26068b(arrayList)) {
                return;
            }
            PersonalStoreItemDataManager.m28921a(arrayList);
        }
    }

    /* renamed from: c */
    public static void m27451c() {
        List<CallRecorder> allRecords = CallRecorderManager.get().getAllRecords();
        if (CollectionUtils.m26068b(allRecords)) {
            ArrayList arrayList = new ArrayList();
            for (CallRecorder callRecorder : allRecords) {
                if (callRecorder != null) {
                    callRecorder.setUploaded(false);
                    arrayList.add(callRecorder);
                }
            }
            if (!CollectionUtils.m26068b(arrayList)) {
                return;
            }
            CallRecorderManager.get();
            CallRecorderManager.m27864b(arrayList);
        }
    }

    /* renamed from: d */
    public static void m27450d() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class);
        C17944a m4727d2 = CallAppApplication.get().getObjectBoxStore().m4727d(PersonalStoreItemUserData.class);
        List<PersonalStoreItemUrlData> m4628c = m4727d.m4700e().m4618a().m4628c();
        List<PersonalStoreItemUserData> m4628c2 = m4727d2.m4700e().m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            for (PersonalStoreItemUrlData personalStoreItemUrlData : m4628c) {
                personalStoreItemUrlData.setPersonalStoreItemType(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
            }
            m4727d.m4710a((Collection) m4628c);
        }
        if (CollectionUtils.m26068b(m4628c2)) {
            for (PersonalStoreItemUserData personalStoreItemUserData : m4628c2) {
                personalStoreItemUserData.setPersonalStoreItemType(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
            }
            m4727d2.m4710a((Collection) m4628c2);
        }
    }

    /* renamed from: e */
    public static void m27449e() {
        ArrayList arrayList = new ArrayList();
        for (MemoryContactItem memoryContactItem : ContactUtils.getContactsWithPhoneNumber()) {
            ContactLookupData m28351b = ContactDeviceIDAndPhoneChangesUtils.m28351b(memoryContactItem.lookupKey);
            if (m28351b == null) {
                m28351b = new ContactLookupData(memoryContactItem.lookupKey, memoryContactItem.contactId, memoryContactItem.displayName, memoryContactItem.normalNumbers, memoryContactItem.f22608h);
            } else {
                m28351b.setContactId(memoryContactItem.contactId);
                m28351b.setDisplayName(memoryContactItem.displayName);
                m28351b.setPhoneNumbers(memoryContactItem.normalNumbers);
            }
            arrayList.add(m28351b);
        }
        if (CollectionUtils.m26068b(arrayList)) {
            ContactDeviceIDAndPhoneChangesUtils.m28358a(arrayList);
        }
    }

    /* renamed from: f */
    public static void m27448f() {
        List<ExtractedInfo> allImNotificationData = IMDataExtractionUtils.getAllImNotificationData();
        ArrayList arrayList = new ArrayList();
        for (ExtractedInfo extractedInfo : allImNotificationData) {
            String m28349c = ContactDeviceIDAndPhoneChangesUtils.m28349c(extractedInfo.phoneAsRaw);
            if (StringUtils.m26045b((CharSequence) m28349c)) {
                extractedInfo.setDisplayName(m28349c);
                arrayList.add(extractedInfo);
            }
        }
        if (!arrayList.isEmpty()) {
            IMDataExtractionUtils.m28617a((List<ExtractedInfo>) arrayList);
        }
    }

    /* renamed from: g */
    public static void m27447g() {
        ArrayList arrayList = new ArrayList();
        for (MemoryContactItem memoryContactItem : ContactUtils.getContactsWithPhoneNumber()) {
            if (StringUtils.m26045b((CharSequence) memoryContactItem.f22605e)) {
                arrayList.add(new UpdateContactItem(Long.valueOf(memoryContactItem.contactId), memoryContactItem.lookupKey, memoryContactItem.displayName, memoryContactItem.normalNumbers, memoryContactItem.f22608h));
            }
        }
        if (!CollectionUtils.m26068b(arrayList) || ContactUtilsContactsContentObserver.getContactUtilsContactsContentObserver() == null) {
            return;
        }
        ContactUtilsContactsContentObserver.m28081a(arrayList);
    }

    public static List<UpdateContactItem> getAllContactsWithOrganizationData() throws IllegalStateException {
        ArrayList arrayList = new ArrayList();
        ContentQuery m29008c = ContentQuery.m29028a(ContactsContract.Data.CONTENT_URI).m29008c("lookup").m29008c("contact_id").m29008c("data1").m29008c("data4").m29008c("mimetype");
        m29008c.m29035a("mimetype= ? OR mimetype= ?", "vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/organization");
        Cursor b = m29008c.m29012b("data1", "!=", (String) null).m29012b("data1", "!=", "").m29012b("account_type", "!=", Constants.APP_NAME).m29039b();
        if (b != null) {
            b.moveToFirst();
            while (!b.isAfterLast()) {
                try {
                    if (StringUtils.m26042b(b.getString(b.getColumnIndex("mimetype")), "vnd.android.cursor.item/organization")) {
                        String m28322a = ContactUtils.m28322a(b.getString(b.getColumnIndex("data1")), b.getString(b.getColumnIndex("data4")));
                        if (StringUtils.m26045b((CharSequence) m28322a)) {
                            arrayList.add(new UpdateContactItem(Long.valueOf(b.getLong(b.getColumnIndex("contact_id"))), b.getString(b.getColumnIndex("lookup")), "", new ArrayList(), m28322a));
                        }
                    }
                    b.moveToNext();
                } finally {
                    IoUtils.m27517a(b);
                }
            }
            return arrayList;
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    public static long getInvalidExtractInfoContactsCount() {
        char c = 0;
        for (ExtractedInfo extractedInfo : IMDataExtractionUtils.getAllImNotificationData()) {
            if (StringUtils.m26045b((CharSequence) ContactDeviceIDAndPhoneChangesUtils.m28349c(extractedInfo.phoneAsRaw)) && extractedInfo.namesMap.isEmpty()) {
                c++;
            }
        }
        return c;
    }

    /* renamed from: h */
    public static void m27446h() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(ProfileViewedData.class);
        List<ProfileViewedData> m4628c = m4727d.m4700e().m4613a(ProfileViewedData_.type, TYPE.VIEWME.getValue()).m4614a((C17978g) ProfileViewedData_.phoneNumber, 0).m4614a((C17978g) ProfileViewedData_.lastViewed, 1).m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            ArrayList arrayList = new ArrayList();
            String str = null;
            for (ProfileViewedData profileViewedData : m4628c) {
                if (StringUtils.m26042b(profileViewedData.getPhoneNumber(), str)) {
                    arrayList.add(profileViewedData);
                } else {
                    str = profileViewedData.getPhoneNumber();
                }
            }
            if (CollectionUtils.m26068b(arrayList)) {
                m4727d.m4704b((Collection) arrayList);
            }
        }
        List<ProfileViewedData> m4628c2 = m4727d.m4700e().m4613a(ProfileViewedData_.type, TYPE.MYVIEW.getValue()).m4614a((C17978g) ProfileViewedData_.phoneNumber, 0).m4614a((C17978g) ProfileViewedData_.lastViewed, 1).m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c2)) {
            ArrayList arrayList2 = new ArrayList();
            String str2 = null;
            for (ProfileViewedData profileViewedData2 : m4628c2) {
                if (StringUtils.m26042b(profileViewedData2.getPhoneNumber(), str2)) {
                    arrayList2.add(profileViewedData2);
                } else {
                    str2 = profileViewedData2.getPhoneNumber();
                }
            }
            if (!CollectionUtils.m26068b(arrayList2)) {
                return;
            }
            m4727d.m4704b((Collection) arrayList2);
        }
    }

    /* renamed from: i */
    public static void m27445i() {
        C3068j.m39359b(CallAppApplication.get()).mo39264a("TAG_PERIODIC_BACKUP");
        Prefs.f26617hW.set(null);
    }
}
