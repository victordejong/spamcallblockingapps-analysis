package p193e.p194a.p1221t.p1222a.p1225v;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.android.truemoji.C2886R;
import com.truecaller.android.truemoji.keyboard.EmojiKeyboardTabView;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1221t.p1222a.AbstractC20300o;
import p193e.p194a.p1221t.p1222a.AbstractC20301p;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1221t.p1222a.p1224u.C20310e;
import s1.z.c.l;
/* renamed from: e.a.t.a.v.d */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/v/d.class */
public final class C20320d extends RecyclerView.AbstractC0317g<C20321a> {

    /* renamed from: a */
    public AbstractC20301p f57137a;

    /* renamed from: b */
    public final RecyclerView.C0339u f57138b;

    /* renamed from: c */
    public AbstractC20300o f57139c;

    /* renamed from: d */
    public final List<C20310e> f57140d;

    /* renamed from: e.a.t.a.v.d$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/v/d$a.class */
    public static final class C20321a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final EmojiKeyboardTabView f57141a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20321a(View view) {
            super(view);
            l.e(view, "itemView");
            View findViewById = view.findViewById(C2886R.C2888id.emojiTab);
            l.d(findViewById, "itemView.findViewById(R.id.emojiTab)");
            this.f57141a = (EmojiKeyboardTabView) findViewById;
        }
    }

    public C20320d(List<C20310e> list) {
        l.e(list, "categories");
        this.f57140d = list;
        RecyclerView.C0339u c0339u = new RecyclerView.C0339u();
        c0339u.m42731c(C2886R.C2888id.view_type_emoji, 16);
        this.f57138b = c0339u;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f57140d.size() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C20321a c20321a, int i) {
        C20309d[] c20309dArr;
        Collection<C20309d> mo11259b;
        C20321a c20321a2 = c20321a;
        l.e(c20321a2, "holder");
        if (i != 0) {
            c20309dArr = this.f57140d.get(i - 1).f57123c;
        } else {
            AbstractC20301p abstractC20301p = this.f57137a;
            if (abstractC20301p == null || (mo11259b = abstractC20301p.mo11259b()) == null) {
                c20309dArr = new C20309d[0];
            } else {
                Object[] array = mo11259b.toArray(new C20309d[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                c20309dArr = (C20309d[]) array;
            }
        }
        c20321a2.f57141a.setEmojis(c20309dArr);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C20321a onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C2886R.layout.item_emoji_tab, viewGroup, false);
        l.d(inflate, ViewAction.VIEW);
        C20321a c20321a = new C20321a(inflate);
        c20321a.f57141a.setRecycledViewPool(this.f57138b);
        c20321a.f57141a.setOnEmojiClickListener(new C20322e(this));
        return c20321a;
    }
}
