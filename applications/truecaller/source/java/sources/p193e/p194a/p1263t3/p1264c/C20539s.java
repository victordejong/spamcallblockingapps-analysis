package p193e.p194a.p1263t3.p1264c;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.t3.c.s */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/s.class */
public final class C20539s extends AbstractC20505a implements AbstractC20538r {

    /* renamed from: b */
    public final TextView f57620b;

    /* renamed from: c */
    public final CompoundButton f57621c;

    /* renamed from: d */
    public final View f57622d;

    /* renamed from: e.a.t3.c.s$a */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/s$a.class */
    public static final class View$OnClickListenerC20540a implements View.OnClickListener {
        public View$OnClickListenerC20540a() {
            C20539s.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20539s.this.f57621c.toggle();
        }
    }

    /* renamed from: e.a.t3.c.s$b */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/s$b.class */
    public static final class C20541b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ l f57624a;

        public C20541b(l lVar) {
            this.f57624a = lVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f57624a.d(Boolean.valueOf(z));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20539s(View view) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        View findViewById = view.findViewById(C2752R.C2754id.firebase_boolean_feature_item_description);
        s1.z.c.l.d(findViewById, "view.findViewById(R.id.f…feature_item_description)");
        this.f57620b = (TextView) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.firebase_boolean_feature_item_toggle);
        s1.z.c.l.d(findViewById2, "view.findViewById(R.id.f…lean_feature_item_toggle)");
        this.f57621c = (CompoundButton) findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.firebase_boolean_feature_container);
        s1.z.c.l.d(findViewById3, "view.findViewById(R.id.f…oolean_feature_container)");
        this.f57622d = findViewById3;
        findViewById3.setOnClickListener(new View$OnClickListenerC20540a());
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20538r
    /* renamed from: D */
    public void mo11056D(l<? super Boolean, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        this.f57621c.setOnCheckedChangeListener(new C20541b(lVar));
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20538r
    /* renamed from: Q */
    public void mo11055Q(boolean z) {
        this.f57621c.setChecked(z);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20505a, p193e.p194a.p1263t3.p1264c.AbstractC20518f
    /* renamed from: Y */
    public void mo11047Y() {
        super.mo11047Y();
        this.f57621c.setOnCheckedChangeListener(null);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20538r
    /* renamed from: d */
    public void mo11054d(String str) {
        s1.z.c.l.e(str, "text");
        this.f57620b.setText(str);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20538r
    public void setTitle(String str) {
        s1.z.c.l.e(str, "text");
        this.f57621c.setText(str);
    }
}
