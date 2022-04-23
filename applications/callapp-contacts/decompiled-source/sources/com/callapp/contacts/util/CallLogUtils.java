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
import com.callapp.contacts.loader.social.facebook.FacebookLoader;
import com.callapp.contacts.loader.social.instagram.InstagramLoader;
import com.callapp.contacts.loader.social.pinterest.PinterestLoader;
import com.callapp.contacts.loader.social.twitter.TwitterLoader;
import com.callapp.contacts.loader.vk.VKLoader;
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

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f15865a = {"PRIVATE", "P", "RES", "UNAVAILABLE", "UNKNOWN", "UNA", "U", "PRIVATENUMBER", "PRIVATE NUMBER", Activities.getString(2131886488)};

    /* renamed from: b  reason: collision with root package name */
    private static final Object f15866b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static Stack<AggregateCallLogData> f15867c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/CallLogUtils$MissedCallData.class */
    public static final class MissedCallData {

        /* renamed from: a  reason: collision with root package name */
        public final long f15870a;

        /* renamed from: b  reason: collision with root package name */
        public final Date f15871b;

        /* renamed from: c  reason: collision with root package name */
        public final Phone f15872c;

        /* renamed from: d  reason: collision with root package name */
        public final String f15873d;
        public final int e;
        public final long f;
        public final Long g;
        public final Long h;

        public MissedCallData(long j, Date date, Phone phone, String str, int i, long j2) {
            this(j, date, phone, str, i, null, null, j2);
        }

        public MissedCallData(long j, Date date, Phone phone, String str, int i, Long l, Long l2, long j2) {
            this.f15870a = j;
            this.f15871b = date;
            this.f15872c = phone;
            this.f15873d = str;
            this.e = i;
            this.h = l;
            this.g = l2;
            this.f = j2;
        }
    }

    public static int a(int i, long j) {
        int i2 = i;
        if (j == 0) {
            if (i != 2) {
                return i != 3 ? 6000 : 3;
            }
            i2 = 40;
        }
        return i2;
    }

    public static int a(long j) {
        if (DateUtils.isToday(j) || b(j)) {
            return 0;
        }
        return DateUtils.isToday(j + 86400000) ? 1 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(AggregateCallLogData aggregateCallLogData, AggregateCallLogData aggregateCallLogData2) {
        String a2 = aggregateCallLogData.f11101c.a();
        String a3 = aggregateCallLogData2.f11101c.a();
        if (StringUtils.b((CharSequence) a2) && StringUtils.b((CharSequence) a3)) {
            return aggregateCallLogData2.getTotalInteractionCount() - aggregateCallLogData.getTotalInteractionCount();
        }
        if (!StringUtils.a((CharSequence) a2) || !StringUtils.b((CharSequence) a3)) {
            return (!StringUtils.b((CharSequence) a2) || !StringUtils.a((CharSequence) a3)) ? 0 : -1;
        }
        return 1;
    }

    static /* synthetic */ int a(RowContext rowContext) {
        return a(rowContext.d("type"), rowContext.c(VastIconXmlManager.DURATION));
    }

    public static int a(CallData callData) {
        return callData.isIncoming() ? (callData.isMissedCall().booleanValue() || !callData.isCallAnswered().booleanValue()) ? 2131231550 : 2131231544 : (callData.isMissedCall().booleanValue() || !callData.isCallAnswered().booleanValue()) ? 2131231551 : 2131231554;
    }

    private static AggregateCallLogData a(Cursor cursor, Phone phone, Date date, int i) {
        Pair<Integer, Long> b2 = b(cursor);
        return new AggregateCallLogData(cursor.getInt(cursor.getColumnIndex("_id")), date, cursor.getString(cursor.getColumnIndex("name")), phone, ((Integer) b2.first).intValue(), cursor.getInt(cursor.getColumnIndex("numbertype")), cursor.getString(cursor.getColumnIndex("numberlabel")), Singletons.get().getSimManager().a(cursor), i, ((Long) b2.second).longValue());
    }

    public static CallLogEntry a(boolean z) {
        ContentQuery a2 = new ContentQuery(CallLog.Calls.CONTENT_URI).a("type", "number", "date", VastIconXmlManager.DURATION, "_id").a("date", false);
        a(a2);
        if (z) {
            a2.b("type", "=", "2");
        }
        return (CallLogEntry) a2.a((RowCallback<RowCallback<CallLogEntry>>) new RowCallback<CallLogEntry>() { // from class: com.callapp.contacts.util.CallLogUtils.5
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ CallLogEntry onRow(RowContext rowContext) {
                int d2 = rowContext.d("type");
                return new CallLogEntry(Integer.valueOf(d2).intValue(), rowContext.a("number"), rowContext.e("date"), Long.valueOf(rowContext.c(VastIconXmlManager.DURATION)).longValue(), Long.valueOf(rowContext.c("_id")).longValue());
            }
        }, (RowCallback<CallLogEntry>) null);
    }

    public static CharSequence a(Date date, int i) {
        return i == 2 ? com.callapp.contacts.util.date.DateUtils.b(date) : b(date);
    }

    public static List<ContactData> a(int i) {
        Stack stack = (Stack) getCallLog().clone();
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        ContactLoader disableContactEvents = new ContactLoader().addFields(EnumSet.of(ContactField.genomeData, ContactField.googlePlaces, ContactField.deviceData, ContactField.deviceId, ContactField.callHistoryData, ContactField.fullName, ContactField.names, ContactField.phone, ContactField.phones, ContactField.id, ContactField.emails, ContactField.photoUrl, ContactField.facebookId, ContactField.facebookData, ContactField.facebookSearchResults, ContactField.foursquareId, ContactField.foursquareData, ContactField.foursquareSearchResults, ContactField.instagramId, ContactField.instagramData, ContactField.instagramSearchResults, ContactField.twitterScreenName, ContactField.twitterData, ContactField.twitterSearchResults, ContactField.pinterestId, ContactField.pinterestData, ContactField.pinterestSearchResults)).addDeviceIdAndDataLoaders().addSyncLoader(new LocalGenomeLoader(true)).addSyncLoader(new CompoundSyncLoader()).addSyncLoader(new FacebookLoader()).addSyncLoader(new VKLoader()).addSyncLoader(new CallHistoryLoader()).addSyncLoader(new TwitterLoader()).addSyncLoader(new FastCacheDataLoader()).addSyncLoader(new DevicePhotoLoader()).addSyncLoader(new InstagramLoader()).addSyncLoader(new PinterestLoader()).setDisableContactEvents();
        while (stack != null && !stack.isEmpty() && i > 0) {
            AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) stack.pop();
            String a2 = aggregateCallLogData.getPhone().a();
            if (!hashSet.contains(a2)) {
                hashSet.add(a2);
                ContactData load = disableContactEvents.load(aggregateCallLogData.getPhone());
                if (load != null && !load.isContactInDevice() && StringUtils.b((CharSequence) load.getFullName())) {
                    FastCacheDataManager.a(load);
                    if (load.hasAnyPhotoUrl()) {
                        FastCacheDataManager.b(load);
                    }
                    FastCacheDataManager.c(load);
                    i--;
                    arrayList.add(load);
                }
            }
        }
        return arrayList;
    }

    private static <T> List<T> a(ContentQuery contentQuery, RowCallback<T> rowCallback) {
        List<T> list;
        try {
            list = contentQuery.b(rowCallback);
        } catch (SQLException e) {
            if (StringUtils.g(e.getMessage(), "no such column")) {
                list = null;
            } else {
                throw e;
            }
        }
        return list;
    }

    private static <T> List<T> a(ContentQuery contentQuery, RowCallback<T> rowCallback, Collection<Phone> collection) {
        a(contentQuery, collection);
        b(contentQuery);
        return a(contentQuery, rowCallback);
    }

    public static List<SingleCallLogData> a(Collection<Phone> collection) {
        if (collection == null) {
            return null;
        }
        return a(b(false), getBaseCallLogRowCallback(), collection);
    }

    public static List<CallLogEntry> a(Date date) {
        ContentQuery c2 = ContentQuery.a(CallLog.Calls.CONTENT_URI).c("number").c("type").c("date").c(VastIconXmlManager.DURATION).c("_id");
        c2.b("date", ">", String.valueOf(date.getTime())).a("date", true);
        return c2.a((RowCallback) _$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek.INSTANCE);
    }

    private static Stack<AggregateCallLogData> a(Cursor cursor) {
        Stack<AggregateCallLogData> stack = new Stack<>();
        if (cursor == null || !cursor.moveToLast()) {
            CLog.a(CallLogUtils.class, "Cursor is null or empty (getCallLogInternal)");
            return stack;
        }
        while (!cursor.isBeforeFirst()) {
            long j = cursor.getLong(cursor.getColumnIndex("date"));
            int a2 = a(j);
            Phone a3 = PhoneManager.get().a(cursor.getString(cursor.getColumnIndex("number")));
            if (!stack.isEmpty()) {
                AggregateCallLogData peek = stack.peek();
                boolean z = false;
                if (!peek.isCallTypesFull()) {
                    Date date = new Date();
                    Date date2 = new Date(j);
                    z = false;
                    if (a2 == 0 ? !(com.callapp.contacts.util.date.DateUtils.a(date2, date, TimeUnit.MILLISECONDS) > 10800000 ? com.callapp.contacts.util.date.DateUtils.a(peek.f11102d, date2, TimeUnit.MILLISECONDS) > Constants.HOUR_IN_MILLIS : com.callapp.contacts.util.date.DateUtils.a(peek.f11102d, date2, TimeUnit.MILLISECONDS) > 900000) : !(a2 == 1 ? com.callapp.contacts.util.date.DateUtils.a(peek.f11102d, date2, TimeUnit.MILLISECONDS) > 10800000 : a2 != 2 || com.callapp.contacts.util.date.DateUtils.a(peek.f11102d, date2, TimeUnit.MILLISECONDS) > 21600000)) {
                        z = false;
                        if (Singletons.get().getSimManager().getDualSimOperators() == null || peek.getSimId() == a(cursor, a3, new Date(j), a2).getSimId()) {
                            z = true;
                        }
                    }
                }
                boolean z2 = z;
                if (z) {
                    z2 = PhoneNumberUtils.compare(peek.getPhone().getRawNumber(), a3.getRawNumber());
                }
                if (z2) {
                    AggregateCallLogData pop = stack.pop();
                    Pair<Integer, Long> b2 = b(cursor);
                    pop.a(cursor.getInt(cursor.getColumnIndex("_id")), ((Integer) b2.first).intValue(), ((Long) b2.second).longValue(), new Date(j));
                    pop.f11102d.setTime(j);
                    stack.push(pop);
                } else {
                    stack.push(a(cursor, a3, new Date(j), a2));
                }
            } else {
                stack.push(a(cursor, a3, new Date(j), a2));
            }
            cursor.moveToPrevious();
        }
        return stack;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Stack<AggregateCallLogData> a(Stack<AggregateCallLogData> stack) {
        Hashtable hashtable = new Hashtable();
        Hashtable hashtable2 = new Hashtable();
        if (stack.empty()) {
            return null;
        }
        Iterator<AggregateCallLogData> it2 = stack.iterator();
        while (it2.hasNext()) {
            AggregateCallLogData next = it2.next();
            String a2 = next.f11101c.a();
            if (StringUtils.b((CharSequence) a2)) {
                if (!hashtable.containsKey(a2)) {
                    next.setSectionId(-1);
                    hashtable.put(a2, next);
                }
                int aggregateSize = next.getAggregateSize();
                if (hashtable2.containsKey(a2)) {
                    hashtable2.put(a2, Integer.valueOf(((Integer) hashtable2.get(a2)).intValue() + aggregateSize));
                } else {
                    hashtable2.put(a2, Integer.valueOf(aggregateSize));
                }
            }
        }
        for (AggregateCallLogData aggregateCallLogData : hashtable.values()) {
            aggregateCallLogData.setTotalInteractionCount(((Integer) hashtable2.get(aggregateCallLogData.f11101c.a())).intValue());
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

    public static void a() {
        synchronized (f15866b) {
            f15867c = null;
            CLog.a(CallLogUtils.class, "resetCallLogList");
        }
    }

    private static void a(ContentQuery contentQuery) {
        String simIdColumnName = Singletons.get().getSimManager().getSimIdColumnName();
        if (StringUtils.b((CharSequence) simIdColumnName)) {
            contentQuery.c(simIdColumnName);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            contentQuery.c("subscription_id");
            contentQuery.c("subscription_component_name");
        }
    }

    private static void a(ContentQuery contentQuery, Collection<Phone> collection) {
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
        contentQuery.a(sb.toString(), strArr);
    }

    public static void a(List<Long> list) {
        ContentDelete d2 = ContentQuery.d(CallLog.Calls.CONTENT_URI);
        d2.a(true, (Column) Constants.CALLLOG_ID_COLUMN, (Collection) list);
        d2.b();
        a();
    }

    public static void a(List<Integer> list, FourEventsIconsViewGroup fourEventsIconsViewGroup) {
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

    public static String[] a(String str) {
        if (StringUtils.a((CharSequence) str)) {
            return new String[1];
        }
        final String[] strArr = new String[1];
        new ContentQuery(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str))).a(Constants.DISPLAY_NAME_COLUMN).a(new RowVisitor() { // from class: com.callapp.contacts.util.CallLogUtils.3
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public final void onRow(RowContext rowContext) {
                strArr[0] = (String) rowContext.a(Constants.DISPLAY_NAME_COLUMN);
            }
        });
        return strArr;
    }

    private static Pair<Integer, Long> b(Cursor cursor) {
        int i = cursor.getInt(cursor.getColumnIndex("type"));
        long j = cursor.getLong(cursor.getColumnIndex(VastIconXmlManager.DURATION));
        return new Pair<>(Integer.valueOf(a(i, j)), Long.valueOf(j));
    }

    private static ContentQuery b(ContentQuery contentQuery) {
        if (DeviceDetector.isSamsung() && Prefs.ag.get().booleanValue()) {
            contentQuery.b("messageid", "=", (String) null);
        }
        return contentQuery;
    }

    private static ContentQuery b(boolean z) {
        ContentQuery a2 = new ContentQuery(CallLog.Calls.CONTENT_URI).c("_id").c("name").c("number").c("numbertype").c("numberlabel").c("type").c("date").c(VastIconXmlManager.DURATION).a("date", false);
        if (z) {
            a2.f14388a = 500;
        }
        a(a2);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ CallLogEntry b(RowContext rowContext) {
        return new CallLogEntry(rowContext.d("type"), rowContext.a("number"), rowContext.e("date"), rowContext.c(VastIconXmlManager.DURATION), rowContext.c("_id"));
    }

    public static CharSequence b(Date date, int i) {
        return i == 2 ? com.callapp.contacts.util.date.DateUtils.b(date) : i == 1 ? Activities.getString(2131888250) : b(date);
    }

    public static String b(Date date) {
        return "(" + DateFormat.getTimeFormat(CallAppApplication.get()).format(date) + ")";
    }

    public static List<CallHistoryData> b(Collection<Phone> collection) {
        if (collection == null) {
            return null;
        }
        return a(getCallLogHistoryBaseQuery(), getCallLogHistoryRowCallback(), collection);
    }

    public static void b() {
        ContentQuery.d(CallLog.Calls.CONTENT_URI).b();
        a();
        CallLogContentObserver.a(false);
        MissedCallManager.c();
    }

    private static boolean b(long j) {
        return j > System.currentTimeMillis();
    }

    public static boolean b(String str) {
        boolean z;
        if (StringUtils.a((CharSequence) str) || str.startsWith(VerificationLanguage.REGION_PREFIX)) {
            return true;
        }
        String upperCase = str.toUpperCase();
        String[] strArr = f15865a;
        int length = strArr.length;
        int i = 0;
        boolean z2 = false;
        while (true) {
            z = z2;
            if (i >= length) {
                break;
            }
            z2 |= StringUtils.b(upperCase, strArr[i]);
            if (z2) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    public static void c() {
        StringBuilder sb = new StringBuilder();
        String[] strArr = f15865a;
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

    public static boolean d() {
        ContentQuery a2 = new ContentQuery(CallLog.Calls.CONTENT_URI).c("_id").c("number").c("type").c("date").c(VastIconXmlManager.DURATION).a("date", false);
        a(a2);
        Boolean bool = (Boolean) a2.a((RowCallback<RowCallback<Boolean>>) new RowCallback<Boolean>() { // from class: com.callapp.contacts.util.CallLogUtils.4
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ Boolean onRow(RowContext rowContext) {
                int d2 = rowContext.d(VastIconXmlManager.DURATION);
                Date e = rowContext.e("date");
                long time = new Date().getTime() - (e.getTime() + (d2 * 1000));
                StringBuilder sb = new StringBuilder("duration: ");
                sb.append(d2);
                sb.append(" date: ");
                sb.append(e);
                sb.append(" delta: ");
                sb.append(time);
                CLog.a("REGREM");
                if ((!r4 || rowContext.d("type") == 2) && d2 != 0 && time <= Constants.MINUTE_IN_MILLIS) {
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
                return new SingleCallLogData(rowContext.d("_id"), rowContext.e("date"), rowContext.a("name"), PhoneManager.get().a(rowContext.a("number")), CallLogUtils.a(rowContext), rowContext.d("numbertype"), rowContext.a("numberlabel"), (int) rowContext.c(VastIconXmlManager.DURATION), Singletons.get().getSimManager().a(rowContext.f14395a));
            }
        };
    }

    public static int getCallHistoryIcon(int i) {
        int i2;
        if (i == 1) {
            i2 = 2131231544;
        } else if (i != 2) {
            if (!(i == 3 || i == 5 || i == 6000)) {
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
        synchronized (f15866b) {
            if (f15867c == null) {
                Stack<AggregateCallLogData> callLogInternal = getCallLogInternal();
                f15867c = callLogInternal;
                BaseAdapterItemData.createCacheKeysAsync(callLogInternal);
            }
            stack = f15867c;
        }
        return stack;
    }

    private static ContentQuery getCallLogHistoryBaseQuery() {
        ContentQuery a2 = new ContentQuery(CallLog.Calls.CONTENT_URI).c("_id").c("number").c("date").c("type").c(VastIconXmlManager.DURATION).a("date", false);
        a2.f14388a = 5;
        a(a2);
        return a2;
    }

    private static RowCallback<CallHistoryData> getCallLogHistoryRowCallback() {
        return new RowCallback<CallHistoryData>() { // from class: com.callapp.contacts.util.CallLogUtils.2
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ CallHistoryData onRow(RowContext rowContext) {
                return new CallHistoryData(rowContext.c("_id"), rowContext.e("date"), CallLogUtils.a(rowContext), rowContext.c(VastIconXmlManager.DURATION), Singletons.get().getSimManager().a(rowContext.f14395a));
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e4  */
    /* JADX WARN: Type inference failed for: r4v14, types: [java.util.Stack] */
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
