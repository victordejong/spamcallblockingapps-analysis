package p193e.p194a.p1359x4.p1360j;

import com.truecaller.api.services.searchwarnings.p141v1.ListAllSearchWarningsResult;
import com.truecaller.searchwarnings.data.SearchWarningDTO;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1359x4.p1360j.p1361c.AbstractC21432a;
import p193e.p194a.p1359x4.p1360j.p1362d.AbstractC21439b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.x4.j.b */
/* loaded from: classes13-dex2jar.jar:e/a/x4/j/b.class */
public final class C21428b implements AbstractC21427a {

    /* renamed from: a */
    public final f f59906a;

    /* renamed from: b */
    public final AbstractC21432a f59907b;

    /* renamed from: c */
    public final AbstractC21439b f59908c;

    @e(c = "com.truecaller.searchwarnings.data.SearchWarningsRepositoryImpl$fetchSearchWarnings$2", f = "SearchWarningsRepository.kt", l = {48}, m = "invokeSuspend")
    /* renamed from: e.a.x4.j.b$a */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/j/b$a.class */
    public static final class C21429a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f59909e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21429a(d dVar) {
            super(2, dVar);
            C21428b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m9738i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21429a(dVar);
        }

        /* renamed from: k */
        public final Object m9737k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C21429a(dVar).m9736s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x00d6, code lost:
            if (java.lang.Boolean.TRUE != null) goto L26;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m9736s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 233
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1359x4.p1360j.C21428b.C21429a.m9736s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.searchwarnings.data.SearchWarningsRepositoryImpl$insert$2", f = "SearchWarningsRepository.kt", l = {59}, m = "invokeSuspend")
    /* renamed from: e.a.x4.j.b$b */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/j/b$b.class */
    public static final class C21430b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f59911e;

        /* renamed from: g */
        public final /* synthetic */ SearchWarningDTO[] f59913g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21430b(SearchWarningDTO[] searchWarningDTOArr, d dVar) {
            super(2, dVar);
            C21428b.this = r5;
            this.f59913g = searchWarningDTOArr;
        }

        /* renamed from: i */
        public final d<s> m9735i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21430b(this.f59913g, dVar);
        }

        /* renamed from: k */
        public final Object m9734k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C21430b(this.f59913g, dVar).m9733s(s.a);
        }

        /* renamed from: s */
        public final Object m9733s(Object obj) {
            a aVar = a.a;
            int i = this.f59911e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC21439b abstractC21439b = C21428b.this.f59908c;
                List<SearchWarningDTO> m3897h3 = C25225a.m3897h3(this.f59913g);
                this.f59911e = 1;
                if (abstractC21439b.mo9725b(m3897h3, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.searchwarnings.data.SearchWarningsRepositoryImpl$insertBlocking$1", f = "SearchWarningsRepository.kt", l = {62}, m = "invokeSuspend")
    /* renamed from: e.a.x4.j.b$c */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/j/b$c.class */
    public static final class C21431c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f59914e;

        /* renamed from: g */
        public final /* synthetic */ SearchWarningDTO[] f59916g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21431c(SearchWarningDTO[] searchWarningDTOArr, d dVar) {
            super(2, dVar);
            C21428b.this = r5;
            this.f59916g = searchWarningDTOArr;
        }

        /* renamed from: i */
        public final d<s> m9732i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21431c(this.f59916g, dVar);
        }

        /* renamed from: k */
        public final Object m9731k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C21431c(this.f59916g, dVar).m9730s(s.a);
        }

        /* renamed from: s */
        public final Object m9730s(Object obj) {
            a aVar = a.a;
            int i = this.f59914e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C21428b c21428b = C21428b.this;
                SearchWarningDTO[] searchWarningDTOArr = this.f59916g;
                this.f59914e = 1;
                if (c21428b.mo9740d((SearchWarningDTO[]) Arrays.copyOf(searchWarningDTOArr, searchWarningDTOArr.length), this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C21428b(@Named("IO") f fVar, AbstractC21432a abstractC21432a, AbstractC21439b abstractC21439b) {
        l.e(fVar, "asyncContext");
        l.e(abstractC21432a, "searchWarningsStubManager");
        l.e(abstractC21439b, "searchWarningsDao");
        this.f59906a = fVar;
        this.f59907b = abstractC21432a;
        this.f59908c = abstractC21439b;
    }

    /* renamed from: e */
    public static final SearchWarningDTO m9739e(C21428b c21428b, ListAllSearchWarningsResult listAllSearchWarningsResult) {
        Objects.requireNonNull(c21428b);
        String id = listAllSearchWarningsResult.getId();
        l.d(id, "id");
        String header = listAllSearchWarningsResult.getHeader();
        l.d(header, "header");
        String message = listAllSearchWarningsResult.getMessage();
        l.d(message, "message");
        return new SearchWarningDTO(id, header, message, listAllSearchWarningsResult.getBackgroundColor(), listAllSearchWarningsResult.getForegroundColor(), listAllSearchWarningsResult.getIconUrl());
    }

    @Override // p193e.p194a.p1359x4.p1360j.AbstractC21427a
    /* renamed from: a */
    public void mo9743a(SearchWarningDTO... searchWarningDTOArr) {
        l.e(searchWarningDTOArr, "searchWarnings");
        s1.a.a.a.v0.f.d.c3((f) null, new C21431c(searchWarningDTOArr, null), 1, (Object) null);
    }

    @Override // p193e.p194a.p1359x4.p1360j.AbstractC21427a
    /* renamed from: b */
    public Object mo9742b(String str, d<? super SearchWarningDTO> dVar) {
        return this.f59908c.mo9723d(str, dVar);
    }

    @Override // p193e.p194a.p1359x4.p1360j.AbstractC21427a
    /* renamed from: c */
    public Object mo9741c(d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f59906a, new C21429a(null), dVar);
    }

    @Override // p193e.p194a.p1359x4.p1360j.AbstractC21427a
    /* renamed from: d */
    public Object mo9740d(SearchWarningDTO[] searchWarningDTOArr, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f59906a, new C21430b(searchWarningDTOArr, null), dVar);
        return a4 == a.a ? a4 : s.a;
    }
}
