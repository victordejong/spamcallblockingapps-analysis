package p193e.p194a.p195a.p269n.p270j;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.ForwardContentItem;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImForwardInfo;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.mediamanager.AttachmentType;
import com.truecaller.messaging.mediamanager.SortOption;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.C19497e0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.AbstractC5655p5;
import p193e.p194a.p195a.p200c.C5678q5;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5732i;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5733j;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6147o;
import p193e.p194a.p195a.p231g.p233k0.C6161b;
import p193e.p194a.p195a.p231g.p234l0.C6227c;
import p193e.p194a.p195a.p241i1.AbstractC6397d;
import p193e.p194a.p195a.p269n.AbstractC7004h;
import p193e.p194a.p195a.p269n.C6997c;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.n.j.v */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/v.class */
public final class C7041v extends AbstractC20574a<AbstractC7039t> implements AbstractC7038s {

    /* renamed from: d */
    public AbstractC6147o f22705d;

    /* renamed from: h */
    public boolean f22709h;

    /* renamed from: i */
    public long f22710i;

    /* renamed from: l */
    public final f f22713l;

    /* renamed from: m */
    public final Conversation f22714m;

    /* renamed from: n */
    public final AttachmentType f22715n;

    /* renamed from: o */
    public final boolean f22716o;

    /* renamed from: p */
    public final ContentResolver f22717p;

    /* renamed from: q */
    public final AbstractC5733j f22718q;

    /* renamed from: r */
    public final AbstractC19854f<AbstractC6233m> f22719r;

    /* renamed from: s */
    public final AbstractC6397d f22720s;

    /* renamed from: t */
    public final AbstractC7004h f22721t;

    /* renamed from: u */
    public final AbstractC5655p5 f22722u;

    /* renamed from: v */
    public final C6161b f22723v;

    /* renamed from: w */
    public final C6997c f22724w;

    /* renamed from: x */
    public final AbstractC19222c f22725x;

    /* renamed from: y */
    public final AbstractC6392i0 f22726y;

    /* renamed from: e */
    public final Map<Long, C6227c> f22706e = new LinkedHashMap();

    /* renamed from: f */
    public SortOption f22707f = SortOption.DATE_DESC;

    /* renamed from: g */
    public long f22708g = -1;

    /* renamed from: j */
    public final C7040u f22711j = new C7040u(this, new Handler(Looper.getMainLooper()));

    /* renamed from: k */
    public final g f22712k = C25225a.m3978P1(new C7047x(this));

    @e(c = "com.truecaller.messaging.mediamanager.medialist.MediaListPresenter$loadAttachments$1", f = "MediaListPresenter.kt", l = {322}, m = "invokeSuspend")
    /* renamed from: e.a.a.n.j.v$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/v$a.class */
    public static final class C7042a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f22727e;

        /* renamed from: f */
        public int f22728f;

        /* renamed from: h */
        public final /* synthetic */ String f22730h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7042a(String str, d dVar) {
            super(2, dVar);
            C7041v.this = r5;
            this.f22730h = str;
        }

