package com.privacystar.core.util;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.format.DateFormat;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.call_event.CallHistoryHelper;
import com.privacystar.core.data.model.LogItemFields;
import com.privacystar.core.data.offender.OffenderLookupUtil;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdHelper;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdModel;
import com.privacystar.core.service.ICallLogCallback;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CallLogUtil.class */
public class CallLogUtil {
    private static final String HANDLER_TAG = "CallLogUtil Handler";
    private static final long MERGE_MARGIN = 60000;
    private static final int PAGE_SIZE = 500;
    private static Book book;
    private static int total;
    private static final String[] smsProjection = {"address", LogItemFields.DATE, "type", "_id"};
    private static final Object bookLock = new Object();
    private static final HashSet<PageRequest> requests = new HashSet<>(1);
    private static List<BasicLogInfo> entries = new ArrayList();

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CallLogUtil$BasicLogInfo.class */
    public static class BasicLogInfo {
        private int bitValue;
        private boolean call;
        private String callerId;
        private String cnamName;
        private String contactId;
        private String contactPictureURI;
        private int count;
        private Date date;
        private CallHistoryHelper.CallDirection direction;
        private String fullPictureURI;
        private boolean hasContactPicture;

        /* renamed from: id */
        private int f297id;
        private boolean inBlockList;
        private boolean inContacts;
        private boolean invalid;
        private String location;
        private boolean lookupOnly;
        private String name;
        private String number;
        private boolean populated;
        private Long rawDate;
        private int type;
        private boolean wasBlocked;

        public BasicLogInfo(String str, String str2, String str3, Long l, int i, int i2, boolean z, boolean z2, boolean z3) {
            this.populated = false;
            this.inContacts = false;
            this.call = false;
            this.invalid = false;
            this.inBlockList = false;
            this.wasBlocked = false;
            this.bitValue = 0;
            this.count = 1;
            this.contactPictureURI = "";
            this.lookupOnly = false;
            this.fullPictureURI = "";
            this.contactId = "";
            this.cnamName = "";
            this.callerId = "";
            this.location = "";
            this.number = str == null ? "" : str;
            this.name = str2 == null ? "" : str2;
            this.cnamName = str3 == null ? "" : str3;
            setDate(l);
            this.direction = CallHistoryHelper.getInstance().getCallDirection(i, z2);
            this.f297id = i2;
            this.inContacts = z;
            this.call = z2;
            this.inBlockList = z3;
            this.populated = false;
        }

        public BasicLogInfo(String str, String str2, String str3, String str4, Long l, int i, String str5, String str6, String str7, String str8, int i2, int i3, boolean z, boolean z2, boolean z3, boolean z4) {
            this(str, str2, str3, l, i, i2, z, z2, z3);
            this.populated = true;
            this.callerId = str4;
            this.bitValue = i3;
            this.contactId = str5;
            this.contactPictureURI = str6;
            this.fullPictureURI = str7;
            this.wasBlocked = z4;
            this.location = str8;
        }

        private String getDateString() {
            return DateFormat.format("MM/dd/yyyy", this.date).toString();
        }

        private String getTimeString() {
            return DateFormat.format("hh:mm:ss a", this.date).toString();
        }

        private void setDate(Long l) {
            this.rawDate = l;
            this.date = new Date(l.longValue());
        }

        public int getBitValue() {
            return this.bitValue;
        }

        public CallHistoryHelper.CallDirection getCallDirection() {
            return this.direction;
        }

        public String getCallerId() {
            CallerIdModel.CallerId entry;
            if (Text.isBlank(this.callerId) && (entry = CallerIdHelper.getInstance().getEntry(this.number)) != null) {
                this.callerId = entry.callerName;
            }
            return this.callerId;
        }

        public String getCnamName() {
            return this.cnamName;
        }

        public String getContactId() {
            return this.contactId;
        }

        public String getContactPictureURI() {
            return this.contactPictureURI;
        }

        public int getCount() {
            return this.count;
        }

        public Date getDate() {
            return this.date;
        }

        public String getDisplayName() {
            return hasName() ? getName() : hasCnamName() ? getCnamName() : hasCallerId() ? getCallerId() : "";
        }

        public String getFullPictureURI() {
            return this.fullPictureURI;
        }

