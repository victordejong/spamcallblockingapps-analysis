package org.mistergroup.shouldianswer.utils;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.customview.p026a.AbstractC0610a;
import java.util.List;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.AbstractC1950y;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.components.p100b.C2326a;
import org.mistergroup.shouldianswer.components.p100b.C2329b;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.model.communityDatabase.CommunityReviewsLoader;
/* renamed from: org.mistergroup.shouldianswer.utils.t */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/t.class */
public final class C3123t {

    /* renamed from: a */
    public LayoutInflater f9209a;

    /* renamed from: b */
    private AbstractC3124a f9210b;

    /* renamed from: h */
    private boolean f9216h;

    /* renamed from: i */
    private boolean f9217i;

    /* renamed from: k */
    private boolean f9219k;

    /* renamed from: l */
    private boolean f9220l;

    /* renamed from: m */
    private boolean f9221m;

    /* renamed from: n */
    private boolean f9222n;

    /* renamed from: o */
    private AbstractC1663b<? super Exception, C1775o> f9223o;

    /* renamed from: p */
    private NumberInfo f9224p;

    /* renamed from: q */
    private final Context f9225q;

    /* renamed from: r */
    private final boolean f9226r;

    /* renamed from: c */
    private String f9211c = "";

    /* renamed from: d */
    private String f9212d = "";

    /* renamed from: e */
    private String f9213e = "";

    /* renamed from: f */
    private String f9214f = "";

    /* renamed from: g */
    private String f9215g = "";

    /* renamed from: j */
    private EnumC2395ag f9218j = EnumC2395ag.UNKNOWN;

    /* renamed from: org.mistergroup.shouldianswer.utils.t$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/t$a.class */
    public interface AbstractC3124a {
        /* renamed from: a */
        void m45a(Exception exc);
    }

    @AbstractC1634f(m3162b = "RingingAlertHelper.kt", m3161c = {58, 65, 72, 73}, m3160d = "init", m3159e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper")
    /* renamed from: org.mistergroup.shouldianswer.utils.t$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/t$b.class */
    public static final class C3125b extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f9227a;

        /* renamed from: b */
        int f9228b;

        /* renamed from: d */
        Object f9230d;

        /* renamed from: e */
        Object f9231e;

        /* renamed from: f */
        Object f9232f;

        /* renamed from: g */
        Object f9233g;

        /* renamed from: h */
        Object f9234h;

        /* renamed from: i */
        Object f9235i;

        /* renamed from: j */
        int f9236j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3125b(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C3123t.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f9227a = obj;
            this.f9228b |= AbstractC0610a.INVALID_ID;
            return C3123t.this.m67a(this);
        }
    }

    @AbstractC1634f(m3162b = "RingingAlertHelper.kt", m3161c = {120, 121}, m3160d = "loadLocalReviews", m3159e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper")
    /* renamed from: org.mistergroup.shouldianswer.utils.t$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/t$c.class */
    public static final class C3126c extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f9237a;

        /* renamed from: b */
        int f9238b;

        /* renamed from: d */
        Object f9240d;

        /* renamed from: e */
        Object f9241e;

        /* renamed from: f */
        Object f9242f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3126c(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C3123t.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f9237a = obj;
            this.f9238b |= AbstractC0610a.INVALID_ID;
            return C3123t.this.m69a((LinearLayout) null, this);
        }
    }

    @AbstractC1634f(m3162b = "RingingAlertHelper.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper$loadLocalReviews$2")
    /* renamed from: org.mistergroup.shouldianswer.utils.t$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/t$d.class */
    public static final class C3127d extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f9243a;

        /* renamed from: c */
        final /* synthetic */ List f9245c;

        /* renamed from: d */
        final /* synthetic */ LinearLayout f9246d;

