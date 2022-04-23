package p459j.p460a.p474c0.p475c.p476w;

import android.database.Cursor;
import android.database.sqlite.SQLiteConstraintException;
import android.text.TextUtils;
import android.util.Pair;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.sms.DatabaseMessages;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlinx.coroutines.Dispatchers;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.C11565v;
import p459j.p460a.p474c0.p475c.p478y.C11636q;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11893j;
import p459j.p460a.p474c0.p488f.p490q.C11864c;
import p459j.p460a.p474c0.p488f.p490q.C11876e;
import p459j.p460a.p474c0.p488f.p490q.C11898k;
import p459j.p460a.p474c0.p488f.p490q.C11902n;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p521j0.p529x.C12754a;
import p459j.p460a.p521j0.p529x.C12758e;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.c0.c.w.f */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/f.class */
public class C11585f {

    /* renamed from: a */
    public final HashSet<String> f25895a = new HashSet<>();

    /* renamed from: b */
    public final C11565v.C11568c f25896b;

    /* renamed from: c */
    public final ArrayList<DatabaseMessages.SmsMessage> f25897c;

    /* renamed from: d */
    public final ArrayList<DatabaseMessages.MmsMessage> f25898d;

    /* renamed from: e */
    public final ArrayList<DatabaseMessages.LocalDatabaseMessage> f25899e;

    /* renamed from: j.a.c0.c.w.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/f$a.class */
    public static final class C11586a implements AbstractC11893j.AbstractC11897b {
        @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11897b
        /* renamed from: a */
        public void mo3874a(AbstractC11893j.AbstractC11894a aVar) {
            if (C12758e.m5411e()) {
                C12758e.m5403m();
            }
        }

        @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11897b
        /* renamed from: b */
        public void mo3873b(AbstractC11893j.AbstractC11894a aVar) {
        }
    }

    public C11585f(ArrayList<DatabaseMessages.SmsMessage> arrayList, ArrayList<DatabaseMessages.MmsMessage> arrayList2, ArrayList<DatabaseMessages.LocalDatabaseMessage> arrayList3, C11565v.C11568c cVar) {
        this.f25897c = arrayList;
        this.f25898d = arrayList2;
        this.f25899e = arrayList3;
        this.f25896b = cVar;
    }

