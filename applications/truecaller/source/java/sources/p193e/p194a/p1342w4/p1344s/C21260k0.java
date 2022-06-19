package p193e.p194a.p1342w4.p1344s;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.view.View;
import android.widget.TextView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.messaging.conversation.richtext.TextDelimiterFormatter;
import e.f.a.r.k.c;
import java.util.List;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17408d;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1342w4.p1344s.AbstractC21282r0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p373a.p386s.C8329a;
import p193e.p194a.p682e.C13338z0;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
import p193e.p194a.p682e.p700d2.C13228e;
import p193e.p194a.p804h.C14653d0;
import s1.g;
import s1.k;
import s1.n;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.w4.s.k0 */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/k0.class */
public final class C21260k0 extends AbstractC13209t.C13211b implements AbstractC21282r0.AbstractC21283a, C13338z0.AbstractC13339a {

    /* renamed from: b */
    public final Context f59573b;

    /* renamed from: c */
    public final g f59574c;

    /* renamed from: d */
    public final g f59575d;

    /* renamed from: e */
    public final ListItemX f59576e;

    /* renamed from: f */
    public final ComponentCallbacks2C22236i f59577f;

    /* renamed from: g */
    public final AbstractC18904l f59578g;

    /* renamed from: h */
    public final /* synthetic */ C14653d0 f59579h = new C14653d0();

    /* renamed from: e.a.w4.s.k0$a */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/k0$a.class */
    public static final class C21261a extends m implements a<C17408d> {

        /* renamed from: c */
        public final /* synthetic */ AbstractC17405c f59581c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC19222c f59582d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21261a(AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c) {
            super(0);
            C21260k0.this = r4;
            this.f59581c = abstractC17405c;
            this.f59582d = abstractC19222c;
        }

        public Object invoke() {
            return new C17408d(new C19235i0(C21260k0.this.f59573b), this.f59581c, this.f59582d);
        }
    }

    /* renamed from: e.a.w4.s.k0$b */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/k0$b.class */
    public static final class C21262b extends m implements a<C8243a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21262b() {
            super(0);
            C21260k0.this = r4;
        }

