package p193e.p194a.p1315v4.p1321s0;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.sdk.C4417R;
import com.truecaller.sdk.oAuth.networking.data.ScopeInfo;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1315v4.p1320r0.C21077h;
import s1.z.c.l;
/* renamed from: e.a.v4.s0.i */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/i.class */
public final class C21091i extends RecyclerView.AbstractC0317g<C21092a> {

    /* renamed from: a */
    public final List<ScopeInfo> f59215a;

    /* renamed from: b */
    public final AbstractC21090h f59216b;

    /* renamed from: e.a.v4.s0.i$a */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/i$a.class */
    public static final class C21092a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final C21077h f59217a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21092a(View view) {
            super(view);
            l.e(view, "itemView");
            C21077h m10375a = C21077h.m10375a(view);
            l.d(m10375a, "ItemScopeInfoBinding.bind(itemView)");
            this.f59217a = m10375a;
        }
    }

    public C21091i(List<ScopeInfo> list, AbstractC21090h abstractC21090h) {
        l.e(list, "scopeInfoList");
        l.e(abstractC21090h, "scopesAdapterListener");
        this.f59215a = list;
        this.f59216b = abstractC21090h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f59215a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C21092a c21092a, int i) {
        C21092a c21092a2 = c21092a;
        l.e(c21092a2, "holder");
        ScopeInfo scopeInfo = this.f59215a.get(i);
        scopeInfo.setChecked(true);
        AppCompatCheckedTextView appCompatCheckedTextView = c21092a2.f59217a.f59152b;
        appCompatCheckedTextView.setText(scopeInfo.getDescription());
        appCompatCheckedTextView.setOnClickListener(new View$OnClickListenerC21093j(appCompatCheckedTextView, this, scopeInfo));
        if (i == getItemCount() - 1) {
            View view = c21092a2.f59217a.f59153c;
            l.d(view, "holder.binding.divider");
            view.setVisibility(8);
            return;
        }
        View view2 = c21092a2.f59217a.f59153c;
        l.d(view2, "holder.binding.divider");
        view2.setVisibility(0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C21092a onCreateViewHolder(ViewGroup viewGroup, int i) {
        C21077h m10375a = C21077h.m10375a(C22128a.m8628e1(viewGroup, "parent").inflate(C4417R.layout.item_scope_info, viewGroup, false));
        l.d(m10375a, "ItemScopeInfoBinding.inf…(inflater, parent, false)");
        LinearLayout linearLayout = m10375a.f59151a;
        l.d(linearLayout, "binding.root");
        return new C21092a(linearLayout);
    }
}
