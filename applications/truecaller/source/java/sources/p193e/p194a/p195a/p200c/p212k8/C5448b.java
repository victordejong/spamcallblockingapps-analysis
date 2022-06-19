package p193e.p194a.p195a.p200c.p212k8;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.messaging.conversation.richtext.TextDelimiterFormatter;
import e.m.d.y.n;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17408d;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p373a.p386s.C8329a;
import p193e.p194a.p682e.p700d2.C13228e;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.a.c.k8.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/b.class */
public final class C5448b extends RecyclerView.AbstractC0313c0 implements AbstractC5467k {

    /* renamed from: a */
    public final ListItemX f18562a;

    /* renamed from: b */
    public C8243a f18563b;

    /* renamed from: c */
    public C17408d f18564c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5448b(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        n.f1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        View findViewById = view.findViewById(2131364650);
        l.d(findViewById, "view.findViewById(R.id.list_item)");
        this.f18562a = (ListItemX) findViewById;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [android.text.Spannable] */
    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5467k
    /* renamed from: E */
    public void mo33093E(String str, String str2, ListItemX.SubtitleColor subtitleColor, Drawable drawable, boolean z) {
        l.e(str, "prefix");
        l.e(str2, "text");
        l.e(subtitleColor, RemoteMessageConst.Notification.COLOR);
        l.e(drawable, "firstIcon");
        ListItemX listItemX = this.f18562a;
        if (z) {
            TextDelimiterFormatter textDelimiterFormatter = TextDelimiterFormatter.f13106b;
            str2 = TextDelimiterFormatter.m35098c(C22128a.m8700J(this.itemView, "itemView", "itemView.context"), str2, TextDelimiterFormatter.DelimiterVisibility.REMOVE);
        } else if (z) {
            throw new i();
        }
        listItemX.m35641t1(str, str2, subtitleColor, drawable);
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5467k
    /* renamed from: H4 */
    public void mo33092H4(int i, int i2) {
        Context context = this.f18562a.getContext();
        l.d(context, "listItem.context");
        this.f18562a.setTitleExtraIcon(new C13228e(context, i, i2));
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5467k
    /* renamed from: R */
    public void mo33091R(boolean z) {
        View view = this.itemView;
        l.d(view, "itemView");
        view.setActivated(z);
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5467k
    /* renamed from: S */
    public void mo33090S(boolean z, int i) {
        ListItemX.m35645n1(this.f18562a, z, i, 0, 4, null);
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5467k
    /* renamed from: e */
    public void mo33089e(C17408d c17408d) {
        l.e(c17408d, "presenter");
        this.f18562a.setAvailabilityPresenter((C8329a) c17408d);
        this.f18564c = c17408d;
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5467k
    /* renamed from: f */
    public void mo33088f(String str) {
        ListItemX.m35639v1(this.f18562a, str, null, false, 6, null);
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5467k
    /* renamed from: i */
    public void mo33087i(C8243a c8243a) {
        l.e(c8243a, "presenter");
        this.f18562a.setAvatarPresenter(c8243a);
        this.f18563b = c8243a;
    }

    @Override // p193e.p194a.p195a.AbstractC7267u.AbstractC7268a
    /* renamed from: o */
    public C8243a mo29868o() {
        return this.f18563b;
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5467k
    /* renamed from: p1 */
    public void mo33086p1(CharSequence charSequence, ListItemX.SubtitleColor subtitleColor, Drawable drawable, Drawable drawable2, ListItemX.SubtitleColor subtitleColor2, boolean z, boolean z2) {
        l.e(charSequence, "text");
        l.e(subtitleColor, RemoteMessageConst.Notification.COLOR);
        l.e(subtitleColor2, "firstIconColor");
        ListItemX listItemX = this.f18562a;
        if (z2) {
            TextDelimiterFormatter textDelimiterFormatter = TextDelimiterFormatter.f13106b;
            Context context = listItemX.getContext();
            l.d(context, "listItem.context");
            charSequence = TextDelimiterFormatter.m35098c(context, charSequence, TextDelimiterFormatter.DelimiterVisibility.REMOVE);
        } else if (z2) {
            throw new i();
        }
        ListItemX.m35644o1(listItemX, charSequence, subtitleColor, drawable, drawable2, subtitleColor2, null, 0, 0, z, null, null, 1760, null);
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5467k
    public void setTitle(String str) {
        l.e(str, "text");
        ListItemX.m35637x1(this.f18562a, str, false, 0, 0, 14, null);
    }

    @Override // p193e.p194a.p195a.AbstractC7267u.AbstractC7268a
    /* renamed from: z */
    public C17408d mo29867z() {
        return this.f18564c;
    }
}
