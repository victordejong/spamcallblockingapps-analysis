package com.callapp.contacts.util;

import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.os.Build;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.util.Pair;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.calllog.AggregateCallLogData;
import com.callapp.contacts.activity.calllog.SingleCallLogData;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.framework.dao.ContentDelete;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.RowVisitor;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.loader.CompoundSyncLoader;
import com.callapp.contacts.loader.FastCacheDataLoader;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CallHistoryLoader;
import com.callapp.contacts.loader.device.DevicePhotoLoader;
import com.callapp.contacts.loader.p239vk.VKLoader;
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.instagram.InstagramLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.contact.CallHistoryData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.observers.CallLogContentObserver;
import com.callapp.contacts.widget.FourEventsIconsViewGroup;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import com.mopub.mobileads.VastIconXmlManager;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Stack;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/CallLogUtils.class */
public class CallLogUtils {

    /* renamed from: a */
    private static final String[] f27703a = {"PRIVATE", "P", "RES", "UNAVAILABLE", "UNKNOWN", "UNA", "U", "PRIVATENUMBER", "PRIVATE NUMBER", Activities.getString(2131886488)};

    /* renamed from: b */
    private static final Object f27704b = new Object();

    /* renamed from: c */
    private static Stack<AggregateCallLogData> f27705c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/CallLogUtils$MissedCallData.class */
    public static final class MissedCallData {

        /* renamed from: a */
        public final long f27708a;

        /* renamed from: b */
        public final Date f27709b;

        /* renamed from: c */
        public final Phone f27710c;

        /* renamed from: d */
        public final String f27711d;

        /* renamed from: e */
        public final int f27712e;

        /* renamed from: f */
        public final long f27713f;

        /* renamed from: g */
        public final Long f27714g;

        /* renamed from: h */
        public final Long f27715h;

        public MissedCallData(long j, Date date, Phone phone, String str, int i, long j2) {
            this(j, date, phone, str, i, null, null, j2);
        }

        public MissedCallData(long j, Date date, Phone phone, String str, int i, Long l, Long l2, long j2) {
            this.f27708a = j;
            this.f27709b = date;
            this.f27710c = phone;
            this.f27711d = str;
            this.f27712e = i;
            this.f27715h = l;
            this.f27714g = l2;
            this.f27713f = j2;
        }
    }