        /* renamed from: e */
        private AbstractC1786ad f9247e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3127d(List list, LinearLayout linearLayout, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C3123t.this = r5;
            this.f9245c = list;
            this.f9246d = linearLayout;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C3127d) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C3127d c3127d = new C3127d(this.f9245c, this.f9246d, abstractC1641c);
            c3127d.f9247e = (AbstractC1786ad) obj;
            return c3127d;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f9243a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f9247e;
                try {
                    for (C2329b c2329b : this.f9245c) {
                        C3123t.this.m68a(this.f9246d, c2329b);
                    }
                    int i = 0;
                    C3123t.this.m63a(this.f9245c.size() > 0);
                    LinearLayout linearLayout = this.f9246d;
                    if (!C3123t.this.m51j()) {
                        i = 8;
                    }
                    linearLayout.setVisibility(i);
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @AbstractC1634f(m3162b = "RingingAlertHelper.kt", m3161c = {139, 140, 163}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper$loadReviews$1")
    /* renamed from: org.mistergroup.shouldianswer.utils.t$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/t$e.class */
    public static final class C3128e extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f9248a;

        /* renamed from: b */
        Object f9249b;

        /* renamed from: c */
        int f9250c;

        /* renamed from: e */
        final /* synthetic */ LinearLayout f9252e;

        /* renamed from: f */
        final /* synthetic */ ProgressBar f9253f;

        /* renamed from: g */
        final /* synthetic */ AppCompatTextView f9254g;

        /* renamed from: h */
        final /* synthetic */ Button f9255h;

        /* renamed from: i */
        private AbstractC1786ad f9256i;

        @AbstractC1634f(m3162b = "RingingAlertHelper.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper$loadReviews$1$1")
        /* renamed from: org.mistergroup.shouldianswer.utils.t$e$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/t$e$1.class */
        public static final class C31291 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f9257a;

            /* renamed from: c */
            final /* synthetic */ List f9259c;

            /* renamed from: d */
            private AbstractC1786ad f9260d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C31291(List list, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C3128e.this = r5;
                this.f9259c = list;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C31291) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C31291 c31291 = new C31291(this.f9259c, abstractC1641c);
                c31291.f9260d = (AbstractC1786ad) obj;
                return c31291;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f9257a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f9260d;
                    int i = 0;
                    for (C2329b c2329b : this.f9259c) {
                        C3123t.this.m68a(C3128e.this.f9252e, c2329b);
                        int i2 = i + 1;
                        i = i2;
                        if (i2 == 5) {
                            break;
                        }
                    }
                    C3123t.this.m59c(true);
                    C3123t.this.m61b(this.f9259c.size() > 0);
                    if (!C3123t.this.m50k()) {
                        C2329b c2329b2 = new C2329b();
                        c2329b2.m1611a(C3123t.this.m46o().getString(2131755526));
                        c2329b2.m1602c(C3123t.this.m46o().getString(2131755525));
                        c2329b2.m1604b(C3123t.this.m46o().getString(2131755522));
                        C3123t.this.m68a(C3128e.this.f9252e, c2329b2);
                    }
                    C3128e.this.f9252e.setVisibility(0);
                    C3128e.this.f9253f.setVisibility(8);
                    C3128e.this.f9254g.setVisibility(8);
                    C3123t.this.m57d(this.f9259c.size() > 3);
                    C3128e.this.f9255h.setVisibility(C3123t.this.m48m() ? 0 : 8);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @AbstractC1634f(m3162b = "RingingAlertHelper.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper$loadReviews$1$2")
        /* renamed from: org.mistergroup.shouldianswer.utils.t$e$2 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/t$e$2.class */
        public static final class C31302 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f9261a;

            /* renamed from: c */
            final /* synthetic */ Exception f9263c;

            /* renamed from: d */
            private AbstractC1786ad f9264d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C31302(Exception exc, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C3128e.this = r5;
                this.f9263c = exc;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C31302) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C31302 c31302 = new C31302(this.f9263c, abstractC1641c);
                c31302.f9264d = (AbstractC1786ad) obj;
                return c31302;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f9261a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f9264d;
                    C3128e.this.f9254g.setVisibility(0);
                    C3128e.this.f9253f.setVisibility(8);
                    String string = C3123t.this.m46o().getString(2131755129);
                    C1694h.m3122a((Object) string, "context.getString(R.stri…r_review_download_failed)");
                    if (this.f9263c instanceof CommunityReviewsLoader.EServiceTemporarilyUnavailable) {
                        string = C3123t.this.m46o().getString(2131755130);
                        C1694h.m3122a((Object) string, "context.getString(R.stri…rror_service_unavailable)");
                    }
                    C3128e.this.f9254g.setText(string);
                    if (C3123t.this.f9210b != null) {
                        AbstractC3124a abstractC3124a = C3123t.this.f9210b;
                        if (abstractC3124a == null) {
                            C1694h.m3124a();
                        }
                        abstractC3124a.m45a(this.f9263c);
                    }
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3128e(LinearLayout linearLayout, ProgressBar progressBar, AppCompatTextView appCompatTextView, Button button, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C3123t.this = r5;
            this.f9252e = linearLayout;
            this.f9253f = progressBar;
            this.f9254g = appCompatTextView;
            this.f9255h = button;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C3128e) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C3128e c3128e = new C3128e(this.f9252e, this.f9253f, this.f9254g, this.f9255h, abstractC1641c);
            c3128e.f9256i = (AbstractC1786ad) obj;
            return c3128e;
        }

        /* JADX WARN: Not initialized variable reg: 10, insn: 0x0136: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:54:0x011e */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object obj2;
            AbstractC1786ad abstractC1786ad;
            Object a = C1622b.m3174a();
            int i = this.f9250c;
            try {
            } catch (Exception e) {
                this.f9248a = obj2;
                this.f9249b = e;
                this.f9250c = 3;
                if (C1890e.m2686a(C3084c.m192b(), new C31302(e, null), this) == a) {
                    return a;
                }
            }
            if (i == 0) {
                C1771k.m2979a(obj);
                abstractC1786ad = this.f9256i;
                C2326a c2326a = C2326a.f6575a;
                NumberInfo m47n = C3123t.this.m47n();
                this.f9248a = abstractC1786ad;
                this.f9250c = 1;
                Object m1613a = c2326a.m1613a(m47n, true, this);
                obj = m1613a;
                if (m1613a == a) {
                    return a;
                }
            } else if (i != 1) {
                if (i == 2) {
                    List list = (List) this.f9249b;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f9248a;
                    C1771k.m2979a(obj);
                } else if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    Exception exc = (Exception) this.f9249b;
                    AbstractC1786ad abstractC1786ad3 = (AbstractC1786ad) this.f9248a;
                    C1771k.m2979a(obj);
                }
                return C1775o.f4450a;
            } else {
                abstractC1786ad = (AbstractC1786ad) this.f9248a;
                C1771k.m2979a(obj);
            }
            List list2 = (List) obj;
            AbstractC1786ad abstractC1786ad4 = abstractC1786ad;
            AbstractC1950y m192b = C3084c.m192b();
            AbstractC1786ad abstractC1786ad5 = abstractC1786ad;
            AbstractC1786ad abstractC1786ad6 = abstractC1786ad;
            C31291 c31291 = new C31291(list2, null);
            AbstractC1786ad abstractC1786ad7 = abstractC1786ad;
            C31291 c312912 = c31291;
            AbstractC1786ad abstractC1786ad8 = abstractC1786ad;
            this.f9248a = abstractC1786ad;
            AbstractC1786ad abstractC1786ad9 = abstractC1786ad;
            this.f9249b = list2;
            AbstractC1786ad abstractC1786ad10 = abstractC1786ad;
            this.f9250c = 2;
            AbstractC1786ad abstractC1786ad11 = abstractC1786ad;
            if (C1890e.m2686a(m192b, c312912, this) == a) {
                return a;
            }
            return C1775o.f4450a;
        }
    }

    public C3123t(NumberInfo numberInfo, Context context, boolean z) {
        C1694h.m3117b(numberInfo, "numberInfo");
        C1694h.m3117b(context, "context");
        this.f9224p = numberInfo;
        this.f9225q = context;
        this.f9226r = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0071 A[Catch: Exception -> 0x023c, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x023c, blocks: (B:2:0x0000, B:5:0x001a, B:12:0x0043, B:14:0x004d, B:16:0x0057, B:23:0x0071, B:25:0x0083, B:27:0x00bb, B:29:0x00c5, B:37:0x00e9, B:39:0x00f4, B:41:0x00fb, B:43:0x018b, B:52:0x01b3, B:55:0x01f2, B:64:0x0214), top: B:68:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0083 A[Catch: Exception -> 0x023c, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x023c, blocks: (B:2:0x0000, B:5:0x001a, B:12:0x0043, B:14:0x004d, B:16:0x0057, B:23:0x0071, B:25:0x0083, B:27:0x00bb, B:29:0x00c5, B:37:0x00e9, B:39:0x00f4, B:41:0x00fb, B:43:0x018b, B:52:0x01b3, B:55:0x01f2, B:64:0x0214), top: B:68:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01f2 A[Catch: Exception -> 0x023c, TRY_ENTER, TryCatch #0 {Exception -> 0x023c, blocks: (B:2:0x0000, B:5:0x001a, B:12:0x0043, B:14:0x004d, B:16:0x0057, B:23:0x0071, B:25:0x0083, B:27:0x00bb, B:29:0x00c5, B:37:0x00e9, B:39:0x00f4, B:41:0x00fb, B:43:0x018b, B:52:0x01b3, B:55:0x01f2, B:64:0x0214), top: B:68:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0211  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m68a(android.widget.LinearLayout r7, org.mistergroup.shouldianswer.components.p100b.C2329b r8) {
        /*
            Method dump skipped, instructions count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.utils.C3123t.m68a(android.widget.LinearLayout, org.mistergroup.shouldianswer.components.b.b):void");
    }

    /* renamed from: a */
    public final LayoutInflater m71a() {
        LayoutInflater layoutInflater = this.f9209a;
        if (layoutInflater == null) {
            C1694h.m3116b("layoutInflater");
        }
        return layoutInflater;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x010c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m69a(android.widget.LinearLayout r8, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r9) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.utils.C3123t.m69a(android.widget.LinearLayout, kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0321  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m67a(kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r6) {
        /*
            Method dump skipped, instructions count: 872
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.utils.C3123t.m67a(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final void m70a(LinearLayout linearLayout, Button button, ProgressBar progressBar, AppCompatTextView appCompatTextView) {
        C1694h.m3117b(linearLayout, "container");
        C1694h.m3117b(button, "butMoreInfo");
        C1694h.m3117b(progressBar, "progressBar");
        C1694h.m3117b(appCompatTextView, "tvLoadError");
        C3074a.f8976a.m227c("RingingAlertHelper.loadReviews");
        progressBar.setVisibility(0);
        appCompatTextView.setVisibility(8);
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C3128e(linearLayout, progressBar, appCompatTextView, button, null), 2, null);
    }

    /* renamed from: a */
    public final void m66a(AbstractC1663b<? super Exception, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "callback");
        this.f9223o = abstractC1663b;
    }

    /* renamed from: a */
    public final void m63a(boolean z) {
        this.f9219k = z;
    }

    /* renamed from: b */
    public final String m62b() {
        return this.f9211c;
    }

    /* renamed from: b */
    public final void m61b(boolean z) {
        this.f9220l = z;
    }

    /* renamed from: c */
    public final String m60c() {
        return this.f9212d;
    }

    /* renamed from: c */
    public final void m59c(boolean z) {
        this.f9221m = z;
    }

    /* renamed from: d */
    public final String m58d() {
        return this.f9213e;
    }

    /* renamed from: d */
    public final void m57d(boolean z) {
        this.f9222n = z;
    }

    /* renamed from: e */
    public final String m56e() {
        return this.f9214f;
    }

    /* renamed from: f */
    public final String m55f() {
        return this.f9215g;
    }

    /* renamed from: g */
    public final boolean m54g() {
        return this.f9216h;
    }

    /* renamed from: h */
    public final boolean m53h() {
        return this.f9217i;
    }

    /* renamed from: i */
    public final EnumC2395ag m52i() {
        return this.f9218j;
    }

    /* renamed from: j */
    public final boolean m51j() {
        return this.f9219k;
    }

    /* renamed from: k */
    public final boolean m50k() {
        return this.f9220l;
    }

    /* renamed from: l */
    public final boolean m49l() {
        return this.f9221m;
    }

    /* renamed from: m */
    public final boolean m48m() {
        return this.f9222n;
    }

    /* renamed from: n */
    public final NumberInfo m47n() {
        return this.f9224p;
    }

    /* renamed from: o */
    public final Context m46o() {
        return this.f9225q;
    }
}
