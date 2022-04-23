package p459j.p460a.p474c0.p475c;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.NotificationCompat;
import androidx.media2.session.MediaSessionImplBase;
import com.flurry.sdk.C3496r;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.C11560u;
import p459j.p460a.p474c0.p475c.p478y.C11608e;
import p459j.p460a.p474c0.p475c.p478y.C11613i;
import p459j.p460a.p474c0.p475c.p478y.C11636q;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12155e;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p474c0.p499h.C12216t0;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p590x4.C14305v;
/* renamed from: j.a.c0.c.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/c.class */
public class C11521c {

    /* renamed from: a */
    public static final ArrayMap<String, String> f25731a = new ArrayMap<>();

    /* renamed from: b */
    public static final String[] f25732b = {"_id", "received_timestamp", "sender_id"};

    /* renamed from: a */
    public static MessageData m9381a(C11534l lVar, Uri uri) {
        Throwable th;
        C12151d.m7002b();
        Cursor cursor = null;
        MessageData messageData = null;
        try {
            cursor = lVar.m9216a(NotificationCompat.CarExtender.KEY_MESSAGES, MessageData.m27631O(), "sms_message_uri=?", new String[]{uri.toString()}, null, null, null);
            try {
                C12151d.m7011a(cursor.getCount(), 0, 1);
                if (cursor.moveToFirst()) {
                    messageData = new MessageData();
                    messageData.m27626a(cursor);
                }
                if (cursor != null) {
                    cursor.close();
                }
                return messageData;
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: a */
    public static String m9392a(int i) {
        return "SELF(" + i + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [androidx.collection.ArrayMap<java.lang.String, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r12v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* renamed from: a */
    public static String m9387a(C11534l lVar, int i, String str) {
        String str2;
        Cursor a;
        Cursor cursor = f25731a;
        synchronized (cursor) {
            str2 = f25731a.get(str);
        }
        if (str2 != null) {
            return str2;
        }
        boolean z = true;
        try {
            if (i != -2) {
                a = lVar.m9216a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, new String[]{"_id"}, "sub_id=?", new String[]{Integer.toString(i)}, null, null, null);
            } else {
                a = lVar.m9216a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, new String[]{"_id"}, "normalized_destination=? AND sub_id=?", new String[]{str == null ? "" : str, Integer.toString(i)}, null, null, null);
            }
            String str3 = str2;
            if (cursor.moveToFirst()) {
                if (cursor.getCount() != 1) {
                    z = false;
                }
                C12151d.m6999b(z);
                str3 = cursor.getString(0);
                cursor = cursor;
                synchronized (f25731a) {
                    f25731a.put(str, str3);
                }
            }
            return str3;
        } finally {
            if (cursor != 0) {
                cursor.close();
            }
        }
    }

    /* renamed from: a */
    public static String m9386a(C11534l lVar, long j) {
        Throwable th;
        Cursor a;
        C12151d.m7002b();
        Cursor cursor = null;
        String str = null;
        try {
            a = lVar.m9217a("SELECT _id FROM conversations WHERE sms_thread_id=" + j, (String[]) null);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (a.moveToFirst()) {
                boolean z = true;
                if (a.getCount() != 1) {
                    z = false;
                }
                C12151d.m6999b(z);
                str = a.getString(0);
            }
            if (a != null) {
                a.close();
            }
            return str;
        } catch (Throwable th3) {
            th = th3;
            cursor = a;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static String m9385a(C11534l lVar, long j, String str) {
        C12151d.m7002b();
        return m9382a(lVar, j, str, (List<ParticipantData>) m9357a(C11834j.m8087c(j)), false, false, (String) null);
    }

    /* renamed from: a */
    public static String m9384a(C11534l lVar, long j, String str, ParticipantData participantData) {
        C12151d.m7002b();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(participantData);
        return m9382a(lVar, j, str, (List<ParticipantData>) arrayList, false, false, (String) null);
    }

    /* renamed from: a */
    public static String m9383a(C11534l lVar, long j, String str, String str2, List<ParticipantData> list, boolean z, boolean z2, boolean z3, String str3) {
        C12151d.m6999b(lVar.m9211d().inTransaction());
        boolean z4 = false;
        int i = 0;
        for (ParticipantData participantData : list) {
            C12151d.m6999b(!participantData.m27551G());
            if (participantData.m27552F()) {
                i = 1;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("sms_thread_id", Long.valueOf(j));
        contentValues.put(C11613i.C11615b.f26064f, (Long) 0L);
        contentValues.put("current_self_id", str2);
        contentValues.put(C11613i.C11615b.f26068j, Integer.valueOf(list.size()));
        contentValues.put("include_email_addr", Integer.valueOf(i));
        if (z) {
            contentValues.put(C11613i.C11615b.f26066h, (Integer) 2);
        }
        if (z2) {
            contentValues.put("notification_enabled", (Integer) 0);
        }
        if (z3) {
            contentValues.put("notification_vibration", (Integer) 0);
        }
        if (!TextUtils.isEmpty(str3)) {
            contentValues.put("notification_sound_uri", str3);
        }
        m9391a(contentValues, list);
        long a = lVar.m9219a("conversations", (String) null, contentValues);
        int i2 = (a > (-1L) ? 1 : (a == (-1L) ? 0 : -1));
        if (i2 != 0) {
            z4 = true;
        }
        C12151d.m6999b(z4);
        if (i2 == 0) {
            C12153d0.m6987b("MessagingAppDb", "BugleDatabaseOperations : failed to insert conversation into table");
            return null;
        }
        String l = Long.toString(a);
        for (ParticipantData participantData2 : list) {
            m9375a(lVar, participantData2, l);
        }
        m9363a(lVar, l, m9332h(lVar, l));
        return l;
    }

    /* renamed from: a */
    public static String m9382a(C11534l lVar, long j, String str, List<ParticipantData> list, boolean z, boolean z2, String str2) {
        C12151d.m7002b();
        String a = m9386a(lVar, j);
        String str3 = a;
        if (a == null) {
            String a2 = C11608e.m8958a(list);
            ParticipantData a3 = ParticipantData.m27544a(-1);
            lVar.m9227a();
            try {
                str3 = m9383a(lVar, j, a2, m9376a(lVar, a3), list, str != null && C12928g.m5000a().m4985a(str, 2), z, z2, str2);
                lVar.m9210e();
            } finally {
                lVar.m9214b();
            }
        }
        return str3;
    }

    /* renamed from: a */
    public static String m9377a(C11534l lVar, MessagePartData messagePartData, String str) {
        C12151d.m6999b(lVar.m9211d().inTransaction());
        C12151d.m6999b(!TextUtils.isEmpty(messagePartData.m27566r()));
        long executeInsert = messagePartData.m27578a(lVar, str).executeInsert();
        C12151d.m7010a(executeInsert, 0L, Long.MAX_VALUE);
        String l = Long.toString(executeInsert);
        messagePartData.m27571b(l);
        return l;
    }

    /* renamed from: a */
    public static String m9376a(C11534l lVar, ParticipantData participantData) {
        String str;
        int i;
        C12151d.m7002b();
        C12151d.m6999b(lVar.m9211d().inTransaction());
        if (participantData.m27551G()) {
            i = participantData.m27517z();
            str = m9392a(i);
        } else {
            str = participantData.m27521v();
            i = -2;
        }
        C12151d.m7000b(str);
        String a = m9387a(lVar, i, str);
        if (a != null) {
            return a;
        }
        if (!participantData.m27554D()) {
            C11560u.m9146c(lVar, participantData);
        }
        String l = Long.toString(lVar.m9219a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, (String) null, participantData.m27548J()));
        C12151d.m7000b(str);
        synchronized (f25731a) {
            f25731a.put(str, l);
        }
        return l;
    }

    /* renamed from: a */
    public static String m9369a(C11534l lVar, String str, @Nullable MessageData messageData, int i) {
        Throwable th;
        Cursor cursor;
        C12151d.m7002b();
        C12151d.m7000b(str);
        C12151d.m7011a(i, 1, 2);
        lVar.m9227a();
        try {
            SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
            Cursor a = lVar.m9216a("draft_parts_view", MessagePartData.m27581E(), "conversation_id =?", new String[]{str}, null, null, null);
            while (a.moveToNext()) {
                try {
                    MessagePartData b = MessagePartData.m27572b(a);
                    if (b.m27562v()) {
                        simpleArrayMap.put(b.m27567q(), b);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = a;
                    lVar.m9214b();
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            boolean d = m9339d(lVar, str);
            if (messageData != null && d) {
                for (MessagePartData messagePartData : messageData.m27643C()) {
                    if (messagePartData.m27562v()) {
                        simpleArrayMap.remove(messagePartData.m27567q());
                    }
                }
            }
            for (int i2 = 0; i2 < simpleArrayMap.size(); i2++) {
                ((MessagePartData) simpleArrayMap.valueAt(i2)).m27573b();
            }
            lVar.m9218a(NotificationCompat.CarExtender.KEY_MESSAGES, "message_status=? AND conversation_id=?", new String[]{Integer.toString(3), str});
            String str2 = null;
            if (i == 2) {
                str2 = null;
                if (messageData != null) {
                    str2 = null;
                    if (messageData.m27633M()) {
                        str2 = null;
                        if (d) {
                            C12151d.m7012a(3, messageData.m27635K());
                            m9380a(lVar, messageData);
                            str2 = messageData.m27589w();
                        }
                    }
                }
            }
            if (d) {
                m9370a(lVar, str, messageData);
                if (!(messageData == null || messageData.m27638H() == null)) {
                    m9342c(lVar, str, messageData.m27638H());
                }
            }
            lVar.m9210e();
            lVar.m9214b();
            if (a != null) {
                a.close();
            }
            if (C12153d0.m6992a("MessagingAppDb", 2)) {
                C12153d0.m6983d("MessagingAppDb", "Updated draft message " + str2 + " for conversation " + str);
            }
            return str2;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public static ArrayList<C11613i> m9393a() {
        Context a = AbstractC11516a.m9413n().mo9412a();
        ArrayList<C11613i> arrayList = new ArrayList<>();
        try {
            Cursor query = a.getContentResolver().query(MessagingContentProvider.f11184l, C11613i.f26047x.m8861a(), "archive_status =?", new String[]{Integer.toString(2)}, "sort_timestamp DESC");
            if (query != null) {
                while (query.moveToNext()) {
                    C11613i iVar = new C11613i();
                    iVar.m8871a(query);
                    arrayList.add(iVar);
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLException e) {
            C13973d4.m2952a(e);
        }
        return arrayList;
    }

    @WorkerThread
    /* renamed from: a */
    public static ArrayList<String> m9389a(C11534l lVar) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Cursor a = lVar.m9217a("SELECT _id FROM conversations", new String[0]);
            if (a != null) {
                while (a.moveToNext()) {
                    arrayList.add(a.getString(0));
                }
            }
            if (a != null) {
                a.close();
            }
        } catch (SQLException e) {
            C13973d4.m2952a(e);
        }
        return arrayList;
    }

    @WorkerThread
    /* renamed from: a */
    public static ArrayList<C11613i> m9388a(C11534l lVar, int i) {
        String str;
        ArrayList<C11613i> arrayList = new ArrayList<>();
        if (1 == i) {
            str = " WHERE messages.message_status NOT IN (3,-1) AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "message_filter_type IN (" + i + ",0)";
        } else {
            str = " WHERE messages.message_status NOT IN (3,-1) AND " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "message_filter_type=" + i;
        }
        try {
            Cursor a = lVar.m9217a("SELECT conversations._id, conversations.name, conversations.icon, parts.text, conversations.preview_content_type, messages.received_timestamp, conversations.participant_normalized_destination, conversations.archive_status, conversations.subject_text, conversations.participant_count, SUM(case when messages.read=0 and 100<=messages.message_status then 1 else 0 end) as unread, max(messages.received_timestamp) FROM messages INNER JOIN conversations ON conversations._id=messages.conversation_id INNER JOIN parts ON parts.message_id=messages._id" + str + " GROUP BY conversations" + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "_id ORDER BY " + NotificationCompat.CarExtender.KEY_MESSAGES + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + "received_timestamp DESC", (String[]) null);
            if (a != null) {
                while (a.moveToNext()) {
                    C11613i iVar = new C11613i();
                    iVar.m8871a(a);
                    arrayList.add(iVar);
                }
            }
            if (a != null) {
                a.close();
            }
        } catch (SQLException e) {
            C13973d4.m2952a(e);
        }
        return arrayList;
    }

    /* renamed from: a */
    public static ArrayList<ParticipantData> m9357a(List<String> list) {
        ArrayList<ParticipantData> arrayList = new ArrayList<>();
        if (list != null) {
            for (String str : list) {
                arrayList.add(ParticipantData.m27528h(str));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static HashSet<String> m9358a(ArrayList<String> arrayList) {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        HashSet<String> hashSet = new HashSet<>();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            Cursor a = f.m9216a("conversation_participants", C11560u.C11564d.f25845a, "participant_id=?", new String[]{it.next()}, null, null, null);
            if (a != null) {
                while (a.moveToNext()) {
                    try {
                        hashSet.add(a.getString(1));
                    } finally {
                        a.close();
                    }
                }
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public static void m9391a(ContentValues contentValues, List<ParticipantData> list) {
        long j;
        String str;
        if (list != null && !list.isEmpty()) {
            contentValues.put("icon", C12155e.m6969a(list).toString());
            int size = list.size();
            String str2 = null;
            if (size == 1) {
                ParticipantData participantData = list.get(0);
                j = participantData.m27536b();
                str2 = participantData.m27522u();
                str = participantData.m27521v();
            } else {
                j = 0;
                str = null;
            }
            contentValues.put("participant_contact_id", Long.valueOf(j));
            contentValues.put("participant_lookup_key", str2);
            contentValues.put(C11613i.C11615b.f26065g, str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0097, code lost:
        if (p459j.p460a.p582w0.C14217x3.m2160b(r9) == false) goto L_0x009a;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m9390a(gogolook.callgogolook2.messaging.datamodel.data.MessageData r4, boolean r5, android.content.ContentValues r6) {
        /*
            r0 = r6
            java.lang.String r1 = "show_draft"
            r2 = r5
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            r0 = r6
            java.lang.String r1 = "snippet_text"
            r2 = r4
            java.lang.String r2 = r2.m27588x()
            r0.put(r1, r2)
            r0 = r6
            java.lang.String r1 = "subject_text"
            r2 = r4
            java.lang.String r2 = r2.m27586z()
            r0.put(r1, r2)
            r0 = r4
            java.lang.Iterable r0 = r0.m27643C()
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L_0x002b:
            r0 = r7
            boolean r0 = r0.hasNext()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006d
            r0 = r7
            java.lang.Object r0 = r0.next()
            gogolook.callgogolook2.messaging.datamodel.data.MessagePartData r0 = (gogolook.callgogolook2.messaging.datamodel.data.MessagePartData) r0
            r10 = r0
            r0 = r10
            boolean r0 = r0.m27562v()
            if (r0 == 0) goto L_0x002b
            r0 = r10
            java.lang.String r0 = r0.m27569c()
            boolean r0 = p459j.p460a.p474c0.p499h.C12205r.m6810c(r0)
            if (r0 == 0) goto L_0x002b
            r0 = r10
            android.net.Uri r0 = r0.m27567q()
            java.lang.String r0 = r0.toString()
            r9 = r0
            r0 = r10
            java.lang.String r0 = r0.m27569c()
            r10 = r0
            goto L_0x0070
        L_0x006d:
            r0 = 0
            r10 = r0
        L_0x0070:
            r0 = r10
            r7 = r0
            r0 = r4
            boolean r0 = r0.m27590v()
            if (r0 == 0) goto L_0x009e
            r0 = r10
            r7 = r0
            r0 = r10
            boolean r0 = p459j.p460a.p582w0.C14217x3.m2160b(r0)
            if (r0 == 0) goto L_0x009e
            r0 = r4
            java.lang.String r0 = r0.m27587y()
            boolean r0 = p459j.p460a.p582w0.C14217x3.m2160b(r0)
            if (r0 == 0) goto L_0x009a
            r0 = r10
            r7 = r0
            r0 = r9
            boolean r0 = p459j.p460a.p582w0.C14217x3.m2160b(r0)
            if (r0 != 0) goto L_0x009e
        L_0x009a:
            java.lang.String r0 = "application/vnd.wap.mms-message"
            r7 = r0
        L_0x009e:
            r0 = r6
            java.lang.String r1 = "preview_content_type"
            r2 = r7
            r0.put(r1, r2)
            r0 = r6
            java.lang.String r1 = "preview_uri"
            r2 = r9
            r0.put(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.C11521c.m9390a(gogolook.callgogolook2.messaging.datamodel.data.MessageData, boolean, android.content.ContentValues):void");
    }

    /* renamed from: a */
    public static void m9380a(C11534l lVar, MessageData messageData) {
        C12151d.m7002b();
        C12151d.m6999b(lVar.m9211d().inTransaction());
        long executeInsert = messageData.m27622a(lVar).executeInsert();
        C12151d.m7010a(executeInsert, 0L, Long.MAX_VALUE);
        String l = Long.toString(executeInsert);
        messageData.m27602d(l);
        for (MessagePartData messagePartData : messageData.m27643C()) {
            messagePartData.m27577a(l);
            m9377a(lVar, messagePartData, messageData.m27593s());
        }
    }

    /* renamed from: a */
    public static void m9378a(C11534l lVar, MessageData messageData, boolean z) {
        ContentResolver contentResolver = AbstractC11516a.m9413n().mo9412a().getContentResolver();
        Cursor cursor = null;
        try {
            Cursor a = lVar.m9216a("parts", MessagePartData.m27581E(), "message_id=?", new String[]{messageData.m27589w()}, null, null, null);
            while (true) {
                cursor = a;
                if (!a.moveToNext()) {
                    break;
                }
                MessagePartData b = MessagePartData.m27572b(a);
                if (!z || !b.m27562v() || C12216t0.m6758e(b.m27567q())) {
                    messageData.m27623a(b);
                } else {
                    cursor = a;
                    try {
                        ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(b.m27567q(), C3496r.f6031a);
                        if (openFileDescriptor != null) {
                            openFileDescriptor.close();
                            messageData.m27623a(b);
                        }
                    } catch (IOException e) {
                    } catch (SecurityException e2) {
                        if (C12153d0.m6992a("MessagingApp", 3)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("uri: ");
                            sb.append(b.m27567q());
                            C12153d0.m6991a("MessagingApp", sb.toString());
                        }
                    }
                }
            }
            if (a != null) {
                a.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static void m9375a(C11534l lVar, ParticipantData participantData, String str) {
        String a = m9376a(lVar, participantData);
        C12151d.m7000b(a);
        ContentValues contentValues = new ContentValues();
        contentValues.put("conversation_id", str);
        contentValues.put("participant_id", a);
        lVar.m9219a("conversation_participants", (String) null, contentValues);
    }

    /* renamed from: a */
    public static void m9370a(C11534l lVar, String str, MessageData messageData) {
        Throwable th;
        Cursor a;
        String str2;
        C12151d.m6999b(lVar.m9211d().inTransaction());
        Cursor cursor = null;
        String str3 = null;
        try {
            a = lVar.m9215a(NotificationCompat.CarExtender.KEY_MESSAGES, f25732b, "conversation_id=?", new String[]{str}, (String) null, (String) null, "received_timestamp DESC", "1");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            long j = a.moveToFirst() ? a.getLong(1) : 0L;
            if (a != null) {
                a.close();
            }
            ContentValues contentValues = new ContentValues();
            if (messageData == null || !messageData.m27633M()) {
                contentValues.put("show_draft", (Integer) 0);
                contentValues.put("draft_snippet_text", "");
                contentValues.put("draft_subject_text", "");
                contentValues.put("draft_preview_content_type", "");
                contentValues.put("draft_preview_uri", "");
            } else {
                j = Math.max(j, messageData.m27639G());
                contentValues.put("show_draft", (Integer) 1);
                contentValues.put("draft_snippet_text", messageData.m27588x());
                contentValues.put("draft_subject_text", messageData.m27586z());
                Iterator<MessagePartData> it = messageData.m27643C().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str2 = null;
                        break;
                    }
                    MessagePartData next = it.next();
                    if (next.m27562v() && C12205r.m6810c(next.m27569c())) {
                        str3 = next.m27567q().toString();
                        str2 = next.m27569c();
                        break;
                    }
                }
                contentValues.put("draft_preview_content_type", str2);
                contentValues.put("draft_preview_uri", str3);
            }
            contentValues.put(C11613i.C11615b.f26064f, Long.valueOf(j));
            m9350b(lVar, str, contentValues);
        } catch (Throwable th3) {
            th = th3;
            cursor = a;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static void m9367a(C11534l lVar, String str, String str2, long j, boolean z, String str3, boolean z2) {
        C12151d.m7002b();
        C12151d.m6999b(lVar.m9211d().inTransaction());
        ContentValues contentValues = new ContentValues();
        contentValues.put("latest_message_id", str2);
        contentValues.put(C11613i.C11615b.f26064f, Long.valueOf(j));
        if (!TextUtils.isEmpty(str3)) {
            contentValues.put("sms_service_center", str3);
        }
        MessageData r = m9322r(lVar, str2);
        m9390a(r, false, contentValues);
        if (z2) {
            m9379a(lVar, r, str, contentValues);
        }
        m9350b(lVar, str, contentValues);
        if (z2 && C14017g4.m2804t()) {
            AbstractC12126w.m7095a().mo7073a(lVar.m9212c(), str, m9334f(lVar, str));
        }
    }

    /* renamed from: a */
    public static void m9366a(C11534l lVar, String str, String str2, long j, boolean z, boolean z2) {
        C12151d.m7002b();
        m9367a(lVar, str, str2, j, z, (String) null, z2);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m9364a(C11534l lVar, String str, String str2, boolean z, boolean z2) {
        boolean z3;
        C12151d.m7002b();
        boolean z4 = true;
        if (!TextUtils.isEmpty(str2)) {
            Cursor cursor = null;
            try {
                Cursor a = lVar.m9216a("conversations", new String[]{"latest_message_id"}, "_id=?", new String[]{str}, null, null, null);
                C12151d.m7011a(a.getCount(), 0, 1);
                if (a.moveToFirst()) {
                    cursor = a;
                    z3 = TextUtils.equals(a.getString(0), str2);
                } else {
                    z3 = false;
                }
                z4 = z3;
                if (a != null) {
                    a.close();
                    z4 = z3;
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        if (z4) {
            m9348b(lVar, str, z, z2);
        }
    }

    /* renamed from: a */
    public static void m9363a(C11534l lVar, String str, List<ParticipantData> list) {
        C12151d.m6999b(lVar.m9211d().inTransaction());
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", m9346b(list));
        m9391a(contentValues, list);
        m9343c(lVar, str, contentValues);
    }

    /* renamed from: a */
    public static void m9362a(C11534l lVar, String str, boolean z) {
        C12151d.m7002b();
        ContentValues contentValues = new ContentValues();
        contentValues.put(LogsGroupRealmObject.BLOCKED, Integer.valueOf(z ? 1 : 0));
        lVar.m9220a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, contentValues, "normalized_destination IN (?,?) AND sub_id=?", new String[]{str, C14108o4.m2474l(str), Integer.toString(-2)});
    }

    /* renamed from: a */
    public static void m9361a(C11534l lVar, String str, boolean z, boolean z2) {
        String str2;
        SQLiteDoneException e;
        C12151d.m7002b();
        String str3 = null;
        try {
            str2 = m9331i(lVar, str).simpleQueryForString();
        } catch (SQLiteDoneException e2) {
            e = e2;
            str2 = null;
        }
        try {
            str3 = m9330j(lVar, str).simpleQueryForString();
        } catch (SQLiteDoneException e3) {
            e = e3;
            C12153d0.m6986b("MessagingAppDb", "BugleDatabaseOperations: Query for latest message failed", e);
            if (!TextUtils.isEmpty(str2)) {
            }
            m9348b(lVar, str, z, z2);
        }
        if (!TextUtils.isEmpty(str2) || !TextUtils.equals(str2, str3)) {
            m9348b(lVar, str, z, z2);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m9360a(String str) {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        f.m9227a();
        try {
            m9320t(f, str);
            f.m9210e();
            f.m9214b();
            MessagingContentProvider.m27764g(str);
            MessagingContentProvider.m27766f(str);
            MessagingContentProvider.m27768e(str);
        } catch (Throwable th) {
            f.m9214b();
            throw th;
        }
    }

    /* renamed from: a */
    public static void m9359a(String str, String str2, boolean z) {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        f.m9227a();
        try {
            try {
                m9362a(f, str2, z);
                String str3 = str;
                if (str == null) {
                    str3 = m9336e(f, str2);
                }
                C14080m2.m2615a("MessagingAppDb", "updateDestinationBlocked, executeAction: dest=" + str2 + ", isBlocked=" + z + ", conversationId=" + str3);
                if (str3 != null) {
                    m9351b(f, str3, z ? 2 : 0);
                }
                MessagingContentProvider.m27769e();
                f.m9210e();
            } catch (Exception e) {
                C13973d4.m2952a(e);
            }
        } finally {
            f.m9214b();
        }
    }

    /* renamed from: a */
    public static boolean m9379a(C11534l lVar, MessageData messageData, String str, ContentValues contentValues) {
        int z;
        if (!C14017g4.m2804t() || !messageData.m27591u()) {
            return false;
        }
        String f = m9334f(lVar, str);
        String H = messageData.m27638H();
        if (f == null || H == null) {
            return false;
        }
        ParticipantData g = m9333g(lVar, f);
        ParticipantData g2 = m9333g(lVar, H);
        if (!g2.m27555C() || (z = g2.m27517z()) == -1 || AbstractC12181l0.m6886t().mo6881a(g.m27517z()) == z) {
            return false;
        }
        return m9371a(lVar, g2.m27523t(), contentValues);
    }

    /* renamed from: a */
    public static boolean m9374a(C11534l lVar, String str) {
        C12151d.m7002b();
        C12151d.m6999b(lVar.m9211d().inTransaction());
        Cursor cursor = null;
        try {
            Cursor a = lVar.m9215a(NotificationCompat.CarExtender.KEY_MESSAGES, f25732b, "conversation_id=? AND message_status!=3", new String[]{str}, (String) null, (String) null, "received_timestamp DESC", "1");
            if (a.getCount() == 0) {
                lVar.m9218a("conversations", "_id=?", new String[]{str});
                StringBuilder sb = new StringBuilder();
                sb.append("BugleDatabaseOperations: Deleted empty conversation ");
                sb.append(str);
                cursor = a;
                C12153d0.m6985c("MessagingAppDb", sb.toString());
                if (a == null) {
                    return true;
                }
                a.close();
                return true;
            } else if (a == null) {
                return false;
            } else {
                a.close();
                return false;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public static boolean m9373a(C11534l lVar, String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("message_filter_type", Integer.valueOf(i));
        return m9335e(lVar, str, contentValues);
    }

    /* renamed from: a */
    public static boolean m9372a(C11534l lVar, String str, long j, int i) {
        String[] strArr;
        String[] strArr2;
        C12151d.m7002b();
        lVar.m9227a();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("message_status", (Integer) (-1));
            boolean z = -1 != i;
            String str2 = z ? "conversation_id=? AND message_filter_type=?" : "conversation_id=?";
            if (z) {
                strArr = new String[2];
                strArr[0] = str;
                strArr[1] = String.valueOf(i);
            } else {
                strArr = new String[1];
                strArr[0] = str;
            }
            if (j != Long.MAX_VALUE || z) {
                lVar.m9218a(NotificationCompat.CarExtender.KEY_MESSAGES, "message_status=? AND conversation_id=?", new String[]{Integer.toString(3), str});
                String str3 = z ? "conversation_id=? AND received_timestamp<=? AND message_filter_type=?" : "conversation_id=? AND received_timestamp<=?";
                if (z) {
                    strArr2 = new String[3];
                    strArr2[0] = str;
                    strArr2[1] = Long.toString(j);
                    strArr2[2] = String.valueOf(i);
                } else {
                    strArr2 = new String[2];
                    strArr2[0] = str;
                    strArr2[1] = Long.toString(j);
                }
                lVar.m9220a(NotificationCompat.CarExtender.KEY_MESSAGES, contentValues, str3, strArr2);
            } else {
                lVar.m9220a(NotificationCompat.CarExtender.KEY_MESSAGES, contentValues, str2, strArr);
            }
            if (C12810o.m5232m()) {
                C12810o.m5252a(str, i);
            }
            lVar.m9218a(NotificationCompat.CarExtender.KEY_MESSAGES, str2, strArr);
            lVar.m9217a("DELETE FROM parts WHERE message_id IN (SELECT _id FROM messages WHERE message_status=-1 AND conversation_id=?)", new String[]{str});
            boolean a = m9374a(lVar, str);
            lVar.m9210e();
            return a;
        } finally {
            lVar.m9214b();
        }
    }

    /* renamed from: a */
    public static boolean m9371a(C11534l lVar, String str, ContentValues contentValues) {
        Cursor cursor = null;
        try {
            Cursor a = lVar.m9216a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, new String[]{"_id"}, "_id=? AND sim_slot_id<>?", new String[]{str, String.valueOf(-1)}, null, null, null);
            if (a != null && a.getCount() > 0) {
                cursor = a;
                contentValues.put("current_self_id", str);
                if (a == null) {
                    return true;
                }
                a.close();
                return true;
            } else if (a == null) {
                return false;
            } else {
                a.close();
                return false;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static boolean m9368a(C11534l lVar, String str, String str2) {
        Cursor cursor = null;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append("=? AND ");
            sb.append("sub_id");
            sb.append("=?");
            boolean z = false;
            cursor = lVar.m9216a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, new String[]{LogsGroupRealmObject.BLOCKED}, sb.toString(), new String[]{str, Integer.toString(-2)}, null, null, null);
            C12151d.m7011a(cursor.getCount(), 0, 1);
            if (cursor.moveToFirst()) {
                cursor = cursor;
                if (cursor.getInt(0) == 1) {
                    z = true;
                }
                return z;
            } else if (cursor == null) {
                return false;
            } else {
                cursor.close();
                return false;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* renamed from: a */
    public static boolean m9365a(C11534l lVar, String str, String str2, String str3, ContentValues contentValues) {
        C12151d.m7002b();
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList(contentValues.size() + 1);
        arrayList.add(str3);
        for (String str4 : contentValues.keySet()) {
            if (sb.length() > 0) {
                sb.append(" OR ");
            }
            Object obj = contentValues.get(str4);
            sb.append(str4);
            if (obj != null) {
                sb.append(" IS NOT ?");
                arrayList.add(obj.toString());
            } else {
                sb.append(" IS NOT NULL");
            }
        }
        int a = lVar.m9220a(str, contentValues, str2 + "=? AND (" + sb.toString() + ")", (String[]) arrayList.toArray(new String[arrayList.size()]));
        if (a > 1) {
            C12153d0.m6981e("MessagingApp", "Updated more than 1 row " + a + "; " + str + " for " + str2 + " = " + str3 + " (deleted?)");
        }
        boolean z = false;
        C12151d.m7011a(a, 0, 1);
        if (a >= 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static int m9352b(C11534l lVar, String str) {
        int i;
        C12151d.m7002b();
        lVar.m9227a();
        try {
            MessageData r = m9322r(lVar, str);
            if (r != null) {
                String s = r.m27593s();
                int a = lVar.m9218a(NotificationCompat.CarExtender.KEY_MESSAGES, "_id=?", new String[]{str});
                i = a;
                if (!m9374a(lVar, s)) {
                    m9348b(lVar, s, false, false);
                    i = a;
                }
            } else {
                i = 0;
            }
            lVar.m9210e();
            return i;
        } finally {
            lVar.m9214b();
        }
    }

    /* renamed from: b */
    public static MessageData m9349b(C11534l lVar, String str, String str2) {
        Cursor cursor;
        Throwable th;
        Cursor a;
        C12151d.m7002b();
        lVar.m9227a();
        MessageData messageData = null;
        try {
            a = lVar.m9216a(NotificationCompat.CarExtender.KEY_MESSAGES, MessageData.m27631O(), "message_status=? AND conversation_id=?", new String[]{Integer.toString(3), str}, null, null, null);
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        try {
            C12151d.m7011a(a.getCount(), 0, 1);
            if (a.moveToFirst()) {
                messageData = new MessageData();
                messageData.m27625a(a, str2);
                m9378a(lVar, messageData, true);
                for (MessagePartData messagePartData : messageData.m27643C()) {
                    messagePartData.m27571b((String) null);
                    messagePartData.m27577a((String) null);
                }
                messageData.m27602d((String) null);
            }
            lVar.m9210e();
            lVar.m9214b();
            if (a != null) {
                a.close();
            }
            return messageData;
        } catch (Throwable th3) {
            th = th3;
            cursor = a;
            lVar.m9214b();
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: b */
    public static ParticipantData m9354b(C11534l lVar, int i) {
        C12151d.m7002b();
        lVar.m9227a();
        try {
            ParticipantData g = m9333g(lVar, m9376a(lVar, ParticipantData.m27544a(i)));
            lVar.m9210e();
            return g;
        } finally {
            lVar.m9214b();
        }
    }

    /* renamed from: b */
    public static String m9346b(List<ParticipantData> list) {
        return C11608e.m8958a(list);
    }

    @WorkerThread
    /* renamed from: b */
    public static ArrayList<C11613i> m9356b() {
        Context a = AbstractC11516a.m9413n().mo9412a();
        ArrayList<C11613i> arrayList = new ArrayList<>();
        try {
            Cursor query = a.getContentResolver().query(MessagingContentProvider.f11184l, C11613i.f26047x.m8861a(), null, null, "sort_timestamp DESC");
            if (query != null) {
                while (query.moveToNext()) {
                    C11613i iVar = new C11613i();
                    iVar.m8871a(query);
                    arrayList.add(iVar);
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLException e) {
            C13973d4.m2952a(e);
        }
        return arrayList;
    }

    @WorkerThread
    /* renamed from: b */
    public static ArrayList<C11613i> m9355b(C11534l lVar) {
        return m9388a(lVar, 1);
    }

    /* renamed from: b */
    public static void m9353b(C11534l lVar, MessageData messageData) {
        C12151d.m7002b();
        C12151d.m6999b(lVar.m9211d().inTransaction());
        if (m9322r(lVar, messageData.m27589w()) != null) {
            m9344c(lVar, messageData.m27589w());
            for (MessagePartData messagePartData : messageData.m27643C()) {
                messagePartData.m27571b((String) null);
                messagePartData.m27577a(messageData.m27589w());
                m9377a(lVar, messagePartData, messageData.m27593s());
            }
            ContentValues contentValues = new ContentValues();
            messageData.m27627a(contentValues);
            m9335e(lVar, messageData.m27589w(), contentValues);
        }
    }

    /* renamed from: b */
    public static void m9351b(C11534l lVar, String str, int i) {
        C12151d.m7002b();
        C12151d.m6999b(lVar.m9211d().inTransaction());
        ContentValues contentValues = new ContentValues();
        contentValues.put(C11613i.C11615b.f26066h, Integer.valueOf(i));
        m9343c(lVar, str, contentValues);
    }

    /* renamed from: b */
    public static void m9350b(C11534l lVar, String str, ContentValues contentValues) {
        C12151d.m7002b();
        C12151d.m6999b(m9343c(lVar, str, contentValues));
    }

    /* renamed from: b */
    public static void m9348b(C11534l lVar, String str, boolean z, boolean z2) {
        C12151d.m7002b();
        C12151d.m6999b(lVar.m9211d().inTransaction());
        Cursor cursor = null;
        try {
            Cursor a = lVar.m9215a(NotificationCompat.CarExtender.KEY_MESSAGES, f25732b, "conversation_id=? AND message_status!=3", new String[]{str}, (String) null, (String) null, "received_timestamp DESC", "1");
            if (a.moveToFirst()) {
                cursor = a;
                m9366a(lVar, str, a.getString(0), a.getLong(1), m9323q(lVar, a.getString(2)) || z2, z);
            }
            if (a != null) {
                a.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: b */
    public static void m9347b(ArrayList<String> arrayList) {
        C12151d.m7002b();
        HashSet<String> a = m9358a(arrayList);
        if (a.size() > 0) {
            Iterator<String> it = a.iterator();
            while (it.hasNext()) {
                m9360a(it.next());
            }
            MessagingContentProvider.m27769e();
            if (C12153d0.m6992a("MessagingAppDb", 2)) {
                C12153d0.m6983d("MessagingAppDb", "Number of conversations refreshed:" + a.size());
            }
        }
    }

    @WorkerThread
    /* renamed from: c */
    public static ArrayList<C11613i> m9345c(C11534l lVar) {
        return m9388a(lVar, 2);
    }

    /* renamed from: c */
    public static ArrayList<String> m9341c(List<ParticipantData> list) {
        C12151d.m7002b();
        ArrayList<String> arrayList = new ArrayList<>();
        for (ParticipantData participantData : list) {
            arrayList.add(participantData.m27519x());
        }
        return arrayList;
    }

    /* renamed from: c */
    public static void m9344c(C11534l lVar, String str) {
        C12151d.m7011a(lVar.m9218a("parts", "message_id =?", new String[]{str}), 0, Integer.MAX_VALUE);
    }

    /* renamed from: c */
    public static void m9342c(C11534l lVar, String str, String str2) {
        C12151d.m7002b();
        C12151d.m6999b(lVar.m9211d().inTransaction());
        ContentValues contentValues = new ContentValues();
        if (m9371a(lVar, str2, contentValues)) {
            m9343c(lVar, str, contentValues);
        }
    }

    /* renamed from: c */
    public static boolean m9343c(C11534l lVar, String str, ContentValues contentValues) {
        C12151d.m7002b();
        return m9365a(lVar, "conversations", "_id", str, contentValues);
    }

    @WorkerThread
    /* renamed from: d */
    public static Map<String, C11636q> m9340d(C11534l lVar) {
        HashMap hashMap = new HashMap();
        Cursor a = lVar.m9217a("SELECT messages._id, messages.conversation_id, conversations.participant_contact_id, messages.message_status, messages.message_protocol, parts.text FROM messages INNER JOIN conversations ON messages.conversation_id=conversations._id INNER JOIN parts ON messages._id=parts.message_id WHERE messages.message_filter_type=?", new String[]{String.valueOf(0)});
        if (a != null) {
            while (a.moveToNext()) {
                try {
                    C11636q qVar = new C11636q();
                    qVar.m8743a(a);
                    hashMap.put(a.getString(0), qVar);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (a != null) {
                            try {
                                a.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            }
        }
        if (a != null) {
            a.close();
        }
        return hashMap;
    }

    /* renamed from: d */
    public static void m9338d(C11534l lVar, String str, ContentValues contentValues) {
        C12151d.m7002b();
        C12151d.m6999b(m9335e(lVar, str, contentValues));
    }

    /* renamed from: d */
    public static void m9337d(List<ParticipantData> list) {
        C12151d.m7002b();
        if (list.size() > 0) {
            HashSet hashSet = new HashSet();
            for (int size = list.size() - 1; size >= 0; size--) {
                String v = list.get(size).m27521v();
                if (!hashSet.contains(v)) {
                    hashSet.add(v);
                } else {
                    list.remove(size);
                }
            }
            if (list.size() > 1) {
                HashSet<String> i = AbstractC12181l0.m6886t().mo6872i();
                int i2 = 0;
                for (ParticipantData participantData : list) {
                    if (i.contains(participantData.m27521v())) {
                        i2++;
                    }
                }
                if (i2 < list.size()) {
                    for (int size2 = list.size() - 1; size2 >= 0; size2--) {
                        if (i.contains(list.get(size2).m27521v())) {
                            list.remove(size2);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public static boolean m9339d(C11534l lVar, String str) {
        Cursor cursor = null;
        boolean z = false;
        try {
            cursor = lVar.m9216a("conversations", new String[0], "_id=?", new String[]{str}, null, null, null);
            cursor = cursor;
            if (cursor.getCount() == 1) {
                z = true;
            }
            return z;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* renamed from: e */
    public static String m9336e(C11534l lVar, String str) {
        Throwable th;
        C12151d.m7002b();
        Cursor cursor = null;
        try {
            cursor = lVar.m9216a("conversations", new String[]{"_id"}, "participant_normalized_destination IN (?,?)", new String[]{str, C14108o4.m2474l(str)}, null, null, null);
            try {
                C12151d.m7011a(cursor.getCount(), 0, 1);
                if (cursor.moveToFirst()) {
                    String string = cursor.getString(0);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return string;
                } else if (cursor == null) {
                    return null;
                } else {
                    cursor.close();
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: e */
    public static boolean m9335e(C11534l lVar, String str, ContentValues contentValues) {
        C12151d.m7002b();
        return m9365a(lVar, NotificationCompat.CarExtender.KEY_MESSAGES, "_id", str, contentValues);
    }

    /* renamed from: f */
    public static String m9334f(C11534l lVar, String str) {
        Throwable th;
        C12151d.m7002b();
        Cursor cursor = null;
        try {
            cursor = lVar.m9216a("conversations", new String[]{"current_self_id"}, "_id=?", new String[]{str}, null, null, null);
            try {
                C12151d.m7011a(cursor.getCount(), 0, 1);
                if (cursor.moveToFirst()) {
                    String string = cursor.getString(0);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return string;
                } else if (cursor == null) {
                    return null;
                } else {
                    cursor.close();
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: g */
    public static ParticipantData m9333g(C11534l lVar, String str) {
        Throwable th;
        C12151d.m7002b();
        Cursor cursor = null;
        ParticipantData participantData = null;
        try {
            cursor = lVar.m9216a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, ParticipantData.C4657b.f11256a, "_id =?", new String[]{str}, null, null, null);
            try {
                C12151d.m7011a(cursor.getCount(), 0, 1);
                if (cursor.moveToFirst()) {
                    participantData = ParticipantData.m27542a(cursor);
                }
                if (cursor != null) {
                    cursor.close();
                }
                return participantData;
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: h */
    public static ArrayList<ParticipantData> m9332h(C11534l lVar, String str) {
        C12151d.m7002b();
        ArrayList<ParticipantData> arrayList = new ArrayList<>();
        Cursor cursor = null;
        try {
            cursor = lVar.m9216a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, ParticipantData.C4657b.f11256a, "_id IN ( SELECT participant_id AS _id FROM conversation_participants WHERE conversation_id =? )", new String[]{str}, null, null, null);
            while (true) {
                cursor = cursor;
                if (!cursor.moveToNext()) {
                    break;
                }
                arrayList.add(ParticipantData.m27542a(cursor));
            }
            return arrayList;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* renamed from: i */
    public static SQLiteStatement m9331i(C11534l lVar, String str) {
        C12151d.m7002b();
        SQLiteStatement a = lVar.m9226a(2, "SELECT latest_message_id FROM conversations WHERE _id=? LIMIT 1");
        a.clearBindings();
        a.bindString(1, str);
        return a;
    }

    /* renamed from: j */
    public static SQLiteStatement m9330j(C11534l lVar, String str) {
        C12151d.m7002b();
        SQLiteStatement a = lVar.m9226a(3, "SELECT _id FROM messages WHERE conversation_id=? ORDER BY received_timestamp DESC LIMIT 1");
        a.clearBindings();
        a.bindString(1, str);
        return a;
    }

    /* renamed from: k */
    public static ArrayList<String> m9329k(C11534l lVar, String str) {
        C12151d.m7002b();
        ArrayList<ParticipantData> h = m9332h(lVar, str);
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<ParticipantData> it = h.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().m27519x());
        }
        return arrayList;
    }

    /* renamed from: l */
    public static int m9328l(C11534l lVar, String str) {
        ParticipantData g = m9333g(lVar, str);
        if (g == null) {
            return -1;
        }
        C12151d.m6999b(g.m27551G());
        return g.m27517z();
    }

    @androidx.annotation.Nullable
    @WorkerThread
    /* renamed from: m */
    public static C14305v.C14306a m9327m(C11534l lVar, String str) {
        Throwable th;
        C12151d.m7002b();
        C14305v.C14306a aVar = null;
        C14305v.C14306a aVar2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Cursor a = lVar.m9217a("SELECT MAX(messages._id), parts.text, messages.received_timestamp, messages.read, messages.message_status FROM messages INNER JOIN parts ON messages._id=parts.message_id WHERE messages.conversation_id=? AND messages.message_protocol=0", new String[]{str});
            try {
                if (a.moveToFirst()) {
                    aVar2 = new C14305v.C14306a();
                    try {
                        aVar2.m1631a(a);
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                aVar = aVar2;
                if (a != null) {
                    a.close();
                    aVar = aVar2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e) {
            C13973d4.m2952a(e);
        }
        return aVar;
    }

    /* renamed from: n */
    public static String m9326n(C11534l lVar, String str) {
        Throwable th;
        C12151d.m7002b();
        Cursor cursor = null;
        try {
            cursor = lVar.m9216a("conversations", new String[]{"sms_service_center"}, "_id=?", new String[]{str}, null, null, null);
            try {
                C12151d.m7011a(cursor.getCount(), 0, 1);
                if (cursor.moveToFirst()) {
                    String string = cursor.getString(0);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return string;
                } else if (cursor == null) {
                    return null;
                } else {
                    cursor.close();
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006a A[DONT_GENERATE] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m9325o(p459j.p460a.p474c0.p475c.C11534l r9, java.lang.String r10) {
        /*
            p459j.p460a.p474c0.p499h.C12151d.m7002b()
            r0 = 0
            r11 = r0
            r0 = 1
            r12 = r0
            r0 = r9
            java.lang.String r1 = "conversations"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x0073
            r3 = r2
            r4 = 0
            java.lang.String r5 = "sms_thread_id"
            r3[r4] = r5     // Catch: all -> 0x0073
            java.lang.String r3 = "_id =?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: all -> 0x0073
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: all -> 0x0073
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.m9216a(r1, r2, r3, r4, r5, r6, r7)     // Catch: all -> 0x0073
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r9
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0073
            if (r0 == 0) goto L_0x0061
            r0 = r9
            r11 = r0
            r0 = r9
            int r0 = r0.getCount()     // Catch: all -> 0x0073
            r1 = 1
            if (r0 != r1) goto L_0x003f
            goto L_0x0041
        L_0x003f:
            r0 = 0
            r12 = r0
        L_0x0041:
            r0 = r9
            r11 = r0
            r0 = r12
            p459j.p460a.p474c0.p499h.C12151d.m6999b(r0)     // Catch: all -> 0x0073
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = 0
            boolean r0 = r0.isNull(r1)     // Catch: all -> 0x0073
            if (r0 != 0) goto L_0x0061
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = 0
            long r0 = r0.getLong(r1)     // Catch: all -> 0x0073
            r13 = r0
            goto L_0x0066
        L_0x0061:
            r0 = -1
            r13 = r0
        L_0x0066:
            r0 = r9
            if (r0 == 0) goto L_0x0070
            r0 = r9
            r0.close()
        L_0x0070:
            r0 = r13
            return r0
        L_0x0073:
            r9 = move-exception
            r0 = r11
            if (r0 == 0) goto L_0x007e
            r0 = r11
            r0.close()
        L_0x007e:
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.C11521c.m9325o(j.a.c0.c.l, java.lang.String):long");
    }

    /* renamed from: p */
    public static boolean m9324p(C11534l lVar, String str) {
        C12151d.m7002b();
        return m9368a(lVar, str, "normalized_destination");
    }

    /* renamed from: q */
    public static boolean m9323q(C11534l lVar, String str) {
        return m9368a(lVar, str, "_id");
    }

    /* renamed from: r */
    public static MessageData m9322r(C11534l lVar, String str) {
        C12151d.m7002b();
        MessageData s = m9321s(lVar, str);
        if (s != null) {
            m9378a(lVar, s, false);
        }
        return s;
    }

    /* renamed from: s */
    public static MessageData m9321s(C11534l lVar, String str) {
        Cursor cursor;
        Throwable th;
        C12151d.m7002b();
        MessageData messageData = null;
        try {
            cursor = lVar.m9216a(NotificationCompat.CarExtender.KEY_MESSAGES, MessageData.m27631O(), "_id=?", new String[]{str}, null, null, null);
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        try {
            C12151d.m7011a(cursor.getCount(), 0, 1);
            if (cursor.moveToFirst()) {
                messageData = new MessageData();
                messageData.m27626a(cursor);
            }
            if (cursor != null) {
                cursor.close();
            }
            return messageData;
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: t */
    public static void m9320t(C11534l lVar, String str) {
        C12151d.m7002b();
        C12151d.m6999b(lVar.m9211d().inTransaction());
        m9363a(lVar, str, m9332h(lVar, str));
    }
}
