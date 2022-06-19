package com.callapp.contacts.activity.analytics.data;

import android.util.Pair;
import android.util.SparseArray;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.CommunityCard;
import com.callapp.contacts.activity.analytics.data.items.CallAppPlusIdentifiedCardItem;
import com.callapp.contacts.activity.analytics.data.items.ContactDetailsInsightData;
import com.callapp.contacts.activity.analytics.data.items.HoursCallDataItem;
import com.callapp.contacts.activity.analytics.data.items.MyCallsCardItem;
import com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager;
import com.callapp.contacts.activity.calllog.AggregateCallLogData;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.PersonalStoreItemDataManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData_;
import com.callapp.contacts.model.objectbox.BlockedNumberData;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.UserCorrectedData;
import com.callapp.contacts.model.objectbox.UserCorrectedData_;
import com.callapp.contacts.model.objectbox.UserSpamData;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsDataManager.class */
public class AnalyticsDataManager {

    /* renamed from: a */
    private static int f19911a = 3;

    /* renamed from: b */
    private static long f19912b = 10;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.analytics.data.AnalyticsDataManager$2 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsDataManager$2.class */
    public static /* synthetic */ class C57472 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19916a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[IMDataExtractionUtils.RecognizedPersonOrigin.values().length];
            f19916a = iArr;
            try {
                iArr[IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19916a[IMDataExtractionUtils.RecognizedPersonOrigin.CLIPBOARD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19916a[IMDataExtractionUtils.RecognizedPersonOrigin.CALL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19916a[IMDataExtractionUtils.RecognizedPersonOrigin.SMS_MESSAGE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19916a[IMDataExtractionUtils.RecognizedPersonOrigin.VIBER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19916a[IMDataExtractionUtils.RecognizedPersonOrigin.SIGNAL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19916a[IMDataExtractionUtils.RecognizedPersonOrigin.SEARCH.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f19916a[IMDataExtractionUtils.RecognizedPersonOrigin.VONAGE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f19916a[IMDataExtractionUtils.RecognizedPersonOrigin.TELEGRAM.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData.class */
    public static class AnalyticsIdentifiedCardData {

        /* renamed from: a */
        private long f19917a;

        /* renamed from: b */
        private int f19918b;

        /* renamed from: c */
        private float f19919c;

        public AnalyticsIdentifiedCardData(long j, int i, float f) {
            this.f19917a = j;
            this.f19918b = i;
            this.f19919c = f;
        }

        public float getPercent() {
            return this.f19919c;
        }

        public long getTotalIdentifiedCalls() {
            return this.f19917a;
        }

        public int getTotalIdentifiedContacts() {
            return this.f19918b;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod.class */
    public enum DatePeriod {
        CURRENT,
        PREVIOUS
    }

    /* renamed from: a */
    public static Pair<Long, Long> m31631a(AnalyticsDatePickerManager.DatePicker datePicker, DatePeriod datePeriod) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 23);
        calendar.set(12, 59);
        int i = datePicker == AnalyticsDatePickerManager.DatePicker.WEEK ? 7 : 30;
        if (datePeriod == DatePeriod.PREVIOUS) {
            calendar.add(5, -i);
        }
        long time = calendar.getTime().getTime();
        calendar.add(5, -i);
        return Pair.create(Long.valueOf(time), Long.valueOf(calendar.getTime().getTime()));
    }

    /* renamed from: a */
    public static ContactDetailsInsightData m31629a(ContactData contactData) {
        List<AnalyticsCallsData> m4628c = CallAppApplication.get().getObjectBoxStore().m4727d(AnalyticsCallsData.class).m4700e().m4609a((C17978g) AnalyticsCallsData_.isIncognito, false).m4611a(AnalyticsCallsData_.phoneAsGlobal, contactData.getPhone().m26101a()).m4609a((C17978g) AnalyticsCallsData_.isExclude, false).m4603c().m4615a(AnalyticsCallsData_.isExclude).m4614a((C17978g) AnalyticsCallsData_.duration, 1).m4618a().m4628c();
        ContactDetailsInsightData contactDetailsInsightData = new ContactDetailsInsightData(contactData.getNameOrNumber(), contactData.getPhone(), String.valueOf(contactData.getDeviceId()));
        if (CollectionUtils.m26068b(m4628c)) {
            SparseArray sparseArray = new SparseArray();
            long duration = ((AnalyticsCallsData) m4628c.get(0)).getDuration();
            if (m4628c.size() >= f19911a && duration > f19912b) {
                contactDetailsInsightData.setShowData(true);
                contactDetailsInsightData.setLongestCall((float) duration);
                Calendar calendar = Calendar.getInstance();
                for (AnalyticsCallsData analyticsCallsData : m4628c) {
                    calendar.setTime(new Date(analyticsCallsData.getDate()));
                    int i = calendar.get(11) / 2;
                    sparseArray.put(i, Integer.valueOf(sparseArray.get(i) != null ? ((Integer) sparseArray.get(i)).intValue() + 1 : 1));
                    contactDetailsInsightData.f19945k++;
                    contactDetailsInsightData.f19948n += (float) analyticsCallsData.getDuration();
                    if (analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.INCOMING || analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.MISSED_CALL) {
                        contactDetailsInsightData.f19939e++;
                        if (analyticsCallsData.getDayType() == AnalyticsCallsData.DayType.NIGHT) {
                            contactDetailsInsightData.f19936b++;
                        } else {
                            contactDetailsInsightData.f19935a++;
                        }
                        if (analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.INCOMING) {
                            contactDetailsInsightData.f19941g++;
                            contactDetailsInsightData.f19947m += (float) analyticsCallsData.getDuration();
                        } else {
                            contactDetailsInsightData.f19943i++;
                        }
                    } else {
                        contactDetailsInsightData.f19940f++;
                        if (analyticsCallsData.getDayType() == AnalyticsCallsData.DayType.NIGHT) {
                            contactDetailsInsightData.f19938d++;
                        } else {
                            contactDetailsInsightData.f19937c++;
                        }
                        if (analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.OUTGOING) {
                            contactDetailsInsightData.f19942h++;
                            contactDetailsInsightData.f19946l += (float) analyticsCallsData.getDuration();
                        } else {
                            contactDetailsInsightData.f19944j++;
                        }
                    }
                }
                contactDetailsInsightData.setTimeSlotData(m31633a(sparseArray));
                PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f25278a;
                if (StringUtils.m26045b((CharSequence) PersonalStoreItemDataManager.Companion.m28912b(contactDetailsInsightData.getContactId(), PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE))) {
                    contactDetailsInsightData.setHasVideo(true);
                }
            }
        }
        return contactDetailsInsightData;
    }

    /* renamed from: a */
    private static String m31633a(SparseArray<Integer> sparseArray) {
        int size = sparseArray.size();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i >= size) {
                break;
            }
            int keyAt = sparseArray.keyAt(i);
            int intValue = sparseArray.valueAt(i).intValue();
            int i5 = i4;
            if (intValue > i4) {
                i2 = keyAt;
                i5 = intValue;
            }
            i++;
            i3 = i5;
        }
        return i2 == 0 ? "00:00 - 01:59" : i2 == 1 ? "02:00 - 03:59" : i2 == 2 ? "04:00 - 05:59" : i2 == 3 ? "06:00 - 07:59" : i2 == 4 ? "08:00 - 09:59" : i2 == 5 ? "10:00 - 11:59" : i2 == 6 ? "12:00 - 13:59" : i2 == 7 ? "14:00 - 15:59" : i2 == 8 ? "16:00 - 17:59" : i2 == 9 ? "18:00 - 19:59" : i2 == 10 ? "20:00 - 21:59" : "22:00 - 23:59";
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002e, code lost:
        if (r0 == com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager.DatePicker.MONTH) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.callapp.contacts.model.objectbox.AnalyticsCallsData> m31627a(int[] r7, com.callapp.contacts.activity.analytics.data.AnalyticsDataManager.DatePeriod r8) {
        /*
            com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager$DatePicker> r0 = com.callapp.contacts.manager.preferences.Prefs.f26548gG
            java.lang.Object r0 = r0.get()
            com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager$DatePicker r0 = (com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager.DatePicker) r0
            r9 = r0
            com.callapp.contacts.CallAppApplication r0 = com.callapp.contacts.CallAppApplication.get()
            io.objectbox.BoxStore r0 = r0.getObjectBoxStore()
            java.lang.Class<com.callapp.contacts.model.objectbox.AnalyticsCallsData> r1 = com.callapp.contacts.model.objectbox.AnalyticsCallsData.class
            io.objectbox.a r0 = r0.m4727d(r1)
            r7 = r0
            r0 = r9
            r1 = r8
            android.util.Pair r0 = m31631a(r0, r1)
            r10 = r0
            r0 = r7
            io.objectbox.query.QueryBuilder r0 = r0.m4700e()
            r8 = r0
            r0 = r9
            com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager$DatePicker r1 = com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager.DatePicker.WEEK
            if (r0 == r1) goto L31
            r0 = r8
            r7 = r0
            r0 = r9
            com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager$DatePicker r1 = com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager.DatePicker.MONTH
            if (r0 != r1) goto L4d
        L31:
            r0 = r8
            io.objectbox.g<com.callapp.contacts.model.objectbox.AnalyticsCallsData> r1 = com.callapp.contacts.model.objectbox.AnalyticsCallsData_.date
            r2 = r10
            java.lang.Object r2 = r2.first
            java.lang.Long r2 = (java.lang.Long) r2
            long r2 = r2.longValue()
            r3 = r10
            java.lang.Object r3 = r3.second
            java.lang.Long r3 = (java.lang.Long) r3
            long r3 = r3.longValue()
            io.objectbox.query.QueryBuilder r0 = r0.m4612a(r1, r2, r3)
            r7 = r0
        L4d:
            r0 = r7
            io.objectbox.query.Query r0 = r0.m4618a()
            java.util.List r0 = r0.m4628c()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.data.AnalyticsDataManager.m31627a(int[], com.callapp.contacts.activity.analytics.data.AnalyticsDataManager$DatePeriod):java.util.List");
    }

    /* renamed from: a */
    public static Map<SimManager.SimId, MyCallsCardItem> m31632a(DatePeriod datePeriod) {
        List<AnalyticsCallsData> m31627a = m31627a((int[]) null, datePeriod);
        for (AnalyticsCallsData analyticsCallsData : m31627a) {
            if (SimManager.get().getDualSimOperators() == null) {
                if (analyticsCallsData.getSimId() == SimManager.SimId.SIM_1 || analyticsCallsData.getSimId() == SimManager.SimId.SIM_2) {
                    analyticsCallsData.setSimId(SimManager.SimId.ASK);
                }
            } else if (analyticsCallsData.getSimId() == SimManager.SimId.ASK) {
                analyticsCallsData.setSimId(SimManager.SimId.SIM_1);
            }
        }
        HashMap hashMap = new HashMap();
        for (AnalyticsCallsData analyticsCallsData2 : m31627a) {
            MyCallsCardItem myCallsCardItem = (MyCallsCardItem) hashMap.get(analyticsCallsData2.getSimId());
            MyCallsCardItem myCallsCardItem2 = myCallsCardItem;
            if (myCallsCardItem == null) {
                myCallsCardItem2 = new MyCallsCardItem(0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, analyticsCallsData2.getSimId(), BitmapDescriptorFactory.HUE_RED, 0);
                hashMap.put(analyticsCallsData2.getSimId(), myCallsCardItem2);
            }
            if (analyticsCallsData2.getCallType() == AnalyticsCallsData.CallType.OUTGOING) {
                myCallsCardItem2.f19963b++;
                myCallsCardItem2.f19966e += (float) analyticsCallsData2.getDuration();
                myCallsCardItem2.m31612a(analyticsCallsData2.getDuration());
                myCallsCardItem2.m31613a();
            } else if (analyticsCallsData2.getCallType() == AnalyticsCallsData.CallType.INCOMING) {
                myCallsCardItem2.f19962a++;
                myCallsCardItem2.f19967f += (float) analyticsCallsData2.getDuration();
                myCallsCardItem2.m31612a(analyticsCallsData2.getDuration());
                myCallsCardItem2.m31613a();
            } else if (analyticsCallsData2.getCallType() == AnalyticsCallsData.CallType.MISSED_CALL) {
                myCallsCardItem2.f19964c++;
                myCallsCardItem2.m31613a();
            } else if (analyticsCallsData2.getCallType() == AnalyticsCallsData.CallType.NOT_ANSWER) {
                myCallsCardItem2.f19965d++;
                myCallsCardItem2.m31613a();
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m31635a() {
        Prefs.f26545gD.m28169b(1);
    }

    /* renamed from: a */
    public static void m31634a(long j, AnalyticsCallsData.CallType callType, AnalyticsCallsData.DayType dayType, SimManager.SimId simId, Phone phone, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        CallAppApplication.get().getObjectBoxStore().m4727d(AnalyticsCallsData.class).m4711a((C17944a) new AnalyticsCallsData(j, callType, dayType, simId, phone, j2, z, z2, z3, z4, z5, z6, z7, z8));
    }

    /* renamed from: a */
    public static void m31630a(final CallData callData, final long j) {
        final ContactData contactDataByCallData = PhoneStateManager.get().getContactDataByCallData(callData);
        new Task() { // from class: com.callapp.contacts.activity.analytics.data.AnalyticsDataManager.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v83, types: [long] */
            /* JADX WARN: Type inference failed for: r23v0 */
            /* JADX WARN: Type inference failed for: r23v1 */
            /* JADX WARN: Type inference failed for: r23v2 */
            /* JADX WARN: Type inference failed for: r5v0 */
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                AnalyticsCallsData.CallType callType = callData.isIncoming() ? callData.isCallAnswered().booleanValue() ? AnalyticsCallsData.CallType.INCOMING : AnalyticsCallsData.CallType.MISSED_CALL : callData.isCallAnswered().booleanValue() ? AnalyticsCallsData.CallType.OUTGOING : AnalyticsCallsData.CallType.NOT_ANSWER;
                Date date = new Date();
                Date date2 = callData.getTalkingStartTime() > 0 ? new Date(callData.getTalkingStartTime()) : date;
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date2);
                int i = calendar.get(11);
                AnalyticsCallsData.DayType dayType = (i < 5 || i > 19) ? AnalyticsCallsData.DayType.NIGHT : AnalyticsCallsData.DayType.DAY;
                SimManager.SimId simId = callData.getSimId() != null ? callData.getSimId() : SimManager.SimId.ASK;
                ?? time = callData.getTalkingStartTime() > 0 ? (date.getTime() - callData.getTalkingStartTime()) / 1000 : false;
                boolean z = StringUtils.m26045b((CharSequence) Prefs.f26241aR.get()) && Prefs.f26241aR.get().startsWith("+") && PhoneManager.get().m28239a(Prefs.f26241aR.get()).getCountryCode() != callData.getNumber().getCountryCode();
                ContactData contactData = contactDataByCallData;
                boolean z2 = contactData != null && contactData.isSpammer();
                ContactData contactData2 = contactDataByCallData;
                boolean z3 = contactData2 != null && CallLogUtils.m27556b(contactData2.getPhone().getRawNumber());
                ContactData contactData3 = contactDataByCallData;
                boolean z4 = contactData3 != null && (contactData3.isIncognito() || IncognitoCallManager.get().isIncognito(callData.getNumber()) || callData.getMarkAsIncognito());
                ContactData contactData4 = contactDataByCallData;
                AnalyticsDataManager.m31634a(j, callType, dayType, simId, callData.getNumber(), time == true ? 1L : 0L, z2, callData.isBlocked(), z3, z4, callData.isConferenceManager(), z, (contactData4 == null || contactData4.getGenomeData() == null || !StringUtils.m26045b((CharSequence) contactDataByCallData.getGenomeData().getName())) ? false : true, AnalyticsExcludeManager.m31616a(callData.getNumber()));
            }
        }.execute();
    }

    /* renamed from: a */
    public static void m31628a(Phone phone, boolean z) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(AnalyticsCallsData.class);
        List<AnalyticsCallsData> m4628c = m4727d.m4700e().m4611a(AnalyticsCallsData_.phoneAsGlobal, phone.m26101a()).m4618a().m4628c();
        for (AnalyticsCallsData analyticsCallsData : m4628c) {
            analyticsCallsData.setExclude(z);
        }
        m4727d.m4710a((Collection) m4628c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0081, code lost:
        if (r0 == com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager.DatePicker.MONTH) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00eb, code lost:
        if (r0 == com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager.DatePicker.MONTH) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0027, code lost:
        if (r0 == com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager.DatePicker.MONTH) goto L6;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.callapp.contacts.activity.analytics.cards.callappForYou.BlockSpamItem m31625b(com.callapp.contacts.activity.analytics.data.AnalyticsDataManager.DatePeriod r7) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.data.AnalyticsDataManager.m31625b(com.callapp.contacts.activity.analytics.data.AnalyticsDataManager$DatePeriod):com.callapp.contacts.activity.analytics.cards.callappForYou.BlockSpamItem");
    }

    /* renamed from: b */
    public static void m31626b() {
        Prefs.f26546gE.m28169b(1);
    }

    /* renamed from: c */
    public static HoursCallDataItem m31623c(DatePeriod datePeriod) {
        List<AnalyticsCallsData> m31627a = m31627a((int[]) null, datePeriod);
        HoursCallDataItem hoursCallDataItem = new HoursCallDataItem(0, 0, 0, 0, 0, 0);
        for (AnalyticsCallsData analyticsCallsData : m31627a) {
            if (analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.INCOMING || analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.MISSED_CALL) {
                hoursCallDataItem.f19960e++;
                if (analyticsCallsData.getDayType() == AnalyticsCallsData.DayType.NIGHT) {
                    hoursCallDataItem.f19957b++;
                } else {
                    hoursCallDataItem.f19956a++;
                }
            } else {
                hoursCallDataItem.f19961f++;
                if (analyticsCallsData.getDayType() == AnalyticsCallsData.DayType.NIGHT) {
                    hoursCallDataItem.f19959d++;
                } else {
                    hoursCallDataItem.f19958c++;
                }
            }
        }
        return hoursCallDataItem;
    }

    /* renamed from: c */
    public static void m31624c() {
        Prefs.f26547gF.m28169b(1);
    }

    /* renamed from: d */
    public static void m31622d() {
        Stack<AggregateCallLogData> callLog = CallLogUtils.getCallLog();
        ContactLoader disableContactEvents = new ContactLoader().addFields(EnumSet.of(ContactField.deviceId, ContactField.fullName, ContactField.isIncognito, ContactField.genomeData)).addDeviceDataAndFastPhotoNameLoaders().addSyncLoader(new CacheLoader()).addSyncLoader(new LocalGenomeLoader(false)).setLoadOnlyFromCache().setDisableContactEvents();
        if (callLog != null) {
            Iterator<AggregateCallLogData> it2 = callLog.iterator();
            while (it2.hasNext()) {
                AggregateCallLogData next = it2.next();
                ContactData load = disableContactEvents.load(next.f20274c, next.contactId);
                boolean z = true;
                boolean z2 = StringUtils.m26045b((CharSequence) Prefs.f26241aR.get()) && Prefs.f26241aR.get().startsWith("+") && PhoneManager.get().m28239a(Prefs.f26241aR.get()).getCountryCode() != next.getPhone().getCountryCode();
                boolean isSpammer = load.isSpammer();
                boolean m27556b = CallLogUtils.m27556b(load.getPhone().getRawNumber());
                boolean isIncognito = load.isIncognito();
                if (load.getGenomeData() == null || !StringUtils.m26045b((CharSequence) load.getGenomeData().getName())) {
                    z = false;
                }
                for (AggregateCallLogData.CallLogData callLogData : next.getCallLogs()) {
                    int callType = callLogData.getCallType();
                    long time = callLogData.getDate().getTime();
                    AnalyticsCallsData.CallType callType2 = getCallType(callType);
                    Date date = callLogData.getDate();
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(date);
                    int i = calendar.get(11);
                    m31634a(time, callType2, (i < 5 || i > 19) ? AnalyticsCallsData.DayType.NIGHT : AnalyticsCallsData.DayType.DAY, next.getSimId(), next.getPhone(), callLogData.getDuration(), isSpammer, false, m27556b, isIncognito, false, z2, z, AnalyticsExcludeManager.m31616a(next.getPhone()));
                }
            }
        }
        Prefs.f26546gE.set(Integer.valueOf((int) CallAppApplication.get().getObjectBoxStore().m4727d(UserSpamData.class).m4709b()));
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(UserCorrectedData.class);
        long m4709b = m4727d.m4709b();
        long m4625e = m4727d.m4700e().m4613a((C17978g) UserCorrectedData_.userCorrectedType, 0L).m4618a().m4625e();
        Prefs.f26545gD.set(Integer.valueOf((int) (m4709b - m4625e)));
        Prefs.f26547gF.set(Integer.valueOf((int) m4625e));
    }

    /* renamed from: e */
    public static void m31621e() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, -35);
        long time = calendar.getTime().getTime();
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(BlockedNumberData.class);
        List<BlockedNumberData> m4628c = m4727d.m4700e().m4618a().m4628c();
        for (BlockedNumberData blockedNumberData : m4628c) {
            blockedNumberData.setWhen(time);
        }
        m4727d.m4710a((Collection) m4628c);
    }

    /* renamed from: f */
    public static void m31620f() {
        CallAppApplication.get().getObjectBoxStore().m4727d(AnalyticsCallsData.class).m4701d();
    }

    private static AnalyticsCallsData.CallType getCallType(int i) {
        return i == 2 ? AnalyticsCallsData.CallType.OUTGOING : i == 1 ? AnalyticsCallsData.CallType.INCOMING : i == 40 ? AnalyticsCallsData.CallType.NOT_ANSWER : AnalyticsCallsData.CallType.MISSED_CALL;
    }

    public static CallAppPlusIdentifiedCardItem getDataForCallAppPlusCard() {
        CallAppPlusIdentifiedCardItem callAppPlusIdentifiedCardItem = new CallAppPlusIdentifiedCardItem();
        for (ExtractedInfo extractedInfo : CallAppApplication.get().getObjectBoxStore().m4727d(ExtractedInfo.class).m4703c()) {
            switch (C57472.f19916a[extractedInfo.recognizedPersonOrigin.ordinal()]) {
                case 1:
                    callAppPlusIdentifiedCardItem.f19923a++;
                    break;
                case 2:
                    callAppPlusIdentifiedCardItem.f19924b++;
                    break;
                case 3:
                    callAppPlusIdentifiedCardItem.f19927e++;
                    break;
                case 4:
                    callAppPlusIdentifiedCardItem.f19925c++;
                    break;
                case 5:
                    callAppPlusIdentifiedCardItem.f19926d++;
                    break;
                case 6:
                    callAppPlusIdentifiedCardItem.f19931i++;
                    break;
                case 7:
                    callAppPlusIdentifiedCardItem.f19929g++;
                    break;
                case 8:
                    callAppPlusIdentifiedCardItem.f19930h++;
                    break;
                case 9:
                    callAppPlusIdentifiedCardItem.f19928f++;
                    break;
            }
        }
        return callAppPlusIdentifiedCardItem;
    }

    public static int getNumberOfContactConfirm() {
        return Prefs.f26545gD.get().intValue();
    }

    public static int getNumberOfProfilePhotoChecked() {
        return Prefs.f26547gF.get().intValue();
    }

    public static int getNumberOfSpammersReport() {
        return Prefs.f26546gE.get().intValue();
    }

    public static int getUserBadgeContribution() {
        int numberOfContactConfirm = getNumberOfContactConfirm() + getNumberOfSpammersReport() + getNumberOfProfilePhotoChecked();
        if (numberOfContactConfirm < CommunityCard.ADVANCED || numberOfContactConfirm >= CommunityCard.MASTER) {
            return numberOfContactConfirm >= CommunityCard.MASTER ? 2131231941 : -1;
        }
        return 2131231659;
    }

    public static int getUserBadgeContributionForSlideMenu() {
        int numberOfContactConfirm = getNumberOfContactConfirm() + getNumberOfSpammersReport() + getNumberOfProfilePhotoChecked();
        if (numberOfContactConfirm < CommunityCard.ADVANCED || numberOfContactConfirm >= CommunityCard.MASTER) {
            return numberOfContactConfirm >= CommunityCard.MASTER ? 2131231942 : -1;
        }
        return 2131231660;
    }
}
