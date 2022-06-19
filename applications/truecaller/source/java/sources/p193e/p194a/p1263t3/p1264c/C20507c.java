package p193e.p194a.p1263t3.p1264c;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.t3.c.c */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/c.class */
public final class C20507c extends AbstractC20505a implements AbstractC20506b {

    /* renamed from: b */
    public final TextView f57560b;

    /* renamed from: c */
    public final CompoundButton f57561c;

    /* renamed from: d */
    public final View f57562d;

    /* renamed from: e.a.t3.c.c$a */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/c$a.class */
    public static final class View$OnClickListenerC20508a implements View.OnClickListener {
        public View$OnClickListenerC20508a() {
            C20507c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20507c.this.f57561c.toggle();
        }
    }

    /* renamed from: e.a.t3.c.c$b */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/c$b.class */
    public static final class C20509b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ l f57564a;

        public C20509b(l lVar) {
            this.f57564a = lVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f57564a.d(Boolean.valueOf(z));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20507c(View view) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        View findViewById = view.findViewById(C2752R.C2754id.feature_item_description);
        s1.z.c.l.d(findViewById, "view.findViewById(R.id.feature_item_description)");
        this.f57560b = (TextView) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.feature_item_toggle);
        s1.z.c.l.d(findViewById2, "view.findViewById(R.id.feature_item_toggle)");
        this.f57561c = (CompoundButton) findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.feature_container);
        s1.z.c.l.d(findViewById3, "view.findViewById(R.id.feature_container)");
        this.f57562d = findViewById3;
        findViewById3.setOnClickListener(new View$OnClickListenerC20508a());
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20506b
    /* renamed from: D */
    public void mo11076D(l<? super Boolean, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        this.f57561c.setOnCheckedChangeListener(new C20509b(lVar));
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20506b
    /* renamed from: Q */
    public void mo11075Q(boolean z) {
        this.f57561c.setChecked(z);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20505a, p193e.p194a.p1263t3.p1264c.AbstractC20518f
    /* renamed from: Y */
    public void mo11047Y() {
        super.mo11047Y();
        this.f57561c.setOnCheckedChangeListener(null);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20506b
    /* renamed from: d */
    public void mo11074d(String str) {
        s1.z.c.l.e(str, "text");
        this.f57560b.setText(str);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20506b
    public void setTitle(String str) {
        s1.z.c.l.e(str, "text");
        this.f57561c.setText(str);
    }
}
