package p193e.p1512i.p1516b.p1529r1;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayDeque;
/* renamed from: e.i.b.r1.h */
/* loaded from: classes-dex2jar.jar:e/i/b/r1/h.class */
public class C23046h {

    /* renamed from: e.i.b.r1.h$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/r1/h$a.class */
    public class View$OnClickListenerC23047a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC23061u f63844a;

        public View$OnClickListenerC23047a(AbstractC23061u abstractC23061u) {
            this.f63844a = abstractC23061u;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f63844a.mo7573a();
        }
    }

    /* renamed from: a */
    public void m7574a(View view, AbstractC23061u abstractC23061u) {
        View$OnClickListenerC23047a view$OnClickListenerC23047a = new View$OnClickListenerC23047a(abstractC23061u);
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(view);
        while (!arrayDeque.isEmpty()) {
            View view2 = (View) arrayDeque.remove();
            view2.setOnClickListener(view$OnClickListenerC23047a);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    arrayDeque.add(viewGroup.getChildAt(i));
                }
            }
        }
    }
}
