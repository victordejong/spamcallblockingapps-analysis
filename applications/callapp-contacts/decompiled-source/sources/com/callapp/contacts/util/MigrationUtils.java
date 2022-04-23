package com.callapp.contacts.util;

import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.ContactsContract;
import androidx.work.impl.j;
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
import io.objectbox.a;
import io.objectbox.g;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/MigrationUtils.class */
public class MigrationUtils {
    public static void a() {
        File[] listFiles;
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                a d2 = CallAppApplication.get().getObjectBoxStore().d(CallRecorder.class);
                List<CallRecorder> allRecords = CallRecorderManager.get().getAllRecords();
                String absolutePath = CallAppApplication.get().getExternalFilesDir(null).getAbsolutePath();
                String absolutePath2 = Environment.getExternalStorageDirectory().getAbsolutePath();
                if (CollectionUtils.b(allRecords)) {
                    CLog.a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: oldPath: " + absolutePath + ", newPath: " + absolutePath2);
                    int size = allRecords.size();
                    int i = 0;
                    for (CallRecorder callRecorder : allRecords) {
                        if (StringUtils.g(callRecorder.getFileName(), absolutePath)) {
                            String c2 = StringUtils.c(callRecorder.getFileName(), absolutePath, absolutePath2);
                            CLog.a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: callRecorder.getFileName(): " + callRecorder.getFileName() + ", changedFile: " + c2);
                            File file = new File(callRecorder.getFileName());
                            try {
                                IoUtils.a(file, new File(c2));
                                IoUtils.a(file);
                                callRecorder.setFileName(c2);
                                d2.a((a) callRecorder);
                                i++;
                            } catch (IOException e) {
                                CLog.a(MigrationUtils.class, e);
                            }
                        }
                    }
                    CLog.a(MigrationUtils.class, "migrateAndroidQToExternalDirectory completed. Recording files moved: " + i + " out of " + size);
                }
                File file2 = new File(absolutePath + File.separator + "CallAppRecording");
                if (file2.exists() && ((listFiles = file2.listFiles()) == null || listFiles.length == 0)) {
                    try {
                        IoUtils.c(file2);
                        CLog.a(MigrationUtils.class, "migrateAndroidQToExternalDirectory deleted old directory: CallAppRecording");
                    } catch (IOException e2) {
                        CLog.a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: delete directory CallAppRecording, exception: ".concat(String.valueOf(e2)));
                    }
                }
                if (Prefs.dP.isNotNull()) {
                    Uri a2 = IoUtils.a(CallAppApplication.get(), new File(IoUtils.c("CallAppMedia"), "callAppCustomKeypad"));
                    CLog.a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: CustomKeypad: " + Prefs.dP.get() + ", newUri: " + a2.toString());
                    Prefs.dP.set(a2.toString());
                }
                PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f14492a;
                List<PersonalStoreItemUrlData> b2 = PersonalStoreItemDataManager.Companion.b(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
                if (CollectionUtils.b(b2)) {
                    int size2 = b2.size();
                    int i2 = 0;
                    for (PersonalStoreItemUrlData personalStoreItemUrlData : b2) {
                        if (StringUtils.g(personalStoreItemUrlData.getPersonalStoreItemUrl(), absolutePath)) {
                            String c3 = StringUtils.c(personalStoreItemUrlData.getPersonalStoreItemUrl(), absolutePath, absolutePath2);
                            CLog.a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: videoRingtoneUrlData.getVideoUrl(): " + personalStoreItemUrlData.getPersonalStoreItemUrl() + ", changedFile: " + c3);
                            File file3 = new File(personalStoreItemUrlData.getPersonalStoreItemUrl());
                            try {
                                IoUtils.a(file3, new File(c3));
                                IoUtils.a(file3);
                                personalStoreItemUrlData.setPersonalStoreItemUrl(c3);
                                CallAppApplication.get().getObjectBoxStore().d(PersonalStoreItemUrlData.class).a((a) personalStoreItemUrlData);
                                i2++;
                            } catch (IOException e3) {
                                CLog.a(MigrationUtils.class, e3);
                            }
                        }
                    }
                    CLog.a(MigrationUtils.class, "migrateAndroidQToExternalDirectory completed. VideoRingtone files moved: " + i2 + " out of " + size2);
                }
                File file4 = new File(CallAppApplication.get().getExternalFilesDir(null) + File.separator + "CallAppMedia");
                if (file4.exists()) {
                    File[] listFiles2 = file4.listFiles();
                    if (CollectionUtils.b(listFiles2)) {
                        for (File file5 : listFiles2) {
                            try {
                                IoUtils.a(file5, new File(StringUtils.c(file5.getAbsolutePath(), absolutePath, absolutePath2)));
                                IoUtils.a(file5);
                            } catch (IOException e4) {
                                CLog.a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: delete file: " + file5.getAbsolutePath() + ", exception: " + e4);
                            }
                        }
                    }
                    if (CollectionUtils.a(file4.listFiles())) {
                        try {
                            IoUtils.c(file4);
                            CLog.a(MigrationUtils.class, "migrateAndroidQToExternalDirectory deleted old directory: CallAppMedia");
                        } catch (IOException e5) {
                            CLog.a(MigrationUtils.class, "migrateAndroidQToExternalDirectory: delete directory: CallAppMedia, exception: ".concat(String.valueOf(e5)));
                        }
                    }
                }
            } catch (Exception e6) {
                CLog.a(e6);
            }
        }
    }

    public static void a(List<UpdateContactItem> list) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(ContactLookupData.class);
        ArrayList arrayList = new ArrayList();
        for (UpdateContactItem updateContactItem : list) {
            ContactLookupData contactLookupData = (ContactLookupData) d2.e().a(ContactLookupData_.contactId, updateContactItem.contactId.longValue()).a().a();
            if (contactLookupData != null && StringUtils.b((CharSequence) updateContactItem.description)) {
                contactLookupData.setDescription(updateContactItem.description);
                arrayList.add(contactLookupData);
            }
        }
        d2.a((Collection) arrayList);
    }

    public static void b() {
        List<PersonalStoreItemUrlData> b2 = PersonalStoreItemDataManager.b(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
        if (CollectionUtils.b(b2)) {
            ArrayList arrayList = new ArrayList();
            for (PersonalStoreItemUrlData personalStoreItemUrlData : b2) {
                if (personalStoreItemUrlData != null) {
                    personalStoreItemUrlData.setUploaded(false);
                    arrayList.add(personalStoreItemUrlData);
                }
            }
            if (CollectionUtils.b(arrayList)) {
                PersonalStoreItemDataManager.a(arrayList);
            }
        }
    }

    public static void c() {
        List<CallRecorder> allRecords = CallRecorderManager.get().getAllRecords();
        if (CollectionUtils.b(allRecords)) {
            ArrayList arrayList = new ArrayList();
            for (CallRecorder callRecorder : allRecords) {
                if (callRecorder != null) {
                    callRecorder.setUploaded(false);
                    arrayList.add(callRecorder);
                }
            }
            if (CollectionUtils.b(arrayList)) {
                CallRecorderManager.get();
                CallRecorderManager.b(arrayList);
            }
        }
    }

    public static void d() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(PersonalStoreItemUrlData.class);
        a d3 = CallAppApplication.get().getObjectBoxStore().d(PersonalStoreItemUserData.class);
        List<PersonalStoreItemUrlData> c2 = d2.e().a().c();
        List<PersonalStoreItemUserData> c3 = d3.e().a().c();
        if (CollectionUtils.b(c2)) {
            for (PersonalStoreItemUrlData personalStoreItemUrlData : c2) {
                personalStoreItemUrlData.setPersonalStoreItemType(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
            }
            d2.a((Collection) c2);
        }
        if (CollectionUtils.b(c3)) {
            for (PersonalStoreItemUserData personalStoreItemUserData : c3) {
                personalStoreItemUserData.setPersonalStoreItemType(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
            }
            d3.a((Collection) c3);
        }
    }

    public static void e() {
        ArrayList arrayList = new ArrayList();
        for (MemoryContactItem memoryContactItem : ContactUtils.getContactsWithPhoneNumber()) {
            ContactLookupData b2 = ContactDeviceIDAndPhoneChangesUtils.b(memoryContactItem.lookupKey);
            if (b2 == null) {
                b2 = new ContactLookupData(memoryContactItem.lookupKey, memoryContactItem.contactId, memoryContactItem.displayName, memoryContactItem.normalNumbers, memoryContactItem.h);
            } else {
                b2.setContactId(memoryContactItem.contactId);
                b2.setDisplayName(memoryContactItem.displayName);
                b2.setPhoneNumbers(memoryContactItem.normalNumbers);
            }
            arrayList.add(b2);
        }
        if (CollectionUtils.b(arrayList)) {
            ContactDeviceIDAndPhoneChangesUtils.a(arrayList);
        }
    }

    public static void f() {
        List<ExtractedInfo> allImNotificationData = IMDataExtractionUtils.getAllImNotificationData();
        ArrayList arrayList = new ArrayList();
        for (ExtractedInfo extractedInfo : allImNotificationData) {
            String c2 = ContactDeviceIDAndPhoneChangesUtils.c(extractedInfo.phoneAsRaw);
            if (StringUtils.b((CharSequence) c2)) {
                extractedInfo.setDisplayName(c2);
                arrayList.add(extractedInfo);
            }
        }
        if (!arrayList.isEmpty()) {
            IMDataExtractionUtils.a((List<ExtractedInfo>) arrayList);
        }
    }

    public static void g() {
        ArrayList arrayList = new ArrayList();
        for (MemoryContactItem memoryContactItem : ContactUtils.getContactsWithPhoneNumber()) {
            if (StringUtils.b((CharSequence) memoryContactItem.e)) {
                arrayList.add(new UpdateContactItem(Long.valueOf(memoryContactItem.contactId), memoryContactItem.lookupKey, memoryContactItem.displayName, memoryContactItem.normalNumbers, memoryContactItem.h));
            }
        }
        if (CollectionUtils.b(arrayList) && ContactUtilsContactsContentObserver.getContactUtilsContactsContentObserver() != null) {
            ContactUtilsContactsContentObserver.a(arrayList);
        }
    }

    public static List<UpdateContactItem> getAllContactsWithOrganizationData() throws IllegalStateException {
        ArrayList arrayList = new ArrayList();
        ContentQuery c2 = ContentQuery.a(ContactsContract.Data.CONTENT_URI).c("lookup").c("contact_id").c("data1").c("data4").c("mimetype");
        c2.a("mimetype= ? OR mimetype= ?", "vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/organization");
        Cursor b2 = c2.b("data1", "!=", (String) null).b("data1", "!=", "").b("account_type", "!=", Constants.APP_NAME).b();
        if (b2 != null) {
            b2.moveToFirst();
            while (!b2.isAfterLast()) {
                try {
                    if (StringUtils.b(b2.getString(b2.getColumnIndex("mimetype")), "vnd.android.cursor.item/organization")) {
                        String a2 = ContactUtils.a(b2.getString(b2.getColumnIndex("data1")), b2.getString(b2.getColumnIndex("data4")));
                        if (StringUtils.b((CharSequence) a2)) {
                            arrayList.add(new UpdateContactItem(Long.valueOf(b2.getLong(b2.getColumnIndex("contact_id"))), b2.getString(b2.getColumnIndex("lookup")), "", new ArrayList(), a2));
                        }
                    }
                    b2.moveToNext();
                } finally {
                    IoUtils.a(b2);
                }
            }
            return arrayList;
        }
        throw new IllegalStateException();
    }

    public static long getInvalidExtractInfoContactsCount() {
        long j = 0;
        for (ExtractedInfo extractedInfo : IMDataExtractionUtils.getAllImNotificationData()) {
            if (StringUtils.b((CharSequence) ContactDeviceIDAndPhoneChangesUtils.c(extractedInfo.phoneAsRaw)) && extractedInfo.namesMap.isEmpty()) {
                j++;
            }
        }
        return j;
    }

    public static void h() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(ProfileViewedData.class);
        List<ProfileViewedData> c2 = d2.e().a(ProfileViewedData_.type, TYPE.VIEWME.getValue()).a((g) ProfileViewedData_.phoneNumber, 0).a((g) ProfileViewedData_.lastViewed, 1).a().c();
        String str = null;
        if (CollectionUtils.b(c2)) {
            ArrayList arrayList = new ArrayList();
            String str2 = null;
            for (ProfileViewedData profileViewedData : c2) {
                if (StringUtils.b(profileViewedData.getPhoneNumber(), str2)) {
                    arrayList.add(profileViewedData);
                } else {
                    str2 = profileViewedData.getPhoneNumber();
                }
            }
            if (CollectionUtils.b(arrayList)) {
                d2.b((Collection) arrayList);
            }
        }
        List<ProfileViewedData> c3 = d2.e().a(ProfileViewedData_.type, TYPE.MYVIEW.getValue()).a((g) ProfileViewedData_.phoneNumber, 0).a((g) ProfileViewedData_.lastViewed, 1).a().c();
        if (CollectionUtils.b(c3)) {
            ArrayList arrayList2 = new ArrayList();
            for (ProfileViewedData profileViewedData2 : c3) {
                if (StringUtils.b(profileViewedData2.getPhoneNumber(), str)) {
                    arrayList2.add(profileViewedData2);
                } else {
                    str = profileViewedData2.getPhoneNumber();
                }
            }
            if (CollectionUtils.b(arrayList2)) {
                d2.b((Collection) arrayList2);
            }
        }
    }

    public static void i() {
        j.b(CallAppApplication.get()).a("TAG_PERIODIC_BACKUP");
        Prefs.hW.set(null);
    }
}
