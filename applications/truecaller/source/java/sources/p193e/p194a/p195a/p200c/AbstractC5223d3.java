package p193e.p194a.p195a.p200c;

import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.LinkPreviewEntity;
import com.truecaller.messaging.linkpreviews.LinkMetaData;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.concurrent.CancellationException;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p283v0.AbstractC7283a;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.g0;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.c.d3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/d3.class */
public abstract class AbstractC5223d3 {

    /* renamed from: a */
    public LinkMetaData f17921a;

    /* renamed from: b */
    public String f17922b;

    /* renamed from: c */
    public p1 f17923c;

    /* renamed from: d */
    public final AbstractC7283a f17924d;

    /* renamed from: e */
    public final f f17925e;

    /* renamed from: f */
    public final a<g0> f17926f;

    /* renamed from: g */
    public final AbstractC19462a f17927g;

    @e(c = "com.truecaller.messaging.conversation.BaseEditTextLinkPreviewPresenterHelper$extractLinkPreviewIfNeeded$2$1", f = "BaseEditTextLinkPreviewPresenterHelper.kt", l = {92}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.d3$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d3$a.class */
    public static final class C5224a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f17928e;

        /* renamed from: f */
        public final /* synthetic */ LinkMetaData f17929f;

        /* renamed from: g */
        public final /* synthetic */ AbstractC5223d3 f17930g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5224a(LinkMetaData linkMetaData, d dVar, AbstractC5223d3 abstractC5223d3) {
            super(2, dVar);
            this.f17929f = linkMetaData;
            this.f17930g = abstractC5223d3;
        }

        /* renamed from: i */
        public final d<s> m33553i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5224a(this.f17929f, dVar, this.f17930g);
        }

