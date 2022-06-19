package p193e.p194a.p1365y.p1366a.p1369d;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.p166ui.FlashButton;
import java.util.List;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1365y.p1381b.AbstractC21623t;
import p193e.p194a.p1365y.p1389g.AbstractC21745c;
import p193e.p194a.p1365y.p1389g.C21743a;
import p193e.p194a.p1365y.p1389g.C21744b;
import p193e.p194a.p1406z3.C21853e;
import s1.z.c.l;
/* renamed from: e.a.y.a.d.a */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/d/a.class */
public final class C21478a extends RecyclerView.AbstractC0317g<RecyclerView.AbstractC0313c0> {

    /* renamed from: a */
    public final LayoutInflater f59980a;

    /* renamed from: b */
    public final Activity f59981b;

    /* renamed from: c */
    public final C21853e f59982c;

    /* renamed from: d */
    public final List<AbstractC21745c> f59983d;

    /* renamed from: e */
    public final AbstractC21623t<C21743a> f59984e;

    /* renamed from: f */
    public final AbstractC21480b f59985f;

    /* renamed from: e.a.y.a.d.a$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/d/a$a.class */
    public final class View$OnClickListenerC21479a extends RecyclerView.AbstractC0313c0 implements View.OnClickListener {

        /* renamed from: a */
        public final TextView f59986a;

        /* renamed from: b */
        public final FlashButton f59987b;

        /* renamed from: c */
        public final ImageView f59988c;

        /* renamed from: d */
        public final /* synthetic */ C21478a f59989d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public View$OnClickListenerC21479a(C21478a c21478a, View view) {
            super(view);
            l.e(view, ViewAction.VIEW);
            this.f59989d = c21478a;
            View findViewById = view.findViewById(C3909R.C3911id.textName);
            l.d(findViewById, "view.findViewById(R.id.textName)");
            this.f59986a = (TextView) findViewById;
            View findViewById2 = view.findViewById(C3909R.C3911id.flash_button);
            l.d(findViewById2, "view.findViewById(R.id.flash_button)");
            FlashButton flashButton = (FlashButton) findViewById2;
            this.f59987b = flashButton;
            View findViewById3 = view.findViewById(C3909R.C3911id.imageAvatar);
            l.d(findViewById3, "view.findViewById(R.id.imageAvatar)");
            this.f59988c = (ImageView) findViewById3;
            flashButton.setBackground(C19291g.m13535l0(view.getContext(), C3909R.C3910drawable.bg_solid_white_rad_4dp, C3909R.attr.colorPrimary));
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Integer valueOf = Integer.valueOf(getAdapterPosition());
            if (!(valueOf.intValue() != -1)) {
                valueOf = null;
            }
            if (valueOf != null) {
                AbstractC21745c abstractC21745c = this.f59989d.f59983d.get(valueOf.intValue());
                if (!(abstractC21745c instanceof C21743a)) {
                    abstractC21745c = null;
                }
                C21743a c21743a = (C21743a) abstractC21745c;
                if (c21743a == null) {
                    return;
                }
                if (this.f59987b.m35374c()) {
                    this.f59989d.f59984e.onResult(c21743a);
                    return;
                }
                Activity activity = this.f59989d.f59981b;
                Toast.makeText(activity, activity.getString(C3909R.string.please_wait_before_sending, new Object[]{c21743a.f60557a}), 0).show();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C21478a(Activity activity, C21853e c21853e, List<? extends AbstractC21745c> list, AbstractC21623t<C21743a> abstractC21623t, AbstractC21480b abstractC21480b) {
        l.e(activity, "activity");
        l.e(c21853e, "glideRequests");
        l.e(list, "items");
        l.e(abstractC21623t, "listener");
        l.e(abstractC21480b, "headerItemPresenter");
        this.f59981b = activity;
        this.f59982c = c21853e;
        this.f59983d = list;
        this.f59984e = abstractC21623t;
        this.f59985f = abstractC21480b;
        LayoutInflater from = LayoutInflater.from(activity);
        l.d(from, "LayoutInflater.from(activity)");
        this.f59980a = from;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f59983d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return this.f59983d.get(i).mo9138a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        l.e(abstractC0313c0, "holder");
        AbstractC21745c abstractC21745c = this.f59983d.get(i);
        if (abstractC21745c.mo9138a() == C3909R.layout.flash_popup_content_header) {
            this.f59985f.mo9684b((AbstractC21484e) abstractC0313c0, (C21744b) abstractC21745c);
            return;
        }
        View$OnClickListenerC21479a view$OnClickListenerC21479a = (View$OnClickListenerC21479a) abstractC0313c0;
        C21743a c21743a = (C21743a) abstractC21745c;
        l.e(c21743a, AnalyticsConstants.CONTACT);
        String str = c21743a.f60557a;
        String str2 = c21743a.f60559c;
        String str3 = c21743a.f60558b;
        FlashButton flashButton = view$OnClickListenerC21479a.f59987b;
        l.d(str3, AnalyticsConstants.PHONE);
        flashButton.m35376a(Long.parseLong(str3), str, "flashShare");
        boolean z = false;
        view$OnClickListenerC21479a.f59987b.setVisibility(0);
        Activity activity = view$OnClickListenerC21479a.f59989d.f59981b;
        int i2 = C3909R.C3910drawable.ic_flash_empty_avatar_round;
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(activity, i2);
        if (str2 == null || str2.length() == 0) {
            z = true;
        }
        if (!z) {
            l.d(view$OnClickListenerC21479a.f59989d.f59982c.m8964B(str2).mo8102f().m8968p0(m1789b).mo8096l(m1789b).m8427O(view$OnClickListenerC21479a.f59988c), "glideRequests.load(image…       .into(imageAvatar)");
        } else {
            view$OnClickListenerC21479a.f59988c.setImageDrawable(m1789b);
        }
        view$OnClickListenerC21479a.f59986a.setText(str);
        view$OnClickListenerC21479a.itemView.setOnClickListener(view$OnClickListenerC21479a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C21486f c21486f;
        l.e(viewGroup, "parent");
        int i2 = C3909R.layout.flash_popup_content_header;
        if (i == i2) {
            View inflate = this.f59980a.inflate(i2, viewGroup, false);
            l.d(inflate, "inflater.inflate(R.layou…nt_header, parent, false)");
            c21486f = new C21486f(inflate, this.f59982c);
        } else {
            View inflate2 = this.f59980a.inflate(C3909R.layout.flashsdk_item_favourite_contact, viewGroup, false);
            l.d(inflate2, "inflater.inflate(R.layou…e_contact, parent, false)");
            c21486f = new View$OnClickListenerC21479a(this, inflate2);
        }
        return c21486f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onViewAttachedToWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(abstractC0313c0, "holder");
        RecyclerView.AbstractC0313c0 abstractC0313c02 = abstractC0313c0;
        if (!(abstractC0313c0 instanceof AbstractC21484e)) {
            abstractC0313c02 = null;
        }
        AbstractC21484e abstractC21484e = (AbstractC21484e) abstractC0313c02;
        if (abstractC21484e != null) {
            this.f59985f.mo9683c(abstractC21484e);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onViewDetachedFromWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(abstractC0313c0, "holder");
        RecyclerView.AbstractC0313c0 abstractC0313c02 = abstractC0313c0;
        if (!(abstractC0313c0 instanceof AbstractC21484e)) {
            abstractC0313c02 = null;
        }
        AbstractC21484e abstractC21484e = (AbstractC21484e) abstractC0313c02;
        if (abstractC21484e != null) {
            this.f59985f.mo9685a(abstractC21484e);
        }
    }
}
