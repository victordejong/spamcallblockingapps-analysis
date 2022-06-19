package p193e.p194a.p195a.p271o.p274s;

import android.content.ContentResolver;
import android.database.Cursor;
import com.truecaller.messaging.data.types.Conversation;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6145m;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.o.s.l */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/s/l.class */
public final class C7149l extends AbstractC20574a<AbstractC7148k> implements AbstractC7147j {

    /* renamed from: d */
    public AbstractC6145m f22949d;

    /* renamed from: e */
    public String f22950e;

    /* renamed from: f */
    public final f f22951f;

    /* renamed from: g */
    public final ContentResolver f22952g;

    /* renamed from: h */
    public final AbstractC6115g f22953h;

    @e(c = "com.truecaller.messaging.storagemanager.media.MediaStorageManagerPresenter$loadMediaByConversation$1", f = "MediaStorageManagerPresenter.kt", l = {34}, m = "invokeSuspend")
    /* renamed from: e.a.a.o.s.l$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/s/l$a.class */
    public static final class C7150a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f22954e;

        /* renamed from: f */
        public int f22955f;

        @e(c = "com.truecaller.messaging.storagemanager.media.MediaStorageManagerPresenter$loadMediaByConversation$1$1", f = "MediaStorageManagerPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.o.s.l$a$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/o/s/l$a$a.class */
        public static final class C7151a extends i implements p<i0, d<? super AbstractC6145m>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C7151a(d dVar) {
                super(2, dVar);
                C7150a.this = r5;
            }

            /* renamed from: i */
            public final d<s> m30060i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C7151a(dVar);
            }

            /* renamed from: k */
            public final Object m30059k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C7150a c7150a = C7150a.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                C7149l c7149l = C7149l.this;
                ContentResolver contentResolver = c7149l.f22952g;
                String str = c7149l.f22950e;
                if (str == null) {
                    str = "";
                }
                Cursor query = contentResolver.query(C17891a1.f50888a.buildUpon().appendEncodedPath("media_size_by_conversation").appendQueryParameter("filter", str).build(), null, null, null, null);
                return query != null ? C7149l.this.f22953h.mo31780l(query) : null;
            }

            /* renamed from: s */
            public final Object m30058s(Object obj) {
                C25225a.m3932a3(obj);
                C7149l c7149l = C7149l.this;
                ContentResolver contentResolver = c7149l.f22952g;
                String str = c7149l.f22950e;
                if (str == null) {
                    str = "";
                }
                Cursor query = contentResolver.query(C17891a1.f50888a.buildUpon().appendEncodedPath("media_size_by_conversation").appendQueryParameter("filter", str).build(), null, null, null, null);
                return query != null ? C7149l.this.f22953h.mo31780l(query) : null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7150a(d dVar) {
            super(2, dVar);
            C7149l.this = r5;
        }

        /* renamed from: i */
        public final d<s> m30063i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7150a(dVar);
        }

        /* renamed from: k */
        public final Object m30062k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7150a(dVar).m30061s(s.a);
        }

        /* renamed from: s */
        public final Object m30061s(Object obj) {
            Object obj2;
            C7149l c7149l;
            a aVar = a.a;
            int i = this.f22955f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6145m abstractC6145m = C7149l.this.f22949d;
                if (abstractC6145m != null) {
                    abstractC6145m.close();
                }
                C7149l c7149l2 = C7149l.this;
                f fVar = c7149l2.f22951f;
                C7151a c7151a = new C7151a(null);
                this.f22954e = c7149l2;
                this.f22955f = 1;
                obj2 = s1.a.a.a.v0.f.d.a4(fVar, c7151a, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                c7149l = c7149l2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c7149l = (C7149l) this.f22954e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            c7149l.f22949d = (AbstractC6145m) obj2;
            AbstractC7148k abstractC7148k = (AbstractC7148k) C7149l.this.f57683a;
            if (abstractC7148k != null) {
                abstractC7148k.mo30068q5();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7149l(@Named("UI") f fVar, @Named("IO") f fVar2, ContentResolver contentResolver, AbstractC6115g abstractC6115g) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorsFactory");
        this.f22951f = fVar2;
        this.f22952g = contentResolver;
        this.f22953h = abstractC6115g;
    }

    @Override // p193e.p194a.p195a.p271o.p274s.AbstractC7147j
    /* renamed from: C7 */
    public void mo30067C7(String str) {
        this.f22950e = str;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C7150a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p271o.p274s.AbstractC7145h
    /* renamed from: X5 */
    public void mo30066X5(Conversation conversation) {
        l.e(conversation, "conversation");
        AbstractC7148k abstractC7148k = (AbstractC7148k) this.f57683a;
        if (abstractC7148k != null) {
            abstractC7148k.mo30069Px(conversation);
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        AbstractC6145m abstractC6145m = this.f22949d;
        if (abstractC6145m != null) {
            abstractC6145m.close();
        }
        this.f22949d = null;
    }

    @Override // p193e.p194a.p195a.p271o.p274s.AbstractC7147j
    /* renamed from: k9 */
    public void mo30065k9() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C7150a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p271o.p274s.AbstractC7146i
    /* renamed from: nd */
    public AbstractC6145m mo30064nd(AbstractC7132b abstractC7132b, s1.a.l<?> lVar) {
        l.e(abstractC7132b, "itemsPresenter");
        l.e(lVar, "property");
        return this.f22949d;
    }
}
