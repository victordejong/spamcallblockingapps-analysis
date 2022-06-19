package p193e.p194a.p195a.p200c.p203c;

import com.truecaller.messaging.conversation.draft.SharedTextDraftsArguments;
import com.truecaller.messaging.data.types.Draft;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p280s0.AbstractC7249d;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.c.c.z */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/z.class */
public final class C5168z extends AbstractC20574a<AbstractC5166x> implements AbstractC5165w {

    /* renamed from: d */
    public final boolean f17657d;

    /* renamed from: e */
    public boolean f17658e;

    /* renamed from: f */
    public final SharedTextDraftsArguments f17659f;

    /* renamed from: g */
    public final AbstractC5854d f17660g;

    /* renamed from: h */
    public final AbstractC6392i0 f17661h;

    /* renamed from: i */
    public final f f17662i;

    /* renamed from: j */
    public final AbstractC19223c0 f17663j;

    /* renamed from: k */
    public final AbstractC7249d f17664k;

    /* renamed from: l */
    public final AbstractC5162t f17665l;

    @e(c = "com.truecaller.messaging.conversation.draft.TextDraftPresenterImpl$onSendClicked$1", f = "TextDraftPresenterImpl.kt", l = {77}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.c.z$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/z$a.class */
    public static final class C5169a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f17666e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5169a(d dVar) {
            super(2, dVar);
            C5168z.this = r5;
        }

        /* renamed from: i */
        public final d<s> m33698i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5169a(dVar);
        }

        /* renamed from: k */
        public final Object m33697k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5169a(dVar).m33696s(s.a);
        }

        /* renamed from: s */
        public final Object m33696s(Object obj) {
            a aVar = a.a;
            int i = this.f17666e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5168z c5168z = C5168z.this;
                this.f17666e = 1;
                if (c5168z.m33705Ij(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C5168z.this.f17658e = false;
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.draft.TextDraftPresenterImpl", f = "TextDraftPresenterImpl.kt", l = {94, 119}, m = "sendMessagesInternal")
    /* renamed from: e.a.a.c.c.z$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/z$b.class */
    public static final class C5170b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f17668d;

        /* renamed from: e */
        public int f17669e;

        /* renamed from: g */
        public Object f17671g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5170b(d dVar) {
            super(dVar);
            C5168z.this = r4;
        }

        /* renamed from: s */
        public final Object m33695s(Object obj) {
            this.f17668d = obj;
            this.f17669e |= Integer.MIN_VALUE;
            return C5168z.this.m33705Ij(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5168z(SharedTextDraftsArguments sharedTextDraftsArguments, AbstractC5854d abstractC5854d, AbstractC6392i0 abstractC6392i0, @Named("UI") f fVar, AbstractC19223c0 abstractC19223c0, AbstractC7249d abstractC7249d, AbstractC5162t abstractC5162t) {
        super(fVar);
        l.e(sharedTextDraftsArguments, "sharedTextDraftsArguments");
        l.e(abstractC5854d, "draftSender");
        l.e(abstractC6392i0, "messageSettings");
        l.e(fVar, "uiContext");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC7249d, "defaultSmsHelper");
        l.e(abstractC5162t, "linkPreviewHelper");
        this.f17659f = sharedTextDraftsArguments;
        this.f17660g = abstractC5854d;
        this.f17661h = abstractC6392i0;
        this.f17662i = fVar;
        this.f17663j = abstractC19223c0;
        this.f17664k = abstractC7249d;
        this.f17665l = abstractC5162t;
        List<Draft> list = sharedTextDraftsArguments.f13083a;
        boolean z = true;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (Draft draft : list) {
                if (draft.f13279n == 2) {
                    break;
                }
            }
        }
        z = false;
        this.f17657d = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0353  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m33705Ij(s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 920
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p203c.C5168z.m33705Ij(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.a.c.c.x, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC5166x abstractC5166x) {
        AbstractC5166x abstractC5166x2 = abstractC5166x;
        l.e(abstractC5166x2, "presenterView");
        this.f57683a = abstractC5166x2;
        boolean z = this.f17657d || this.f17659f.f13084b;
        if (z) {
            abstractC5166x2.mo33707x1();
        }
        abstractC5166x2.setText(this.f17659f.f13086d);
        abstractC5166x2.mo33714M3(z ? 2130970017 : 2130969964);
        this.f17665l.mo33715b(new C5167y(abstractC5166x2));
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5165w
    /* renamed from: Z */
    public void mo33704Z() {
        if (this.f17658e) {
            return;
        }
        this.f17658e = true;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5169a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5165w
    /* renamed from: k */
    public void mo33703k(CharSequence charSequence, boolean z) {
        l.e(charSequence, "text");
        if (this.f17657d) {
            this.f17665l.m33717k(charSequence.toString(), z);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5165w
    /* renamed from: l */
    public void mo33702l() {
        AbstractC5166x abstractC5166x = (AbstractC5166x) this.f57683a;
        if (abstractC5166x != null) {
            abstractC5166x.mo33709n1();
        }
        this.f17665l.m33716l();
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5165w
    /* renamed from: m */
    public void mo33701m() {
        AbstractC5166x abstractC5166x = (AbstractC5166x) this.f57683a;
        if (abstractC5166x != null) {
            abstractC5166x.finish();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5165w
    /* renamed from: t */
    public void mo33700t() {
        this.f17661h.mo31134U3(true);
        mo33704Z();
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5165w
    /* renamed from: w */
    public void mo33699w() {
        this.f17661h.mo31134U3(false);
        mo33704Z();
    }
}
