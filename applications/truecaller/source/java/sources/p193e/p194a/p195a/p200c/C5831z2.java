package p193e.p194a.p195a.p200c;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.ConversationAction;
import java.util.List;
import java.util.Objects;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
/* renamed from: e.a.a.c.z2 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/z2.class */
public final class C5831z2 extends RecyclerView.AbstractC0313c0 implements AbstractC5814y2 {

    /* renamed from: a */
    public final ViewGroup f19566a;

    /* renamed from: b */
    public final FrameLayout f19567b;

    /* renamed from: c */
    public final View f19568c;

    /* renamed from: e.a.a.c.z2$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/z2$a.class */
    public static final class View$OnClickListenerC5832a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ l f19569a;

        public View$OnClickListenerC5832a(l lVar) {
            this.f19569a = lVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            l lVar = this.f19569a;
            s1.z.c.l.d(view, "it");
            lVar.d(Integer.valueOf(view.getId()));
        }
    }

    /* renamed from: e.a.a.c.z2$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/z2$b.class */
    public static final class View$OnClickListenerC5833b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ a f19570a;

        public View$OnClickListenerC5833b(a aVar) {
            this.f19570a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f19570a.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5831z2(View view) {
        super(view);
        s1.z.c.l.e(view, "itemView");
        View findViewById = view.findViewById(C2752R.C2754id.actions_container);
        Objects.requireNonNull(findViewById, "null cannot be cast to non-null type android.view.ViewGroup");
        this.f19566a = (ViewGroup) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.actions_layout);
        Objects.requireNonNull(findViewById2, "null cannot be cast to non-null type android.widget.FrameLayout");
        this.f19567b = (FrameLayout) findViewById2;
        this.f19568c = view.findViewById(2131362540);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5814y2
    /* renamed from: F3 */
    public void mo32381F3() {
        this.f19567b.setVisibility(8);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5814y2
    /* renamed from: I1 */
    public void mo32380I1(int i) {
        View findViewById = this.itemView.findViewById(i);
        s1.z.c.l.d(findViewById, "itemView.findViewById<View>(itemId)");
        findViewById.setVisibility(0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5814y2
    /* renamed from: J3 */
    public void mo32379J3() {
        for (int childCount = this.f19566a.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.f19566a.getChildAt(childCount);
            s1.z.c.l.d(childAt, "child");
            if (childAt.getVisibility() == 0) {
                View findViewWithTag = childAt.findViewWithTag("divider");
                s1.z.c.l.d(findViewWithTag, "child.findViewWithTag<View>(DIVIDER_TAG)");
                findViewWithTag.setVisibility(8);
                return;
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5814y2
    /* renamed from: N0 */
    public void mo32378N0() {
        List<Integer> allMenuItemIds = ConversationAction.getAllMenuItemIds();
        s1.z.c.l.d(allMenuItemIds, "ConversationAction.getAllMenuItemIds()");
        for (Integer num : allMenuItemIds) {
            View view = this.itemView;
            s1.z.c.l.d(num, "it");
            view.findViewById(num.intValue()).setVisibility(8);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5814y2
    /* renamed from: P0 */
    public void mo32377P0() {
        this.f19567b.setVisibility(0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5814y2
    /* renamed from: s0 */
    public void mo32376s0(l<? super Integer, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        int childCount = this.f19566a.getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.f19566a.getChildAt(i).setOnClickListener(new View$OnClickListenerC5832a(lVar));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5814y2
    /* renamed from: t1 */
    public void mo32375t1(int i, String str) {
        s1.z.c.l.e(str, "title");
        View findViewById = this.f19566a.findViewById(i);
        s1.z.c.l.d(findViewById, "actionsContainer.findViewById<TextView>(viewId)");
        ((TextView) findViewById).setText(str);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5814y2
    /* renamed from: u4 */
    public void mo32374u4(a<s> aVar) {
        s1.z.c.l.e(aVar, "listener");
        this.f19568c.setOnClickListener(new View$OnClickListenerC5833b(aVar));
    }
}
