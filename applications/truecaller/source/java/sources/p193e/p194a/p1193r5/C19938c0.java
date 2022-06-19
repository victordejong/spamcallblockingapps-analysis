package p193e.p194a.p1193r5;

import android.view.View;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import s1.z.c.l;
/* renamed from: e.a.r5.c0 */
/* loaded from: classes8-dex2jar.jar:e/a/r5/c0.class */
public final class C19938c0 extends RecyclerView.AbstractC0313c0 implements AbstractC19936b0 {

    /* renamed from: a */
    public final SwitchCompat f56385a;

    /* renamed from: b */
    public final CompoundButton.OnCheckedChangeListener f56386b;

    /* renamed from: e.a.r5.c0$a */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/c0$a.class */
    public static final class C19939a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC18905m f56388b;

        public C19939a(AbstractC18905m abstractC18905m) {
            C19938c0.this = r4;
            this.f56388b = abstractC18905m;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            AbstractC18905m abstractC18905m = this.f56388b;
            C19938c0 c19938c0 = C19938c0.this;
            l.d(compoundButton, "buttonView");
            abstractC18905m.mo14327t(new C18900h("ItemEvent.SWITCH_ACTION", c19938c0, compoundButton, Boolean.valueOf(z)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19938c0(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        View findViewById = view.findViewById(C2752R.C2754id.switchIncognito);
        l.d(findViewById, "view.findViewById(R.id.switchIncognito)");
        SwitchCompat switchCompat = (SwitchCompat) findViewById;
        this.f56385a = switchCompat;
        C19939a c19939a = new C19939a(abstractC18905m);
        this.f56386b = c19939a;
        switchCompat.setOnCheckedChangeListener(c19939a);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19936b0
    /* renamed from: Q2 */
    public void mo11797Q2(boolean z) {
        this.f56385a.setOnCheckedChangeListener(null);
        this.f56385a.setChecked(z);
        this.f56385a.setOnCheckedChangeListener(this.f56386b);
    }
}
