package p193e.p194a.p1041l0;

import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Trace;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.log.AssertionUtil;
import com.truecaller.settings.CallingSettings;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.inject.Inject;
import p1727n3.p1807k.p1816e.C26516h;
import p193e.p194a.p1041l0.p1042u.AbstractC17369a;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17375d;
import p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17387d;
import p193e.p194a.p1041l0.p1045v.AbstractC17389a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1053m0.p1057c1.C18071l0;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.l0.s */
/* loaded from: classes6-dex2jar.jar:e/a/l0/s.class */
public final class C17367s implements AbstractC17366r {

    /* renamed from: a */
    public long f48640a = -1;

    /* renamed from: b */
    public final Context f48641b;

    /* renamed from: c */
    public final AbstractC17387d f48642c;

    /* renamed from: d */
    public final AbstractC17351f f48643d;

    /* renamed from: e */
    public final AbstractC17389a f48644e;

    /* renamed from: f */
    public final CallingSettings f48645f;

    /* renamed from: g */
    public final AbstractC19230g f48646g;

    /* renamed from: h */
    public final CallRecordingManager f48647h;

    /* renamed from: i */
    public final AbstractC17369a f48648i;

    /* renamed from: j */
    public final AbstractC19462a f48649j;

    @Inject
    public C17367s(Context context, AbstractC17387d abstractC17387d, AbstractC17351f abstractC17351f, AbstractC17389a abstractC17389a, CallingSettings callingSettings, AbstractC19230g abstractC19230g, CallRecordingManager callRecordingManager, AbstractC17369a abstractC17369a, AbstractC19462a abstractC19462a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC17387d, "callRecordingHistoryEventInserter");
        l.e(abstractC17351f, "callLogUtil");
        l.e(abstractC17389a, "batchExecutor");
        l.e(callingSettings, "callingSettings");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(callRecordingManager, "callRecordingManager");
        l.e(abstractC17369a, "syncManagerDataProvider");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f48641b = context;
        this.f48642c = abstractC17387d;
        this.f48643d = abstractC17351f;
        this.f48644e = abstractC17389a;
        this.f48645f = callingSettings;
        this.f48646g = abstractC19230g;
        this.f48647h = callRecordingManager;
        this.f48648i = abstractC17369a;
        this.f48649j = abstractC19462a;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17368t
    /* renamed from: a */
    public boolean mo16171a() {
        return this.f48640a != -1;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17366r
    /* renamed from: b */
    public void mo16178b(boolean z) {
        boolean z2 = true;
        if (this.f48645f.getBoolean("deleteUnknownHistoryEvents", true)) {
            Method method = C26516h.f74306b;
            Trace.beginSection("Deleting unknown entries from the local database");
            try {
                this.f48641b.getContentResolver().delete(C17891a1.C17901j.m15699b(), "type=0", null);
                C18071l0 m15500j = C18071l0.m15500j(this.f48641b, C18071l0.m15501d(), this.f48649j);
                l.d(m15500j, "TruecallerDatabaseHelper…ableHelpers(), analytics)");
                SQLiteDatabase writableDatabase = m15500j.getWritableDatabase();
                l.d(writableDatabase, "TruecallerDatabaseHelper…        .writableDatabase");
                l.e(writableDatabase, "$this$vacuum");
                writableDatabase.rawQuery("PRAGMA wal_checkpoint(FULL)", null).close();
                if (writableDatabase.inTransaction()) {
                    z2 = false;
                } else {
                    writableDatabase.execSQL("VACUUM");
                }
                if (z2) {
                    this.f48645f.putBoolean("deleteUnknownHistoryEvents", false);
                }
            } catch (Exception e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
            Trace.endSection();
        }
        if (this.f48640a != -1) {
            this.f48640a = System.currentTimeMillis();
            return;
        }
        AbstractC17389a.C17390a c17390a = new AbstractC17389a.C17390a(0, 0L, 3);
        this.f48640a = c17390a.f48732b;
        if (z) {
            mo16172i(c17390a);
        } else {
            this.f48644e.mo16145a(c17390a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* renamed from: c */
    public final long m16177c(long j, ArrayList<ContentValues> arrayList, ArrayList<ContentValues> arrayList2) {
        char c = j;
        if (!arrayList2.isEmpty()) {
            ContentValues contentValues = arrayList2.get(arrayList2.size() - 1);
            l.d(contentValues, "toBeUpdated[toBeUpdated.size - 1]");
            Long asLong = contentValues.getAsLong("timestamp");
            l.d(asLong, "toBeUpdated[toBeUpdated.size - 1].timestamp()");
            c = Math.max(j, asLong.longValue());
        }
        char c2 = c;
        if (!arrayList.isEmpty()) {
            ContentValues contentValues2 = arrayList.get(arrayList.size() - 1);
            l.d(contentValues2, "toBeAdded[toBeAdded.size - 1]");
            Long asLong2 = contentValues2.getAsLong("timestamp");
            l.d(asLong2, "toBeAdded[toBeAdded.size - 1].timestamp()");
            c2 = Math.max((long) c, asLong2.longValue());
        }
        return c2;
    }

    /* renamed from: d */
    public final AbstractC17389a.C17390a m16176d(AbstractC17375d abstractC17375d, AbstractC17373b abstractC17373b, List<ContentProviderOperation> list, List<ContentProviderOperation> list2) {
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        ArrayList<ContentValues> arrayList2 = new ArrayList<>();
        boolean moveToFirst = abstractC17375d.moveToFirst();
        boolean moveToFirst2 = abstractC17373b.moveToFirst();
        while (moveToFirst && moveToFirst2) {
            if (abstractC17375d.mo16158D1()) {
                moveToFirst = abstractC17375d.moveToNext();
            } else {
                long mo16160e = abstractC17373b.mo16160e();
                long mo16156e = abstractC17375d.mo16156e();
                long mo16163A0 = abstractC17373b.mo16163A0();
                long id = abstractC17375d.getId();
                if (abstractC17373b.mo16163A0() == -1) {
                    m16173g(abstractC17373b.mo16159n(), arrayList2, arrayList, list, list2);
                    moveToFirst2 = abstractC17373b.moveToNext();
                } else {
                    int i = (mo16160e > mo16156e ? 1 : (mo16160e == mo16156e ? 0 : -1));
                    if (i > 0) {
                        m16174f(abstractC17373b.getId(), list);
                        moveToFirst2 = abstractC17373b.moveToNext();
                    } else if (i < 0) {
                        m16175e(abstractC17375d.mo16155n(), arrayList2, arrayList, list, list2);
                        moveToFirst = abstractC17375d.moveToNext();
                    } else {
                        int i2 = (mo16163A0 > id ? 1 : (mo16163A0 == id ? 0 : -1));
                        if (i2 > 0) {
                            m16174f(abstractC17373b.getId(), list);
                            moveToFirst2 = abstractC17373b.moveToNext();
                        } else if (i2 < 0) {
                            m16175e(abstractC17375d.mo16155n(), arrayList2, arrayList, list, list2);
                            moveToFirst = abstractC17375d.moveToNext();
                        } else {
                            String mo16154z = abstractC17373b.mo16154z();
                            l.d(mo16154z, "local.simToken");
                            String mo16154z2 = abstractC17375d.mo16154z();
                            l.d(mo16154z2, "remote.simToken");
                            if (!h.e(mo16154z, mo16154z2)) {
                                ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C17891a1.C17901j.m15699b());
                                l.d(newUpdate, "ContentProviderOperation…oryTable.getContentUri())");
                                newUpdate.withValue("subscription_id", mo16154z2);
                                newUpdate.withSelection("_id=?", new String[]{String.valueOf(abstractC17373b.getId())});
                                ContentProviderOperation build = newUpdate.build();
                                l.d(build, "build()");
                                list.add(build);
                            }
                            moveToFirst2 = abstractC17373b.moveToNext();
                            moveToFirst = abstractC17375d.moveToNext();
                        }
                    }
                }
                if (list.size() >= 100) {
                    return new AbstractC17389a.C17390a(0, m16177c(Math.max(mo16160e, mo16156e), arrayList2, arrayList), 1);
                }
            }
        }
        while (moveToFirst) {
            HistoryEvent mo16155n = abstractC17375d.mo16155n();
            if (mo16155n != null) {
                if (arrayList.isEmpty()) {
                    ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C17891a1.C17901j.m15699b());
                    l.d(newInsert, "ContentProviderOperation…oryTable.getContentUri())");
                    newInsert.withValues(C18334g0.m15266G0(mo16155n));
                    ContentProviderOperation build2 = newInsert.build();
                    l.d(build2, "build()");
                    list.add(build2);
                } else {
                    m16175e(mo16155n, arrayList2, arrayList, list, list2);
                }
                if (list.size() >= 100) {
                    return new AbstractC17389a.C17390a(0, m16177c(mo16155n.f11541h, arrayList2, arrayList), 1);
                }
            }
            moveToFirst = abstractC17375d.moveToNext();
        }
        boolean z = false;
        while (moveToFirst2) {
            if (abstractC17373b.mo16163A0() != -1) {
                m16174f(abstractC17373b.getId(), list);
            } else if (!arrayList2.isEmpty()) {
                m16173g(abstractC17373b.mo16159n(), arrayList2, arrayList, list, list2);
            }
            moveToFirst2 = abstractC17373b.moveToNext();
        }
        ListIterator<ContentValues> listIterator = arrayList2.listIterator();
        while (listIterator.hasNext()) {
            ContentProviderOperation.Builder newInsert2 = ContentProviderOperation.newInsert(C17891a1.C17901j.m15699b());
            l.d(newInsert2, "ContentProviderOperation…oryTable.getContentUri())");
            newInsert2.withValues(listIterator.next());
            ContentProviderOperation build3 = newInsert2.build();
            l.d(build3, "build()");
            list.add(build3);
            listIterator.remove();
        }
        boolean z2 = arrayList.size() > 0;
        if (list.size() == 0) {
            z = true;
        }
        if (z2 & z) {
            arrayList.size();
            Iterator<ContentValues> it = arrayList.iterator();
            while (it.hasNext()) {
                Long asLong = it.next().getAsLong("_id");
                l.d(asLong, "it.longId()");
                m16174f(asLong.longValue(), list);
            }
        }
        return new AbstractC17389a.C17390a(1, 0L, 2);
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* renamed from: e */
    public final void m16175e(HistoryEvent historyEvent, ArrayList<ContentValues> arrayList, ArrayList<ContentValues> arrayList2, List<ContentProviderOperation> list, List<ContentProviderOperation> list2) {
        String str = "scheduleEventToAdd() called with: remote = [" + historyEvent + "], toBeAdded = [" + arrayList + "], toBeUpdated = [" + arrayList2 + ']';
        String str2 = "scheduleEventToAdd() localOperations = [" + list + "], remoteOperations = [" + list2 + ']';
        if (historyEvent == null) {
            return;
        }
        ?? r0 = historyEvent.f11541h + 10000;
        char c = r0;
        if (!arrayList2.isEmpty()) {
            Iterator<ContentValues> it = arrayList2.iterator();
            l.d(it, "toBeUpdated.iterator()");
            while (true) {
                c = r0;
                if (!it.hasNext()) {
                    break;
                }
                ContentValues next = it.next();
                l.d(next, "update.next()");
                ContentValues contentValues = next;
                if (contentValues.getAsLong("timestamp").longValue() > r0) {
                    it.remove();
                } else {
                    Integer asInteger = contentValues.getAsInteger("type");
                    l.d(asInteger, "event.type()");
                    int intValue = asInteger.intValue();
                    int i = historyEvent.f11550q;
                    String asString = contentValues.getAsString("normalized_number");
                    String str3 = historyEvent.f11535b;
                    Long asLong = contentValues.getAsLong("timestamp");
                    l.d(asLong, "event.timestamp()");
                    if (C18334g0.m15213o(intValue, i, asString, str3, asLong.longValue(), historyEvent.f11541h)) {
                        Integer asInteger2 = contentValues.getAsInteger("action");
                        if (asInteger2 != null && asInteger2.intValue() == 5) {
                            Long asLong2 = contentValues.getAsLong("_id");
                            l.d(asLong2, "event.longId()");
                            m16174f(asLong2.longValue(), list);
                            ContentProviderOperation.Builder newDelete = ContentProviderOperation.newDelete(this.f48643d.mo16184b());
                            l.d(newDelete, "ContentProviderOperation…e(callLogUtil.callLogUri)");
                            newDelete.withSelection("_id=?", new String[]{String.valueOf(historyEvent.f11540g.longValue())});
                            ContentProviderOperation build = newDelete.build();
                            l.d(build, "build()");
                            list2.add(build);
                        } else {
                            contentValues.put("type", Integer.valueOf(historyEvent.f11550q));
                            contentValues.put("call_log_id", historyEvent.f11540g);
                            contentValues.put("timestamp", Long.valueOf(historyEvent.f11541h));
                            contentValues.put(VastIconXmlManager.DURATION, Long.valueOf(historyEvent.f11542i));
                            contentValues.put("subscription_id", historyEvent.f11544k);
                            contentValues.put("feature", Integer.valueOf(historyEvent.f11545l));
                            contentValues.put("subscription_component_name", historyEvent.f11552s);
                            contentValues.remove("normalized_number");
                            contentValues.remove("action");
                            contentValues.remove("filter_source");
                            contentValues.remove("ringing_duration");
                            ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C17891a1.C17901j.m15699b());
                            l.d(newUpdate, "ContentProviderOperation…oryTable.getContentUri())");
                            newUpdate.withValues(contentValues);
                            newUpdate.withSelection("_id=?", new String[]{contentValues.getAsString("_id")});
                            ContentProviderOperation build2 = newUpdate.build();
                            l.d(build2, "build()");
                            list.add(build2);
                        }
                        it.remove();
                        return;
                    }
                }
            }
        }
        arrayList.add(0, C18334g0.m15266G0(historyEvent));
        if (this.f48646g.mo13789h() && historyEvent.f11550q == 2) {
            String mo17576w = this.f48647h.mo17576w();
            if (!h.j(mo17576w)) {
                if (this.f48647h.mo17582p(historyEvent.f11535b)) {
                    return;
                }
                String str4 = historyEvent.f11534a;
                l.c(mo17576w);
                CallRecording callRecording = new CallRecording(-1L, str4, mo17576w);
                historyEvent.f11547n = callRecording;
                this.f48642c.mo16146o(callRecording);
                this.f48647h.mo17604D(historyEvent.f11539f);
            }
        }
        ListIterator<ContentValues> listIterator = arrayList.listIterator(arrayList.size());
        while (listIterator.hasPrevious()) {
            ContentValues previous = listIterator.previous();
            l.d(previous, "previous()");
            ContentValues contentValues2 = previous;
            if (contentValues2.getAsLong("timestamp").longValue() <= c) {
                return;
            }
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C17891a1.C17901j.m15699b());
            l.d(newInsert, "ContentProviderOperation…oryTable.getContentUri())");
            newInsert.withValues(contentValues2);
            ContentProviderOperation build3 = newInsert.build();
            l.d(build3, "build()");
            list.add(build3);
            listIterator.remove();
        }
    }

    /* renamed from: f */
    public final void m16174f(long j, List<ContentProviderOperation> list) {
        ContentProviderOperation.Builder newDelete = ContentProviderOperation.newDelete(C17891a1.C17901j.m15699b());
        l.d(newDelete, "ContentProviderOperation…oryTable.getContentUri())");
        newDelete.withSelection("_id=?", new String[]{String.valueOf(j)});
        ContentProviderOperation build = newDelete.build();
        l.d(build, "build()");
        list.add(build);
    }

    /* renamed from: g */
    public final void m16173g(HistoryEvent historyEvent, List<ContentValues> list, List<ContentValues> list2, List<ContentProviderOperation> list3, List<ContentProviderOperation> list4) {
        if (historyEvent == null) {
            return;
        }
        AssertionUtil.AlwaysFatal.isNotNull(historyEvent.getId(), "Event must have record in local database");
        if (list.isEmpty()) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_id", historyEvent.getId());
            contentValues.put("timestamp", Long.valueOf(historyEvent.f11541h));
            contentValues.put("normalized_number", historyEvent.f11535b);
            contentValues.put("action", Integer.valueOf(historyEvent.f11551r));
            contentValues.put("filter_source", historyEvent.f11554u);
            contentValues.put("ringing_duration", Long.valueOf(historyEvent.f11543j));
            contentValues.put("type", Integer.valueOf(historyEvent.f11550q));
            list2.add(contentValues);
            return;
        }
        Iterator<ContentValues> it = list.iterator();
        while (it.hasNext()) {
            ContentValues next = it.next();
            int i = historyEvent.f11550q;
            Integer asInteger = next.getAsInteger("type");
            l.d(asInteger, "remote.type()");
            int intValue = asInteger.intValue();
            String str = historyEvent.f11535b;
            String asString = next.getAsString("normalized_number");
            long j = historyEvent.f11541h;
            Long asLong = next.getAsLong("timestamp");
            l.d(asLong, "remote.timestamp()");
            if (C18334g0.m15213o(i, intValue, str, asString, j, asLong.longValue())) {
                if (historyEvent.f11551r == 5) {
                    Long id = historyEvent.getId();
                    if (id != null) {
                        l.d(id, "it");
                        m16174f(id.longValue(), list3);
                    }
                    ContentProviderOperation.Builder newDelete = ContentProviderOperation.newDelete(this.f48643d.mo16184b());
                    l.d(newDelete, "ContentProviderOperation…e(callLogUtil.callLogUri)");
                    newDelete.withSelection("_id=?", new String[]{next.getAsString("call_log_id")});
                    ContentProviderOperation build = newDelete.build();
                    l.d(build, "build()");
                    list4.add(build);
                } else {
                    ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C17891a1.C17901j.m15699b());
                    l.d(newUpdate, "ContentProviderOperation…oryTable.getContentUri())");
                    next.remove("tc_id");
                    next.remove("normalized_number");
                    next.remove("raw_number");
                    next.remove("number_type");
                    next.remove("country_code");
                    next.remove("cached_name");
                    next.remove("action");
                    next.remove("filter_source");
                    next.remove("ringing_duration");
                    newUpdate.withValues(next);
                    newUpdate.withSelection("_id=?", new String[]{String.valueOf(historyEvent.getId())});
                    ContentProviderOperation build2 = newUpdate.build();
                    l.d(build2, "build()");
                    list3.add(build2);
                }
                it.remove();
                return;
            }
        }
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("_id", historyEvent.getId());
        contentValues2.put("normalized_number", historyEvent.f11535b);
        contentValues2.put("timestamp", Long.valueOf(historyEvent.f11541h));
        contentValues2.put("action", Integer.valueOf(historyEvent.f11551r));
        contentValues2.put("filter_source", historyEvent.f11554u);
        contentValues2.put("ringing_duration", Long.valueOf(historyEvent.f11543j));
        contentValues2.put("type", Integer.valueOf(historyEvent.f11550q));
        list2.add(0, contentValues2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x017f, code lost:
        if (r12 != null) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0343, code lost:
        if (r12 == null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0346, code lost:
        r12.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:87:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0369  */
    @Override // p193e.p194a.p1041l0.AbstractC17366r
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo16172i(p193e.p194a.p1041l0.p1045v.AbstractC17389a.C17390a r12) {
        /*
            Method dump skipped, instructions count: 881
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1041l0.C17367s.mo16172i(e.a.l0.v.a$a):void");
    }
}
