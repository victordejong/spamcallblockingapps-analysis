package p193e.p194a.p195a.p200c;

import android.content.ContentResolver;
import android.net.Uri;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p578p.C10480a;
import s1.k;
import s1.u.i;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.i7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i7.class */
public final class C5384i7 implements AbstractC5341h7 {

    /* renamed from: a */
    public final AbstractC19022f0 f18424a;

    /* renamed from: b */
    public final AbstractC6254b f18425b;

    /* renamed from: c */
    public final ContentResolver f18426c;

    /* renamed from: d */
    public final AbstractC19854f<AbstractC6233m> f18427d;

    /* renamed from: e */
    public final AbstractC19510i0 f18428e;

    /* renamed from: e.a.a.c.i7$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i7$a.class */
    public static final class C5385a extends m implements l<String, CharSequence> {

        /* renamed from: b */
        public static final C5385a f18429b = new C5385a();

        public C5385a() {
            super(1);
        }

        /* renamed from: d */
        public Object m33196d(Object obj) {
            s1.z.c.l.e((String) obj, "it");
            return "?";
        }
    }

    @e(c = "com.truecaller.messaging.conversation.MessagesTranslateHelperImpl", f = "MessagesTranslateHelperImpl.kt", l = {77}, m = "identifyLanguagesForConversation")
    /* renamed from: e.a.a.c.i7$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i7$b.class */
    public static final class C5386b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f18430d;

        /* renamed from: e */
        public int f18431e;

        /* renamed from: g */
        public Object f18433g;

        /* renamed from: h */
        public Object f18434h;

        /* renamed from: i */
        public Object f18435i;

        /* renamed from: j */
        public Object f18436j;

        /* renamed from: k */
        public Object f18437k;

        /* renamed from: l */
        public Object f18438l;

        /* renamed from: m */
        public long f18439m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5386b(d dVar) {
            super(dVar);
            C5384i7.this = r4;
        }

        /* renamed from: s */
        public final Object m33195s(Object obj) {
            this.f18430d = obj;
            this.f18431e |= Integer.MIN_VALUE;
            return C5384i7.this.mo33198d(0L, null, 0, 0, this);
        }
    }

    @Inject
    public C5384i7(AbstractC19022f0 abstractC19022f0, AbstractC6254b abstractC6254b, ContentResolver contentResolver, AbstractC19854f<AbstractC6233m> abstractC19854f, AbstractC19510i0 abstractC19510i0) {
        s1.z.c.l.e(abstractC19022f0, "deviceManager");
        s1.z.c.l.e(abstractC6254b, "translateManager");
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(abstractC19854f, "messagesStorage");
        s1.z.c.l.e(abstractC19510i0, "messageAnalytics");
        this.f18424a = abstractC19022f0;
        this.f18425b = abstractC6254b;
        this.f18426c = contentResolver;
        this.f18427d = abstractC19854f;
        this.f18428e = abstractC19510i0;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5341h7
    /* renamed from: a */
    public Object mo33201a(long j, int i, int i2, d<? super Long> dVar) {
        List<String> mo31541h = this.f18425b.mo31541h();
        ArrayList arrayList = new ArrayList();
        for (Object obj : mo31541h) {
            String str = (String) obj;
            if (!Boolean.valueOf(mo33199c() ? s1.z.c.l.a(str, this.f18424a.mo14242d()) : s1.z.c.l.a(str, "en")).booleanValue()) {
                arrayList.add(obj);
            }
        }
        String m8622g = C22128a.m8622g(C22128a.m8728C("message_language IN ("), i.O(arrayList, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C5385a.f18429b, 30), ')', " AND length(message_content) > 2");
        ContentResolver contentResolver = this.f18426c;
        Uri m28310j = C8582g0.m28310j(new Long(j), i, i2);
        s1.z.c.l.d(m28310j, "MessagesToTranslateQuery…d, filter, splitCriteria)");
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return C19286f.m13699E(contentResolver, m28310j, "message_id", m8622g, (String[]) array, "message_sequence_number DESC, message_date DESC LIMIT 1");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5341h7
    /* renamed from: b */
    public boolean mo33200b(Message message) {
        s1.z.c.l.e(message, "message");
        String str = message.f13405z;
        if (!s1.z.c.l.a(str, "en") || mo33199c()) {
            boolean z = false;
            if (C10480a.m25899s1(message)) {
                String m35025a = message.m35025a();
                s1.z.c.l.d(m35025a, "message.buildMessageText()");
                z = false;
                if (m35025a.length() > 0) {
                    z = false;
                    if (message.f13390k != 5) {
                        z = false;
                        if (!s1.z.c.l.a(str, "und")) {
                            z = false;
                            if (!s1.z.c.l.a(str, this.f18424a.mo14242d())) {
                                z = false;
                                if (i.l(this.f18425b.mo31541h(), str)) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5341h7
    /* renamed from: c */
    public boolean mo33199c() {
        return this.f18425b.mo31541h().contains(this.f18424a.mo14242d());
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0310, code lost:
        if (r20.isLast() != false) goto L116;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0157  */
    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v210, types: [long] */
    /* JADX WARN: Type inference failed for: r0v225, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.io.Closeable] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:125:0x033b -> B:126:0x0343). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x0295 -> B:91:0x029b). Please submit an issue!!! */
    @Override // p193e.p194a.p195a.p200c.AbstractC5341h7
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo33198d(long r8, java.lang.Integer r10, int r11, int r12, s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 1060
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5384i7.mo33198d(long, java.lang.Integer, int, int, s1.w.d):java.lang.Object");
    }

    /* renamed from: e */
    public void m33197e(List<k<String, Float>> list) {
        s1.z.c.l.e(list, "results");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            k kVar = (k) it.next();
            String str = (String) kVar.a;
            Object obj = linkedHashMap.get(str);
            ArrayList arrayList = obj;
            if (obj == null) {
                arrayList = C22128a.m8673R(linkedHashMap, str);
            }
            ((List) arrayList).add(Float.valueOf(((Number) kVar.b).floatValue()));
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            AbstractC19510i0 abstractC19510i0 = this.f18428e;
            List<Float> list2 = (List) entry.getValue();
            String str2 = (String) entry.getKey();
            String mo14242d = this.f18424a.mo14242d();
            s1.z.c.l.d(mo14242d, "deviceManager.languageIso");
            abstractC19510i0.mo13211o(list2, str2, mo14242d);
        }
    }
}
