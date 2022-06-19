package p193e.p194a.p195a.p269n.p270j;

import android.net.Uri;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.LinkPreviewType;
import com.truecaller.messaging.linkpreviews.LinkPreviewMessageView;
import e.m.d.y.n;
import java.util.Objects;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.a.n.j.h */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/h.class */
public final class C7016h extends RecyclerView.AbstractC0313c0 implements AbstractC7035p {

    /* renamed from: a */
    public final LinkPreviewMessageView f22662a;

    /* renamed from: b */
    public final View f22663b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7016h(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22663b = view;
        View findViewById = view.findViewById(C2752R.C2754id.linkPreviewView);
        Objects.requireNonNull(findViewById, "null cannot be cast to non-null type com.truecaller.messaging.linkpreviews.LinkPreviewMessageView");
        this.f22662a = (LinkPreviewMessageView) findViewById;
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        n.f1(view, abstractC18905m, this, (String) null, (Object) null, 12);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7035p
    /* renamed from: L3 */
    public void mo30283L3(Uri uri, LinkPreviewType linkPreviewType) {
        l.e(linkPreviewType, "type");
        this.f22662a.m34973g1(uri, linkPreviewType);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7035p
    /* renamed from: b */
    public void mo30282b(boolean z) {
        this.f22663b.setActivated(z);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7035p
    /* renamed from: c */
    public void mo30281c(String str) {
        l.e(str, "subtitle");
        this.f22662a.setDescription(str);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7035p
    /* renamed from: g */
    public void mo30280g(boolean z) {
        this.f22662a.setTitleIcon(z ? C19291g.m13535l0(this.f22663b.getContext(), 2131232673, 2130970255) : null);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7035p
    public void setTitle(String str) {
        l.e(str, "title");
        this.f22662a.setTitle(str);
    }
}
