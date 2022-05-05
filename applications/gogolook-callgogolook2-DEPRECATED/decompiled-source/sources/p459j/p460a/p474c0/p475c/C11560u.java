package p459j.p460a.p474c0.p475c;

import android.content.ContentValues;
import android.database.ContentObserver;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.telephony.SubscriptionInfo;
import androidx.collection.ArrayMap;
import androidx.core.app.NotificationCompat;
import com.google.common.base.Joiner;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12197q;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.c.u */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/u.class */
public class C11560u {

    /* renamed from: a */
    public static volatile boolean f25839a = false;

    /* renamed from: b */
    public static final Object f25840b = new Object();

    /* renamed from: c */
    public static final AtomicBoolean f25841c = new AtomicBoolean(false);

    /* renamed from: d */
    public static final Runnable f25842d = new RunnableC11561a();

    /* renamed from: e */
    public static final Runnable f25843e = new RunnableC11562b();

    /* renamed from: j.a.c0.c.u$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/u$a.class */
    public static final class RunnableC11561a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            C12151d.m6999b(C11560u.f25841c.getAndSet(false));
            C11560u.m9154a(0);
        }
    }

    /* renamed from: j.a.c0.c.u$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/u$b.class */
    public static final class RunnableC11562b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            C11560u.m9154a(2);
        }
    }

    /* renamed from: j.a.c0.c.u$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/u$c.class */
    public static class C11563c extends ContentObserver {

        /* renamed from: a */
        public volatile boolean f25844a = false;

        public C11563c() {
            super(null);
        }

        /* renamed from: a */
        public boolean m9138a() {
            return this.f25844a;
        }

        /* renamed from: b */
        public void m9137b() {
            if (C13878a3.m3205m()) {
                AbstractC11516a.m9413n().mo9412a().getContentResolver().registerContentObserver(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, true, this);
                this.f25844a = true;
            }
        }

        /* renamed from: c */
        public void m9136c() {
            this.f25844a = false;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
                C12153d0.m6983d("MessagingAppDataModel", "Contacts changed");
            }
            this.f25844a = true;
        }
    }

    /* renamed from: j.a.c0.c.u$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/u$d.class */
    public static class C11564d {

        /* renamed from: a */
        public static final String[] f25845a = {"_id", "conversation_id", "participant_id"};
    }

    /* renamed from: a */
    public static List<String> m9150a(List<String> list) {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < list.size(); i++) {
                sb.append('?');
                if (i < list.size() - 1) {
                    sb.append(',');
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("current_self_id IN (");
            sb2.append((Object) sb);
            sb2.append(")");
            cursor = f.m9216a("conversations", new String[]{"_id"}, sb2.toString(), (String[]) list.toArray(new String[0]), null, null, null);
            if (cursor != null) {
                while (true) {
                    cursor = cursor;
                    if (!cursor.moveToNext()) {
                        break;
                    }
                    arrayList.add(cursor.getString(0));
                }
            }
            return arrayList;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* renamed from: a */
    public static void m9154a(int i) {
        String str;
        String[] strArr;
        boolean z = false;
        boolean z2 = false;
        C12151d.m7011a(i, 0, 2);
        if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
            if (i == 0) {
                C12153d0.m6983d("MessagingAppDataModel", "Start full participant refresh");
            } else if (i == 1) {
                C12153d0.m6983d("MessagingAppDataModel", "Start partial participant refresh");
            } else if (i == 2) {
                C12153d0.m6983d("MessagingAppDataModel", "Start self participant refresh");
            }
        }
        if (C12197q.m6821c() && C13878a3.m3200r()) {
            if (i == 0) {
                m9139i();
            }
            if (i == 0 || i == 2) {
                m9141g();
            }
            ArrayList arrayList = new ArrayList();
            Cursor cursor = null;
            if (i == 1) {
                strArr = new String[]{String.valueOf(-1L)};
                str = "contact_id=?";
            } else if (i == 2) {
                str = "sub_id NOT IN ( -2 )";
                strArr = null;
            } else {
                str = null;
                strArr = null;
            }
            C11534l f = AbstractC11528g.m9259k().mo9244f();
            try {
                Cursor a = f.m9216a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, ParticipantData.C4657b.f11256a, str, strArr, null, null, null);
                if (a != null) {
                    while (true) {
                        cursor = a;
                        z = z2;
                        if (!a.moveToNext()) {
                            break;
                        }
                        cursor = a;
                        try {
                            ParticipantData a2 = ParticipantData.m27542a(a);
                            if (m9146c(f, a2)) {
                                z2 = z2;
                                if (a2.m27551G()) {
                                    z2 = true;
                                }
                                m9144d(f, a2);
                                arrayList.add(a2.m27523t());
                            }
                        } catch (Exception e) {
                            C12153d0.m6986b("MessagingAppDataModel", "ParticipantRefresh: Failed to update participant", e);
                            z2 = z2;
                        }
                    }
                }
                if (a != null) {
                    a.close();
                }
                if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
                    C12153d0.m6983d("MessagingAppDataModel", "Number of participants refreshed:" + arrayList.size());
                }
                if (arrayList.size() > 0) {
                    C11521c.m9347b((ArrayList<String>) arrayList);
                }
                if (z) {
                    MessagingContentProvider.m27771d();
                    MessagingContentProvider.m27773c();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } else if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
            C12153d0.m6983d("MessagingAppDataModel", "Skipping participant referesh because of permissions");
        }
    }

    /* renamed from: a */
    public static void m9153a(C11534l lVar, int i, int i2, String str, String str2, String[] strArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("sim_slot_id", Integer.valueOf(i));
        contentValues.put("subscription_color", Integer.valueOf(i2));
        contentValues.put("subscription_name", str);
        lVar.m9220a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, contentValues, str2, strArr);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m9151a(String str, String str2) {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        f.m9227a();
        try {
            C11521c.m9342c(f, str, str2);
            f.m9210e();
            f.m9214b();
            MessagingContentProvider.m27766f(str);
            MessagingContentProvider.m27768e(str);
            AbstractC12126w.m7095a().mo7073a(f.m9212c(), str, str2);
        } catch (Throwable th) {
            f.m9214b();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0094, code lost:
        if (r0 == r0) goto L_0x0097;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [gogolook.callgogolook2.messaging.datamodel.data.ParticipantData] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m9152a(p459j.p460a.p474c0.p475c.C11534l r5, gogolook.callgogolook2.messaging.datamodel.data.ParticipantData r6) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.C11560u.m9152a(j.a.c0.c.l, gogolook.callgogolook2.messaging.datamodel.data.ParticipantData):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x012c, code lost:
        if (r9 == null) goto L_0x0132;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m9148b(p459j.p460a.p474c0.p475c.C11534l r5, gogolook.callgogolook2.messaging.datamodel.data.ParticipantData r6) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.C11560u.m9148b(j.a.c0.c.l, gogolook.callgogolook2.messaging.datamodel.data.ParticipantData):int");
    }

    /* renamed from: b */
    public static final Set<Integer> m9149b() {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        HashSet hashSet = new HashSet();
        Cursor cursor = null;
        try {
            cursor = f.m9216a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, ParticipantData.C4657b.f11256a, "sub_id NOT IN ( -2 )", null, null, null, null);
            if (cursor != null) {
                while (true) {
                    cursor = cursor;
                    if (!cursor.moveToNext()) {
                        break;
                    }
                    hashSet.add(Integer.valueOf(cursor.getInt(1)));
                }
            }
            return hashSet;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* renamed from: c */
    public static List<String> m9147c() {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = f.m9216a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, new String[]{"_id"}, "sim_slot_id=? AND sub_id NOT IN ( -2 )", new String[]{String.valueOf(-1)}, null, null, null);
            if (cursor != null) {
                while (true) {
                    cursor = cursor;
                    if (!cursor.moveToNext()) {
                        break;
                    }
                    arrayList.add(cursor.getString(0));
                }
            }
            return arrayList;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* renamed from: c */
    public static boolean m9146c(C11534l lVar, ParticipantData participantData) {
        boolean z = false;
        if (participantData.m27551G()) {
            int b = m9148b(lVar, participantData);
            if (b == 2) {
                return true;
            }
            z = false;
            if (b == 1) {
                z = true;
            }
        }
        return m9152a(lVar, participantData) | z;
    }

    /* renamed from: d */
    public static void m9144d(C11534l lVar, ParticipantData participantData) {
        ContentValues contentValues = new ContentValues();
        if (participantData.m27551G()) {
            contentValues.put("normalized_destination", participantData.m27521v());
            contentValues.put("display_destination", participantData.m27534c());
        }
        contentValues.put("contact_id", Long.valueOf(participantData.m27536b()));
        contentValues.put("lookup_key", participantData.m27522u());
        contentValues.put("full_name", participantData.m27524s());
        contentValues.put("first_name", participantData.m27525r());
        contentValues.put("profile_photo_uri", participantData.m27520w());
        contentValues.put("contact_destination", participantData.m27545a());
        contentValues.put("send_destination", participantData.m27519x());
        lVar.m9227a();
        try {
            lVar.m9220a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, contentValues, "_id=?", new String[]{participantData.m27523t()});
            lVar.m9210e();
        } finally {
            lVar.m9214b();
        }
    }

    /* renamed from: d */
    public static boolean m9145d() {
        C11563c e = AbstractC11516a.m9413n().mo9404e();
        if (e == null) {
            return false;
        }
        if (!f25839a) {
            synchronized (f25840b) {
                if (!f25839a) {
                    e.m9137b();
                    f25839a = true;
                }
            }
        }
        return e.m9138a();
    }

    /* renamed from: e */
    public static void m9143e() {
        ParticipantData b;
        List<String> c = m9147c();
        if (c.size() != 0) {
            List<String> a = m9150a(c);
            if (!(a.size() == 0 || (b = C11521c.m9354b(AbstractC11528g.m9259k().mo9244f(), -1)) == null)) {
                for (String str : a) {
                    m9151a(str, b.m27523t());
                }
                MessagingContentProvider.m27769e();
            }
        }
    }

    /* renamed from: f */
    public static void m9142f() {
        if (m9145d() && f25841c.compareAndSet(false, true)) {
            if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
                C12153d0.m6983d("MessagingAppDataModel", "Started full participant refresh");
            }
            AbstractAsyncTaskC12189n0.m6856a(f25842d);
        } else if (C12153d0.m6992a("MessagingAppDataModel", 2)) {
            C12153d0.m6983d("MessagingAppDataModel", "Skipped full participant refresh");
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: g */
    public static void m9141g() {
        if (C14017g4.m2804t()) {
            C11534l f = AbstractC11528g.m9259k().mo9244f();
            List<SubscriptionInfo> b = AbstractC12181l0.m6886t().m6888r().mo6883b();
            ArrayMap arrayMap = new ArrayMap();
            f.m9227a();
            Set<Integer> b2 = m9149b();
            if (b != null) {
                try {
                    for (SubscriptionInfo subscriptionInfo : b) {
                        int subscriptionId = subscriptionInfo.getSubscriptionId();
                        if (!b2.contains(Integer.valueOf(subscriptionId))) {
                            f.m9221a(C11532j.m9239a(subscriptionId));
                            b2.add(Integer.valueOf(subscriptionId));
                        }
                        arrayMap.put(Integer.valueOf(subscriptionId), subscriptionInfo);
                        if (subscriptionId == AbstractC12181l0.m6886t().mo6875f()) {
                            arrayMap.put(-1, subscriptionInfo);
                        }
                    }
                } catch (Throwable th) {
                    f.m9214b();
                    throw th;
                }
            }
            for (SubscriptionInfo subscriptionInfo2 : arrayMap.values()) {
                int simSlotIndex = subscriptionInfo2.getSimSlotIndex();
                int iconTint = subscriptionInfo2.getIconTint();
                String charSequence = subscriptionInfo2.getDisplayName() != null ? subscriptionInfo2.getDisplayName().toString() : "";
                m9153a(f, simSlotIndex, iconTint, charSequence, "sub_id = " + subscriptionInfo2.getSubscriptionId(), null);
            }
            m9153a(f, -1, 0, "", "sub_id NOT IN (" + Joiner.m31135on(",").join(arrayMap.keySet()) + ")", null);
            f.m9210e();
            f.m9214b();
            m9143e();
        }
    }

    /* renamed from: h */
    public static void m9140h() {
        AbstractAsyncTaskC12189n0.m6856a(f25843e);
    }

    /* renamed from: i */
    public static void m9139i() {
        C11563c e = AbstractC11516a.m9413n().mo9404e();
        if (e != null) {
            e.m9136c();
        }
    }
}
