package p193e.p194a.p294b.p295a.p296a.p297a.p299c;

import android.graphics.Point;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import com.truecaller.bizmon.C3478R;
import java.util.List;
import java.util.Objects;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p295a.p296a.p304c.C7622d;
import p193e.p194a.p294b.p355m.C8099r0;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.a.l;
import s1.k;
/* renamed from: e.a.b.a.a.a.c.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/b.class */
public final class C7504b<T> implements AbstractC27012l0<k<? extends String, ? extends List<? extends C8551c>>> {

    /* renamed from: a */
    public final /* synthetic */ C7495a f23791a;

    public C7504b(C7495a c7495a) {
        this.f23791a = c7495a;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(k<? extends String, ? extends List<? extends C8551c>> kVar) {
        TextView textView;
        k<? extends String, ? extends List<? extends C8551c>> kVar2 = kVar;
        C7495a c7495a = this.f23791a;
        l[] lVarArr = C7495a.f23774h;
        Objects.requireNonNull(c7495a);
        Point point = new Point();
        n3.r.a.l requireActivity = c7495a.requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        WindowManager windowManager = requireActivity.getWindowManager();
        s1.z.c.l.d(windowManager, "requireActivity().windowManager");
        windowManager.getDefaultDisplay().getSize(point);
        int i = point.y;
        AbstractC19223c0 abstractC19223c0 = c7495a.f23778c;
        if (abstractC19223c0 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        int mo13770H = abstractC19223c0.mo13770H(C3478R.dimen.doubleSpace);
        C8099r0 m29551OA = c7495a.m29551OA();
        View view = m29551OA.f25083a;
        s1.z.c.l.d(view, "bottomBarBackgroundView");
        int height = view.getHeight();
        Button button = m29551OA.f25087e;
        s1.z.c.l.d(button, "btnShowMore");
        float height2 = i - (((mo13770H * 2) + button.getHeight()) + (height + mo13770H));
        TextView textView2 = m29551OA.f25092j;
        s1.z.c.l.d(textView2, "lblSubHeader");
        float y = textView2.getY();
        s1.z.c.l.d(m29551OA.f25092j, "lblSubHeader");
        int height3 = (int) (height2 - (y + textView.getHeight()));
        List<C8551c> list = (List) kVar2.b;
        C7495a c7495a2 = this.f23791a;
        C7622d c7622d = c7495a2.f23777b;
        if (c7622d == null) {
            s1.z.c.l.l("subCategoryUIUtil");
            throw null;
        }
        n3.r.a.l requireActivity2 = c7495a2.requireActivity();
        s1.z.c.l.d(requireActivity2, "requireActivity()");
        List<C8551c> subList = list.subList(0, Math.min(list.size(), c7622d.m29468a(list, height3, requireActivity2)));
        C7495a c7495a3 = this.f23791a;
        boolean z = list.size() > subList.size();
        for (CheckBox checkBox : c7495a3.f23779d) {
            C8099r0 m29551OA2 = c7495a3.m29551OA();
            m29551OA2.f25090h.m1981n(checkBox);
            m29551OA2.f25089g.removeView(checkBox);
        }
        for (C8551c c8551c : subList) {
            View inflate = LayoutInflater.from(c7495a3.requireContext()).inflate(C3478R.layout.checkbox_child_tags, (ViewGroup) c7495a3.m29551OA().f25089g, false);
            Objects.requireNonNull(inflate, "null cannot be cast to non-null type android.widget.CheckBox");
            CheckBox checkBox2 = (CheckBox) inflate;
            checkBox2.setId(View.generateViewId());
            checkBox2.setText(c8551c.f26351b);
            checkBox2.setTag(Long.valueOf(c8551c.f26350a));
            checkBox2.setChecked(false);
            checkBox2.setOnCheckedChangeListener(c7495a3);
            C8099r0 m29551OA3 = c7495a3.m29551OA();
            m29551OA3.f25089g.addView(checkBox2);
            m29551OA3.f25090h.m1986h(checkBox2);
            c7495a3.f23779d.add(checkBox2);
        }
        Button button2 = c7495a3.m29551OA().f25087e;
        s1.z.c.l.d(button2, "binding.btnShowMore");
        C19286f.m13683U(button2, z);
    }
}
