package p193e.p194a.p195a.p200c.p217o;

import android.app.NotificationChannel;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import java.util.ArrayList;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.AbstractC19056l1;
import p193e.p194a.p1114o5.C19063n1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6126a;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p849h4.AbstractC14907a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.c.o.i */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o/i.class */
public final class C5615i implements AbstractC5614h {

    /* renamed from: a */
    public final Context f18897a;

    /* renamed from: b */
    public final a<AbstractC19854f<AbstractC6233m>> f18898b;

    /* renamed from: c */
    public final AbstractC19056l1 f18899c;

    /* renamed from: d */
    public final ContentResolver f18900d;

    /* renamed from: e */
    public final AbstractC14907a f18901e;

    /* renamed from: f */
    public final AbstractC6115g f18902f;

    /* renamed from: g */
    public final f f18903g;

    /* renamed from: h */
    public final AbstractC8541a f18904h;

    /* renamed from: i */
    public final AbstractC6392i0 f18905i;

    @e(c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationsManagerImpl$migrateConversationsWithCustomSoundIfNeeded$1", f = "ConversationNotificationsManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.o.i$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/i$a.class */
    public static final class C5616a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5616a(d dVar) {
            super(2, dVar);
            C5615i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m32878i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5616a(dVar);
        }

        /* renamed from: k */
        public final Object m32877k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C5616a c5616a = new C5616a(dVar);
            s sVar = s.a;
            c5616a.m32876s(sVar);
            return sVar;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: s */
        public final Object m32876s(Object obj) {
            AbstractC6126a mo31772t;
            C25225a.m3932a3(obj);
            Cursor query = C5615i.this.f18900d.query(C8582g0.m28306n(), null, "sound_uri IS NOT NULL", null, null);
            if (query != null && (mo31772t = C5615i.this.f18902f.mo31772t(query)) != null) {
                try {
                    ArrayList<Conversation> arrayList = new ArrayList();
                    while (mo31772t.moveToNext()) {
                        arrayList.add(mo31772t.mo31752p());
                    }
                    C25225a.m4016G(mo31772t, null);
                    for (Conversation conversation : arrayList) {
                        String str = conversation.f13198Q;
                        Uri parse = str != null ? Uri.parse(str) : null;
                        if (!C12864a2.m22540r(parse != null ? Boolean.valueOf(C19286f.m13672g(parse, C5615i.this.f18897a)) : null)) {
                            C5615i.this.m32879h(conversation.f13199a, "sound_uri", null);
                        } else if (Build.VERSION.SDK_INT >= 26) {
                            Participant[] participantArr = conversation.f13211m;
                            l.d(participantArr, "it.participants");
                            if (!C6405h.m31299e(participantArr)) {
                                C5615i c5615i = C5615i.this;
                                AbstractC14907a abstractC14907a = c5615i.f18901e;
                                String m32880g = c5615i.m32880g(conversation);
                                String m35066a = conversation.m35066a();
                                l.d(m35066a, "it.participantsText");
                                abstractC14907a.mo19454g(m32880g, m35066a, parse, C5615i.this.f18905i.mo31195I2());
                            }
                        }
                    }
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            }
            return s.a;
        }
    }

    @Inject
    public C5615i(Context context, a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC19056l1 abstractC19056l1, ContentResolver contentResolver, AbstractC14907a abstractC14907a, AbstractC6115g abstractC6115g, @Named("IO") f fVar, AbstractC8541a abstractC8541a, AbstractC6392i0 abstractC6392i0, C20592g c20592g) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "messagesStorage");
        l.e(abstractC19056l1, "ringtoneNotificationSettings");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC14907a, "conversationNotificationChannelProvider");
        l.e(abstractC6115g, "cursorFactory");
        l.e(fVar, "asyncContext");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC6392i0, "settings");
        l.e(c20592g, "featuresRegistry");
        this.f18897a = context;
        this.f18898b = aVar;
        this.f18899c = abstractC19056l1;
        this.f18900d = contentResolver;
        this.f18901e = abstractC14907a;
        this.f18902f = abstractC6115g;
        this.f18903g = fVar;
        this.f18904h = abstractC8541a;
        this.f18905i = abstractC6392i0;
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5614h
    /* renamed from: a */
    public Object mo32886a(Conversation conversation, Uri uri, d<? super s> dVar) {
        m32879h(conversation.f13199a, "sound_uri", uri != null ? uri.toString() : null);
        if (Build.VERSION.SDK_INT >= 26) {
            String m32880g = m32880g(conversation);
            if (uri != null) {
                AbstractC14907a abstractC14907a = this.f18901e;
                String m35066a = conversation.m35066a();
                l.d(m35066a, "conversation.participantsText");
                abstractC14907a.mo19454g(m32880g, m35066a, uri, this.f18905i.mo31195I2());
            } else {
                this.f18901e.mo19457d(m32880g);
            }
        }
        return s.a;
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5614h
    /* renamed from: b */
    public Object mo32885b(Conversation conversation, d<? super String> dVar) {
        Uri uri;
        if (Build.VERSION.SDK_INT < 26) {
            ContentResolver contentResolver = this.f18900d;
            Uri m15702a = C17891a1.C17897f.m15702a();
            l.d(m15702a, "ConversationsTable.getContentUri()");
            String m13696H = C19286f.m13696H(contentResolver, m15702a, "sound_uri", "_id = " + conversation.f13199a, null, null, 16);
            if (m13696H != null) {
                uri = Uri.parse(m13696H);
            }
            uri = null;
        } else {
            NotificationChannel mo19458c = this.f18901e.mo19458c(m32880g(conversation));
            if (mo19458c != null) {
                uri = mo19458c.getSound();
            }
            uri = null;
        }
        String str = null;
        if (uri != null) {
            if (l.a(uri, this.f18899c.mo14181e())) {
                C19063n1.AbstractC19064a.C19066b c19066b = C19063n1.AbstractC19064a.C19066b.f53247f;
                return "Truecaller Message";
            }
            Ringtone ringtone = RingtoneManager.getRingtone(this.f18897a, uri);
            str = null;
            if (ringtone != null) {
                str = ringtone.getTitle(this.f18897a);
            }
        }
        return str;
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5614h
    /* renamed from: c */
    public void mo32884c() {
        if (!this.f18904h.getBoolean("deleteBackupDuplicates", false)) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(h1.a, this.f18903g, (j0) null, new C5616a(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5614h
    /* renamed from: d */
    public boolean mo32883d(Uri uri) {
        l.e(uri, "uri");
        return C19286f.m13672g(uri, this.f18897a);
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5614h
    /* renamed from: e */
    public Object mo32882e(long j, long j2, d<? super s> dVar) {
        m32879h(j, "muted", new Long(j2));
        return s.a;
    }

    @Override // p193e.p194a.p195a.p200c.p217o.AbstractC5614h
    /* renamed from: f */
    public String mo32881f(Conversation conversation) {
        l.e(conversation, "conversation");
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        Participant[] participantArr = conversation.f13211m;
        l.d(participantArr, "conversation.participants");
        if (C6405h.m31299e(participantArr)) {
            return null;
        }
        NotificationChannel mo19458c = this.f18901e.mo19458c(m32880g(conversation));
        String str = null;
        if (mo19458c != null) {
            str = mo19458c.getId();
        }
        return str;
    }

    /* renamed from: g */
    public final String m32880g(Conversation conversation) {
        Participant[] participantArr = conversation.f13211m;
        l.d(participantArr, "participants");
        if (!C6405h.m31299e(participantArr)) {
            Participant[] participantArr2 = conversation.f13211m;
            l.d(participantArr2, "participants");
            String str = ((Participant) C25225a.m3845s0(participantArr2)).f11572e;
            l.d(str, "participants.first().normalizedAddress");
            return str;
        }
        throw new IllegalArgumentException("Only 1-2-1 conversations supported");
    }

    /* renamed from: h */
    public final void m32879h(long j, String str, Object obj) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        ContentProviderOperation.Builder withValue = ContentProviderOperation.newUpdate(C17891a1.C17897f.m15702a()).withValue(str, obj);
        arrayList.add(withValue.withSelection("_id=" + j, null).build());
        ((AbstractC6233m) ((AbstractC19854f) this.f18898b.get()).mo11854a()).mo31665r(arrayList).mo11831c();
    }
}