    /* renamed from: a */
    public static int m27580a(int i, long j) {
        int i2 = i;
        if (j == 0) {
            if (i != 2) {
                return i != 3 ? 6000 : 3;
            }
            i2 = 40;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m27579a(long j) {
        if (DateUtils.isToday(j) || m27560b(j)) {
            return 0;
        }
        return DateUtils.isToday(j + 86400000) ? 1 : 2;
    }

    /* renamed from: a */
    public static /* synthetic */ int m27576a(AggregateCallLogData aggregateCallLogData, AggregateCallLogData aggregateCallLogData2) {
        String m26101a = aggregateCallLogData.f20274c.m26101a();
        String m26101a2 = aggregateCallLogData2.f20274c.m26101a();
        if (!StringUtils.m26045b((CharSequence) m26101a) || !StringUtils.m26045b((CharSequence) m26101a2)) {
            if (StringUtils.m26059a((CharSequence) m26101a) && StringUtils.m26045b((CharSequence) m26101a2)) {
                return 1;
            }
            return (!StringUtils.m26045b((CharSequence) m26101a) || !StringUtils.m26059a((CharSequence) m26101a2)) ? 0 : -1;
        }
        return aggregateCallLogData2.getTotalInteractionCount() - aggregateCallLogData.getTotalInteractionCount();
    }

    /* renamed from: a */
    static /* synthetic */ int m27571a(RowContext rowContext) {
        return m27580a(rowContext.m28999d("type"), rowContext.m29000c(VastIconXmlManager.DURATION));
    }

    /* renamed from: a */
    public static int m27570a(CallData callData) {
        return callData.isIncoming() ? (callData.isMissedCall().booleanValue() || !callData.isCallAnswered().booleanValue()) ? 2131231550 : 2131231544 : (callData.isMissedCall().booleanValue() || !callData.isCallAnswered().booleanValue()) ? 2131231551 : 2131231554;
    }

    /* renamed from: a */
    private static AggregateCallLogData m27577a(Cursor cursor, Phone phone, Date date, int i) {
        Pair<Integer, Long> m27559b = m27559b(cursor);
        return new AggregateCallLogData(cursor.getInt(cursor.getColumnIndex("_id")), date, cursor.getString(cursor.getColumnIndex("name")), phone, ((Integer) m27559b.first).intValue(), cursor.getInt(cursor.getColumnIndex("numbertype")), cursor.getString(cursor.getColumnIndex("numberlabel")), Singletons.get().getSimManager().m28156a(cursor), i, ((Long) m27559b.second).longValue());
    }

    /* renamed from: a */
    public static CallLogEntry m27562a(boolean z) {
        ContentQuery m29020a = new ContentQuery(CallLog.Calls.CONTENT_URI).m29017a("type", "number", "date", VastIconXmlManager.DURATION, "_id").m29020a("date", false);
        m27575a(m29020a);
        if (z) {
            m29020a.m29012b("type", "=", "2");
        }
        return (CallLogEntry) m29020a.m29025a((RowCallback<RowCallback<CallLogEntry>>) new RowCallback<CallLogEntry>() { // from class: com.callapp.contacts.util.CallLogUtils.5
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ CallLogEntry onRow(RowContext rowContext) {
                int m28999d = rowContext.m28999d("type");
                return new CallLogEntry(Integer.valueOf(m28999d).intValue(), rowContext.m29002a("number"), rowContext.m28998e("date"), Long.valueOf(rowContext.m29000c(VastIconXmlManager.DURATION)).longValue(), Long.valueOf(rowContext.m29000c("_id")).longValue());
            }
        }, (RowCallback<CallLogEntry>) null);
    }

    /* renamed from: a */
    public static CharSequence m27566a(Date date, int i) {
        return i == 2 ? com.callapp.contacts.util.date.DateUtils.m27120b(date) : m27554b(date);
    }

    /* renamed from: a */
    public static List<ContactData> m27581a(int i) {
        Stack stack = (Stack) getCallLog().clone();
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        ContactLoader disableContactEvents = new ContactLoader().addFields(EnumSet.of(ContactField.genomeData, ContactField.googlePlaces, ContactField.deviceData, ContactField.deviceId, ContactField.callHistoryData, ContactField.fullName, ContactField.names, ContactField.phone, ContactField.phones, ContactField.id, ContactField.emails, ContactField.photoUrl, ContactField.facebookId, ContactField.facebookData, ContactField.facebookSearchResults, ContactField.foursquareId, ContactField.foursquareData, ContactField.foursquareSearchResults, ContactField.instagramId, ContactField.instagramData, ContactField.instagramSearchResults, ContactField.twitterScreenName, ContactField.twitterData, ContactField.twitterSearchResults, ContactField.pinterestId, ContactField.pinterestData, ContactField.pinterestSearchResults)).addDeviceIdAndDataLoaders().addSyncLoader(new LocalGenomeLoader(true)).addSyncLoader(new CompoundSyncLoader()).addSyncLoader(new FacebookLoader()).addSyncLoader(new VKLoader()).addSyncLoader(new CallHistoryLoader()).addSyncLoader(new TwitterLoader()).addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new DevicePhotoLoader()).addSyncLoader(new InstagramLoader()).addSyncLoader(new PinterestLoader()).setDisableContactEvents();
        while (stack != null && !stack.isEmpty() && i > 0) {
            AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) stack.pop();
            String m26101a = aggregateCallLogData.getPhone().m26101a();
            if (!hashSet.contains(m26101a)) {
                hashSet.add(m26101a);
                ContactData load = disableContactEvents.load(aggregateCallLogData.getPhone());
                if (load != null && !load.isContactInDevice() && StringUtils.m26045b((CharSequence) load.getFullName())) {
                    FastCacheDataManager.m28948a(load);
                    if (load.hasAnyPhotoUrl()) {
                        FastCacheDataManager.m28942b(load);
                    }
                    FastCacheDataManager.m28941c(load);
                    i--;
                    arrayList.add(load);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static <T> List<T> m27574a(ContentQuery contentQuery, RowCallback<T> rowCallback) {
        List<T> list;
        try {
            list = contentQuery.m29015b(rowCallback);
        } catch (SQLException e) {
            if (!StringUtils.m26025g(e.getMessage(), "no such column")) {
                throw e;
            }
            list = null;
        }
        return list;
    }

    /* renamed from: a */
    private static <T> List<T> m27573a(ContentQuery contentQuery, RowCallback<T> rowCallback, Collection<Phone> collection) {
        m27572a(contentQuery, collection);
        m27558b(contentQuery);
        return m27574a(contentQuery, rowCallback);
    }

    /* renamed from: a */
    public static List<SingleCallLogData> m27568a(Collection<Phone> collection) {
        if (collection == null) {
            return null;
        }
        return m27573a(m27552b(false), getBaseCallLogRowCallback(), collection);
    }

    /* renamed from: a */
    public static List<CallLogEntry> m27567a(Date date) {
        ContentQuery m29008c = ContentQuery.m29028a(CallLog.Calls.CONTENT_URI).m29008c("number").m29008c("type").m29008c("date").m29008c(VastIconXmlManager.DURATION).m29008c("_id");
        m29008c.m29012b("date", ">", String.valueOf(date.getTime())).m29020a("date", true);
        return m29008c.m29026a((RowCallback) _$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek.INSTANCE);
    }

    /* renamed from: a */
    private static Stack<AggregateCallLogData> m27578a(Cursor cursor) {
        Stack<AggregateCallLogData> stack = new Stack<>();
        if (cursor == null || !cursor.moveToLast()) {
            CLog.m27611a(CallLogUtils.class, "Cursor is null or empty (getCallLogInternal)");
            return stack;
        }
        while (!cursor.isBeforeFirst()) {
            long j = cursor.getLong(cursor.getColumnIndex("date"));
            int m27579a = m27579a(j);
            Phone m28239a = PhoneManager.get().m28239a(cursor.getString(cursor.getColumnIndex("number")));
            if (!stack.isEmpty()) {
                AggregateCallLogData peek = stack.peek();
                boolean z = false;
                if (!peek.isCallTypesFull()) {
                    Date date = new Date();
                    Date date2 = new Date(j);
                    z = false;
                    if (m27579a == 0 ? !(com.callapp.contacts.util.date.DateUtils.m27124a(date2, date, TimeUnit.MILLISECONDS) > 10800000 ? com.callapp.contacts.util.date.DateUtils.m27124a(peek.f20275d, date2, TimeUnit.MILLISECONDS) > Constants.HOUR_IN_MILLIS : com.callapp.contacts.util.date.DateUtils.m27124a(peek.f20275d, date2, TimeUnit.MILLISECONDS) > 900000) : !(m27579a == 1 ? com.callapp.contacts.util.date.DateUtils.m27124a(peek.f20275d, date2, TimeUnit.MILLISECONDS) > 10800000 : m27579a != 2 || com.callapp.contacts.util.date.DateUtils.m27124a(peek.f20275d, date2, TimeUnit.MILLISECONDS) > 21600000)) {
                        z = false;
                        if (Singletons.get().getSimManager().getDualSimOperators() == null || peek.getSimId() == m27577a(cursor, m28239a, new Date(j), m27579a).getSimId()) {
                            z = true;
                        }
                    }
                }
                boolean z2 = z;
                if (z) {
                    z2 = PhoneNumberUtils.compare(peek.getPhone().getRawNumber(), m28239a.getRawNumber());
                }
                if (z2) {
                    AggregateCallLogData pop = stack.pop();
                    Pair<Integer, Long> m27559b = m27559b(cursor);
                    pop.m31370a(cursor.getInt(cursor.getColumnIndex("_id")), ((Integer) m27559b.first).intValue(), ((Long) m27559b.second).longValue(), new Date(j));
                    pop.f20275d.setTime(j);
                    stack.push(pop);
                } else {
                    stack.push(m27577a(cursor, m28239a, new Date(j), m27579a));
                }
            } else {
                stack.push(m27577a(cursor, m28239a, new Date(j), m27579a));
            }
            cursor.moveToPrevious();
        }
        return stack;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static Stack<AggregateCallLogData> m27563a(Stack<AggregateCallLogData> stack) {
        Hashtable hashtable = new Hashtable();
        Hashtable hashtable2 = new Hashtable();
        if (stack.empty()) {
            return null;
        }
        Iterator<AggregateCallLogData> it2 = stack.iterator();
        while (it2.hasNext()) {
            AggregateCallLogData next = it2.next();
            String m26101a = next.f20274c.m26101a();
            if (StringUtils.m26045b((CharSequence) m26101a)) {
                if (!hashtable.containsKey(m26101a)) {
                    next.setSectionId(-1);
                    hashtable.put(m26101a, next);
                }
                int aggregateSize = next.getAggregateSize();
                if (hashtable2.containsKey(m26101a)) {
                    hashtable2.put(m26101a, Integer.valueOf(((Integer) hashtable2.get(m26101a)).intValue() + aggregateSize));
                } else {
                    hashtable2.put(m26101a, Integer.valueOf(aggregateSize));
                }
            }
        }
        for (AggregateCallLogData aggregateCallLogData : hashtable.values()) {
            aggregateCallLogData.setTotalInteractionCount(((Integer) hashtable2.get(aggregateCallLogData.f20274c.m26101a())).intValue());
        }
        PriorityQueue priorityQueue = new PriorityQueue(stack.size(), _$$Lambda$CallLogUtils$_cMpZ9whXzfbzAtLP2tD_9o_WoI.INSTANCE);
        for (AggregateCallLogData aggregateCallLogData2 : hashtable.values()) {
            priorityQueue.add(aggregateCallLogData2);
        }
        Stack<AggregateCallLogData> stack2 = new Stack<>();
        while (!priorityQueue.isEmpty()) {
            stack2.add(priorityQueue.poll());
        }
        if (!stack2.isEmpty()) {
            ((AggregateCallLogData) stack2.get(0)).setSectionId(5);
        }
        return stack2;
    }

    /* renamed from: a */
    public static void m27582a() {
        synchronized (f27704b) {
            f27705c = null;
            CLog.m27611a(CallLogUtils.class, "resetCallLogList");
        }
    }

    /* renamed from: a */
    private static void m27575a(ContentQuery contentQuery) {
        String simIdColumnName = Singletons.get().getSimManager().getSimIdColumnName();
        if (StringUtils.m26045b((CharSequence) simIdColumnName)) {
            contentQuery.m29008c(simIdColumnName);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            contentQuery.m29008c("subscription_id");
            contentQuery.m29008c("subscription_component_name");
        }
    }

    /* renamed from: a */
    private static void m27572a(ContentQuery contentQuery, Collection<Phone> collection) {
        int size = collection.size();
        String[] strArr = new String[size];
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Phone phone : collection) {
            String valueOf = String.valueOf(phone.getNationalNumber());
            String str = valueOf;
            if (valueOf.equals("0")) {
                str = phone.getRawNumber();
            }
            strArr[i] = "%".concat(String.valueOf(str));
            sb.append("number LIKE ? ");
            if (i < size - 1) {
                sb.append(" OR ");
            }
            i++;
        }
        contentQuery.m29035a(sb.toString(), strArr);
    }

    /* renamed from: a */
    public static void m27565a(List<Long> list) {
        ContentDelete m29007d = ContentQuery.m29007d(CallLog.Calls.CONTENT_URI);
        m29007d.m29034a(true, (Column) Constants.CALLLOG_ID_COLUMN, (Collection) list);
        m29007d.m29039b();
        m27582a();
    }

    /* renamed from: a */
    public static void m27564a(List<Integer> list, FourEventsIconsViewGroup fourEventsIconsViewGroup) {
        int i = 4;
        int[] iArr = new int[4];
        if (list.size() < 4) {
            i = list.size();
        }
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = getCallHistoryIcon(list.get(i2).intValue());
        }
        fourEventsIconsViewGroup.setVisibility(0);
        fourEventsIconsViewGroup.setIconsToEvents(iArr);
    }

    /* renamed from: a */
    public static String[] m27569a(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return new String[1];
        }
        final String[] strArr = new String[1];
        new ContentQuery(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str))).m29023a(Constants.DISPLAY_NAME_COLUMN).m29024a(new RowVisitor() { // from class: com.callapp.contacts.util.CallLogUtils.3
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public final void onRow(RowContext rowContext) {
                strArr[0] = (String) rowContext.m29003a(Constants.DISPLAY_NAME_COLUMN);
            }
        });
        return strArr;
    }