    /* renamed from: a */
    public static int m9049a(C11534l lVar, String str, String str2, String[] strArr) {
        int length = strArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 128;
            int min = Math.min(i3, length);
            i2 += lVar.m9218a(str, String.format(Locale.US, "%s IN %s", str2, C11834j.m8088c(min - i)), (String[]) Arrays.copyOfRange(strArr, i, min));
            i = i3;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m9046a(boolean z, int i, int i2) {
        int i3 = 2;
        if (!z) {
            i3 = 100;
        } else if (i == 5 || i == 4 || i == 6 || (i == 2 && i2 == 64)) {
            i3 = 8;
        } else if (i2 != 0) {
            i3 = 1;
        }
        return i3;
    }

    /* renamed from: a */
    public static void m9053a(SQLiteConstraintException sQLiteConstraintException, C11534l lVar, String str, long j, String str2, String str3, String str4) {
        Throwable th;
        Cursor cursor = null;
        try {
            Cursor a = lVar.m9217a("SELECT _id FROM conversations WHERE _id=" + str2, (String[]) null);
            String str5 = null;
            if (a != null) {
                str5 = null;
                try {
                    if (a.moveToFirst()) {
                        boolean z = true;
                        if (a.getCount() != 1) {
                            z = false;
                        }
                        C12151d.m6999b(z);
                        str5 = a.getString(0);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = a;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (a != null) {
                a.close();
            }
            ParticipantData g = C11521c.m9333g(lVar, str3);
            ParticipantData g2 = C11521c.m9333g(lVar, str4);
            throw new RuntimeException("SQLiteConstraintException while inserting message for " + str + "; conversation id from getOrCreateConversation = " + str2 + " (lookup thread = " + j + "), found conversation id = " + str5 + ", found self participant = " + C12153d0.m6993a(g.m27521v()) + " (lookup id = " + str3 + "), found sender participant = " + C12153d0.m6993a(g2.m27521v()) + " (lookup id = " + str4 + ")", sQLiteConstraintException);
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: a */
    public static void m9047a(Map<String, C11636q> map, List<String> list) {
        if (map != null && !map.isEmpty()) {
            C11864c.C11865a aVar = new C11864c.C11865a(new C11902n(new C11586a(), map));
            aVar.m7976a(Dispatchers.getIO());
            C11898k.m7979a(aVar.m7977a());
        }
        if (list != null && !list.isEmpty()) {
            new C11876e().m8001c(list);
        }
    }

    /* renamed from: a */
    public static String[] m9048a(List<DatabaseMessages.LocalDatabaseMessage> list) {
        String[] strArr = new String[list.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = Long.toString(list.get(i).m27480r());
        }
        return strArr;
    }

    /* renamed from: a */
    public final Pair<String, C11636q> m9050a(C11534l lVar, DatabaseMessages.SmsMessage smsMessage) {
        if (smsMessage.f11358c == null) {
            C12153d0.m6981e("MessagingApp", "SyncMessageBatch: SMS " + smsMessage.f11356a + " has no body; adding empty one");
            smsMessage.f11358c = "";
        }
        if (TextUtils.isEmpty(smsMessage.f11357b)) {
            C12153d0.m6987b("MessagingApp", "SyncMessageBatch: SMS has no address; using unknown sender");
            smsMessage.f11357b = ParticipantData.m27546L();
        }
        boolean z = smsMessage.f11362g != 1;
        String str = smsMessage.f11357b;
        String a = this.f25896b.m9111a(lVar, str, smsMessage.f11363h, AbstractC11528g.m9259k().mo9243g().m9129b(smsMessage.f11363h));
        if (a == null) {
            C12153d0.m6987b("MessagingApp", "SyncMessageBatch: Failed to create conversation for SMS thread " + smsMessage.f11363h);
            return null;
        }
        ParticipantData a2 = ParticipantData.m27544a(smsMessage.m27458q());
        String a3 = C11521c.m9376a(lVar, a2);
        if (!z) {
            a2 = ParticipantData.m27528h(str);
        }
        String a4 = z ? a3 : C11521c.m9376a(lVar, a2);
        MessageData a5 = MessageData.m27616a(smsMessage.f11356a, a4, a3, a, m9046a(z, smsMessage.f11362g, smsMessage.f11364i), smsMessage.f11366k, smsMessage.f11365j, smsMessage.f11361f, smsMessage.f11360e, smsMessage.f11358c);
        try {
            C11521c.m9380a(lVar, a5);
            if (C12153d0.m6992a("MessagingApp", 2)) {
                C12153d0.m6983d("MessagingApp", "SyncMessageBatch: Inserted new message " + a5.m27589w() + " for SMS " + a5.m27636J() + " received at " + a5.m27639G());
            }
            this.f25895a.add(a);
            return new Pair<>(a5.m27589w(), new C11636q(a5.m27589w(), a, !TextUtils.isEmpty(C14217x3.m2163b(MyApplication.m29013o(), smsMessage.f11357b)), a5.m27591u(), true, smsMessage.f11358c));
        } catch (SQLiteConstraintException e) {
            m9053a(e, lVar, smsMessage.f11356a, smsMessage.f11363h, a, a3, a4);
            throw null;
        }
    }

    /* renamed from: a */
    public final String m9051a(C11534l lVar, DatabaseMessages.MmsMessage mmsMessage) {
        boolean z = true;
        if (mmsMessage.f11325v.size() < 1) {
            C12153d0.m6981e("MessagingApp", "SyncMessageBatch: MMS " + mmsMessage.f11304a + " has no parts");
        }
        boolean z2 = mmsMessage.f11306c != 1;
        if (mmsMessage.f11319p != 130) {
            z = false;
        }
        String str = mmsMessage.f11322s;
        ParticipantData a = ParticipantData.m27544a(mmsMessage.m27473s());
        String a2 = C11521c.m9376a(lVar, a);
        if (!z2) {
            a = ParticipantData.m27528h(str);
        }
        String a3 = z2 ? a2 : C11521c.m9376a(lVar, a);
        int a4 = C11834j.m8107a(z2, z, mmsMessage.f11306c);
        String a5 = this.f25896b.m9111a(lVar, a.m27521v(), mmsMessage.f11312i, AbstractC11528g.m9259k().mo9243g().m9129b(mmsMessage.f11312i));
        if (a5 == null) {
            C12153d0.m6987b("MessagingApp", "SyncMessageBatch: Failed to create conversation for MMS thread " + mmsMessage.f11312i);
            return null;
        }
        MessageData a6 = C11834j.m8116a(mmsMessage, a5, a3, a2, a4);
        try {
            C11521c.m9380a(lVar, a6);
            if (C12153d0.m6992a("MessagingApp", 2)) {
                C12153d0.m6983d("MessagingApp", "SyncMessageBatch: Inserted new message " + a6.m27589w() + " for MMS " + a6.m27636J() + " received at " + a6.m27639G());
            }
            this.f25895a.add(a5);
            return a6.m27589w();
        } catch (SQLiteConstraintException e) {
            m9053a(e, lVar, mmsMessage.f11304a, mmsMessage.f11312i, a5, a2, a3);
            throw null;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public void m9054a() {
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        f.m9227a();
        try {
            Iterator<DatabaseMessages.SmsMessage> it = this.f25897c.iterator();
            while (it.hasNext()) {
                Pair<String, C11636q> a = m9050a(f, it.next());
                hashMap.put(a.first, a.second);
            }
            Iterator<DatabaseMessages.MmsMessage> it2 = this.f25898d.iterator();
            while (it2.hasNext()) {
                arrayList.add(m9051a(f, it2.next()));
            }
            Iterator<DatabaseMessages.LocalDatabaseMessage> it3 = this.f25899e.iterator();
            while (it3.hasNext()) {
                this.f25895a.add(it3.next().m27481q());
            }
            m9049a(f, NotificationCompat.CarExtender.KEY_MESSAGES, "_id", m9048a(this.f25899e));
            Iterator<DatabaseMessages.LocalDatabaseMessage> it4 = this.f25899e.iterator();
            while (it4.hasNext()) {
                DatabaseMessages.LocalDatabaseMessage next = it4.next();
                if (C12153d0.m6992a("MessagingApp", 2)) {
                    C12153d0.m6983d("MessagingApp", "SyncMessageBatch: Deleted message " + next.m27480r() + " for SMS/MMS " + next.mo27454c() + " with timestamp " + next.mo27455b());
                }
            }
            m9052a(f);
            f.m9210e();
            f.m9214b();
            boolean z = C12758e.m5404l() || C12754a.m5426f();
            if (C12758e.m5412d() || C12754a.m5431a()) {
                m9047a(hashMap, arrayList);
            } else if (z) {
                C11876e eVar = new C11876e();
                if (!hashMap.isEmpty()) {
                    eVar.m8001c(hashMap.keySet());
                }
                if (!arrayList.isEmpty()) {
                    eVar.m8001c(arrayList);
                }
            }
        } catch (Throwable th) {
            f.m9214b();
            throw th;
        }
    }

    /* renamed from: a */
    public final void m9052a(C11534l lVar) {
        Iterator<String> it = this.f25895a.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!C11521c.m9374a(lVar, next)) {
                C11521c.m9361a(lVar, next, true, this.f25896b.m9110a(next));
            }
        }
    }
}
