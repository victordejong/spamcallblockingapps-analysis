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
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import io.objectbox.relation.ToOne;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m4298d2 = {"Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;", "", "()V", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/PersonalStoreItemDataManager.class */
public final class PersonalStoreItemDataManager {

    /* renamed from: a */
    public static final Companion f25278a = new Companion(null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\n\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ6\u0010\u0005\u001a\u00020\u00062\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u000ej\b\u0012\u0004\u0012\u00020\u0004`\u000f2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012H\u0007J\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\fJ\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\fJ\u0010\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\u001e2\u0006\u0010\u000b\u001a\u00020\fJ\u0018\u0010\u001f\u001a\u00020 2\u000e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0012H\u0007J\u000e\u0010\"\u001a\u00020 2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fJ\u0018\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0002J\b\u0010'\u001a\u00020 H\u0007J\u0016\u0010(\u001a\u00020 2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006*"}, m4298d2 = {"Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;", "", "()V", "ASSIGN_TO_ALL_SIGN", "", "assignContactsToExistingOrNewPersonalStoreItem", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "contactIdToAdd", "PersonalStoreItemUrl", "type", "", "personalStoreItemType", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;", "contactIdsToAdd", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "personalStoreItem", "getAllPersonalStoreItemUrlByType", "", "getAllPersonalStoreItemUrlsByType", "getAllUnUploadedVideoRingTones", "getAnyPersonalStoreItemUrl", Constants.EXTRA_CONTACT_ID, "getAssignToAllPersonalStoreItem", "personalType", "getContactPersonalStoreItem", "getNumberOfPersonalStoreItemsByType", "getPersonalStoreItemUrlDataByType", "isTypeExist", "", "", "markAsUploaded", "", com.mopub.common.Constants.VIDEO_TRACKING_URLS_KEY, "removeAssignToAllPersonalStoreItem", "removePersonalStoreItemByUrl", "personalStoreItemUrl", "removePersonalStoreItemUrlData", "personalStoreItemUrlData", "resetUpload", "updatePersonalStoreItemUrlDatas", "personalStoreItems", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/PersonalStoreItemDataManager$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static String m28917a(String contactId, PersonalStoreItemUrlData.PersonalStoreItemType personalType) {
            ToOne<PersonalStoreItemUrlData> toOne;
            PersonalStoreItemUrlData m4573a;
            C18524p.m3840d(contactId, "contactId");
            C18524p.m3840d(personalType, "personalType");
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            PersonalStoreItemUserData personalStoreItemUserData = (PersonalStoreItemUserData) callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUserData.class).m4700e().m4611a(PersonalStoreItemUserData_.phoneOrIdKey, contactId).m4613a(PersonalStoreItemUserData_.personalStoreItemType, personalType.ordinal()).m4618a().m4641a();
            if (personalStoreItemUserData == null || (toOne = personalStoreItemUserData.personalStoreItemUrlDataToOne) == null || (m4573a = toOne.m4573a()) == null) {
                return null;
            }
            return m4573a.getPersonalStoreItemUrl();
        }

        /* renamed from: a */
        public static void m28918a(PersonalStoreItemUrlData personalStoreItemUrlData, PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            C17944a m4727d = callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class);
            CallAppApplication callAppApplication2 = CallAppApplication.get();
            C18524p.m3843b(callAppApplication2, "CallAppApplication.get()");
            C17944a m4727d2 = callAppApplication2.getObjectBoxStore().m4727d(PersonalStoreItemUserData.class);
            if (!StringUtils.m26024h(personalStoreItemUrlData.getPersonalStoreItemUrl()) && !IoUtils.m27504b(new File(personalStoreItemUrlData.getPersonalStoreItemUrl()))) {
                CallAppApplication callAppApplication3 = CallAppApplication.get();
                C18524p.m3843b(callAppApplication3, "CallAppApplication.get()");
                callAppApplication3.getContentResolver().delete(Uri.parse(personalStoreItemUrlData.getPersonalStoreItemUrl()), null, null);
            }
            m4727d2.m4704b((Collection) personalStoreItemUrlData.getPersonalStoreItemUserData());
            m4727d.m4700e().m4611a(PersonalStoreItemUrlData_.personalStoreItemUrl, personalStoreItemUrlData.getPersonalStoreItemUrl()).m4618a().m4624f();
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.m28449a(Constants.PERSONAL_STORE_ITEM, PersonalStoreItemHelper.m30047a(personalStoreItemType) + "-  number of videos for the user", String.valueOf(m28908d(personalStoreItemType)));
        }

        /* renamed from: a */
        public static void m28914a(List<? extends PersonalStoreItemUrlData> personalStoreItems) {
            C18524p.m3840d(personalStoreItems, "personalStoreItems");
            List<? extends PersonalStoreItemUrlData> list = personalStoreItems;
            if (!list.isEmpty()) {
                CallAppApplication callAppApplication = CallAppApplication.get();
                C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
                callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class).m4710a((Collection) list);
            }
        }

        /* renamed from: a */
        public static boolean m28919a(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            C18524p.m3840d(personalStoreItemType, "personalStoreItemType");
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            return callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class).m4700e().m4613a((C17978g) PersonalStoreItemUrlData_.type, 2147483647L).m4613a(PersonalStoreItemUrlData_.personalStoreItemType, (long) personalStoreItemType.ordinal()).m4618a().m4625e() > 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x021b, code lost:
            if (r13 == false) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x021e, code lost:
            r18 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0248, code lost:
            if (r13 == false) goto L57;
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x011a  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0253  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0281  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x029f A[ORIG_RETURN, RETURN] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.String m28912b(java.lang.String r8, com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData.PersonalStoreItemType r9) {
            /*
                Method dump skipped, instructions count: 673
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.PersonalStoreItemDataManager.Companion.m28912b(java.lang.String, com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData$PersonalStoreItemType):java.lang.String");
        }

        /* renamed from: b */
        public static List<PersonalStoreItemUrlData> m28913b(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            C18524p.m3840d(personalStoreItemType, "personalStoreItemType");
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            List<PersonalStoreItemUrlData> m4628c = callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class).m4700e().m4613a(PersonalStoreItemUrlData_.personalStoreItemType, personalStoreItemType.ordinal()).m4618a().m4628c();
            C18524p.m3843b(m4628c, "boxPersonalStoreItemUrlD….toLong()).build().find()");
            return m4628c;
        }

        /* renamed from: b */
        public static void m28911b(List<String> urls) {
            PersonalStoreItemUrlData personalStoreItemUrlData;
            C18524p.m3840d(urls, "urls");
            if (CollectionUtils.m26068b(urls)) {
                CallAppApplication callAppApplication = CallAppApplication.get();
                C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
                C17944a m4727d = callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class);
                ArrayList arrayList = new ArrayList();
                for (String str : urls) {
                    if (str != null && (personalStoreItemUrlData = (PersonalStoreItemUrlData) m4727d.m4700e().m4611a(PersonalStoreItemUrlData_.personalStoreItemUrl, str).m4600d().m4613a(PersonalStoreItemUrlData_.personalStoreItemType, PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE.getValue()).m4618a().m4641a()) != null) {
                        personalStoreItemUrlData.isUploaded = true;
                        arrayList.add(personalStoreItemUrlData);
                    }
                }
                ArrayList arrayList2 = arrayList;
                if (!(!arrayList2.isEmpty())) {
                    return;
                }
                m4727d.m4710a((Collection) arrayList2);
            }
        }

        /* renamed from: c */
        public static PersonalStoreItemUrlData m28909c(String str, PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            ToOne<PersonalStoreItemUrlData> toOne;
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            PersonalStoreItemUserData personalStoreItemUserData = (PersonalStoreItemUserData) callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUserData.class).m4700e().m4611a(PersonalStoreItemUserData_.phoneOrIdKey, str).m4613a(PersonalStoreItemUserData_.personalStoreItemType, personalStoreItemType.ordinal()).m4618a().m4641a();
            if (personalStoreItemUserData == null || (toOne = personalStoreItemUserData.personalStoreItemUrlDataToOne) == null) {
                return null;
            }
            return toOne.m4573a();
        }

        /* renamed from: c */
        public static String m28910c(PersonalStoreItemUrlData.PersonalStoreItemType personalType) {
            ToOne<PersonalStoreItemUrlData> toOne;
            PersonalStoreItemUrlData m4573a;
            C18524p.m3840d(personalType, "personalType");
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            PersonalStoreItemUserData personalStoreItemUserData = (PersonalStoreItemUserData) callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUserData.class).m4700e().m4611a(PersonalStoreItemUserData_.phoneOrIdKey, "666666").m4613a(PersonalStoreItemUserData_.personalStoreItemType, personalType.ordinal()).m4618a().m4641a();
            if (personalStoreItemUserData == null || (toOne = personalStoreItemUserData.personalStoreItemUrlDataToOne) == null || (m4573a = toOne.m4573a()) == null) {
                return null;
            }
            return m4573a.getPersonalStoreItemUrl();
        }

        /* renamed from: d */
        private static int m28908d(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            return (int) callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class).m4700e().m4613a(PersonalStoreItemUrlData_.personalStoreItemType, personalStoreItemType.ordinal()).m4618a().m4625e();
        }

        /* renamed from: a */
        public final PersonalStoreItemUrlData m28916a(String contactIdToAdd, String PersonalStoreItemUrl, int i, PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            C18524p.m3840d(contactIdToAdd, "contactIdToAdd");
            C18524p.m3840d(PersonalStoreItemUrl, "PersonalStoreItemUrl");
            C18524p.m3840d(personalStoreItemType, "personalStoreItemType");
            return m28915a(C18282n.m4165d(contactIdToAdd), PersonalStoreItemUrl, i, personalStoreItemType);
        }

        /* renamed from: a */
        public final PersonalStoreItemUrlData m28915a(ArrayList<String> contactIdsToAdd, String personalStoreItem, int i, PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
            PersonalStoreItemUrlData personalStoreItemUrlData;
            PersonalStoreItemUrlData personalStoreItemUrlData2;
            C18524p.m3840d(contactIdsToAdd, "contactIdsToAdd");
            C18524p.m3840d(personalStoreItem, "personalStoreItem");
            C18524p.m3840d(personalStoreItemType, "personalStoreItemType");
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            C17944a m4727d = callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class);
            CallAppApplication callAppApplication2 = CallAppApplication.get();
            C18524p.m3843b(callAppApplication2, "CallAppApplication.get()");
            C17944a m4727d2 = callAppApplication2.getObjectBoxStore().m4727d(PersonalStoreItemUserData.class);
            if (i == Integer.MAX_VALUE && (personalStoreItemUrlData2 = (PersonalStoreItemUrlData) m4727d.m4700e().m4613a(PersonalStoreItemUrlData_.type, i).m4613a(PersonalStoreItemUrlData_.personalStoreItemType, personalStoreItemType.ordinal()).m4618a().m4641a()) != null) {
                m28918a(personalStoreItemUrlData2, personalStoreItemType);
            }
            PersonalStoreItemUrlData personalStoreItemUrlData3 = (PersonalStoreItemUrlData) m4727d.m4700e().m4611a(PersonalStoreItemUrlData_.personalStoreItemUrl, personalStoreItem).m4613a(PersonalStoreItemUrlData_.personalStoreItemType, personalStoreItemType.ordinal()).m4618a().m4641a();
            if (personalStoreItemUrlData3 != null) {
                m4727d2.m4700e().m4613a(PersonalStoreItemUserData_.personalStoreItemUrlDataToOneId, personalStoreItemUrlData3.getId()).m4613a(PersonalStoreItemUserData_.personalStoreItemType, personalStoreItemType.ordinal()).m4618a().m4624f();
                personalStoreItemUrlData = personalStoreItemUrlData3;
            } else {
                personalStoreItemUrlData = new PersonalStoreItemUrlData(personalStoreItem, i, personalStoreItemType);
            }
            personalStoreItemUrlData.setType(i);
            Iterator<String> it2 = contactIdsToAdd.iterator();
            while (it2.hasNext()) {
                String contactId = it2.next();
                C18524p.m3843b(contactId, "contactId");
                PersonalStoreItemUrlData m28909c = m28909c(contactId, personalStoreItemType);
                if (m28909c != null) {
                    if (!CollectionUtils.m26068b(m28909c.getPersonalStoreItemUserData()) || m28909c.getPersonalStoreItemUserData().size() != 1) {
                        m4727d2.m4700e().m4611a(PersonalStoreItemUserData_.phoneOrIdKey, contactId).m4613a(PersonalStoreItemUserData_.personalStoreItemType, personalStoreItemType.ordinal()).m4618a().m4624f();
                    } else {
                        m28918a(m28909c, personalStoreItemType);
                    }
                }
                personalStoreItemUrlData.getPersonalStoreItemUserData().add(new PersonalStoreItemUserData(contactId, personalStoreItemType));
            }
            m4727d.m4711a((C17944a) personalStoreItemUrlData);
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.m28449a(Constants.PERSONAL_STORE_ITEM, PersonalStoreItemHelper.m30047a(personalStoreItemType) + ", -  number of videos for the user", String.valueOf(m28908d(personalStoreItemType)));
            return personalStoreItemUrlData;
        }

        public final List<PersonalStoreItemUrlData> getAllUnUploadedVideoRingTones() {
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            List<PersonalStoreItemUrlData> m4628c = callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class).m4700e().m4613a(PersonalStoreItemUrlData_.personalStoreItemType, PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE.getValue()).m4618a().m4628c();
            C18524p.m3843b(m4628c, "boxPersonalStoreItemUrlD….toLong()).build().find()");
            return m4628c;
        }
    }

    /* renamed from: a */
    public static final List<String> m28922a(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
        C18524p.m3840d(personalStoreItemType, "personalStoreItemType");
        ArrayList arrayList = new ArrayList();
        for (PersonalStoreItemUrlData personalStoreItemUrlData : Companion.m28913b(personalStoreItemType)) {
            arrayList.add(personalStoreItemUrlData.getPersonalStoreItemUrl());
        }
        return arrayList;
    }

    /* renamed from: a */
    public static final void m28921a(List<? extends PersonalStoreItemUrlData> list) {
        Companion.m28914a(list);
    }

    /* renamed from: b */
    public static final List<PersonalStoreItemUrlData> m28920b(PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType) {
        return Companion.m28913b(personalStoreItemType);
    }
}
