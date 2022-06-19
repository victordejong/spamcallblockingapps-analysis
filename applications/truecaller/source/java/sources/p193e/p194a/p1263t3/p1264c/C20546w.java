package p193e.p194a.p1263t3.p1264c;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.t3.c.w */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/w.class */
public final class C20546w extends AbstractC20505a implements AbstractC20545v {

    /* renamed from: b */
    public final TextView f57630b;

    /* renamed from: c */
    public final CompoundButton f57631c;

    /* renamed from: d */
    public final CompoundButton f57632d;

    /* renamed from: e */
    public final TextView f57633e;

    /* renamed from: f */
    public final CompoundButton f57634f;

    /* renamed from: e.a.t3.c.w$a */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/w$a.class */
    public static final class C20547a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ l f57635a;

        public C20547a(l lVar) {
            this.f57635a = lVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f57635a.d(Boolean.valueOf(z));
        }
    }

    /* renamed from: e.a.t3.c.w$b */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/w$b.class */
    public static final class C20548b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ l f57636a;

        public C20548b(l lVar) {
            this.f57636a = lVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f57636a.d(Boolean.valueOf(z));
        }
    }

    /* renamed from: e.a.t3.c.w$c */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/w$c.class */
    public static final class C20549c implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ l f57637a;

        public C20549c(l lVar) {
            this.f57637a = lVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f57637a.d(Boolean.valueOf(z));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20546w(View view) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        View findViewById = view.findViewById(C2752R.C2754id.feature_item_description);
        s1.z.c.l.d(findViewById, "view.findViewById(R.id.feature_item_description)");
        this.f57630b = (TextView) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.feature_item_toggle_local);
        s1.z.c.l.d(findViewById2, "view.findViewById(R.id.feature_item_toggle_local)");
        this.f57631c = (CompoundButton) findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.feature_item_toggle_remote);
        s1.z.c.l.d(findViewById3, "view.findViewById(R.id.feature_item_toggle_remote)");
        this.f57632d = (CompoundButton) findViewById3;
        View findViewById4 = view.findViewById(C2752R.C2754id.feature_item_task_id);
        s1.z.c.l.d(findViewById4, "view.findViewById(R.id.feature_item_task_id)");
        this.f57633e = (TextView) findViewById4;
        View findViewById5 = view.findViewById(C2752R.C2754id.feature_item_toggle_insights);
        s1.z.c.l.d(findViewById5, "view.findViewById(R.id.f…ure_item_toggle_insights)");
        this.f57634f = (CompoundButton) findViewById5;
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20545v
    /* renamed from: B4 */
    public void mo11050B4(boolean z) {
        this.f57632d.setChecked(z);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20545v
    /* renamed from: O2 */
    public void mo11049O2(boolean z) {
        this.f57631c.setChecked(z);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20545v
    /* renamed from: R0 */
    public void mo11048R0(l<? super Boolean, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        this.f57634f.setOnCheckedChangeListener(new C20547a(lVar));
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20505a, p193e.p194a.p1263t3.p1264c.AbstractC20518f
    /* renamed from: Y */
    public void mo11047Y() {
        super.mo11047Y();
        this.f57631c.setOnCheckedChangeListener(null);
        this.f57632d.setOnCheckedChangeListener(null);
        this.f57634f.setOnCheckedChangeListener(null);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20545v
    /* renamed from: Z1 */
    public void mo11046Z1(boolean z) {
        this.f57632d.setEnabled(z);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20545v
    /* renamed from: d */
    public void mo11045d(String str) {
        s1.z.c.l.e(str, "text");
        this.f57630b.setText(str);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20545v
    /* renamed from: d4 */
    public void mo11044d4(l<? super Boolean, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        this.f57631c.setOnCheckedChangeListener(new C20548b(lVar));
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20545v
    /* renamed from: l2 */
    public void mo11043l2(int i) {
        this.f57634f.setVisibility(i);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20545v
    /* renamed from: n3 */
    public void mo11042n3(l<? super Boolean, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        this.f57632d.setOnCheckedChangeListener(new C20549c(lVar));
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20545v
    public void setTitle(String str) {
        s1.z.c.l.e(str, "text");
        this.f57633e.setText(str);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20545v
    /* renamed from: z1 */
    public void mo11041z1(boolean z) {
        this.f57634f.setChecked(z);
    }
}
