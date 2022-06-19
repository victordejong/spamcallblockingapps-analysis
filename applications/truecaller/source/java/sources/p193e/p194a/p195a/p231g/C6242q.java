package p193e.p194a.p195a.p231g;

import android.content.ContentResolver;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6126a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.u.i;
import s1.u.t;
import s1.z.c.l;
/* renamed from: e.a.a.g.q */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/q.class */
public final class C6242q implements AbstractC6241p {

    /* renamed from: a */
    public final ContentResolver f21003a;

    /* renamed from: b */
    public final AbstractC6115g f21004b;

    @Inject
    public C6242q(ContentResolver contentResolver, AbstractC6115g abstractC6115g) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorsFactory");
        this.f21003a = contentResolver;
        this.f21004b = abstractC6115g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x005b, code lost:
        if (r14 != null) goto L33;
     */
    @Override // p193e.p194a.p195a.p231g.AbstractC6241p
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.messaging.data.types.Conversation mo31584a(java.lang.String r9) {
        /*
            r8 = this;
            r0 = r9
            java.lang.String r1 = "address"
            s1.z.c.l.e(r0, r1)
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r8
            e.a.a.g.g r0 = r0.f21004b     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L73
            r1 = r8
            android.content.ContentResolver r1 = r1.f21003a     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L73
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L73
            r3 = r2
            r4 = 0
            r5 = r9
            r3[r4] = r5     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L73
            r3 = 2
            android.net.Uri r2 = p193e.p194a.p372b0.p430q.C8582g0.m28307m(r2, r3)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L73
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L73
            e.a.a.g.j0.a r0 = r0.mo31772t(r1)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L73
            r14 = r0
            r0 = r13
            r9 = r0
            r0 = r14
            if (r0 == 0) goto L56
            r0 = r13
            r9 = r0
            r0 = r14
            boolean r0 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L8b
            if (r0 == 0) goto L56
            r0 = r14
            com.truecaller.messaging.data.types.Conversation r0 = r0.mo31752p()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L8b
            r9 = r0
            goto L56
        L52:
            r9 = move-exception
            goto L65
        L56:
            r0 = r9
            r12 = r0
            r0 = r14
            if (r0 == 0) goto L88
            goto L7e
        L61:
            r9 = move-exception
            r0 = r10
            r14 = r0
        L65:
            r0 = r14
            if (r0 == 0) goto L71
            r0 = r14
            r0.close()     // Catch: java.io.IOException -> L8f
        L71:
            r0 = r9
            throw r0
        L73:
            r9 = move-exception
            r0 = 0
            r14 = r0
        L77:
            r0 = r14
            if (r0 == 0) goto L88
            r0 = r11
            r9 = r0
        L7e:
            r0 = r14
            r0.close()     // Catch: java.io.IOException -> L94
            r0 = r9
            r12 = r0
        L88:
            r0 = r12
            return r0
        L8b:
            r9 = move-exception
            goto L77
        L8f:
            r14 = move-exception
            goto L71
        L94:
            r14 = move-exception
            r0 = r9
            r12 = r0
            goto L88
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.C6242q.mo31584a(java.lang.String):com.truecaller.messaging.data.types.Conversation");
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p195a.p231g.AbstractC6241p
    /* renamed from: b */
    public Map<Conversation, List<Message>> mo31583b(List<Message> list) {
        LinkedHashMap linkedHashMap;
        l.e(list, "messages");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj : list) {
            Long valueOf = Long.valueOf(((Message) obj).f13381b);
            Object obj2 = linkedHashMap2.get(valueOf);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap2.put(valueOf, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        AbstractC6126a mo31772t = this.f21004b.mo31772t(this.f21003a.query(C8582g0.m28314f(1), null, C22128a.m8630e(C22128a.m8728C("_id IN ("), i.O(linkedHashMap2.keySet(), (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 63), ')'), null, null));
        if (mo31772t != null) {
            try {
                ArrayList arrayList2 = new ArrayList();
                while (mo31772t.moveToNext()) {
                    arrayList2.add(mo31772t.mo31752p());
                }
                C25225a.m4016G(mo31772t, null);
                int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(arrayList2, 10));
                int i = m3942Y1;
                if (m3942Y1 < 16) {
                    i = 16;
                }
                LinkedHashMap linkedHashMap3 = new LinkedHashMap(i);
                Iterator it = arrayList2.iterator();
                while (true) {
                    linkedHashMap = linkedHashMap3;
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    linkedHashMap3.put(Long.valueOf(((Conversation) next).f13199a), next);
                }
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } else {
            linkedHashMap = t.a;
        }
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            if (linkedHashMap.containsKey(Long.valueOf(((Number) entry.getKey()).longValue()))) {
                linkedHashMap4.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap5 = new LinkedHashMap(C25225a.m3942Y1(linkedHashMap4.size()));
        for (Map.Entry entry2 : linkedHashMap4.entrySet()) {
            linkedHashMap5.put((Conversation) i.H(linkedHashMap, Long.valueOf(((Number) entry2.getKey()).longValue())), entry2.getValue());
        }
        return linkedHashMap5;
    }
}