    /* renamed from: b */
    private static Pair<Integer, Long> m27559b(Cursor cursor) {
        int i = cursor.getInt(cursor.getColumnIndex("type"));
        long j = cursor.getLong(cursor.getColumnIndex(VastIconXmlManager.DURATION));
        return new Pair<>(Integer.valueOf(m27580a(i, j)), Long.valueOf(j));
    }

    /* renamed from: b */
    private static ContentQuery m27558b(ContentQuery contentQuery) {
        if (DeviceDetector.isSamsung() && Prefs.f26256ag.get().booleanValue()) {
            contentQuery.m29012b("messageid", "=", (String) null);
        }
        return contentQuery;
    }

    /* renamed from: b */
    private static ContentQuery m27552b(boolean z) {
        ContentQuery m29020a = new ContentQuery(CallLog.Calls.CONTENT_URI).m29008c("_id").m29008c("name").m29008c("number").m29008c("numbertype").m29008c("numberlabel").m29008c("type").m29008c("date").m29008c(VastIconXmlManager.DURATION).m29020a("date", false);
        if (z) {
            m29020a.f25158a = 500;
        }
        m27575a(m29020a);
        return m29020a;
    }

    /* renamed from: b */
    public static /* synthetic */ CallLogEntry m27557b(RowContext rowContext) {
        return new CallLogEntry(rowContext.m28999d("type"), rowContext.m29002a("number"), rowContext.m28998e("date"), rowContext.m29000c(VastIconXmlManager.DURATION), rowContext.m29000c("_id"));
    }