        public int getId() {
            return this.f297id;
        }

        public String getLocation() {
            return this.location;
        }

        public String getName() {
            return this.name;
        }

        public String getNumber() {
            return this.number;
        }

        public Long getRawDate() {
            return this.rawDate;
        }

        public boolean hasCallerId() {
            return !Text.isBlank(getCallerId());
        }

        public boolean hasCnamName() {
            return !Text.isBlank(getCnamName());
        }

        public boolean hasContactPicture() {
            return this.hasContactPicture;
        }

        public boolean hasDisplayName() {
            return hasName() || hasCnamName() || hasCallerId();
        }

        public boolean hasLocation() {
            return !Text.isBlank(this.location);
        }

        public boolean hasName() {
            return !Text.isBlank(getName());
        }

        public boolean inBlockList() {
            return this.inBlockList;
        }

        public boolean inHotlist() {
            return OffenderLookupUtil.isHotlistOffender(getBitValue());
        }

        public void increment() {
            this.count++;
        }

        public boolean isCall() {
            return this.call;
        }

        public boolean isInContacts() {
            return this.inContacts;
        }

        public boolean isInvalid() {
            return this.invalid;
        }

        public boolean isLookupOnly() {
            return this.lookupOnly;
        }

        public boolean isOffender() {
            return this.bitValue > 0;
        }

        public boolean isPopulated() {
            return this.populated;
        }