        public Object invoke() {
            return new C8243a(new C19235i0(C21260k0.this.f59573b));
        }
    }

    /* renamed from: e.a.w4.s.k0$c */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/k0$c.class */
    public static final class C21263c extends m implements l<View, s> {

        /* renamed from: c */
        public final /* synthetic */ Contact f59585c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21263c(Contact contact) {
            super(1);
            C21260k0.this = r4;
            this.f59585c = contact;
        }

        /* renamed from: d */
        public Object m10015d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            C21260k0 c21260k0 = C21260k0.this;
            c21260k0.f59578g.mo10026v(new C18900h("Call", c21260k0, (View) null, this.f59585c, 4));
            return s.a;
        }
    }

    /* renamed from: e.a.w4.s.k0$d */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/k0$d.class */
    public static final class RunnableC21264d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ TextView f59586a;

        /* renamed from: b */
        public final /* synthetic */ l f59587b;

        /* renamed from: c */
        public final /* synthetic */ String f59588c;

        public RunnableC21264d(TextView textView, l lVar, String str) {
            this.f59586a = textView;
            this.f59587b = lVar;
            this.f59588c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Layout layout = this.f59586a.getLayout();
            if (layout != null) {
                l lVar = this.f59587b;
                int ellipsisStart = layout.getEllipsisStart(0);
                String str = this.f59588c;
                lVar.d(Integer.valueOf(Math.max(ellipsisStart - ((str != null ? str.length() : 0) + 3), 0)));
            }
        }
    }

    /* renamed from: e.a.w4.s.k0$e */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/k0$e.class */
    public static final class C21265e extends c<Drawable> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21265e(int i, int i2, int i3) {
            super(i2, i3);
            C21260k0.this = r5;
        }

        /* renamed from: d */
        public void m10014d(Drawable drawable) {
            ListItemX.m35642r1(C21260k0.this.f59576e, drawable, 0, 2, null);
        }

        /* renamed from: e */
        public void m10013e(Object obj, AbstractC22604d abstractC22604d) {
            Drawable drawable = (Drawable) obj;
            s1.z.c.l.e(drawable, Constants.VAST_RESOURCE);
            ListItemX.m35642r1(C21260k0.this.f59576e, drawable, 0, 2, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21260k0(ListItemX listItemX, AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c, ComponentCallbacks2C22236i componentCallbacks2C22236i, AbstractC18904l abstractC18904l) {
        super(listItemX);
        s1.z.c.l.e(listItemX, "listItem");
        s1.z.c.l.e(abstractC17405c, "availabilityManager");
        s1.z.c.l.e(abstractC19222c, "clock");
        s1.z.c.l.e(componentCallbacks2C22236i, "requestManager");
        s1.z.c.l.e(abstractC18904l, "eventListener");
        this.f59576e = listItemX;
        this.f59577f = componentCallbacks2C22236i;
        this.f59578g = abstractC18904l;
        Context context = listItemX.getContext();
        s1.z.c.l.d(context, "listItem.context");
        this.f59573b = context;
        n m3978P1 = C25225a.m3978P1(new C21262b());
        this.f59574c = m3978P1;
        n m3978P12 = C25225a.m3978P1(new C21261a(abstractC17405c, abstractC19222c));
        this.f59575d = m3978P12;
        listItemX.setAvatarPresenter((C8243a) m3978P1.getValue());
        listItemX.setAvailabilityPresenter((C8329a) ((C17408d) m3978P12.getValue()));
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: B */
    public boolean mo9976B() {
        return this.f59579h.f42140b;
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: F */
    public String mo9975F() {
        return this.f59579h.f42157a;
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21282r0.AbstractC21283a
    /* renamed from: G3 */
    public void mo10003G3(String str) {
        if (!(str == null || str.length() == 0)) {
            this.f59576e.setSubTitlePrefix(str);
        }
    }

    @Override // p193e.p194a.p804h.AbstractC14723r
    /* renamed from: H2 */
    public void mo10025H2(String str) {
        ListItemX listItemX = this.f59576e;
        if (str == null) {
            str = "";
        }
        ListItemX.m35644o1(listItemX, str, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21282r0.AbstractC21283a
    /* renamed from: I4 */
    public void mo10002I4(Contact contact) {
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        this.f59576e.m35649j1(ListItemX.Action.CALL, new C21263c(contact));
    }

    @Override // p193e.p194a.p804h.AbstractC14694i0
    /* renamed from: K */
    public void mo10024K(boolean z) {
        this.f59576e.m35636y1(z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
        if (r19 != null) goto L21;
     */
    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21282r0.AbstractC21283a
    /* renamed from: M1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo10001M1(p193e.p194a.p372b0.p426p.C8551c r16) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1342w4.p1344s.C21260k0.mo10001M1(e.a.b0.p.c):void");
    }

    @Override // p193e.p194a.p804h.AbstractC14690g0
    /* renamed from: O0 */
    public void mo10023O0(int i, int i2) {
        ListItemX listItemX = this.f59576e;
        CharSequence m47325getTitle = listItemX.m47325getTitle();
        if (m47325getTitle == null) {
            m47325getTitle = "";
        }
        ListItemX.m35637x1(listItemX, m47325getTitle, false, i, i2, 2, null);
    }

    @Override // p193e.p194a.p804h.AbstractC14744z
    /* renamed from: U2 */
    public void mo10022U2(String str, String str2, boolean z, l<? super Integer, s> lVar) {
        TextView textView;
        s1.z.c.l.e(lVar, "callback");
        if (str == null || !z) {
            ListItemX.m35644o1(this.f59576e, str != null ? str : "", null, null, null, null, null, 0, 0, false, null, null, 2046, null);
        } else {
            ListItemX listItemX = this.f59576e;
            TextDelimiterFormatter textDelimiterFormatter = TextDelimiterFormatter.f13106b;
            ListItemX.m35644o1(listItemX, TextDelimiterFormatter.m35098c(this.f59573b, str, TextDelimiterFormatter.DelimiterVisibility.REMOVE), null, null, null, null, null, 0, 0, false, null, null, 2046, null);
        }
        if (!(str == null || str.length() == 0) && (textView = (TextView) this.f59576e.findViewById(2131366110)) != null) {
            textView.post(new RunnableC21264d(textView, lVar, str2));
        }
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: Y3 */
    public void mo9974Y3(boolean z) {
        this.f59579h.f42140b = z;
    }

    @Override // p193e.p194a.p804h.AbstractC14682f0
    /* renamed from: Z3 */
    public void mo10021Z3(String str, Integer num, SpamCategoryModel spamCategoryModel) {
        Drawable drawable;
        String iconUrl;
        ListItemX listItemX = this.f59576e;
        if (str == null) {
            str = "";
        }
        if (num == null) {
            drawable = null;
        } else {
            Context context = this.f59573b;
            int intValue = num.intValue();
            Object obj = C26467a.f74235a;
            drawable = C26467a.C26470c.m1789b(context, intValue);
        }
        ListItemX.m35644o1(listItemX, str, ListItemX.SubtitleColor.RED, drawable, null, null, null, 0, 0, false, 2131889878, null, 1528, null);
        ListItemX.m35642r1(this.f59576e, null, 0, 2, null);
        if (spamCategoryModel == null || (iconUrl = spamCategoryModel.getIconUrl()) == null) {
            return;
        }
        int dimensionPixelSize = this.f59573b.getResources().getDimensionPixelSize(2131166456);
        ComponentCallbacks2C22222c.m8445f(this.f59576e).mo8407r(iconUrl).mo8095m().m8429M(new C21265e(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize));
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21282r0.AbstractC21283a
    /* renamed from: a */
    public void mo10000a(AvatarXConfig avatarXConfig) {
        s1.z.c.l.e(avatarXConfig, "avatarXConfig");
        C8243a.m28739ok((C8243a) this.f59574c.getValue(), avatarXConfig, false, 2, null);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21282r0.AbstractC21283a
    /* renamed from: b2 */
    public void mo9999b2() {
        this.f59576e.m35649j1(null, null);
    }

    @Override // p193e.p194a.p804h.AbstractC14717p
    /* renamed from: e1 */
    public void mo10020e1(int i, int i2) {
        ListItemX listItemX = this.f59576e;
        CharSequence subTitle = listItemX.getSubTitle();
        if (subTitle == null) {
            subTitle = "";
        }
        ListItemX.m35644o1(listItemX, subTitle, null, null, null, null, null, i, i2, false, null, null, 1854, null);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21282r0.AbstractC21283a
    /* renamed from: f */
    public void mo9998f(String str) {
        ListItemX.m35639v1(this.f59576e, str, null, false, 6, null);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21282r0.AbstractC21283a
    /* renamed from: f1 */
    public void mo9997f1(CharSequence charSequence, ListItemX.SubtitleColor subtitleColor, Drawable drawable, Drawable drawable2, ListItemX.SubtitleColor subtitleColor2, boolean z, List<k<Integer, Integer>> list) {
        s1.z.c.l.e(charSequence, "text");
        s1.z.c.l.e(subtitleColor, RemoteMessageConst.Notification.COLOR);
        s1.z.c.l.e(subtitleColor2, "firstIconColor");
        ListItemX.m35644o1(this.f59576e, charSequence, subtitleColor, drawable, drawable2, subtitleColor2, null, 0, 0, z, null, list, 736, null);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21282r0.AbstractC21283a
    /* renamed from: g4 */
    public void mo9996g4(boolean z) {
        if (!z) {
            this.f59576e.setTitleExtraIcon(null);
            return;
        }
        ListItemX listItemX = this.f59576e;
        Context context = this.f59576e.getContext();
        s1.z.c.l.d(context, "listItem.context");
        listItemX.setTitleExtraIcon(new C13228e(context, C2752R.string.archived_conversations_caption, 2131232480));
    }

    @Override // p193e.p194a.p804h.AbstractC14696j0
    /* renamed from: i2 */
    public void mo10019i2(boolean z) {
        this.f59576e.m35635z1(z);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21282r0.AbstractC21283a
    /* renamed from: j */
    public void mo9995j(String str) {
        ((C17408d) this.f59575d.getValue()).m16140Kj(str);
    }

    @Override // p193e.p194a.p804h.AbstractC14744z
    /* renamed from: k3 */
    public void mo10018k3(String str, int i, int i2) {
        s1.z.c.l.e(str, "text");
        ListItemX.m35644o1(this.f59576e, str, null, null, null, null, null, i, i2, false, null, null, 1854, null);
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: n */
    public void mo9973n(String str) {
        this.f59579h.f42157a = str;
    }

    @Override // p193e.p194a.p804h.AbstractC14703n
    /* renamed from: o0 */
    public void mo10017o0(String str) {
        ListItemX.m35639v1(this.f59576e, str, null, false, 6, null);
    }

    @Override // p193e.p194a.p804h.AbstractC14721q
    /* renamed from: p0 */
    public void mo10016p0() {
        ListItemX.m35642r1(this.f59576e, null, 0, 2, null);
    }

    @Override // p193e.p194a.p804h.AbstractC14692h0
    public void setTitle(String str) {
        ListItemX listItemX = this.f59576e;
        if (str == null) {
            str = "";
        }
        ListItemX.m35637x1(listItemX, str, false, 0, 0, 14, null);
    }
}
