package com.callapp.contacts.loader;

import android.net.Uri;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData_;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUserData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUserData_;
import com.callapp.contacts.util.IoUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import io.objectbox.a;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;", "", "()V", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/PersonalStoreItemDataManager.class */
public final class PersonalStoreItemDataManager {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f14492a = new Companion(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\n\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ6\u0010\u0005\u001a\u00020\u00062\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u000ej\b\u0012\u0004\u0012\u00020\u0004`\u000f2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012H\u0007J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\fJ\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\fJ\u0010\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\u001e2\u0006\u0010\u000b\u001a\u00020\fJ\u0018\u0010\u001f\u001a\u00020 2\u000e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0012H\u0007J\u000e\u0010\"\u001a\u00020 2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fJ\u0018\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0002J\b\u0010'\u001a\u00020 H\u0007J\u0016\u0010(\u001a\u00020 2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006*"}, d2 = {"Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;", "", "()V", "ASSIGN_TO_ALL_SIGN", "", "assignContactsToExistingOrNewPersonalStoreItem", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "contactIdToAdd", "PersonalStoreItemUrl", "type", "", "personalStoreItemType", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;", "contactIdsToAdd", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "personalStoreItem", "getAllPersonalStoreItemUrlByType", "", "getAllPersonalStoreItemUrlsByType", "getAllUnUploadedVideoRingTones", "getAnyPersonalStoreItemUrl", Constants.EXTRA_CONTACT_ID, "getAssignToAllPersonalStoreItem", "personalType", "getContactPersonalStoreItem", "getNumberOfPersonalStoreItemsByType", "getPersonalStoreItemUrlDataByType", "isTypeExist", "", "", "markAsUploaded", "", com.mopub.common.Constants.VIDEO_TRACKING_URLS_KEY, "removeAssignToAllPersonalStoreItem", "removePersonalStoreItemByUrl", "personalStoreItemUrl", "removePersonalStoreItemUrlData", "personalStoreItemUrlData", "resetUpload", "updatePersonalStoreItemUrlDatas", "personalStoreItems", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/PersonalStoreItemDataManager$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static String a(String contactId, PersonalStoreItemUrlData.PersonalStoreItemType personalType) {
            ToOne<PersonalStoreItemUrlData> toOne;
            PersonalStoreItemUrlData a2;
            p.d(contactId, "contactId");
            p.d(personalType, "personalType");
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            PersonalStoreItemUserData personalStoreItemUserData = (PersonalStoreItemUserData) callAppApplication.getObjectBoxStore().d(PersonalStoreItemUserData.class).e().a(PersonalStoreItemUserData_.phoneOrIdKey, contactId).a(PersonalStoreItemUserData_.personalStoreItemType, personalType.ordinal()).a().a();
            if (personalStoreItemUserData == null || (toOne = personalStoreItemUserData.personalStoreItemUrlDataToOne) == null || (a2 = toOne.a()) == null) {
                return null;
            }
            return a2.getPersonalStoreItemUrl();
        }

        public static void a(PersonalStoreItemUrlData personalStoreItemUrlData, PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            a d2 = callAppApplication.getObjectBoxStore().d(PersonalStoreItemUrlData.class);
            CallAppApplication callAppApplication2 = CallAppApplication.get();
            p.b(callAppApplication2, "CallAppApplication.get()");
            a d3 = callAppApplication2.getObjectBoxStore().d(PersonalStoreItemUserData.class);
            if (!StringUtils.h(personalStoreItemUrlData.getPersonalStoreItemUrl()) && !IoUtils.b(new File(personalStoreItemUrlData.getPersonalStoreItemUrl()))) {
                CallAppApplication callAppApplication3 = CallAppApplication.get();
                p.b(callAppApplication3, "CallAppApplication.get()");
                callAppApplication3.getContentResolver().delete(Uri.parse(personalStoreItemUrlData.getPersonalStoreItemUrl()), null, null);
            }
            d3.b((Collection) personalStoreItemUrlData.getPersonalStoreItemUserData());
            d2.e().a(PersonalStoreItemUrlData_.personalStoreItemUrl, personalStoreItemUrlData.getPersonalStoreItemUrl()).a().f();
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.a(Constants.PERSONAL_STORE_ITEM, PersonalStoreItemHelper.a(personalStoreItemType) + "-  number of videos for the user", String.valueOf(d(personalStoreItemType)));
        }

        public static void a(List<? extends PersonalStoreItemUrlData> personalStoreItems) {
            p.d(personalStoreItems, "personalStoreItems");
            List<? extends PersonalStoreItemUrlData> list = personalStoreItems;
            if (!list.isEmpty()) {
                CallAppApplication callAppApplication = CallAppApplication.get();
                p.b(callAppApplication, "CallAppApplication.get()");
                callAppApplication.getObjectBoxStore().d(PersonalStoreItemUrlData.class).a((Collection) list);
            }
        }

        public static boolean a(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            p.d(personalStoreItemType, "personalStoreItemType");
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            return callAppApplication.getObjectBoxStore().d(PersonalStoreItemUrlData.class).e().a((g) PersonalStoreItemUrlData_.type, 2147483647L).a(PersonalStoreItemUrlData_.personalStoreItemType, (long) personalStoreItemType.ordinal()).a().e() > 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x021b, code lost:
            if (r13 == false) goto L_0x021e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x021e, code lost:
            r18 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0248, code lost:
            if (r13 == false) goto L_0x021e;
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x011a  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0253  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0281  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x029f A[ORIG_RETURN, RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.String b(java.lang.String r8, com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData.PersonalStoreItemType r9) {
            /*
                Method dump skipped, instructions count: 673
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.PersonalStoreItemDataManager.Companion.b(java.lang.String, com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData$PersonalStoreItemType):java.lang.String");
        }

        public static List<PersonalStoreItemUrlData> b(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            p.d(personalStoreItemType, "personalStoreItemType");
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            List<PersonalStoreItemUrlData> c2 = callAppApplication.getObjectBoxStore().d(PersonalStoreItemUrlData.class).e().a(PersonalStoreItemUrlData_.personalStoreItemType, personalStoreItemType.ordinal()).a().c();
            p.b(c2, "boxPersonalStoreItemUrlD….toLong()).build().find()");
            return c2;
        }

        public static void b(List<String> urls) {
            PersonalStoreItemUrlData personalStoreItemUrlData;
            p.d(urls, "urls");
            if (CollectionUtils.b(urls)) {
                CallAppApplication callAppApplication = CallAppApplication.get();
                p.b(callAppApplication, "CallAppApplication.get()");
                a d2 = callAppApplication.getObjectBoxStore().d(PersonalStoreItemUrlData.class);
                ArrayList arrayList = new ArrayList();
                for (String str : urls) {
                    if (!(str == null || (personalStoreItemUrlData = (PersonalStoreItemUrlData) d2.e().a(PersonalStoreItemUrlData_.personalStoreItemUrl, str).d().a(PersonalStoreItemUrlData_.personalStoreItemType, PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE.getValue()).a().a()) == null)) {
                        personalStoreItemUrlData.isUploaded = true;
                        arrayList.add(personalStoreItemUrlData);
                    }
                }
                ArrayList arrayList2 = arrayList;
                if (!arrayList2.isEmpty()) {
                    d2.a((Collection) arrayList2);
                }
            }
        }

        public static PersonalStoreItemUrlData c(String str, PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            ToOne<PersonalStoreItemUrlData> toOne;
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            PersonalStoreItemUserData personalStoreItemUserData = (PersonalStoreItemUserData) callAppApplication.getObjectBoxStore().d(PersonalStoreItemUserData.class).e().a(PersonalStoreItemUserData_.phoneOrIdKey, str).a(PersonalStoreItemUserData_.personalStoreItemType, personalStoreItemType.ordinal()).a().a();
            if (personalStoreItemUserData == null || (toOne = personalStoreItemUserData.personalStoreItemUrlDataToOne) == null) {
                return null;
            }
            return toOne.a();
        }

        public static String c(PersonalStoreItemUrlData.PersonalStoreItemType personalType) {
            ToOne<PersonalStoreItemUrlData> toOne;
            PersonalStoreItemUrlData a2;
            p.d(personalType, "personalType");
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            PersonalStoreItemUserData personalStoreItemUserData = (PersonalStoreItemUserData) callAppApplication.getObjectBoxStore().d(PersonalStoreItemUserData.class).e().a(PersonalStoreItemUserData_.phoneOrIdKey, "666666").a(PersonalStoreItemUserData_.personalStoreItemType, personalType.ordinal()).a().a();
            if (personalStoreItemUserData == null || (toOne = personalStoreItemUserData.personalStoreItemUrlDataToOne) == null || (a2 = toOne.a()) == null) {
                return null;
            }
            return a2.getPersonalStoreItemUrl();
        }

        private static int d(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            return (int) callAppApplication.getObjectBoxStore().d(PersonalStoreItemUrlData.class).e().a(PersonalStoreItemUrlData_.personalStoreItemType, personalStoreItemType.ordinal()).a().e();
        }

        public final PersonalStoreItemUrlData a(String contactIdToAdd, String PersonalStoreItemUrl, int i, PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            p.d(contactIdToAdd, "contactIdToAdd");
            p.d(PersonalStoreItemUrl, "PersonalStoreItemUrl");
            p.d(personalStoreItemType, "personalStoreItemType");
            return a(n.d(contactIdToAdd), PersonalStoreItemUrl, i, personalStoreItemType);
        }

        public final PersonalStoreItemUrlData a(ArrayList<String> contactIdsToAdd, String personalStoreItem, int i, PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            PersonalStoreItemUrlData personalStoreItemUrlData;
            PersonalStoreItemUrlData personalStoreItemUrlData2;
            p.d(contactIdsToAdd, "contactIdsToAdd");
            p.d(personalStoreItem, "personalStoreItem");
            p.d(personalStoreItemType, "personalStoreItemType");
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            a d2 = callAppApplication.getObjectBoxStore().d(PersonalStoreItemUrlData.class);
            CallAppApplication callAppApplication2 = CallAppApplication.get();
            p.b(callAppApplication2, "CallAppApplication.get()");
            a d3 = callAppApplication2.getObjectBoxStore().d(PersonalStoreItemUserData.class);
            if (i == Integer.MAX_VALUE && (personalStoreItemUrlData2 = (PersonalStoreItemUrlData) d2.e().a(PersonalStoreItemUrlData_.type, i).a(PersonalStoreItemUrlData_.personalStoreItemType, personalStoreItemType.ordinal()).a().a()) != null) {
                a(personalStoreItemUrlData2, personalStoreItemType);
            }
            PersonalStoreItemUrlData personalStoreItemUrlData3 = (PersonalStoreItemUrlData) d2.e().a(PersonalStoreItemUrlData_.personalStoreItemUrl, personalStoreItem).a(PersonalStoreItemUrlData_.personalStoreItemType, personalStoreItemType.ordinal()).a().a();
            if (personalStoreItemUrlData3 != null) {
                d3.e().a(PersonalStoreItemUserData_.personalStoreItemUrlDataToOneId, personalStoreItemUrlData3.getId()).a(PersonalStoreItemUserData_.personalStoreItemType, personalStoreItemType.ordinal()).a().f();
                personalStoreItemUrlData = personalStoreItemUrlData3;
            } else {
                personalStoreItemUrlData = new PersonalStoreItemUrlData(personalStoreItem, i, personalStoreItemType);
            }
            personalStoreItemUrlData.setType(i);
            Iterator<String> it2 = contactIdsToAdd.iterator();
            while (it2.hasNext()) {
                String contactId = it2.next();
                p.b(contactId, "contactId");
                PersonalStoreItemUrlData c2 = c(contactId, personalStoreItemType);
                if (c2 != null) {
                    if (!CollectionUtils.b(c2.getPersonalStoreItemUserData()) || c2.getPersonalStoreItemUserData().size() != 1) {
                        d3.e().a(PersonalStoreItemUserData_.phoneOrIdKey, contactId).a(PersonalStoreItemUserData_.personalStoreItemType, personalStoreItemType.ordinal()).a().f();
                    } else {
                        a(c2, personalStoreItemType);
                    }
                }
                personalStoreItemUrlData.getPersonalStoreItemUserData().add(new PersonalStoreItemUserData(contactId, personalStoreItemType));
            }
            d2.a((a) personalStoreItemUrlData);
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.a(Constants.PERSONAL_STORE_ITEM, PersonalStoreItemHelper.a(personalStoreItemType) + ", -  number of videos for the user", String.valueOf(d(personalStoreItemType)));
            return personalStoreItemUrlData;
        }

        public final List<PersonalStoreItemUrlData> getAllUnUploadedVideoRingTones() {
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            List<PersonalStoreItemUrlData> c2 = callAppApplication.getObjectBoxStore().d(PersonalStoreItemUrlData.class).e().a(PersonalStoreItemUrlData_.personalStoreItemType, PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE.getValue()).a().c();
            p.b(c2, "boxPersonalStoreItemUrlD….toLong()).build().find()");
            return c2;
        }
    }

    public static final List<String> a(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
        p.d(personalStoreItemType, "personalStoreItemType");
        ArrayList arrayList = new ArrayList();
        for (PersonalStoreItemUrlData personalStoreItemUrlData : Companion.b(personalStoreItemType)) {
            arrayList.add(personalStoreItemUrlData.getPersonalStoreItemUrl());
        }
        return arrayList;
    }

    public static final void a(List<? extends PersonalStoreItemUrlData> list) {
        Companion.a(list);
    }

    public static final List<PersonalStoreItemUrlData> b(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
        return Companion.b(personalStoreItemType);
    }
}
