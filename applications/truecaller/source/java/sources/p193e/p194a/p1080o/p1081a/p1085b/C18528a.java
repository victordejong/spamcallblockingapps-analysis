package p193e.p194a.p1080o.p1081a.p1085b;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.contextcall.C3771R;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1080o.p1102o.C18796i;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.o.a.b.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/b/a.class */
public final class C18528a extends RecyclerView.AbstractC0317g<C18530c> {

    /* renamed from: a */
    public l<? super C18539j, s> f52269a = a.c;

    /* renamed from: b */
    public l<? super C18539j, s> f52270b = a.d;

    /* renamed from: c */
    public List<C18539j> f52271c = s1.u.s.a;

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f52271c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C18530c c18530c, int i) {
        C18530c c18530c2 = c18530c;
        s1.z.c.l.e(c18530c2, "holder");
        C18539j c18539j = this.f52271c.get(i);
        c18530c2.f52274a.setText(c18539j.f52292b);
        TextView textView = c18530c2.f52275b;
        C19286f.m13683U(textView, c18539j.f52295e);
        textView.setText(c18539j.f52293c);
        C8243a.m28739ok(c18530c2.f52276c, c18539j.f52294d, false, 2, null);
        c18530c2.f52277d.setOnClickListener(new g1(0, this, c18539j));
        c18530c2.itemView.setOnClickListener(new g1(1, this, c18539j));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C18530c onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C3771R.layout.context_call_hidden_contacts_item, viewGroup, false);
        int i2 = C3771R.C3773id.avatarXView;
        AvatarXView avatarXView = (AvatarXView) inflate.findViewById(i2);
        if (avatarXView != null) {
            i2 = C3771R.C3773id.nameTextView;
            TextView textView = (TextView) inflate.findViewById(i2);
            if (textView != null) {
                i2 = C3771R.C3773id.numberTextView;
                TextView textView2 = (TextView) inflate.findViewById(i2);
                if (textView2 != null) {
                    i2 = C3771R.C3773id.removeImageView;
                    ImageView imageView = (ImageView) inflate.findViewById(i2);
                    if (imageView != null) {
                        C18796i c18796i = new C18796i((ConstraintLayout) inflate, avatarXView, textView, textView2, imageView);
                        s1.z.c.l.d(c18796i, "ContextCallHiddenContact….context), parent, false)");
                        return new C18530c(c18796i);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }
}
