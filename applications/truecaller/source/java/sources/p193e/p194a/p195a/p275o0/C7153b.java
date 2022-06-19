package p193e.p194a.p195a.p275o0;

import com.truecaller.blocking.FiltersContract;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamData;
import com.truecaller.data.entity.messaging.Participant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p291a3.AbstractC7419a;
import p193e.p194a.p997k3.p998j.C16461b;
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
/* renamed from: e.a.a.o0.b */
/* loaded from: classes10-dex2jar.jar:e/a/a/o0/b.class */
public final class C7153b implements AbstractC7152a {

    /* renamed from: a */
    public final AbstractC7419a f22958a;

    /* renamed from: b */
    public final f f22959b;

    /* renamed from: c */
    public final C16461b f22960c;

    @e(c = "com.truecaller.messaging.blocking.ParticipantBlockHelperImpl$blockParticipants$2$1", f = "ParticipantBlockHelper.kt", l = {51, 60}, m = "invokeSuspend")
    /* renamed from: e.a.a.o0.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/a/o0/b$a.class */
    public static final class C7154a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f22961e;

        /* renamed from: f */
        public Object f22962f;

        /* renamed from: g */
        public Object f22963g;

        /* renamed from: h */
        public Object f22964h;

        /* renamed from: i */
        public Object f22965i;

        /* renamed from: j */
        public Object f22966j;

        /* renamed from: k */
        public int f22967k;

        /* renamed from: l */
        public final /* synthetic */ List f22968l;

        /* renamed from: m */
        public final /* synthetic */ C7153b f22969m;

        /* renamed from: n */
        public final /* synthetic */ String f22970n;

        /* renamed from: o */
        public final /* synthetic */ String f22971o;

        /* renamed from: p */
        public final /* synthetic */ boolean f22972p;

        /* renamed from: q */
        public final /* synthetic */ FiltersContract.Filters.EntityType f22973q;

        /* renamed from: r */
        public final /* synthetic */ Long f22974r;

        @e(c = "com.truecaller.messaging.blocking.ParticipantBlockHelperImpl$blockParticipants$2$1$1$1", f = "ParticipantBlockHelper.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.o0.b$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/a/o0/b$a$a.class */
        public static final class C7155a extends i implements p<i0, d<? super Integer>, Object> {

            /* renamed from: e */
            public final /* synthetic */ Participant f22975e;

            /* renamed from: f */
            public final /* synthetic */ C7154a f22976f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C7155a(Participant participant, d dVar, C7154a c7154a) {
                super(2, dVar);
                this.f22975e = participant;
                this.f22976f = c7154a;
            }

            /* renamed from: i */
            public final d<s> m30053i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C7155a(this.f22975e, dVar, this.f22976f);
            }

            /* renamed from: k */
            public final Object m30052k(Object obj, Object obj2) {
                SpamData spamData;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                Participant participant = this.f22975e;
                C7154a c7154a = this.f22976f;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                Contact m17367e = c7154a.f22969m.f22960c.m17367e(participant.f11575h);
                return (m17367e == null || (spamData = m17367e.f11529x) == null) ? null : spamData.getSpamVersion();
            }

            /* renamed from: s */
            public final Object m30051s(Object obj) {
                SpamData spamData;
                C25225a.m3932a3(obj);
                Contact m17367e = this.f22976f.f22969m.f22960c.m17367e(this.f22975e.f11575h);
                return (m17367e == null || (spamData = m17367e.f11529x) == null) ? null : spamData.getSpamVersion();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7154a(List list, d dVar, C7153b c7153b, String str, String str2, boolean z, FiltersContract.Filters.EntityType entityType, Long l) {
            super(2, dVar);
            this.f22968l = list;
            this.f22969m = c7153b;
            this.f22970n = str;
            this.f22971o = str2;
            this.f22972p = z;
            this.f22973q = entityType;
            this.f22974r = l;
        }

        /* renamed from: i */
        public final d<s> m30056i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7154a(this.f22968l, dVar, this.f22969m, this.f22970n, this.f22971o, this.f22972p, this.f22973q, this.f22974r);
        }

        /* renamed from: k */
        public final Object m30055k(Object obj, Object obj2) {
            return m30056i(obj, (d) obj2).m30054s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x018b  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0161 -> B:32:0x0167). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m30054s(java.lang.Object r11) {
            /*
                Method dump skipped, instructions count: 581
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p275o0.C7153b.C7154a.m30054s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C7153b(AbstractC7419a abstractC7419a, @Named("IO") f fVar, C16461b c16461b) {
        l.e(abstractC7419a, "blockManager");
        l.e(fVar, "ioCoroutineContext");
        l.e(c16461b, "aggregatedContactDao");
        this.f22958a = abstractC7419a;
        this.f22959b = fVar;
        this.f22960c = c16461b;
    }

    @Override // p193e.p194a.p195a.p275o0.AbstractC7152a
    /* renamed from: a */
    public void mo30057a(Collection<? extends Participant> collection, String str, FiltersContract.Filters.EntityType entityType, Long l, boolean z, String str2) {
        l.e(collection, "participants");
        l.e(entityType, "entityType");
        l.e(str2, "source");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : collection) {
            Integer valueOf = Integer.valueOf(((Participant) obj).f11569b);
            Object obj2 = linkedHashMap.get(valueOf);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(valueOf, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            s1.a.a.a.v0.f.d.w2(h1.a, (f) null, (j0) null, new C7154a((List) entry.getValue(), null, this, str, str2, z, entityType, l), 3, (Object) null);
        }
    }
}