    /* renamed from: b */
    public static CharSequence m27553b(Date date, int i) {
        return i == 2 ? com.callapp.contacts.util.date.DateUtils.m27120b(date) : i == 1 ? Activities.getString(2131888250) : m27554b(date);
    }

    /* renamed from: b */
    public static String m27554b(Date date) {
        return "(" + DateFormat.getTimeFormat(CallAppApplication.get()).format(date) + ")";
    }

    /* renamed from: b */
    public static List<CallHistoryData> m27555b(Collection<Phone> collection) {
        if (collection == null) {
            return null;
        }
        return m27573a(getCallLogHistoryBaseQuery(), getCallLogHistoryRowCallback(), collection);
    }

    /* renamed from: b */
    public static void m27561b() {
        ContentQuery.m29007d(CallLog.Calls.CONTENT_URI).m29039b();
        m27582a();
        CallLogContentObserver.m28099a(false);
        MissedCallManager.m29819c();
    }

    /* renamed from: b */
    private static boolean m27560b(long j) {
        return j > System.currentTimeMillis();
    }

    /* renamed from: b */
    public static boolean m27556b(String str) {
        boolean z;
        if (StringUtils.m26059a((CharSequence) str) || str.startsWith(VerificationLanguage.REGION_PREFIX)) {
            return true;
        }
        String upperCase = str.toUpperCase();
        String[] strArr = f27703a;
        int length = strArr.length;
        int i = 0;
        boolean z2 = false;
        while (true) {
            z = z2;
            if (i >= length) {
                break;
            }
            z2 |= StringUtils.m26042b(upperCase, strArr[i]);
            if (z2) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    /* renamed from: c */
    public static void m27551c() {
        StringBuilder sb = new StringBuilder();
        String[] strArr = f27703a;
        int length = strArr.length;
        String[] strArr2 = new String[length + 3];
        System.arraycopy(strArr, 0, strArr2, 0, length);
        strArr2[length] = "";
        strArr2[length + 1] = "IS NULL";
        strArr2[length + 2] = "-%";
        for (int i = 0; i < length; i++) {
            sb.append("number = ? COLLATE NOCASE OR ");
        }
        sb.append("number = ? OR ");
        sb.append("number = ? OR ");
        sb.append("number LIKE ?");
        CallAppApplication.get().getContentResolver().delete(CallLog.Calls.CONTENT_URI, sb.toString(), strArr2);
    }

    /* renamed from: d */
    public static boolean m27550d() {
        ContentQuery m29020a = new ContentQuery(CallLog.Calls.CONTENT_URI).m29008c("_id").m29008c("number").m29008c("type").m29008c("date").m29008c(VastIconXmlManager.DURATION).m29020a("date", false);
        m27575a(m29020a);
        Boolean bool = (Boolean) m29020a.m29025a((RowCallback<RowCallback<Boolean>>) new RowCallback<Boolean>() { // from class: com.callapp.contacts.util.CallLogUtils.4
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Boolean onRow(RowContext rowContext) {
                int m28999d = rowContext.m28999d(VastIconXmlManager.DURATION);
                Date m28998e = rowContext.m28998e("date");
                long time = new Date().getTime() - (m28998e.getTime() + (m28999d * 1000));
                StringBuilder sb = new StringBuilder("duration: ");
                sb.append(m28999d);
                sb.append(" date: ");
                sb.append(m28998e);
                sb.append(" delta: ");
                sb.append(time);
                CLog.m27606a("REGREM");
                if ((!r4 || rowContext.m28999d("type") == 2) && m28999d != 0 && time <= Constants.MINUTE_IN_MILLIS) {
                    return Boolean.TRUE;
                }
                return Boolean.FALSE;
            }
        }, (RowCallback<Boolean>) null);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private static RowCallback<SingleCallLogData> getBaseCallLogRowCallback() {
        return new RowCallback<SingleCallLogData>() { // from class: com.callapp.contacts.util.CallLogUtils.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ SingleCallLogData onRow(RowContext rowContext) {
                return new SingleCallLogData(rowContext.m28999d("_id"), rowContext.m28998e("date"), rowContext.m29002a("name"), PhoneManager.get().m28239a(rowContext.m29002a("number")), CallLogUtils.m27571a(rowContext), rowContext.m28999d("numbertype"), rowContext.m29002a("numberlabel"), (int) rowContext.m29000c(VastIconXmlManager.DURATION), Singletons.get().getSimManager().m28156a(rowContext.f25168a));
            }
        };
    }

    public static int getCallHistoryIcon(int i) {
        int i2;
        if (i == 1) {
            i2 = 2131231544;
        } else if (i != 2) {
            if (i != 3 && i != 5 && i != 6000) {
                if (i == 40) {
                    i2 = 2131231551;
                } else if (i != 41) {
                    i2 = 0;
                }
            }
            i2 = 2131231550;
        } else {
            i2 = 2131231554;
        }
        return i2;
    }

    public static Stack<AggregateCallLogData> getCallLog() {
        Stack<AggregateCallLogData> stack;
        synchronized (f27704b) {
            if (f27705c == null) {
                Stack<AggregateCallLogData> callLogInternal = getCallLogInternal();
                f27705c = callLogInternal;
                BaseAdapterItemData.createCacheKeysAsync(callLogInternal);
            }
            stack = f27705c;
        }
        return stack;
    }

    private static ContentQuery getCallLogHistoryBaseQuery() {
        ContentQuery m29020a = new ContentQuery(CallLog.Calls.CONTENT_URI).m29008c("_id").m29008c("number").m29008c("date").m29008c("type").m29008c(VastIconXmlManager.DURATION).m29020a("date", false);
        m29020a.f25158a = 5;
        m27575a(m29020a);
        return m29020a;
    }

    private static RowCallback<CallHistoryData> getCallLogHistoryRowCallback() {
        return new RowCallback<CallHistoryData>() { // from class: com.callapp.contacts.util.CallLogUtils.2
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ CallHistoryData onRow(RowContext rowContext) {
                return new CallHistoryData(rowContext.m29000c("_id"), rowContext.m28998e("date"), CallLogUtils.m27571a(rowContext), rowContext.m29000c(VastIconXmlManager.DURATION), Singletons.get().getSimManager().m28156a(rowContext.f25168a));
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.Stack<com.callapp.contacts.activity.calllog.AggregateCallLogData> getCallLogInternal() {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.CallLogUtils.getCallLogInternal():java.util.Stack");
    }
}