        /* renamed from: i */
        public final d<s> m30234i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7042a(this.f22730h, dVar);
        }

        /* renamed from: k */
        public final Object m30233k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7042a(this.f22730h, dVar).m30232s(s.a);
        }

        /* renamed from: s */
        public final Object m30232s(Object obj) {
            Object obj2;
            C7041v c7041v;
            a aVar = a.a;
            int i = this.f22728f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                c7041v = C7041v.this;
                AbstractC7004h abstractC7004h = c7041v.f22721t;
                Conversation conversation = c7041v.f22714m;
                long j = conversation.f13199a;
                int i2 = conversation.f13217s;
                int i3 = conversation.f13218t;
                AttachmentType attachmentType = c7041v.f22715n;
                SortOption sortOption = c7041v.f22707f;
                String str = this.f22730h;
                this.f22727e = c7041v;
                this.f22728f = 1;
                Object m25975d0 = C10480a.m25975d0(abstractC7004h, j, i2, i3, attachmentType, sortOption, str, null, this, 64, null);
                obj2 = m25975d0;
                if (m25975d0 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
                obj2 = obj;
                c7041v = (C7041v) this.f22727e;
            }
            AbstractC6147o abstractC6147o = (AbstractC6147o) obj2;
            AbstractC6147o abstractC6147o2 = c7041v.f22705d;
            if (abstractC6147o2 != null) {
                abstractC6147o2.close();
            }
            c7041v.f22705d = abstractC6147o;
            AbstractC7039t abstractC7039t = (AbstractC7039t) c7041v.f57683a;
            if (abstractC7039t != null) {
                abstractC7039t.mo30261c0();
            }
            AbstractC7039t abstractC7039t2 = (AbstractC7039t) c7041v.f57683a;
            if (abstractC7039t2 != null) {
                boolean z = true;
                if (abstractC6147o != null) {
                    z = abstractC6147o.getCount() == 0;
                }
                abstractC7039t2.mo30268A1(z);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.mediamanager.medialist.MediaListPresenter$onAttachmentClick$3", f = "MediaListPresenter.kt", l = {119}, m = "invokeSuspend")
    /* renamed from: e.a.a.n.j.v$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/v$b.class */
    public static final class C7043b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f22731e;

        /* renamed from: g */
        public final /* synthetic */ C6227c f22733g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7043b(C6227c c6227c, d dVar) {
            super(2, dVar);
            C7041v.this = r5;
            this.f22733g = c6227c;
        }

        /* renamed from: i */
        public final d<s> m30231i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7043b(this.f22733g, dVar);
        }

        /* renamed from: k */
        public final Object m30230k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7043b(this.f22733g, dVar).m30229s(s.a);
        }

        /* renamed from: s */
        public final Object m30229s(Object obj) {
            AbstractC7039t abstractC7039t;
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f22731e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC5655p5 abstractC5655p5 = C7041v.this.f22722u;
                Uri uri = this.f22733g.f20878h;
                this.f22731e = 1;
                Object m32790a = ((C5678q5) abstractC5655p5).m32790a(uri, this);
                obj = m32790a;
                if (m32790a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                AbstractC7039t abstractC7039t2 = (AbstractC7039t) C7041v.this.f57683a;
                if (abstractC7039t2 != null) {
                    abstractC7039t2.mo30264a(C2752R.string.ConversationFileNoLongerAvailable);
                }
                return sVar;
            }
            String str = this.f22733g.f20877g;
            l.e(str, "contentType");
            if (!r.w(str, "image/", true)) {
                String str2 = this.f22733g.f20877g;
                l.e(str2, "contentType");
                if (!r.w(str2, "video/", true)) {
                    String str3 = this.f22733g.f20877g;
                    l.e(str3, "contentType");
                    if (r.w(str3, "audio/", true)) {
                        C7041v c7041v = C7041v.this;
                        C6227c c6227c = this.f22733g;
                        long j = c7041v.f22708g;
                        if (j != c6227c.f20876f && j != -1) {
                            c7041v.f22718q.reset();
                            c7041v.f22718q.release();
                        }
                        c7041v.f22708g = c6227c.f20876f;
                        if (c7041v.f22718q.isPlaying()) {
                            c7041v.f22718q.pause();
                        } else {
                            c7041v.f22718q.mo32752b((AbstractC5732i) c7041v.f22712k.getValue());
                            c7041v.f22718q.mo32753a(c6227c.f20878h);
                            c7041v.f22718q.mo32751c(null);
                        }
                    } else if (C7041v.this.f22723v.m31723a(C10480a.m26024R2(this.f22733g)) == null) {
                        AbstractC7039t abstractC7039t3 = (AbstractC7039t) C7041v.this.f57683a;
                        if (abstractC7039t3 != null) {
                            abstractC7039t3.mo30264a(C2752R.string.ConversationFileNotSupported);
                        }
                        return sVar;
                    } else {
                        AbstractC7039t abstractC7039t4 = (AbstractC7039t) C7041v.this.f57683a;
                        if (abstractC7039t4 != null) {
                            C6227c c6227c2 = this.f22733g;
                            Uri uri2 = c6227c2.f20878h;
                            String str4 = c6227c2.f20877g;
                            Locale locale = Locale.US;
                            l.d(locale, "Locale.US");
                            Objects.requireNonNull(str4, "null cannot be cast to non-null type java.lang.String");
                            String lowerCase = str4.toLowerCase(locale);
                            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                            if (!abstractC7039t4.mo30255w6(uri2, lowerCase) && (abstractC7039t = (AbstractC7039t) C7041v.this.f57683a) != null) {
                                abstractC7039t.mo30264a(2131887863);
                            }
                        }
                    }
                    return sVar;
                }
            }
            AbstractC7039t abstractC7039t5 = (AbstractC7039t) C7041v.this.f57683a;
            if (abstractC7039t5 != null) {
                abstractC7039t5.mo30262br(C10480a.m26024R2(this.f22733g), C10480a.m25962f3(this.f22733g, C7041v.this.f22714m.f13199a), C7041v.this.f22714m);
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.messaging.mediamanager.medialist.MediaListPresenter$onDeleteConfirmationClicked$1", f = "MediaListPresenter.kt", l = {301}, m = "invokeSuspend")
    /* renamed from: e.a.a.n.j.v$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/v$c.class */
    public static final class C7044c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f22734e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7044c(d dVar) {
            super(2, dVar);
            C7041v.this = r5;
        }

        /* renamed from: i */
        public final d<s> m30228i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7044c(dVar);
        }

        /* renamed from: k */
        public final Object m30227k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7044c(dVar).m30226s(s.a);
        }

        /* JADX WARN: Type inference failed for: r0v59, types: [long] */
        /* renamed from: s */
        public final Object m30226s(Object obj) {
            AbstractC7039t abstractC7039t;
            a aVar = a.a;
            int i = this.f22734e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C7041v c7041v = C7041v.this;
                AbstractC6397d abstractC6397d = c7041v.f22720s;
                Collection<C6227c> values = c7041v.f22706e.values();
                ArrayList arrayList = new ArrayList(C25225a.m4004J(values, 10));
                for (C6227c c6227c : values) {
                    arrayList.add(C10480a.m25962f3(c6227c, C7041v.this.f22714m.f13199a));
                }
                this.f22734e = 1;
                Object mo31311c = abstractC6397d.mo31311c(arrayList, "conversation-deleteMediaFromMediaManager", true, this);
                obj = mo31311c;
                if (mo31311c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            boolean booleanValue = ((Boolean) obj).booleanValue();
            C7041v c7041v2 = C7041v.this;
            if (c7041v2.f22716o) {
                C6997c c6997c = c7041v2.f22724w;
                int size = c7041v2.f22706e.size();
                char c = 0;
                for (C6227c c6227c2 : C7041v.this.f22706e.values()) {
                    c += new Long(c6227c2.f20889s).longValue();
                }
                AbstractC19462a abstractC19462a = c6997c.f22592a;
                LinkedHashMap m8655X = C22128a.m8655X("StorageManagerDelete", "type");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                l.e("type", AnalyticsConstants.NAME);
                l.e("media", "value");
                m8655X.put("type", "media");
                l.e("numItems", AnalyticsConstants.NAME);
                linkedHashMap.put("numItems", Double.valueOf(size));
                double m13549g1 = C19291g.m13549g1(C19291g.m13530n(c), 0, 1);
                l.e("totalSize", AnalyticsConstants.NAME);
                linkedHashMap.put("totalSize", Double.valueOf(m13549g1));
                C17697p3.C17699b m15852a = C17697p3.m15852a();
                m15852a.m15850b("StorageManagerDelete");
                m15852a.m15849c(linkedHashMap);
                C22128a.m8553x0(m15852a, m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
            }
            if (booleanValue && (abstractC7039t = (AbstractC7039t) C7041v.this.f57683a) != null) {
                abstractC7039t.mo30260e();
                abstractC7039t.mo30257o3();
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.mediamanager.medialist.MediaListPresenter$onDownloadClick$1", f = "MediaListPresenter.kt", l = {Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT}, m = "invokeSuspend")
    /* renamed from: e.a.a.n.j.v$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/v$d.class */
    public static final class C7045d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f22736e;

        /* renamed from: g */
        public final /* synthetic */ C6227c f22738g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7045d(C6227c c6227c, d dVar) {
            super(2, dVar);
            C7041v.this = r5;
            this.f22738g = c6227c;
        }

        /* renamed from: i */
        public final d<s> m30225i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7045d(this.f22738g, dVar);
        }

        /* renamed from: k */
        public final Object m30224k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7045d(this.f22738g, dVar).m30223s(s.a);
        }

        /* renamed from: s */
        public final Object m30223s(Object obj) {
            a aVar = a.a;
            int i = this.f22736e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C7041v c7041v = C7041v.this;
                AbstractC6397d abstractC6397d = c7041v.f22720s;
                Message m25962f3 = C10480a.m25962f3(this.f22738g, c7041v.f22714m.f13199a);
                BinaryEntity m26024R2 = C10480a.m26024R2(this.f22738g);
                this.f22736e = 1;
                if (abstractC6397d.mo31312b(m25962f3, m26024R2, this) == aVar) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C7041v(@Named("UI") f fVar, Conversation conversation, AttachmentType attachmentType, @Named("is_delete_mode") boolean z, ContentResolver contentResolver, AbstractC5733j abstractC5733j, AbstractC19854f<AbstractC6233m> abstractC19854f, AbstractC6397d abstractC6397d, AbstractC7004h abstractC7004h, AbstractC5655p5 abstractC5655p5, C6161b c6161b, C6997c c6997c, AbstractC19222c abstractC19222c, AbstractC6392i0 abstractC6392i0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(conversation, "conversation");
        l.e(attachmentType, "attachmentType");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC5733j, "playerAdapter");
        l.e(abstractC19854f, "messagesStorage");
        l.e(abstractC6397d, "messagingActionHelper");
        l.e(abstractC7004h, "messageAttachmentFetcher");
        l.e(abstractC5655p5, "conversationUtil");
        l.e(c6161b, "attachmentsHelper");
        l.e(c6997c, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19222c, "clock");
        l.e(abstractC6392i0, "settings");
        this.f22713l = fVar;
        this.f22714m = conversation;
        this.f22715n = attachmentType;
        this.f22716o = z;
        this.f22717p = contentResolver;
        this.f22718q = abstractC5733j;
        this.f22719r = abstractC19854f;
        this.f22720s = abstractC6397d;
        this.f22721t = abstractC7004h;
        this.f22722u = abstractC5655p5;
        this.f22723v = c6161b;
        this.f22724w = c6997c;
        this.f22725x = abstractC19222c;
        this.f22726y = abstractC6392i0;
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7037r
    /* renamed from: If */
    public Set<Long> mo30253If() {
        return this.f22706e.keySet();
    }

    /* renamed from: Ij */
    public final Collection<Long> m30252Ij() {
        Collection<C6227c> values = this.f22706e.values();
        ArrayList arrayList = new ArrayList(C25225a.m4004J(values, 10));
        for (C6227c c6227c : values) {
            arrayList.add(Long.valueOf(c6227c.f20871a));
        }
        return s1.u.i.d1(arrayList);
    }

    /* renamed from: Jj */
    public final void m30251Jj() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C7042a(this.f22716o ? "message_transport = 2" : null, null), 3, (Object) null);
    }

    /* renamed from: Kj */
    public final void m30250Kj(C6227c c6227c) {
        AbstractC7039t abstractC7039t;
        if (this.f22706e.isEmpty() && (abstractC7039t = (AbstractC7039t) this.f57683a) != null) {
            abstractC7039t.mo30259g();
        }
        if (this.f22706e.containsKey(Long.valueOf(c6227c.f20876f))) {
            this.f22706e.remove(Long.valueOf(c6227c.f20876f));
        } else {
            this.f22706e.put(Long.valueOf(c6227c.f20876f), c6227c);
        }
        if (this.f22706e.isEmpty()) {
            AbstractC7039t abstractC7039t2 = (AbstractC7039t) this.f57683a;
            if (abstractC7039t2 != null) {
                abstractC7039t2.mo30260e();
            }
        } else {
            AbstractC7039t abstractC7039t3 = (AbstractC7039t) this.f57683a;
            if (abstractC7039t3 != null) {
                abstractC7039t3.mo30265T0(String.valueOf(this.f22706e.size()));
            }
        }
        AbstractC7039t abstractC7039t4 = (AbstractC7039t) this.f57683a;
        if (abstractC7039t4 != null) {
            abstractC7039t4.mo30261c0();
        }
        AbstractC7039t abstractC7039t5 = (AbstractC7039t) this.f57683a;
        if (abstractC7039t5 != null) {
            abstractC7039t5.mo30256u1();
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7038s
    /* renamed from: Lg */
    public void mo30249Lg() {
        AbstractC7039t abstractC7039t = (AbstractC7039t) this.f57683a;
        if (abstractC7039t != null) {
            abstractC7039t.mo30267Dc(this.f22707f, this.f22715n != AttachmentType.LINK);
        }
    }

    /* renamed from: Lj */
    public final void m30248Lj(boolean z) {
        this.f22719r.mo11854a().mo31668n(s1.u.i.U0(m30252Ij()), z).mo11828g();
        AbstractC7039t abstractC7039t = (AbstractC7039t) this.f57683a;
        if (abstractC7039t != null) {
            abstractC7039t.mo30260e();
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7034o
    /* renamed from: R9 */
    public boolean mo30247R9(C6227c c6227c) {
        l.e(c6227c, "attachment");
        m30250Kj(c6227c);
        return true;
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7038s
    /* renamed from: Ze */
    public void mo30246Ze(SortOption sortOption) {
        l.e(sortOption, "option");
        this.f22707f = sortOption;
        m30251Jj();
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        AbstractC6147o abstractC6147o = this.f22705d;
        if (abstractC6147o != null) {
            abstractC6147o.close();
        }
        this.f22705d = null;
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7037r
    /* renamed from: c8 */
    public boolean mo30245c8() {
        return this.f22716o;
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7038s
    /* renamed from: d */
    public void mo30244d(int i) {
        CharSequence charSequence;
        ImForwardInfo imForwardInfo;
        Participant participant;
        switch (i) {
            case C2752R.C2754id.action_delete /* 2131361957 */:
                charSequence = "delete";
                break;
            case C2752R.C2754id.action_forward /* 2131361975 */:
                charSequence = "forward";
                break;
            case C2752R.C2754id.action_mark_important /* 2131361989 */:
                charSequence = "markAsImportant";
                break;
            case C2752R.C2754id.action_select_all /* 2131362019 */:
                charSequence = "selectAll";
                break;
            case C2752R.C2754id.action_show_in_chat /* 2131362023 */:
                charSequence = "showInChat";
                break;
            case C2752R.C2754id.action_unmark_important /* 2131362031 */:
                charSequence = "markAsNotImportant";
                break;
            default:
                throw new IllegalArgumentException("Unknown action");
        }
        C6997c c6997c = this.f22724w;
        Conversation conversation = this.f22714m;
        AttachmentType attachmentType = this.f22715n;
        int size = this.f22706e.size();
        Objects.requireNonNull(c6997c);
        l.e(conversation, "conversation");
        l.e(attachmentType, "type");
        l.e(charSequence, "action");
        C19497e0 m30323a = c6997c.m30323a("MediaManagerAction", conversation);
        m30323a.m13279c("action", charSequence);
        m30323a.m13279c("tab", C10480a.m25896t(attachmentType));
        m30323a.f54109b.put("value", Double.valueOf(size));
        c6997c.f22592a.mo13275a(m30323a.m13281a());
        if (i == 2131361989) {
            this.f22724w.m30322b(true, this.f22706e.values());
        } else if (i == 2131362031) {
            this.f22724w.m30322b(false, this.f22706e.values());
        }
        switch (i) {
            case C2752R.C2754id.action_delete /* 2131361957 */:
                AbstractC7039t abstractC7039t = (AbstractC7039t) this.f57683a;
                if (abstractC7039t == null) {
                    return;
                }
                abstractC7039t.mo30266Mw(m30252Ij().size());
                return;
            case C2752R.C2754id.action_forward /* 2131361975 */:
                AbstractC7039t abstractC7039t2 = (AbstractC7039t) this.f57683a;
                if (abstractC7039t2 != null) {
                    Collection<C6227c> values = this.f22706e.values();
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(values, 10));
                    for (C6227c c6227c : values) {
                        Conversation conversation2 = this.f22714m;
                        String mo31078f = this.f22726y.mo31078f();
                        String str = c6227c.f20888r;
                        String str2 = str != null ? str : "";
                        BinaryEntity m26024R2 = str == null || str.length() == 0 ? C10480a.m26024R2(c6227c) : null;
                        int i2 = c6227c.f20874d;
                        String str3 = c6227c.f20895y;
                        if (str3 != null) {
                            if ((c6227c.f20873c & 1) == 0) {
                                mo31078f = c6227c.f20896z;
                            }
                            Participant[] participantArr = conversation2.f13211m;
                            l.d(participantArr, "conversation.participants");
                            int length = participantArr.length;
                            int i3 = 0;
                            while (true) {
                                if (i3 < length) {
                                    participant = participantArr[i3];
                                    if (!(participant.f11569b == 4)) {
                                        i3++;
                                    }
                                } else {
                                    participant = null;
                                }
                            }
                            imForwardInfo = new ImForwardInfo(str3, mo31078f, participant != null ? participant.f11572e : null, c6227c.f20870A);
                        } else {
                            imForwardInfo = null;
                        }
                        if (!(c6227c.f20874d == 2)) {
                            imForwardInfo = null;
                        }
                        arrayList.add(new ForwardContentItem(str2, false, m26024R2, i2, null, imForwardInfo));
                    }
                    abstractC7039t2.mo30258mk(arrayList);
                }
                AbstractC7039t abstractC7039t3 = (AbstractC7039t) this.f57683a;
                if (abstractC7039t3 == null) {
                    return;
                }
                abstractC7039t3.mo30260e();
                return;
            case C2752R.C2754id.action_mark_important /* 2131361989 */:
                m30248Lj(true);
                return;
            case C2752R.C2754id.action_select_all /* 2131362019 */:
                AbstractC6147o abstractC6147o = this.f22705d;
                if (abstractC6147o != null) {
                    abstractC6147o.moveToPosition(-1);
                    while (abstractC6147o.moveToNext()) {
                        C6227c mo31742f2 = abstractC6147o.mo31742f2();
                        this.f22706e.put(Long.valueOf(mo31742f2.f20876f), mo31742f2);
                    }
                }
                AbstractC7039t abstractC7039t4 = (AbstractC7039t) this.f57683a;
                if (abstractC7039t4 != null) {
                    abstractC7039t4.mo30265T0(String.valueOf(this.f22706e.size()));
                }
                AbstractC7039t abstractC7039t5 = (AbstractC7039t) this.f57683a;
                if (abstractC7039t5 != null) {
                    abstractC7039t5.mo30256u1();
                }
                AbstractC7039t abstractC7039t6 = (AbstractC7039t) this.f57683a;
                if (abstractC7039t6 == null) {
                    return;
                }
                abstractC7039t6.mo30261c0();
                return;
            case C2752R.C2754id.action_show_in_chat /* 2131362023 */:
                C6227c c6227c2 = (C6227c) s1.u.i.C(this.f22706e.values());
                if (c6227c2 == null) {
                    return;
                }
                AbstractC7039t abstractC7039t7 = (AbstractC7039t) this.f57683a;
                if (abstractC7039t7 != null) {
                    abstractC7039t7.mo30254y3(this.f22714m.f13199a, c6227c2.f20871a);
                }
                AbstractC7039t abstractC7039t8 = (AbstractC7039t) this.f57683a;
                if (abstractC7039t8 == null) {
                    return;
                }
                abstractC7039t8.mo30260e();
                return;
            case C2752R.C2754id.action_unmark_important /* 2131362031 */:
                m30248Lj(false);
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7037r
    /* renamed from: ja */
    public long mo30243ja() {
        return this.f22709h ? this.f22708g : (char) 65535;
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7038s
    /* renamed from: me */
    public void mo30242me() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C7044c(null), 3, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x008c, code lost:
        if (r0.length() == 0) goto L26;
     */
    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7034o
    /* renamed from: o8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo30241o8(p193e.p194a.p195a.p231g.p234l0.C6227c r10) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p269n.p270j.C7041v.mo30241o8(e.a.a.g.l0.c):boolean");
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7038s
    public void onPause() {
        if (this.f22725x.mo13821a() - this.f22710i > 500) {
            C6997c c6997c = this.f22724w;
            Conversation conversation = this.f22714m;
            AttachmentType attachmentType = this.f22715n;
            int mo30240ph = mo30240ph();
            Objects.requireNonNull(c6997c);
            l.e(conversation, "conversation");
            l.e(attachmentType, "type");
            C19497e0 m30323a = c6997c.m30323a("MediaManagerTabVisited", conversation);
            m30323a.m13279c("tab", C10480a.m25896t(attachmentType));
            m30323a.f54109b.put("value", Double.valueOf(mo30240ph));
            c6997c.f22592a.mo13275a(m30323a.m13281a());
            this.f22710i = RecyclerView.FOREVER_NS;
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7038s
    public void onStart() {
        this.f22710i = this.f22725x.mo13821a();
        if (this.f22716o) {
            this.f22707f = SortOption.SIZE_DESC;
        }
        m30251Jj();
        this.f22717p.registerContentObserver(C8582g0.m28294z(), true, this.f22711j);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7038s
    public void onStop() {
        this.f22717p.unregisterContentObserver(this.f22711j);
        this.f22718q.release();
        this.f22709h = false;
        this.f22708g = -1L;
        AbstractC7039t abstractC7039t = (AbstractC7039t) this.f57683a;
        if (abstractC7039t != null) {
            abstractC7039t.mo30260e();
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7037r
    /* renamed from: ph */
    public int mo30240ph() {
        AbstractC6147o abstractC6147o = this.f22705d;
        return abstractC6147o != null ? abstractC6147o.getCount() : 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x008d, code lost:
        if (r3.f22706e.size() == 1) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00bb, code lost:
        if (r0 != r0.getCount()) goto L4;
     */
    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7038s
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo30239u(int r4) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p269n.p270j.C7041v.mo30239u(int):boolean");
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7038s
    /* renamed from: v7 */
    public void mo30238v7() {
        AbstractC7039t abstractC7039t = (AbstractC7039t) this.f57683a;
        if (abstractC7039t != null) {
            abstractC7039t.finish();
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7034o
    /* renamed from: yg */
    public boolean mo30237yg(C6227c c6227c) {
        l.e(c6227c, "attachment");
        if (!C10480a.m25944j1(c6227c)) {
            return true;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C7045d(c6227c, null), 3, (Object) null);
        return true;
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7038s
    /* renamed from: z */
    public void mo30236z() {
        this.f22706e.clear();
        AbstractC7039t abstractC7039t = (AbstractC7039t) this.f57683a;
        if (abstractC7039t != null) {
            abstractC7039t.mo30261c0();
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7037r
    /* renamed from: zc */
    public C6227c mo30235zc(int i) {
        C6227c c6227c;
        AbstractC6147o abstractC6147o = this.f22705d;
        if (abstractC6147o != null) {
            abstractC6147o.moveToPosition(i);
            c6227c = abstractC6147o.mo31742f2();
        } else {
            c6227c = null;
        }
        return c6227c;
    }
}
