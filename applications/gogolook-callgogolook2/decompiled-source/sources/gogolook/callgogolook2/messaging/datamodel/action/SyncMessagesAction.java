package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import androidx.collection.LongSparseArray;
import androidx.media2.exoplayer.external.audio.Sonic;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.sms.DatabaseMessages;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.C11565v;
import p459j.p460a.p474c0.p475c.p476w.C11580e;
import p459j.p460a.p474c0.p475c.p476w.C11585f;
import p459j.p460a.p474c0.p480d.C11689c;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.AbstractC12178k;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p587d5.C13980g;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/SyncMessagesAction.class */
public class SyncMessagesAction extends Action implements Parcelable {
    public static final Parcelable.Creator<SyncMessagesAction> CREATOR = new C4646a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.SyncMessagesAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/SyncMessagesAction$a.class */
    public static final class C4646a implements Parcelable.Creator<SyncMessagesAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncMessagesAction createFromParcel(Parcel parcel) {
            return new SyncMessagesAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SyncMessagesAction[] newArray(int i) {
            return new SyncMessagesAction[i];
        }
    }

    public SyncMessagesAction(long j, long j2, int i, long j3) {
        this.f11190b.putLong("lower_bound", j);
        this.f11190b.putLong("upper_bound", j2);
        this.f11190b.putInt("max_update", i);
        this.f11190b.putLong("start_timestamp", j3);
    }

    public SyncMessagesAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ SyncMessagesAction(Parcel parcel, C4646a aVar) {
        this(parcel);
    }

    /* renamed from: A */
    public static void m27663A() {
        AbstractC12170i.m6941a().mo6918a("bugle_sms_sync_backoff_time", 5000L);
        m27661a(System.currentTimeMillis() - 5000);
    }

    /* renamed from: a */
    public static void m27661a(long j) {
        if (C12810o.m5233l()) {
            new SyncMessagesAction(AbstractC12178k.m6912b().mo6908a("last_sync_time_millis", -1L), j, 0, j).m27742x();
        }
    }

    /* renamed from: b */
    public static int m27655b(int i, long j) {
        AbstractC12170i.m6941a().mo6918a("bugle_sms_sync_batch_time_limit", 400L);
        if (j <= 0) {
            return 0;
        }
        return (int) ((i / j) * 400);
    }

