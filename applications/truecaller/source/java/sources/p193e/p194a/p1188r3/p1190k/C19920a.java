package p193e.p194a.p1188r3.p1190k;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.dynamicfeaturesupport.C3885R;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.r3.k.a */
/* loaded from: classes8-dex2jar.jar:e/a/r3/k/a.class */
public final class C19920a extends RecyclerView.AbstractC0317g<C19922b> {

    /* renamed from: a */
    public final List<DynamicFeature> f56364a = new ArrayList();

    /* renamed from: b */
    public final AbstractC19921a f56365b;

    /* renamed from: c */
    public final boolean f56366c;

    /* renamed from: e.a.r3.k.a$a */
    /* loaded from: classes8-dex2jar.jar:e/a/r3/k/a$a.class */
    public interface AbstractC19921a {
        /* renamed from: aa */
        void mo11812aa(DynamicFeature dynamicFeature, boolean z);
    }

    /* renamed from: e.a.r3.k.a$b */
    /* loaded from: classes8-dex2jar.jar:e/a/r3/k/a$b.class */
    public static final class C19922b extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final TextView f56367a;

        /* renamed from: b */
        public final Button f56368b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19922b(View view) {
            super(view);
            l.e(view, ViewAction.VIEW);
            View findViewById = view.findViewById(C3885R.C3887id.moduleName);
            l.d(findViewById, "view.findViewById(R.id.moduleName)");
            this.f56367a = (TextView) findViewById;
            View findViewById2 = view.findViewById(C3885R.C3887id.actionButton);
            l.d(findViewById2, "view.findViewById(R.id.actionButton)");
            this.f56368b = (Button) findViewById2;
        }
    }

    public C19920a(AbstractC19921a abstractC19921a, boolean z) {
        l.e(abstractC19921a, "listener");
        this.f56365b = abstractC19921a;
        this.f56366c = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f56364a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C19922b c19922b, int i) {
        C19922b c19922b2 = c19922b;
        l.e(c19922b2, "holder");
        DynamicFeature dynamicFeature = this.f56364a.get(i);
        c19922b2.f56367a.setText(dynamicFeature.getModuleName());
        c19922b2.f56368b.setOnClickListener(new View$OnClickListenerC19923b(this, dynamicFeature));
        c19922b2.f56368b.setText(this.f56366c ? C3885R.string.uninstall : C3885R.string.install);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C19922b onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C3885R.layout.dynamic_feature_panel_item, viewGroup, false);
        l.d(inflate, ViewAction.VIEW);
        return new C19922b(inflate);
    }
}
