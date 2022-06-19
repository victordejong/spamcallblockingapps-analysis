package p193e.p194a.p1263t3.p1264c;

import android.view.View;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.t3.c.u */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/u.class */
public final class C20543u extends AbstractC20505a implements AbstractC20542t {

    /* renamed from: b */
    public final TextView f57625b;

    /* renamed from: c */
    public final TextView f57626c;

    /* renamed from: d */
    public final TextView f57627d;

    /* renamed from: e */
    public final TextView f57628e;

    /* renamed from: e.a.t3.c.u$a */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/u$a.class */
    public static final class View$OnClickListenerC20544a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ a f57629a;

        public View$OnClickListenerC20544a(a aVar) {
            this.f57629a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f57629a.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20543u(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        View findViewById = view.findViewById(C2752R.C2754id.firebase_string_feature_item_description);
        l.d(findViewById, "view.findViewById(R.id.f…feature_item_description)");
        this.f57625b = (TextView) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.firebase_string_feature_item_info);
        l.d(findViewById2, "view.findViewById(R.id.f…string_feature_item_info)");
        this.f57626c = (TextView) findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.firebase_string_feature_item);
        l.d(findViewById3, "view.findViewById(R.id.f…base_string_feature_item)");
        this.f57627d = (TextView) findViewById3;
        View findViewById4 = view.findViewById(C2752R.C2754id.firebase_string_feature_button);
        l.d(findViewById4, "view.findViewById(R.id.f…se_string_feature_button)");
        this.f57628e = (TextView) findViewById4;
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20542t
    /* renamed from: d */
    public void mo11053d(String str) {
        l.e(str, "text");
        this.f57625b.setText(str);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20542t
    /* renamed from: j0 */
    public void mo11052j0(a<s> aVar) {
        l.e(aVar, "listener");
        this.f57628e.setOnClickListener(new View$OnClickListenerC20544a(aVar));
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20542t
    /* renamed from: p4 */
    public void mo11051p4(String str) {
        l.e(str, "text");
        this.f57626c.setText(str);
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20542t
    public void setTitle(String str) {
        l.e(str, "text");
        this.f57627d.setText(str);
    }
}
