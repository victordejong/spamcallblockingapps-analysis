package p193e.p194a.p1221t.p1222a.p1225v;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.android.truemoji.C2886R;
import com.truecaller.android.truemoji.keyboard.EmojiView;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1221t.p1222a.AbstractC20300o;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import s1.z.c.l;
/* renamed from: e.a.t.a.v.a */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/v/a.class */
public final class C20316a extends RecyclerView.AbstractC0317g<C20317a> {

    /* renamed from: a */
    public C20309d[] f57129a = new C20309d[0];

    /* renamed from: b */
    public AbstractC20300o f57130b;

    /* renamed from: e.a.t.a.v.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/v/a$a.class */
    public static final class C20317a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public C20309d f57131a;

        /* renamed from: b */
        public final EmojiView f57132b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20317a(View view) {
            super(view);
            l.e(view, "itemView");
            View findViewById = view.findViewById(C2886R.C2888id.emojiView);
            l.d(findViewById, "itemView.findViewById(R.id.emojiView)");
            this.f57132b = (EmojiView) findViewById;
        }
    }

    public C20316a() {
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f57129a.length;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return C2886R.C2888id.view_type_emoji;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C20317a c20317a, int i) {
        C20317a c20317a2 = c20317a;
        l.e(c20317a2, "holder");
        C20309d c20309d = this.f57129a[i];
        c20317a2.f57131a = c20309d;
        c20317a2.f57132b.setEmoji(c20309d);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C20317a onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C2886R.layout.item_emoji, viewGroup, false);
        l.d(inflate, ViewAction.VIEW);
        C20317a c20317a = new C20317a(inflate);
        inflate.setOnClickListener(new View$OnClickListenerC20318b(this, c20317a));
        inflate.setOnLongClickListener(new View$OnLongClickListenerC20319c(this, c20317a));
        return c20317a;
    }
}