        public void populate() {
            if (!this.populated) {
                if (this.inContacts) {
                    String[] contactNameAndIdByNumber = ContactUtil.getContactNameAndIdByNumber(this.number);
                    this.contactId = contactNameAndIdByNumber[1];
                    if (!Text.isBlank(contactNameAndIdByNumber[2])) {
                        Uri contactPhoto = ContactUtil.getContactPhoto(this.contactId);
                        if (contactPhoto != null) {
                            this.fullPictureURI = contactPhoto.toString();
                        }
                    } else {
                        this.fullPictureURI = "";
                    }
                    if (!Text.isBlank(contactNameAndIdByNumber[4])) {
                        this.contactPictureURI = contactNameAndIdByNumber[4];
                        this.hasContactPicture = true;
                    } else {
                        this.contactPictureURI = "";
                        this.hasContactPicture = false;
                    }
                    this.populated = true;
                } else {
                    this.invalid = BlockingManager.isInvalidNumber(new ParsedPhoneNumber(this.number, this.number, false), BlockingManager.getInstance().getSpecialCasesCallBlocksMap(), PSApplication.context());
                }
            }
            if (OffenderLookupUtil.getOffenderFileAvailable()) {
                Realm defaultInstance = Realm.getDefaultInstance();
                try {
                    this.bitValue = OffenderLookupUtil.getIntCallerType(defaultInstance, this.number);
                    if (defaultInstance != null) {
                        defaultInstance.close();
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (defaultInstance != null) {
                            if (th != null) {
                                try {
                                    defaultInstance.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                            } else {
                                defaultInstance.close();
                            }
                        }
                        throw th2;
                    }
                }
            } else {
                this.bitValue = -1;
            }
        }

        public void setBitValue(int i) {
            this.bitValue = i;
        }

        public void setBlocked(boolean z) {
            this.wasBlocked = z;
            this.inBlockList = true;
        }

        public void setCallerId(String str) {
            this.callerId = str;
        }

        public void setLocation(String str) {
            this.location = str;
        }

        public void setLookupOnly(boolean z) {
            this.lookupOnly = z;
        }

        public boolean shouldWarn() {
            return isOffender() && !inHotlist();
        }

        public String toBasicString() {
            return "[number: " + this.number + ", timestamp: " + this.rawDate + "]";
        }

        void update(Long l, int i, boolean z) {
            setDate(l);
            this.f297id = i;
            this.call = z;
        }

        public void updateOffenderBits() {
            Realm defaultInstance = Realm.getDefaultInstance();
            try {
                this.bitValue = OffenderLookupUtil.getIntCallerType(defaultInstance, this.number);
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (defaultInstance != null) {
                        if (th != null) {
                            try {
                                defaultInstance.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        } else {
                            defaultInstance.close();
                        }
                    }
                    throw th2;
                }
            }
        }

        public boolean wasBlocked() {
            return this.wasBlocked;
        }

        public boolean wasReported() {
            return false;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CallLogUtil$BasicLogInfoDateComparator.class */
    public static class BasicLogInfoDateComparator implements Comparator<BasicLogInfo> {
        public int compare(BasicLogInfo basicLogInfo, BasicLogInfo basicLogInfo2) {
            int i = (basicLogInfo2.rawDate.longValue() > basicLogInfo.rawDate.longValue() ? 1 : (basicLogInfo2.rawDate.longValue() == basicLogInfo.rawDate.longValue() ? 0 : -1));
            return i < 0 ? -1 : i == 0 ? 0 : 1;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CallLogUtil$BasicLogInfoDateMerger.class */
    private static class BasicLogInfoDateMerger implements Comparator<BasicLogInfo> {
        private BasicLogInfoDateMerger() {
        }

        public int compare(BasicLogInfo basicLogInfo, BasicLogInfo basicLogInfo2) {
            return (int) (basicLogInfo.rawDate.longValue() - basicLogInfo2.rawDate.longValue());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CallLogUtil$Book.class */
    public static class Book {
        private static final char cmm = ',';
        private final Object processLock = new Object();
        private final Object counterLock = new Object();
        private ArrayList<ArrayList<BasicLogInfo>> pages = new ArrayList<>(50);
        private ArrayList<Boolean> cachedPageFlags = new ArrayList<>(50);
        private ArrayList<BasicLogInfo> currentWorkingPage = new ArrayList<>(500);
        private int currentLine = 0;
        private int size = 0;
        private boolean completed = false;

        private void incrementCurrentPage() {
            synchronized (this.counterLock) {
                this.pages.add(this.currentWorkingPage);
                this.cachedPageFlags.add(Boolean.FALSE);
                this.size++;
                if (!getCompleted()) {
                    this.currentWorkingPage = new ArrayList<>(500);
                } else {
                    this.currentWorkingPage = null;
                }
                CallLogUtil.checkQueue();
            }
        }

        public boolean getCompleted() {
            boolean z;
            synchronized (this.counterLock) {
                z = this.completed;
            }
            return z;
        }

        ArrayList<BasicLogInfo> getCurrentPage() {
            ArrayList<BasicLogInfo> arrayList;
            synchronized (this.processLock) {
                arrayList = this.currentWorkingPage;
            }
            return arrayList;
        }

        public ArrayList<BasicLogInfo> getPage(int i) {
            return this.pages.get(i);
        }

        public int getSize() {
            return this.size;
        }

        void setCompleted() {
            synchronized (this.counterLock) {
                this.completed = true;
                incrementCurrentPage();
            }
        }

        void setNextLine(BasicLogInfo basicLogInfo) {
            synchronized (this.processLock) {
                getCurrentPage().add(basicLogInfo);
                this.currentLine++;
                if (this.currentLine == 500) {
                    this.currentLine = 0;
                    incrementCurrentPage();
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CallLogUtil$EventDirection.class */
    public enum EventDirection {
        INCOMING,
        OUTGOING
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CallLogUtil$PageRequest.class */
    public static class PageRequest {
        ICallLogCallback mCallLogCallback;
        int mPageIndex;

        PageRequest(int i, ICallLogCallback iCallLogCallback) {
            this.mPageIndex = 0;
            this.mPageIndex = i;
            this.mCallLogCallback = iCallLogCallback;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:24:0x0117
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:90)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    public static void cacheGroupedPagedLog(android.content.Context r12) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.CallLogUtil.cacheGroupedPagedLog(android.content.Context):void");
    }

    private static void callerIdMerge(ArrayList<BasicLogInfo> arrayList, ArrayList<CallerIdModel.CallerId> arrayList2) {
        CallerIdModel.CallerId callerId = new CallerIdModel.CallerId();
        Iterator<BasicLogInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            BasicLogInfo next = it.next();
            callerId.phoneNumber = next.getNumber();
            int binarySearch = Collections.binarySearch(arrayList2, callerId);
            if (binarySearch >= 0) {
                CallerIdModel.CallerId callerId2 = arrayList2.get(binarySearch);
                next.setCallerId(callerId2.callerName);
                next.setLocation(callerId2.cityState);
                next.setBitValue(callerId2.bitValue);
            }
        }
    }

    public static void checkQueue() {
        HandlerThreadUtil.getHandler(HANDLER_TAG).post(CallLogUtil$$Lambda$1.$instance);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkQueueImpl() {
        Book book2 = getBook();
        int size = book2.getSize();
        boolean completed = book2.getCompleted();
        synchronized (requests) {
            Iterator<PageRequest> it = requests.iterator();
            while (it.hasNext()) {
                PageRequest next = it.next();
                int i = next.mPageIndex;
                if (i <= -1) {
                    it.remove();
                } else if (i < size) {
                    ArrayList<BasicLogInfo> page = book2.getPage(i);
                    if (next.mCallLogCallback != null) {
                        next.mCallLogCallback.getLogPageCallback(i, getTotal(), page);
                    }
                    it.remove();
                } else if (completed) {
                    if (next.mCallLogCallback != null) {
                        next.mCallLogCallback.getLogPageCallback(i, getTotal(), null);
                    }
                    it.remove();
                }
            }
        }
    }

    private static boolean compare(BasicLogInfo basicLogInfo, BasicLogInfo basicLogInfo2) {
        return basicLogInfo.date.after(basicLogInfo2.date);
    }

    public static Book createBook() {
        Book book2;
        synchronized (bookLock) {
            if (getBook() == null) {
                book = new Book();
            }
            book2 = book;
        }
        return book2;
    }

    private static void destroyBook() {
        synchronized (bookLock) {
            if (getBook() != null) {
                book = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a2 A[Catch: all -> 0x00fd, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x001c, B:9:0x002f, B:11:0x0039, B:17:0x0054, B:19:0x005c, B:21:0x006b, B:23:0x007e, B:25:0x0086, B:27:0x0090, B:30:0x00a2, B:33:0x00ab, B:35:0x00b2, B:38:0x00bc, B:40:0x00c4, B:41:0x00d5, B:44:0x00e1, B:46:0x00e9, B:48:0x00fb), top: B:55:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ab A[Catch: all -> 0x00fd, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x001c, B:9:0x002f, B:11:0x0039, B:17:0x0054, B:19:0x005c, B:21:0x006b, B:23:0x007e, B:25:0x0086, B:27:0x0090, B:30:0x00a2, B:33:0x00ab, B:35:0x00b2, B:38:0x00bc, B:40:0x00c4, B:41:0x00d5, B:44:0x00e1, B:46:0x00e9, B:48:0x00fb), top: B:55:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ba A[LOOP:1: B:37:0x00ba->B:40:0x00c4, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d5 A[Catch: all -> 0x00fd, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x001c, B:9:0x002f, B:11:0x0039, B:17:0x0054, B:19:0x005c, B:21:0x006b, B:23:0x007e, B:25:0x0086, B:27:0x0090, B:30:0x00a2, B:33:0x00ab, B:35:0x00b2, B:38:0x00bc, B:40:0x00c4, B:41:0x00d5, B:44:0x00e1, B:46:0x00e9, B:48:0x00fb), top: B:55:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x007e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x005c A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0047 -> B:13:0x004c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void foldSort(java.util.ArrayList<com.privacystar.core.util.CallLogUtil.BasicLogInfo> r3, java.util.ArrayList<com.privacystar.core.util.CallLogUtil.BasicLogInfo> r4, com.privacystar.core.util.CallLogUtil.Book r5) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.CallLogUtil.foldSort(java.util.ArrayList, java.util.ArrayList, com.privacystar.core.util.CallLogUtil$Book):void");
    }

    public static Book getBook() {
        Book book2;
        synchronized (bookLock) {
            book2 = book;
        }
        return book2;
    }

    public static ArrayList<BasicLogInfo> getPage(int i, ICallLogCallback iCallLogCallback, final Context context) {
        Book book2 = getBook();
        if (book2 == null) {
            queueRequest(i, iCallLogCallback);
            new Thread(new Runnable(context) { // from class: com.privacystar.core.util.CallLogUtil$$Lambda$0
                private final Context arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = context;
                }

                @Override // java.lang.Runnable
                public void run() {
                    CallLogUtil.cacheGroupedPagedLog(this.arg$1);
                }
            }).start();
            return null;
        } else if (i >= book2.getSize()) {
            if (book2.getCompleted()) {
                return null;
            }
            queueRequest(i, iCallLogCallback);
            return null;
        } else if (((Boolean) book2.cachedPageFlags.get(i)).booleanValue()) {
            return book2.getPage(i);
        } else {
            queueRequest(i, iCallLogCallback);
            return null;
        }
    }

    public static int getPageSize() {
        return 500;
    }

    public static int getTotal() {
        return total;
    }

    private static <T> T iterateOrNull(Iterator<T> it) {
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    private static boolean mergeEvents(BasicLogInfo basicLogInfo, BasicLogInfo basicLogInfo2) {
        if (!Text.equals(basicLogInfo.number, basicLogInfo2.number, false) || (basicLogInfo.call ^ basicLogInfo2.call)) {
            return false;
        }
        long longValue = basicLogInfo.rawDate.longValue() - basicLogInfo2.rawDate.longValue();
        return longValue >= -60000 && longValue <= 60000;
    }

    private static ArrayList<BasicLogInfo> mergeSort(ArrayList<BasicLogInfo> arrayList, ArrayList<BasicLogInfo> arrayList2) {
        ArrayList<BasicLogInfo> arrayList3 = new ArrayList<>();
        Iterator<BasicLogInfo> it = arrayList.iterator();
        Iterator<BasicLogInfo> it2 = arrayList2.iterator();
        BasicLogInfo basicLogInfo = (BasicLogInfo) iterateOrNull(it);
        BasicLogInfo basicLogInfo2 = (BasicLogInfo) iterateOrNull(it2);
        while (basicLogInfo != null && basicLogInfo2 != null) {
            if (mergeEvents(basicLogInfo, basicLogInfo2)) {
                basicLogInfo.setBlocked(true);
                arrayList3.add(basicLogInfo);
                Timber.m28v("Merge collision between\ncall event: %s and\nblocked event: %s\nwith tolerance margin of %dms.", basicLogInfo.toBasicString(), basicLogInfo2.toBasicString(), 60000L);
                basicLogInfo = (BasicLogInfo) iterateOrNull(it);
                basicLogInfo2 = (BasicLogInfo) iterateOrNull(it2);
            } else if (compare(basicLogInfo, basicLogInfo2)) {
                arrayList3.add(basicLogInfo);
                basicLogInfo = (BasicLogInfo) iterateOrNull(it);
            } else {
                arrayList3.add(basicLogInfo2);
                basicLogInfo2 = (BasicLogInfo) iterateOrNull(it2);
            }
        }
        if (basicLogInfo != null) {
            arrayList3.add(basicLogInfo);
        }
        if (basicLogInfo2 != null) {
            arrayList3.add(basicLogInfo2);
        }
        while (it.hasNext()) {
            arrayList3.add(it.next());
        }
        while (it2.hasNext()) {
            arrayList3.add(it2.next());
        }
        return arrayList3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0080, code lost:
        if (r0.length() <= 3) goto L_0x0089;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<com.privacystar.core.util.CallLogUtil.BasicLogInfo> populateArrayList(android.database.Cursor r12, java.util.HashMap<java.lang.String, java.lang.String> r13, java.util.List<java.lang.String> r14, java.util.HashMap<java.lang.String, com.privacystar.core.util.CallLogUtil.BasicLogInfo> r15, boolean r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, boolean r21, android.content.Context r22) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.CallLogUtil.populateArrayList(android.database.Cursor, java.util.HashMap, java.util.List, java.util.HashMap, boolean, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean, android.content.Context):java.util.ArrayList");
    }

    private static HashMap<String, String> populateContactMap(Cursor cursor, Context context) {
        HashMap<String, String> hashMap = new HashMap<>();
        int columnIndex = cursor.getColumnIndex("display_name");
        int columnIndex2 = cursor.getColumnIndex("data1");
        while (cursor.moveToNext()) {
            hashMap.put(InformationUtil.normalizeNumber(cursor.getString(columnIndex2)), cursor.getString(columnIndex));
        }
        return hashMap;
    }

    private static void queueRequest(int i, ICallLogCallback iCallLogCallback) {
        synchronized (requests) {
            requests.add(new PageRequest(i, iCallLogCallback));
        }
        Book book2 = getBook();
        if (book2 != null && book2.getCompleted()) {
            checkQueue();
        }
    }

    public static void refresh(Context context) {
        destroyBook();
        getPage(0, null, context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0081, code lost:
        if (r0.getDate().before(r6.getDate()) != false) goto L_0x0089;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void setLatestOffenderAction(java.util.List<com.privacystar.core.util.CallLogUtil.BasicLogInfo> r6) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L_0x000f:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0096
            r0 = r8
            java.lang.Object r0 = r0.next()
            com.privacystar.core.util.CallLogUtil$BasicLogInfo r0 = (com.privacystar.core.util.CallLogUtil.BasicLogInfo) r0
            r9 = r0
            r0 = r9
            r0.updateOffenderBits()
            java.lang.String r0 = "Item bit value: %d for item: %s"
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r9
            int r4 = com.privacystar.core.util.CallLogUtil.BasicLogInfo.access$100(r4)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r2[r3] = r4
            r2 = r1
            r3 = 1
            r4 = r9
            java.lang.String r4 = r4.toBasicString()
            r2[r3] = r4
            timber.log.Timber.m28v(r0, r1)
            r0 = r9
            r1 = r9
            java.lang.String r1 = com.privacystar.core.util.CallLogUtil.BasicLogInfo.access$300(r1)
            boolean r1 = com.privacystar.core.util.ContactUtil.isNumberInContacts(r1)
            boolean r0 = com.privacystar.core.util.CallLogUtil.BasicLogInfo.access$202(r0, r1)
            r0 = r9
            int r0 = com.privacystar.core.util.CallLogUtil.BasicLogInfo.access$100(r0)
            long r0 = (long) r0
            boolean r0 = com.privacystar.core.data.offender.PhoneEntry.isOffender(r0)
            if (r0 == 0) goto L_0x000f
            r0 = r9
            boolean r0 = com.privacystar.core.util.CallLogUtil.BasicLogInfo.access$200(r0)
            if (r0 != 0) goto L_0x000f
            r0 = r7
            r1 = r9
            java.lang.String r1 = com.privacystar.core.util.CallLogUtil.BasicLogInfo.access$300(r1)
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x0087
            r0 = r7
            r1 = r9
            java.lang.String r1 = com.privacystar.core.util.CallLogUtil.BasicLogInfo.access$300(r1)
            java.lang.Object r0 = r0.get(r1)
            com.privacystar.core.util.CallLogUtil$BasicLogInfo r0 = (com.privacystar.core.util.CallLogUtil.BasicLogInfo) r0
            r6 = r0
            r0 = r9
            java.util.Date r0 = r0.getDate()
            r1 = r6
            java.util.Date r1 = r1.getDate()
            boolean r0 = r0.before(r1)
            if (r0 == 0) goto L_0x0087
            goto L_0x0089
        L_0x0087:
            r0 = r9
            r6 = r0
        L_0x0089:
            r0 = r7
            r1 = r9
            java.lang.String r1 = com.privacystar.core.util.CallLogUtil.BasicLogInfo.access$300(r1)
            r2 = r6
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x000f
        L_0x0096:
            java.util.List<com.privacystar.core.util.CallLogUtil$BasicLogInfo> r0 = com.privacystar.core.util.CallLogUtil.entries
            r0.clear()
            java.util.List<com.privacystar.core.util.CallLogUtil$BasicLogInfo> r0 = com.privacystar.core.util.CallLogUtil.entries
            r1 = r7
            java.util.Collection r1 = r1.values()
            boolean r0 = r0.addAll(r1)
            java.util.List<com.privacystar.core.util.CallLogUtil$BasicLogInfo> r0 = com.privacystar.core.util.CallLogUtil.entries
            com.privacystar.core.util.CallLogUtil$BasicLogInfoDateComparator r1 = new com.privacystar.core.util.CallLogUtil$BasicLogInfoDateComparator
            r2 = r1
            r2.<init>()
            java.util.Collections.sort(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.CallLogUtil.setLatestOffenderAction(java.util.List):void");
    }

    private static void setTotal(int i) {
        total = i;
    }
}
