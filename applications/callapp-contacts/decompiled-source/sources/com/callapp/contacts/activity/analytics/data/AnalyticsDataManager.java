package com.callapp.contacts.activity.analytics.data;

import android.util.Pair;
import android.util.SparseArray;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.CommunityCard;
import com.callapp.contacts.activity.analytics.data.items.CallAppPlusIdentifiedCardItem;
import com.callapp.contacts.activity.analytics.data.items.ContactDetailsInsightData;
import com.callapp.contacts.activity.analytics.data.items.HoursCallDataItem;
import com.callapp.contacts.activity.analytics.data.items.MyCallsCardItem;
import com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager;
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
import io.objectbox.a;
import io.objectbox.g;
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

    /* renamed from: a  reason: collision with root package name */
    private static int f10887a = 3;

    /* renamed from: b  reason: collision with root package name */
    private static long f10888b = 10;

    /* renamed from: com.callapp.contacts.activity.analytics.data.AnalyticsDataManager$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsDataManager$2.class */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10892a;

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
            f10892a = iArr;
            try {
                iArr[IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10892a[IMDataExtractionUtils.RecognizedPersonOrigin.CLIPBOARD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10892a[IMDataExtractionUtils.RecognizedPersonOrigin.CALL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10892a[IMDataExtractionUtils.RecognizedPersonOrigin.SMS_MESSAGE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10892a[IMDataExtractionUtils.RecognizedPersonOrigin.VIBER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10892a[IMDataExtractionUtils.RecognizedPersonOrigin.SIGNAL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f10892a[IMDataExtractionUtils.RecognizedPersonOrigin.SEARCH.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f10892a[IMDataExtractionUtils.RecognizedPersonOrigin.VONAGE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f10892a[IMDataExtractionUtils.RecognizedPersonOrigin.TELEGRAM.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData.class */
    public static class AnalyticsIdentifiedCardData {

        /* renamed from: a  reason: collision with root package name */
        private long f10893a;

        /* renamed from: b  reason: collision with root package name */
        private int f10894b;

        /* renamed from: c  reason: collision with root package name */
        private float f10895c;

        public AnalyticsIdentifiedCardData(long j, int i, float f) {
            this.f10893a = j;
            this.f10894b = i;
            this.f10895c = f;
        }

        public float getPercent() {
            return this.f10895c;
        }

        public long getTotalIdentifiedCalls() {
            return this.f10893a;
        }

        public int getTotalIdentifiedContacts() {
            return this.f10894b;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod.class */
    public enum DatePeriod {
        CURRENT,
        PREVIOUS
    }

    public static Pair<Long, Long> a(AnalyticsDatePickerManager.DatePicker datePicker, DatePeriod datePeriod) {
        Calendar instance = Calendar.getInstance();
        instance.set(11, 23);
        instance.set(12, 59);
        int i = datePicker == AnalyticsDatePickerManager.DatePicker.WEEK ? 7 : 30;
        if (datePeriod == DatePeriod.PREVIOUS) {
            instance.add(5, -i);
        }
        long time = instance.getTime().getTime();
        instance.add(5, -i);
        return Pair.create(Long.valueOf(time), Long.valueOf(instance.getTime().getTime()));
    }

    public static ContactDetailsInsightData a(ContactData contactData) {
        List<AnalyticsCallsData> c2 = CallAppApplication.get().getObjectBoxStore().d(AnalyticsCallsData.class).e().a((g) AnalyticsCallsData_.isIncognito, false).a(AnalyticsCallsData_.phoneAsGlobal, contactData.getPhone().a()).a((g) AnalyticsCallsData_.isExclude, false).c().a(AnalyticsCallsData_.isExclude).a((g) AnalyticsCallsData_.duration, 1).a().c();
        ContactDetailsInsightData contactDetailsInsightData = new ContactDetailsInsightData(contactData.getNameOrNumber(), contactData.getPhone(), String.valueOf(contactData.getDeviceId()));
        if (CollectionUtils.b(c2)) {
            SparseArray sparseArray = new SparseArray();
            long duration = ((AnalyticsCallsData) c2.get(0)).getDuration();
            if (c2.size() >= f10887a && duration > f10888b) {
                contactDetailsInsightData.setShowData(true);
                contactDetailsInsightData.setLongestCall((float) duration);
                Calendar instance = Calendar.getInstance();
                for (AnalyticsCallsData analyticsCallsData : c2) {
                    instance.setTime(new Date(analyticsCallsData.getDate()));
                    int i = instance.get(11) / 2;
                    sparseArray.put(i, Integer.valueOf(sparseArray.get(i) != null ? ((Integer) sparseArray.get(i)).intValue() + 1 : 1));
                    contactDetailsInsightData.k++;
                    contactDetailsInsightData.n += (float) analyticsCallsData.getDuration();
                    if (analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.INCOMING || analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.MISSED_CALL) {
                        contactDetailsInsightData.e++;
                        if (analyticsCallsData.getDayType() == AnalyticsCallsData.DayType.NIGHT) {
                            contactDetailsInsightData.f10907b++;
                        } else {
                            contactDetailsInsightData.f10906a++;
                        }
                        if (analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.INCOMING) {
                            contactDetailsInsightData.g++;
                            contactDetailsInsightData.m += (float) analyticsCallsData.getDuration();
                        } else {
                            contactDetailsInsightData.i++;
                        }
                    } else {
                        contactDetailsInsightData.f++;
                        if (analyticsCallsData.getDayType() == AnalyticsCallsData.DayType.NIGHT) {
                            contactDetailsInsightData.f10909d++;
                        } else {
                            contactDetailsInsightData.f10908c++;
                        }
                        if (analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.OUTGOING) {
                            contactDetailsInsightData.h++;
                            contactDetailsInsightData.l += (float) analyticsCallsData.getDuration();
                        } else {
                            contactDetailsInsightData.j++;
                        }
                    }
                }
                contactDetailsInsightData.setTimeSlotData(a(sparseArray));
                PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f14492a;
                if (StringUtils.b((CharSequence) PersonalStoreItemDataManager.Companion.b(contactDetailsInsightData.getContactId(), PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE))) {
                    contactDetailsInsightData.setHasVideo(true);
                }
            }
        }
        return contactDetailsInsightData;
    }

    private static String a(SparseArray<Integer> sparseArray) {
        int size = sparseArray.size();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i = sparseArray.keyAt(i3);
            int intValue = sparseArray.valueAt(i3).intValue();
            i2 = i2;
            if (intValue > i2) {
                i2 = intValue;
            }
        }
        return i == 0 ? "00:00 - 01:59" : i == 1 ? "02:00 - 03:59" : i == 2 ? "04:00 - 05:59" : i == 3 ? "06:00 - 07:59" : i == 4 ? "08:00 - 09:59" : i == 5 ? "10:00 - 11:59" : i == 6 ? "12:00 - 13:59" : i == 7 ? "14:00 - 15:59" : i == 8 ? "16:00 - 17:59" : i == 9 ? "18:00 - 19:59" : i == 10 ? "20:00 - 21:59" : "22:00 - 23:59";
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002e, code lost:
        if (r0 == com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager.DatePicker.MONTH) goto L_0x0031;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.callapp.contacts.model.objectbox.AnalyticsCallsData> a(int[] r7, com.callapp.contacts.activity.analytics.data.AnalyticsDataManager.DatePeriod r8) {
        /*
            com.callapp.contacts.manager.preferences.prefs.EnumPref<com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager$DatePicker> r0 = com.callapp.contacts.manager.preferences.Prefs.gG
            java.lang.Object r0 = r0.get()
            com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager$DatePicker r0 = (com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager.DatePicker) r0
            r9 = r0
            com.callapp.contacts.CallAppApplication r0 = com.callapp.contacts.CallAppApplication.get()
            io.objectbox.BoxStore r0 = r0.getObjectBoxStore()
            java.lang.Class<com.callapp.contacts.model.objectbox.AnalyticsCallsData> r1 = com.callapp.contacts.model.objectbox.AnalyticsCallsData.class
            io.objectbox.a r0 = r0.d(r1)
            r7 = r0
            r0 = r9
            r1 = r8
            android.util.Pair r0 = a(r0, r1)
            r10 = r0
            r0 = r7
            io.objectbox.query.QueryBuilder r0 = r0.e()
            r8 = r0
            r0 = r9
            com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager$DatePicker r1 = com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager.DatePicker.WEEK
            if (r0 == r1) goto L_0x0031
            r0 = r8
            r7 = r0
            r0 = r9
            com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager$DatePicker r1 = com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager.DatePicker.MONTH
            if (r0 != r1) goto L_0x004d
        L_0x0031:
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
            io.objectbox.query.QueryBuilder r0 = r0.a(r1, r2, r3)
            r7 = r0
        L_0x004d:
            r0 = r7
            io.objectbox.query.Query r0 = r0.a()
            java.util.List r0 = r0.c()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.data.AnalyticsDataManager.a(int[], com.callapp.contacts.activity.analytics.data.AnalyticsDataManager$DatePeriod):java.util.List");
    }

    public static Map<SimManager.SimId, MyCallsCardItem> a(DatePeriod datePeriod) {
        List<AnalyticsCallsData> a2 = a((int[]) null, datePeriod);
        for (AnalyticsCallsData analyticsCallsData : a2) {
            if (SimManager.get().getDualSimOperators() == null) {
                if (analyticsCallsData.getSimId() == SimManager.SimId.SIM_1 || analyticsCallsData.getSimId() == SimManager.SimId.SIM_2) {
                    analyticsCallsData.setSimId(SimManager.SimId.ASK);
                }
            } else if (analyticsCallsData.getSimId() == SimManager.SimId.ASK) {
                analyticsCallsData.setSimId(SimManager.SimId.SIM_1);
            }
        }
        HashMap hashMap = new HashMap();
        for (AnalyticsCallsData analyticsCallsData2 : a2) {
            MyCallsCardItem myCallsCardItem = (MyCallsCardItem) hashMap.get(analyticsCallsData2.getSimId());
            MyCallsCardItem myCallsCardItem2 = myCallsCardItem;
            if (myCallsCardItem == null) {
                myCallsCardItem2 = new MyCallsCardItem(0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, analyticsCallsData2.getSimId(), BitmapDescriptorFactory.HUE_RED, 0);
                hashMap.put(analyticsCallsData2.getSimId(), myCallsCardItem2);
            }
            if (analyticsCallsData2.getCallType() == AnalyticsCallsData.CallType.OUTGOING) {
                myCallsCardItem2.f10915b++;
                myCallsCardItem2.e += (float) analyticsCallsData2.getDuration();
                myCallsCardItem2.a(analyticsCallsData2.getDuration());
                myCallsCardItem2.a();
            } else if (analyticsCallsData2.getCallType() == AnalyticsCallsData.CallType.INCOMING) {
                myCallsCardItem2.f10914a++;
                myCallsCardItem2.f += (float) analyticsCallsData2.getDuration();
                myCallsCardItem2.a(analyticsCallsData2.getDuration());
                myCallsCardItem2.a();
            } else if (analyticsCallsData2.getCallType() == AnalyticsCallsData.CallType.MISSED_CALL) {
                myCallsCardItem2.f10916c++;
                myCallsCardItem2.a();
            } else if (analyticsCallsData2.getCallType() == AnalyticsCallsData.CallType.NOT_ANSWER) {
                myCallsCardItem2.f10917d++;
                myCallsCardItem2.a();
            }
        }
        return hashMap;
    }

    public static void a() {
        Prefs.gD.b(1);
    }

    public static void a(long j, AnalyticsCallsData.CallType callType, AnalyticsCallsData.DayType dayType, SimManager.SimId simId, Phone phone, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        CallAppApplication.get().getObjectBoxStore().d(AnalyticsCallsData.class).a((a) new AnalyticsCallsData(j, callType, dayType, simId, phone, j2, z, z2, z3, z4, z5, z6, z7, z8));
    }

    public static void a(final CallData callData, final long j) {
        final ContactData contactDataByCallData = PhoneStateManager.get().getContactDataByCallData(callData);
        new Task() { // from class: com.callapp.contacts.activity.analytics.data.AnalyticsDataManager.1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                AnalyticsCallsData.CallType callType = CallData.this.isIncoming() ? CallData.this.isCallAnswered().booleanValue() ? AnalyticsCallsData.CallType.INCOMING : AnalyticsCallsData.CallType.MISSED_CALL : CallData.this.isCallAnswered().booleanValue() ? AnalyticsCallsData.CallType.OUTGOING : AnalyticsCallsData.CallType.NOT_ANSWER;
                Date date = new Date();
                Date date2 = CallData.this.getTalkingStartTime() > 0 ? new Date(CallData.this.getTalkingStartTime()) : date;
                Calendar instance = Calendar.getInstance();
                instance.setTime(date2);
                int i = instance.get(11);
                AnalyticsCallsData.DayType dayType = (i < 5 || i > 19) ? AnalyticsCallsData.DayType.NIGHT : AnalyticsCallsData.DayType.DAY;
                SimManager.SimId simId = CallData.this.getSimId() != null ? CallData.this.getSimId() : SimManager.SimId.ASK;
                long time = CallData.this.getTalkingStartTime() > 0 ? (date.getTime() - CallData.this.getTalkingStartTime()) / 1000 : 0L;
                boolean z = StringUtils.b((CharSequence) Prefs.aR.get()) && Prefs.aR.get().startsWith("+") && PhoneManager.get().a(Prefs.aR.get()).getCountryCode() != CallData.this.getNumber().getCountryCode();
                ContactData contactData = contactDataByCallData;
                boolean z2 = contactData != null && contactData.isSpammer();
                ContactData contactData2 = contactDataByCallData;
                boolean z3 = contactData2 != null && CallLogUtils.b(contactData2.getPhone().getRawNumber());
                ContactData contactData3 = contactDataByCallData;
                boolean z4 = contactData3 != null && (contactData3.isIncognito() || IncognitoCallManager.get().isIncognito(CallData.this.getNumber()) || CallData.this.getMarkAsIncognito());
                ContactData contactData4 = contactDataByCallData;
                AnalyticsDataManager.a(j, callType, dayType, simId, CallData.this.getNumber(), time, z2, CallData.this.isBlocked(), z3, z4, CallData.this.isConferenceManager(), z, (contactData4 == null || contactData4.getGenomeData() == null || !StringUtils.b((CharSequence) contactDataByCallData.getGenomeData().getName())) ? false : true, AnalyticsExcludeManager.a(CallData.this.getNumber()));
            }
        }.execute();
    }

    public static void a(Phone phone, boolean z) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(AnalyticsCallsData.class);
        List<AnalyticsCallsData> c2 = d2.e().a(AnalyticsCallsData_.phoneAsGlobal, phone.a()).a().c();
        for (AnalyticsCallsData analyticsCallsData : c2) {
            analyticsCallsData.setExclude(z);
        }
        d2.a((Collection) c2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0081, code lost:
        if (r0 == com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager.DatePicker.MONTH) goto L_0x0084;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00eb, code lost:
        if (r0 == com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager.DatePicker.MONTH) goto L_0x00ee;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0027, code lost:
        if (r0 == com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager.DatePicker.MONTH) goto L_0x002a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.callapp.contacts.activity.analytics.cards.callappForYou.BlockSpamItem b(com.callapp.contacts.activity.analytics.data.AnalyticsDataManager.DatePeriod r7) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.data.AnalyticsDataManager.b(com.callapp.contacts.activity.analytics.data.AnalyticsDataManager$DatePeriod):com.callapp.contacts.activity.analytics.cards.callappForYou.BlockSpamItem");
    }

    public static void b() {
        Prefs.gE.b(1);
    }

    public static HoursCallDataItem c(DatePeriod datePeriod) {
        List<AnalyticsCallsData> a2 = a((int[]) null, datePeriod);
        HoursCallDataItem hoursCallDataItem = new HoursCallDataItem(0, 0, 0, 0, 0, 0);
        for (AnalyticsCallsData analyticsCallsData : a2) {
            if (analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.INCOMING || analyticsCallsData.getCallType() == AnalyticsCallsData.CallType.MISSED_CALL) {
                hoursCallDataItem.e++;
                if (analyticsCallsData.getDayType() == AnalyticsCallsData.DayType.NIGHT) {
                    hoursCallDataItem.f10911b++;
                } else {
                    hoursCallDataItem.f10910a++;
                }
            } else {
                hoursCallDataItem.f++;
                if (analyticsCallsData.getDayType() == AnalyticsCallsData.DayType.NIGHT) {
                    hoursCallDataItem.f10913d++;
                } else {
                    hoursCallDataItem.f10912c++;
                }
            }
        }
        return hoursCallDataItem;
    }

    public static void c() {
        Prefs.gF.b(1);
    }

    public static void d() {
        Stack<AggregateCallLogData> callLog = CallLogUtils.getCallLog();
        ContactLoader disableContactEvents = new ContactLoader().addFields(EnumSet.of(ContactField.deviceId, ContactField.fullName, ContactField.isIncognito, ContactField.genomeData)).addDeviceDataAndFastPhotoNameLoaders().addSyncLoader(new CacheLoader()).addSyncLoader(new LocalGenomeLoader(false)).setLoadOnlyFromCache().setDisableContactEvents();
        if (callLog != null) {
            Iterator<AggregateCallLogData> it2 = callLog.iterator();
            while (it2.hasNext()) {
                AggregateCallLogData next = it2.next();
                ContactData load = disableContactEvents.load(next.f11101c, next.contactId);
                boolean z = true;
                boolean z2 = StringUtils.b((CharSequence) Prefs.aR.get()) && Prefs.aR.get().startsWith("+") && PhoneManager.get().a(Prefs.aR.get()).getCountryCode() != next.getPhone().getCountryCode();
                boolean isSpammer = load.isSpammer();
                boolean b2 = CallLogUtils.b(load.getPhone().getRawNumber());
                boolean isIncognito = load.isIncognito();
                if (load.getGenomeData() == null || !StringUtils.b((CharSequence) load.getGenomeData().getName())) {
                    z = false;
                }
                for (AggregateCallLogData.CallLogData callLogData : next.getCallLogs()) {
                    int callType = callLogData.getCallType();
                    long time = callLogData.getDate().getTime();
                    AnalyticsCallsData.CallType callType2 = getCallType(callType);
                    Date date = callLogData.getDate();
                    Calendar instance = Calendar.getInstance();
                    instance.setTime(date);
                    int i = instance.get(11);
                    a(time, callType2, (i < 5 || i > 19) ? AnalyticsCallsData.DayType.NIGHT : AnalyticsCallsData.DayType.DAY, next.getSimId(), next.getPhone(), callLogData.getDuration(), isSpammer, false, b2, isIncognito, false, z2, z, AnalyticsExcludeManager.a(next.getPhone()));
                }
            }
        }
        Prefs.gE.set(Integer.valueOf((int) CallAppApplication.get().getObjectBoxStore().d(UserSpamData.class).b()));
        a d2 = CallAppApplication.get().getObjectBoxStore().d(UserCorrectedData.class);
        long b3 = d2.b();
        long e = d2.e().a((g) UserCorrectedData_.userCorrectedType, 0L).a().e();
        Prefs.gD.set(Integer.valueOf((int) (b3 - e)));
        Prefs.gF.set(Integer.valueOf((int) e));
    }

    public static void e() {
        Calendar instance = Calendar.getInstance();
        instance.add(5, -35);
        long time = instance.getTime().getTime();
        a d2 = CallAppApplication.get().getObjectBoxStore().d(BlockedNumberData.class);
        List<BlockedNumberData> c2 = d2.e().a().c();
        for (BlockedNumberData blockedNumberData : c2) {
            blockedNumberData.setWhen(time);
        }
        d2.a((Collection) c2);
    }

    public static void f() {
        CallAppApplication.get().getObjectBoxStore().d(AnalyticsCallsData.class).d();
    }

    private static AnalyticsCallsData.CallType getCallType(int i) {
        return i == 2 ? AnalyticsCallsData.CallType.OUTGOING : i == 1 ? AnalyticsCallsData.CallType.INCOMING : i == 40 ? AnalyticsCallsData.CallType.NOT_ANSWER : AnalyticsCallsData.CallType.MISSED_CALL;
    }

    public static CallAppPlusIdentifiedCardItem getDataForCallAppPlusCard() {
        CallAppPlusIdentifiedCardItem callAppPlusIdentifiedCardItem = new CallAppPlusIdentifiedCardItem();
        for (ExtractedInfo extractedInfo : CallAppApplication.get().getObjectBoxStore().d(ExtractedInfo.class).c()) {
            switch (AnonymousClass2.f10892a[extractedInfo.recognizedPersonOrigin.ordinal()]) {
                case 1:
                    callAppPlusIdentifiedCardItem.f10899a++;
                    break;
                case 2:
                    callAppPlusIdentifiedCardItem.f10900b++;
                    break;
                case 3:
                    callAppPlusIdentifiedCardItem.e++;
                    break;
                case 4:
                    callAppPlusIdentifiedCardItem.f10901c++;
                    break;
                case 5:
                    callAppPlusIdentifiedCardItem.f10902d++;
                    break;
                case 6:
                    callAppPlusIdentifiedCardItem.i++;
                    break;
                case 7:
                    callAppPlusIdentifiedCardItem.g++;
                    break;
                case 8:
                    callAppPlusIdentifiedCardItem.h++;
                    break;
                case 9:
                    callAppPlusIdentifiedCardItem.f++;
                    break;
            }
        }
        return callAppPlusIdentifiedCardItem;
    }

    public static int getNumberOfContactConfirm() {
        return Prefs.gD.get().intValue();
    }

    public static int getNumberOfProfilePhotoChecked() {
        return Prefs.gF.get().intValue();
    }

    public static int getNumberOfSpammersReport() {
        return Prefs.gE.get().intValue();
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