        /* renamed from: k */
        public final Object m33552k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5224a(this.f17929f, dVar, this.f17930g).m33551s(s.a);
        }

        /* renamed from: s */
        public final Object m33551s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f17928e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC7283a abstractC7283a = this.f17930g.f17924d;
                LinkMetaData linkMetaData = this.f17929f;
                this.f17928e = 1;
                if (abstractC7283a.mo29852d(linkMetaData, this) == aVar) {
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

    @e(c = "com.truecaller.messaging.conversation.BaseEditTextLinkPreviewPresenterHelper$extractLinkPreviewIfNeeded$3", f = "BaseEditTextLinkPreviewPresenterHelper.kt", l = {96}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.d3$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/d3$b.class */
    public static final class C5225b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f17931e;

        /* renamed from: f */
        public int f17932f;

        /* renamed from: h */
        public final /* synthetic */ String f17934h;

        @e(c = "com.truecaller.messaging.conversation.BaseEditTextLinkPreviewPresenterHelper$extractLinkPreviewIfNeeded$3$1", f = "BaseEditTextLinkPreviewPresenterHelper.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.d3$b$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/d3$b$a.class */
        public static final class C5226a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ LinkMetaData f17936f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5226a(LinkMetaData linkMetaData, d dVar) {
                super(2, dVar);
                C5225b.this = r5;
                this.f17936f = linkMetaData;
            }

            /* renamed from: i */
            public final d<s> m33547i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5226a(this.f17936f, dVar);
            }

            /* renamed from: k */
            public final Object m33546k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C5225b c5225b = C5225b.this;
                LinkMetaData linkMetaData = this.f17936f;
                dVar.getContext();
                s sVar = s.a;
                C25225a.m3932a3(sVar);
                AbstractC5223d3 abstractC5223d3 = AbstractC5223d3.this;
                abstractC5223d3.f17921a = linkMetaData;
                abstractC5223d3.mo32993i();
                return sVar;
            }

            /* renamed from: s */
            public final Object m33545s(Object obj) {
                C25225a.m3932a3(obj);
                AbstractC5223d3 abstractC5223d3 = AbstractC5223d3.this;
                abstractC5223d3.f17921a = this.f17936f;
                abstractC5223d3.mo32993i();
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5225b(String str, d dVar) {
            super(2, dVar);
            AbstractC5223d3.this = r5;
            this.f17934h = str;
        }

        /* renamed from: i */
        public final d<s> m33550i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C5225b c5225b = new C5225b(this.f17934h, dVar);
            c5225b.f17931e = obj;
            return c5225b;
        }

        /* renamed from: k */
        public final Object m33549k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C5225b c5225b = new C5225b(this.f17934h, dVar);
            c5225b.f17931e = obj;
            return c5225b.m33548s(s.a);
        }

        /* renamed from: s */
        public final Object m33548s(Object obj) {
            i0 i0Var;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f17932f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i0Var = (i0) this.f17931e;
                AbstractC7283a abstractC7283a = AbstractC5223d3.this.f17924d;
                String str = this.f17934h;
                Long l = new Long(800L);
                this.f17931e = i0Var;
                this.f17932f = 1;
                obj = abstractC7283a.mo29853c(str, l, this);
                if (obj == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                i0Var = (i0) this.f17931e;
                C25225a.m3932a3(obj);
            }
            s1.a.a.a.v0.f.d.w2(i0Var, AbstractC5223d3.this.f17925e, (j0) null, new C5226a((LinkMetaData) obj, null), 2, (Object) null);
            return s.a;
        }
    }

    public AbstractC5223d3(AbstractC7283a abstractC7283a, C20592g c20592g, @Named("UI") f fVar, @Named("LinkPreviewExtractorContext") a<g0> aVar, AbstractC19462a abstractC19462a) {
        l.e(abstractC7283a, "linkMetaDataExtractor");
        l.e(c20592g, "featuresRegistry");
        l.e(fVar, "uiContext");
        l.e(aVar, "linkPreviewContext");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f17924d = abstractC7283a;
        this.f17925e = fVar;
        this.f17926f = aVar;
        this.f17927g = abstractC19462a;
    }

    /* renamed from: a */
    public final void m33560a() {
        p1 p1Var = this.f17923c;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f17921a = null;
        mo32993i();
    }

    /* renamed from: c */
    public final void m33559c() {
        p1 p1Var = this.f17923c;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
    }

    /* renamed from: e */
    public final void m33558e(Draft draft, String str) {
        LinkMetaData.Type type;
        l.e(draft, "draft");
        l.e(str, "inputText");
        BinaryEntity[] binaryEntityArr = draft.f13272g;
        l.d(binaryEntityArr, "draft.media");
        ArrayList arrayList = new ArrayList();
        for (BinaryEntity binaryEntity : binaryEntityArr) {
            if (binaryEntity instanceof LinkPreviewEntity) {
                arrayList.add(binaryEntity);
            }
        }
        LinkPreviewEntity linkPreviewEntity = (LinkPreviewEntity) s1.u.i.D(arrayList);
        if (linkPreviewEntity != null) {
            String str2 = linkPreviewEntity.f13352A;
            String str3 = linkPreviewEntity.f13358y;
            String str4 = linkPreviewEntity.f13359z;
            Uri uri = linkPreviewEntity.f13357x;
            String uri2 = uri != null ? uri.toString() : null;
            String str5 = linkPreviewEntity.f13307b;
            int hashCode = str5.hashCode();
            if (hashCode != -2117195870) {
                if (hashCode == 89941840 && str5.equals("application/vnd.truecaller.linkpreview.media")) {
                    type = LinkMetaData.Type.MEDIA;
                    this.f17921a = new LinkMetaData(str2, str3, str4, uri2, type);
                }
                type = LinkMetaData.Type.DEFAULT;
                this.f17921a = new LinkMetaData(str2, str3, str4, uri2, type);
            } else {
                if (str5.equals("application/vnd.truecaller.linkpreview.playable")) {
                    type = LinkMetaData.Type.PLAYABLE;
                    this.f17921a = new LinkMetaData(str2, str3, str4, uri2, type);
                }
                type = LinkMetaData.Type.DEFAULT;
                this.f17921a = new LinkMetaData(str2, str3, str4, uri2, type);
            }
        }
        m33557g(str, true);
    }

    /* renamed from: g */
    public final void m33557g(String str, boolean z) {
        h1 h1Var = h1.a;
        p1 p1Var = this.f17923c;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        LinkMetaData linkMetaData = this.f17921a;
        if (!z) {
            linkMetaData = null;
        }
        if (linkMetaData != null) {
            Object obj = this.f17926f.get();
            l.d(obj, "linkPreviewContext.get()");
            s1.a.a.a.v0.f.d.w2(h1Var, (f) obj, (j0) null, new C5224a(linkMetaData, null, this), 2, (Object) null);
        }
        Object obj2 = this.f17926f.get();
        l.d(obj2, "linkPreviewContext.get()");
        this.f17923c = s1.a.a.a.v0.f.d.w2(h1Var, (f) obj2, (j0) null, new C5225b(str, null), 2, (Object) null);
    }

    public final BinaryEntity getEntity() {
        LinkMetaData linkMetaData = this.f17921a;
        BinaryEntity binaryEntity = null;
        if (linkMetaData != null) {
            if (!(!l.a(linkMetaData.f13534a, this.f17922b))) {
                linkMetaData = null;
            }
            binaryEntity = null;
            if (linkMetaData != null) {
                binaryEntity = C10480a.m26012U2(linkMetaData);
            }
        }
        return binaryEntity;
    }

    /* renamed from: h */
    public final LinkMetaData m33556h() {
        LinkMetaData linkMetaData = this.f17921a;
        if (linkMetaData == null || !(!l.a(linkMetaData.f13534a, this.f17922b))) {
            linkMetaData = null;
        }
        return linkMetaData;
    }

    /* renamed from: i */
    public abstract void mo32993i();

    /* renamed from: k */
    public final void m33555k(CharSequence charSequence, boolean z) {
        l.e(charSequence, "text");
        if (z) {
            m33557g(charSequence.toString(), false);
        }
    }

    /* renamed from: l */
    public final void m33554l() {
        LinkMetaData linkMetaData = this.f17921a;
        this.f17922b = linkMetaData != null ? linkMetaData.f13534a : null;
        this.f17921a = null;
        p1 p1Var = this.f17923c;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        mo32993i();
        AbstractC19462a abstractC19462a = this.f17927g;
        LinkedHashMap m8655X = C22128a.m8655X("ImLinkPreview", "type");
        C22128a.m8684N0("ImLinkPreview", C22128a.m8652Y("action", AnalyticsConstants.NAME, "discard", "value", m8655X, "action", "discard"), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }
}