    /* renamed from: z */
    public static void m27654z() {
        m27661a(System.currentTimeMillis());
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0123, code lost:
        if (r10 == null) goto L_0x013a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0133, code lost:
        if (r10 == null) goto L_0x013a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0136, code lost:
        r10.m9073a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x013a, code lost:
        r24 = -9223372036854775808;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m27656a(p459j.p460a.p474c0.p475c.C11534l r9, p459j.p460a.p474c0.p475c.p476w.C11580e r10, java.util.ArrayList<gogolook.callgogolook2.messaging.sms.DatabaseMessages.SmsMessage> r11, androidx.collection.LongSparseArray<gogolook.callgogolook2.messaging.sms.DatabaseMessages.MmsMessage> r12, java.util.ArrayList<gogolook.callgogolook2.messaging.sms.DatabaseMessages.LocalDatabaseMessage> r13, int r14, int r15, p459j.p460a.p474c0.p475c.C11565v.C11568c r16) {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.action.SyncMessagesAction.m27656a(j.a.c0.c.l, j.a.c0.c.w.e, java.util.ArrayList, androidx.collection.LongSparseArray, java.util.ArrayList, int, int, j.a.c0.c.v$c):long");
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: a */
    public Bundle mo27662a() {
        AbstractC12170i a = AbstractC12170i.m6941a();
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        a.mo6919a("bugle_sms_sync_batch_max_messages_to_scan", Sonic.AMDF_FREQUENCY);
        int i = this.f11190b.getInt("max_update");
        a.mo6919a("bugle_sms_sync_batch_size_min", 80);
        a.mo6919a("bugle_sms_sync_batch_size_max", 1000);
        int max = Math.max(80, Math.min(i, 1000));
        long j = this.f11190b.getLong("lower_bound");
        long j2 = this.f11190b.getLong("upper_bound");
        C12153d0.m6985c("MessagingAppDataModel", "SyncMessagesAction: Starting batch for messages from " + j + " to " + j2 + " (message update limit = " + max + ", message scan limit = " + Sonic.AMDF_FREQUENCY + ")");
        C11565v g = AbstractC11528g.m9259k().mo9243g();
        C11565v.C11568c c = g.m9126c();
        c.m9113a();
        ArrayList<DatabaseMessages.SmsMessage> arrayList = new ArrayList<>();
        LongSparseArray<DatabaseMessages.MmsMessage> longSparseArray = new LongSparseArray<>();
        ArrayList<DatabaseMessages.LocalDatabaseMessage> arrayList2 = new ArrayList<>();
        long a2 = g.m9123d(j2) ? m27656a(f, new C11580e(j, j2), arrayList, longSparseArray, arrayList2, Sonic.AMDF_FREQUENCY, max, c) : Long.MIN_VALUE;
        Bundle bundle = new Bundle();
        if (a2 > Long.MIN_VALUE) {
            ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
            for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                arrayList3.add(longSparseArray.valueAt(i2));
            }
            bundle.putParcelableArrayList("sms_to_add", arrayList);
            bundle.putParcelableArrayList("mms_to_add", arrayList3);
            bundle.putParcelableArrayList("messages_to_delete", arrayList2);
        }
        bundle.putLong("last_timestamp", a2);
        return bundle;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: a */
    public Object mo27660a(Bundle bundle) {
        long j;
        long j2 = bundle.getLong("last_timestamp");
        long j3 = this.f11190b.getLong("lower_bound");
        long j4 = this.f11190b.getLong("upper_bound");
        int i = this.f11190b.getInt("max_update");
        long j5 = this.f11190b.getLong("start_timestamp");
        C11565v g = AbstractC11528g.m9259k().mo9243g();
        if (!g.m9123d(j4)) {
            C12153d0.m6981e("MessagingAppDataModel", "SyncMessagesAction: Ignoring orphan sync batch for messages from " + j3 + " to " + j4);
            return null;
        }
        boolean c = g.m9125c(j2);
        if (j2 == Long.MIN_VALUE) {
            C12153d0.m6987b("MessagingAppDataModel", "SyncMessagesAction: Sync failed - terminating");
            AbstractC12178k b = AbstractC12178k.m6912b();
            b.mo6904b("last_sync_time_millis", j5);
            b.mo6904b("last_full_sync_time_millis", j5);
            g.m9135a();
            return null;
        } else if (c) {
            C12153d0.m6981e("MessagingAppDataModel", "SyncMessagesAction: Redoing dirty sync batch of messages from " + j3 + " to " + j4);
            SyncMessagesAction syncMessagesAction = new SyncMessagesAction(j3, j4, i, j5);
            g.m9119f(j4);
            m27755a((Action) syncMessagesAction);
            return null;
        } else {
            C13980g.f31390a.m9459a("has_sync_before", (String) true);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("sms_to_add");
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("mms_to_add");
            ArrayList parcelableArrayList3 = bundle.getParcelableArrayList("messages_to_delete");
            int size = parcelableArrayList.size() + parcelableArrayList2.size() + parcelableArrayList3.size();
            if (size > 0) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                new C11585f(parcelableArrayList, parcelableArrayList2, parcelableArrayList3, g.m9126c()).m9054a();
                j = SystemClock.elapsedRealtime() - elapsedRealtime;
                C12153d0.m6985c("MessagingAppDataModel", "SyncMessagesAction: Updated local database (took " + j + " ms). Added " + parcelableArrayList.size() + " SMS, added " + parcelableArrayList2.size() + " MMS, deleted " + parcelableArrayList3.size() + " messages.");
                MessagingContentProvider.m27767f();
                StringBuilder sb = new StringBuilder();
                sb.append("sms] sync} ");
                sb.append(parcelableArrayList.size());
                sb.append(" sms to add, ");
                sb.append(parcelableArrayList2.size());
                sb.append(" mms to add, ");
                sb.append(parcelableArrayList3.size());
                sb.append(" messages to delete");
                C14080m2.m2616a(sb.toString());
            } else {
                if (C12153d0.m6992a("MessagingAppDataModel", 3)) {
                    C12153d0.m6991a("MessagingAppDataModel", "SyncMessagesAction: No local database updates to make");
                }
                if (!g.m9130b()) {
                    MessagingContentProvider.m27765g();
                    MessagingContentProvider.m27769e();
                }
                j = 0;
            }
            if (j2 < 0 || j2 < j3) {
                AbstractC12178k b2 = AbstractC12178k.m6912b();
                b2.mo6904b("last_sync_time_millis", j5);
                int i2 = (j3 > 0L ? 1 : (j3 == 0L ? 0 : -1));
                if (i2 < 0) {
                    b2.mo6904b("last_full_sync_time_millis", j5);
                }
                long currentTimeMillis = System.currentTimeMillis();
                C11580e eVar = new C11580e(j5, currentTimeMillis);
                C11580e eVar2 = new C11580e(-1L, j5);
                C11534l f = AbstractC11528g.m9259k().mo9244f();
                if (!eVar.m9070a(f)) {
                    C12153d0.m6985c("MessagingAppDataModel", "SyncMessagesAction: Changed messages after sync; scheduling an incremental sync now.");
                    SyncMessagesAction syncMessagesAction2 = new SyncMessagesAction(j5, currentTimeMillis, 0, j5);
                    g.m9119f(currentTimeMillis);
                    m27755a((Action) syncMessagesAction2);
                } else if (i2 < 0 || eVar2.m9070a(f)) {
                    C12153d0.m6985c("MessagingAppDataModel", "SyncMessagesAction: All messages now in sync");
                    g.m9135a();
                } else {
                    C12153d0.m6981e("MessagingAppDataModel", "SyncMessagesAction: Changed messages before sync batch; scheduling a full sync now.");
                    SyncMessagesAction syncMessagesAction3 = new SyncMessagesAction(-1L, j5, 0, j5);
                    g.m9119f(j5);
                    m27755a((Action) syncMessagesAction3);
                }
            } else {
                if (C12153d0.m6992a("MessagingAppDataModel", 3)) {
                    C12153d0.m6991a("MessagingAppDataModel", "SyncMessagesAction: More messages to sync; scheduling next sync batch now.");
                }
                long j6 = 1 + j2;
                SyncMessagesAction syncMessagesAction4 = new SyncMessagesAction(j3, j6, m27655b(size, j), j5);
                g.m9119f(j6);
                m27755a((Action) syncMessagesAction4);
            }
            boolean z = true;
            if (!m27749c()) {
                z = !g.m9124d();
            }
            C12151d.m6999b(z);
            return null;
        }
    }

    /* renamed from: a */
    public final String m27657a(DatabaseMessages.MmsMessage mmsMessage, C11565v.C11568c cVar) {
        List<String> a = cVar.m9112a(mmsMessage.f11312i);
        C12151d.m7000b(a);
        C12151d.m6999b(a.size() > 0);
        if (a.size() == 1 && a.get(0).equals(ParticipantData.m27546L())) {
            C12153d0.m6981e("MessagingAppDataModel", "SyncMessagesAction: MMS message " + mmsMessage.f11304a + " has unknown sender (thread id = " + mmsMessage.f11312i + ")");
        }
        return C11834j.m8108a(a, mmsMessage.f11304a);
    }

    /* renamed from: a */
    public final void m27659a(LongSparseArray<DatabaseMessages.MmsMessage> longSparseArray) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        int size = longSparseArray.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 128;
            int min = Math.min(i2, size) - i;
            String format = String.format(Locale.US, "%s != '%s' AND %s IN %s", "ct", "application/smil", "mid", C11834j.m8088c(min));
            String[] strArr = new String[min];
            for (int i3 = 0; i3 < min; i3++) {
                strArr[i3] = Long.toString(longSparseArray.valueAt(i + i3).m27475q());
            }
            Cursor a2 = C11689c.m8598a(a, a.getContentResolver(), C11834j.f26544i, DatabaseMessages.MmsPart.f11327j, format, strArr, null);
            if (a2 != null) {
                while (a2.moveToNext()) {
                    try {
                        DatabaseMessages.MmsPart b = DatabaseMessages.MmsPart.m27466b(a2, false);
                        DatabaseMessages.MmsMessage mmsMessage = longSparseArray.get(b.f11336c);
                        if (mmsMessage != null) {
                            mmsMessage.m27478a(b);
                        }
                    } finally {
                        a2.close();
                    }
                }
            }
            i = i2;
        }
    }

    /* renamed from: a */
    public final void m27658a(LongSparseArray<DatabaseMessages.MmsMessage> longSparseArray, C11565v.C11568c cVar) {
        for (int i = 0; i < longSparseArray.size(); i++) {
            DatabaseMessages.MmsMessage valueAt = longSparseArray.valueAt(i);
            boolean z = true;
            if (valueAt.f11306c == 1) {
                z = false;
            }
            String str = null;
            if (!z) {
                String a = m27657a(valueAt, cVar);
                str = a;
                if (a == null) {
                    C12153d0.m6981e("MessagingAppDataModel", "SyncMessagesAction: Could not find sender of incoming MMS message " + valueAt.mo27454c() + "; using 'unknown sender' instead");
                    str = ParticipantData.m27546L();
                }
            }
            valueAt.m27477a(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27648b() {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.action.SyncMessagesAction.mo27648b():java.lang.Object");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}
