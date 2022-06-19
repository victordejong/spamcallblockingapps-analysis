package p193e.p194a.p195a.p198b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.messaging.conversation.richtext.TextDelimiterFormatter;
import e.m.d.y.n;
import java.util.List;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17408d;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p373a.p386s.C8329a;
import s1.g;
import s1.i;
import s1.k;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.b.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/c.class */
public final class C4943c extends RecyclerView.AbstractC0313c0 implements AbstractC4965k {

    /* renamed from: a */
    public final ListItemX f16808a;

    /* renamed from: b */
    public final TextView f16809b;

    /* renamed from: c */
    public C8243a f16810c;

    /* renamed from: d */
    public C17408d f16811d;

    /* renamed from: e */
    public final g f16812e = C25225a.m3978P1(new C4944a(1, this));

    /* renamed from: f */
    public final g f16813f = C25225a.m3978P1(new C4944a(0, this));

    /* renamed from: g */
    public final View f16814g;

    /* renamed from: h */
    public final AbstractC18905m f16815h;

    /* renamed from: e.a.a.b.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/a/b/c$a.class */
    public static final class C4944a extends m implements a<Drawable> {

        /* renamed from: b */
        public final /* synthetic */ int f16816b;

        /* renamed from: c */
        public final /* synthetic */ Object f16817c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4944a(int i, Object obj) {
            super(0);
            this.f16816b = i;
            this.f16817c = obj;
        }

        public final Object invoke() {
            int i = this.f16816b;
            if (i == 0) {
                Context context = ((C4943c) this.f16817c).f16814g.getContext();
                Object obj = C26467a.f74235a;
                return C26467a.C26470c.m1789b(context, C2752R.C2753drawable.ic_hidden_number_conversation);
            } else if (i != 1) {
                throw null;
            } else {
                Context context2 = ((C4943c) this.f16817c).f16814g.getContext();
                Object obj2 = C26467a.f74235a;
                return C26467a.C26470c.m1789b(context2, C2752R.C2753drawable.ic_tcx_muted);
            }
        }
    }

    /* renamed from: e.a.a.b.c$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/c$b.class */
    public static final class C4945b extends m implements l<View, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4945b() {
            super(1);
            C4943c.this = r4;
        }

