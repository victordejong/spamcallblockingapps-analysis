package p193e.p194a.p294b.p331b.p333b;

import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.textfield.TextInputLayout;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.profile.data.dto.OpenHours;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p294b.p355m.C8051b0;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.b.b.b.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/b/d.class */
public final class C7864d extends RecyclerView.AbstractC0317g<View$OnClickListenerC7865a> {

    /* renamed from: a */
    public final List<OpenHours> f24433a = new ArrayList();

    /* renamed from: b */
    public boolean f24434b;

    /* renamed from: c */
    public boolean f24435c;

    /* renamed from: d */
    public boolean f24436d;

    /* renamed from: e */
    public int f24437e;

    /* renamed from: f */
    public final AbstractC7863c f24438f;

    /* renamed from: e.a.b.b.b.d$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/b/d$a.class */
    public final class View$OnClickListenerC7865a extends RecyclerView.AbstractC0313c0 implements View.OnClickListener, View.OnTouchListener {

        /* renamed from: c */
        public static final /* synthetic */ l[] f24439c = {C22128a.m8621g0(View$OnClickListenerC7865a.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/BusinessProfileRowOpenHourBinding;", 0)};

        /* renamed from: a */
        public final C19351b f24440a = new C19351b(new C7866a());

        /* renamed from: b */
        public final /* synthetic */ C7864d f24441b;

        /* renamed from: e.a.b.b.b.d$a$a */
        /* loaded from: classes6-dex2jar.jar:e/a/b/b/b/d$a$a.class */
        public static final class C7866a extends m implements s1.z.b.l<View$OnClickListenerC7865a, C8051b0> {
            public C7866a() {
                super(1);
            }

            /* renamed from: d */
            public Object m29212d(Object obj) {
                RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
                s1.z.c.l.e(abstractC0313c0, "viewHolder");
                View view = abstractC0313c0.itemView;
                s1.z.c.l.d(view, "viewHolder.itemView");
                int i = C3478R.C3480id.closesAtEditText;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = C3478R.C3480id.closesAtInputLayout;
                    TextInputLayout textInputLayout = (TextInputLayout) view.findViewById(i);
                    if (textInputLayout != null) {
                        i = C3478R.C3480id.openDaysEditText;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = C3478R.C3480id.openDaysInputLayout;
                            TextInputLayout textInputLayout2 = (TextInputLayout) view.findViewById(i);
                            if (textInputLayout2 != null) {
                                i = C3478R.C3480id.opensAtEditText;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = C3478R.C3480id.opensAtInputLayout;
                                    TextInputLayout textInputLayout3 = (TextInputLayout) view.findViewById(i);
                                    if (textInputLayout3 != null) {
                                        i = C3478R.C3480id.removeButton;
                                        ImageButton imageButton = (ImageButton) view.findViewById(i);
                                        if (imageButton != null) {
                                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                            return new C8051b0(constraintLayout, textView, textInputLayout, textView2, textInputLayout2, textView3, textInputLayout3, imageButton, constraintLayout);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public View$OnClickListenerC7865a(C7864d c7864d, View view) {
            super(view);
            s1.z.c.l.e(view, "itemView");
            this.f24441b = c7864d;
            C8051b0 m29213N4 = m29213N4();
            m29213N4.f24790b.setOnTouchListener(this);
            m29213N4.f24791c.setOnTouchListener(this);
            m29213N4.f24789a.setOnTouchListener(this);
            m29213N4.f24792d.setOnClickListener(this);
        }

        /* renamed from: N4 */
        public final C8051b0 m29213N4() {
            return (C8051b0) this.f24440a.m13418a(this, f24439c[0]);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s1.z.c.l.e(view, ViewAction.VIEW);
            if (s1.z.c.l.a(view, m29213N4().f24792d)) {
                this.f24441b.f24438f.mo29216Vp(getAdapterPosition());
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            s1.z.c.l.e(view, ViewAction.VIEW);
            s1.z.c.l.e(motionEvent, "event");
            C8051b0 m29213N4 = m29213N4();
            if (motionEvent.getAction() == 1) {
                if (s1.z.c.l.a(view, m29213N4.f24790b)) {
                    this.f24441b.f24438f.mo29217Qa(getAdapterPosition());
                    return true;
                } else if (s1.z.c.l.a(view, m29213N4.f24791c)) {
                    this.f24441b.f24438f.mo29215Xd(getAdapterPosition());
                    return true;
                } else if (!s1.z.c.l.a(view, m29213N4.f24789a)) {
                    return true;
                } else {
                    this.f24441b.f24438f.mo29218Ps(getAdapterPosition());
                    return true;
                }
            }
            return true;
        }
    }

    public C7864d(AbstractC7863c abstractC7863c) {
        s1.z.c.l.e(abstractC7863c, "openHourListener");
        this.f24438f = abstractC7863c;
    }

    /* renamed from: e */
    public final void m29214e(int i, OpenHours openHours) {
        s1.z.c.l.e(openHours, "openHour");
        this.f24433a.set(i, openHours);
        notifyItemChanged(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f24433a.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0137, code lost:
        if (r10 != null) goto L22;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(p193e.p194a.p294b.p331b.p333b.C7864d.View$OnClickListenerC7865a r10, int r11) {
        /*
            Method dump skipped, instructions count: 715
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p331b.p333b.C7864d.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$c0, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public View$OnClickListenerC7865a onCreateViewHolder(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C3478R.layout.business_profile_row_open_hour, viewGroup, false);
        s1.z.c.l.d(inflate, "LayoutInflater.from(pare…open_hour, parent, false)");
        return new View$OnClickListenerC7865a(this, inflate);
    }
}