        /* renamed from: d */
        public Object m34226d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            C4943c c4943c = C4943c.this;
            c4943c.f16815h.mo14327t(new C18900h("ItemEvent.ACTION_AVATAR_CLICK", c4943c, c4943c.f16808a, (Object) null, 8));
            return s.a;
        }
    }

    /* renamed from: e.a.a.b.c$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/c$c.class */
    public static final class C4946c extends m implements l<View, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4946c() {
            super(1);
            C4943c.this = r4;
        }

        /* renamed from: d */
        public Object m34225d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            C4943c c4943c = C4943c.this;
            return Boolean.valueOf(c4943c.f16815h.mo14327t(new C18900h("ItemEvent.ACTION_AVATAR_LONG_CLICK", c4943c, c4943c.f16808a, (Object) null, 8)));
        }
    }

    /* renamed from: e.a.a.b.c$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/c$d.class */
    public static final class C4947d extends m implements l<View, s> {

        /* renamed from: c */
        public final /* synthetic */ ListItemX.Action f16821c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4947d(ListItemX.Action action) {
            super(1);
            C4943c.this = r4;
            this.f16821c = action;
        }

        /* renamed from: d */
        public Object m34224d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            C4943c c4943c = C4943c.this;
            c4943c.f16815h.mo14327t(new C18900h("ItemEvent.ACTION_BUTTON_CLICK", c4943c, (View) null, this.f16821c, 4));
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4943c(View view, AbstractC18905m abstractC18905m) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        s1.z.c.l.e(abstractC18905m, "eventReceiver");
        this.f16814g = view;
        this.f16815h = abstractC18905m;
        View findViewById = view.findViewById(2131364650);
        s1.z.c.l.d(findViewById, "view.findViewById(R.id.list_item)");
        ListItemX listItemX = (ListItemX) findViewById;
        this.f16808a = listItemX;
        View findViewById2 = listItemX.findViewById(2131366110);
        s1.z.c.l.d(findViewById2, "listItem.findViewById(R.id.subtitle)");
        this.f16809b = (TextView) findViewById2;
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        listItemX.setOnAvatarClickListener(new C4945b());
        listItemX.setOnAvatarLongClickListener(new C4946c());
        n.f1(view, abstractC18905m, this, (String) null, (Object) null, 12);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: A2 */
    public void mo34188A2() {
        this.f16808a.m35635z1(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [android.text.Spannable] */
    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: E */
    public void mo34187E(String str, String str2, ListItemX.SubtitleColor subtitleColor, Drawable drawable, boolean z) {
        s1.z.c.l.e(str, "prefix");
        s1.z.c.l.e(str2, "text");
        s1.z.c.l.e(subtitleColor, RemoteMessageConst.Notification.COLOR);
        ListItemX listItemX = this.f16808a;
        if (z) {
            TextDelimiterFormatter textDelimiterFormatter = TextDelimiterFormatter.f13106b;
            Context context = this.f16814g.getContext();
            s1.z.c.l.d(context, "view.context");
            str2 = TextDelimiterFormatter.m35098c(context, str2, TextDelimiterFormatter.DelimiterVisibility.REMOVE);
        } else if (z) {
            throw new i();
        }
        listItemX.m35641t1(str, str2, subtitleColor, drawable);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: H1 */
    public void mo34186H1() {
        this.f16808a.setTitleIcon((Drawable) this.f16812e.getValue());
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: K1 */
    public void mo34185K1() {
        this.f16808a.setTitleExtraIcon(null);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: N3 */
    public void mo34184N3(CharSequence charSequence, ListItemX.SubtitleColor subtitleColor, Drawable drawable, Drawable drawable2, ListItemX.SubtitleColor subtitleColor2, boolean z, List<k<Integer, Integer>> list, boolean z2) {
        s1.z.c.l.e(charSequence, "text");
        s1.z.c.l.e(subtitleColor, RemoteMessageConst.Notification.COLOR);
        s1.z.c.l.e(subtitleColor2, "firstIconColor");
        ListItemX listItemX = this.f16808a;
        if (z2) {
            TextDelimiterFormatter textDelimiterFormatter = TextDelimiterFormatter.f13106b;
            Context context = this.f16814g.getContext();
            s1.z.c.l.d(context, "view.context");
            charSequence = TextDelimiterFormatter.m35098c(context, charSequence, TextDelimiterFormatter.DelimiterVisibility.REMOVE);
        } else if (z2) {
            throw new i();
        }
        ListItemX.m35644o1(listItemX, charSequence, subtitleColor, drawable, drawable2, subtitleColor2, null, 0, 0, z, null, list, 736, null);
        if (z2) {
            TextDelimiterFormatter textDelimiterFormatter2 = TextDelimiterFormatter.f13106b;
            TextDelimiterFormatter.m35099b(this.f16809b, TextDelimiterFormatter.DelimiterVisibility.REMOVE);
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: R */
    public void mo34183R(boolean z) {
        View view = this.itemView;
        s1.z.c.l.d(view, "itemView");
        view.setActivated(z);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: S */
    public void mo34182S(boolean z, int i) {
        ListItemX.m35645n1(this.f16808a, z, i, 0, 4, null);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: b0 */
    public void mo34181b0(ListItemX.Action action) {
        this.f16808a.m35646m1(action, new C4947d(action));
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: e */
    public void mo34180e(C17408d c17408d) {
        s1.z.c.l.e(c17408d, "presenter");
        this.f16808a.setAvailabilityPresenter((C8329a) c17408d);
        this.f16811d = c17408d;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: f */
    public void mo34179f(String str) {
        ListItemX.m35639v1(this.f16808a, str, null, false, 6, null);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: h */
    public void mo34178h(boolean z) {
        C8243a c8243a = this.f16810c;
        if (c8243a != null) {
            c8243a.m28738pk(z);
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: h0 */
    public void mo34177h0() {
        this.f16808a.m35636y1(true);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: i */
    public void mo34176i(C8243a c8243a) {
        s1.z.c.l.e(c8243a, "presenter");
        this.f16808a.setAvatarPresenter(c8243a);
        this.f16810c = c8243a;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: j1 */
    public void mo34175j1(String str, boolean z) {
        s1.z.c.l.e(str, "text");
        ListItemX.m35637x1(this.f16808a, str, z, 0, 0, 12, null);
    }

    @Override // p193e.p194a.p195a.AbstractC7267u.AbstractC7268a
    /* renamed from: o */
    public C8243a mo29868o() {
        return this.f16810c;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: u0 */
    public void mo34174u0() {
        this.f16808a.setTitleIcon((Drawable) this.f16813f.getValue());
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: x0 */
    public void mo34173x0() {
        this.f16808a.setTitleIcon(null);
    }

    @Override // p193e.p194a.p195a.AbstractC7267u.AbstractC7268a
    /* renamed from: z */
    public C17408d mo29867z() {
        return this.f16811d;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4965k
    /* renamed from: z0 */
    public void mo34172z0(Drawable drawable) {
        this.f16808a.setTitleExtraIcon(drawable);
    }
}
