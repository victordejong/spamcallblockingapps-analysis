package p193e.p194a.p1159q4;

import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.log.AssertionUtil;
import com.truecaller.p183ui.view.ContactPhoto;
import com.truecaller.referral.BulkSmsView;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1159q4.C19669t;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
/* renamed from: e.a.q4.t */
/* loaded from: classes12-dex2jar.jar:e/a/q4/t.class */
public class C19669t extends RecyclerView.AbstractC0317g<C19670a> {

    /* renamed from: a */
    public final C19679x f54627a;

    /* renamed from: e.a.q4.t$a */
    /* loaded from: classes12-dex2jar.jar:e/a/q4/t$a.class */
    public static class C19670a extends AbstractC13209t.C13211b implements AbstractC19667s {

        /* renamed from: b */
        public ContactPhoto f54628b;

        /* renamed from: c */
        public TextView f54629c;

        /* renamed from: d */
        public TextView f54630d;

        public C19670a(View view, final C19679x c19679x, int i) {
            super(view);
            if (i != 1 && i != 2) {
                if (i != 3 && i != 4) {
                    return;
                }
                view.setOnClickListener(new View.OnClickListener() { // from class: e.a.q4.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        C19679x.this.m13006Kj();
                    }
                });
                return;
            }
            this.f54628b = (ContactPhoto) view.findViewById(C2752R.C2754id.contact_photo);
            this.f54629c = (TextView) view.findViewById(2131364884);
            this.f54630d = (TextView) view.findViewById(C2752R.C2754id.number_text);
            view.setOnClickListener(new View.OnClickListener() { // from class: e.a.q4.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C19669t.C19670a c19670a = C19669t.C19670a.this;
                    C19679x c19679x2 = c19679x;
                    int adapterPosition = c19670a.getAdapterPosition();
                    if (c19679x2.f57683a != 0 || adapterPosition >= c19679x2.f54667c.size()) {
                        ((BulkSmsView) c19679x2.f57683a).mo13014mh(c19679x2.f54667c.get(adapterPosition), SourceType.BulkSmsReferral, false, false, false);
                    }
                }
            });
            ImageView imageView = (ImageView) view.findViewById(C2752R.C2754id.actionOne);
            if (imageView == null) {
                return;
            }
            imageView.setImageDrawable(C19291g.m13600P(view.getContext(), C2752R.attr.conversation_deleteEntityImage));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: e.a.q4.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C19669t.C19670a c19670a = C19669t.C19670a.this;
                    C19679x c19679x2 = c19679x;
                    int adapterPosition = c19670a.getAdapterPosition();
                    Objects.requireNonNull(c19679x2);
                    if (adapterPosition == -1) {
                        return;
                    }
                    c19679x2.f54667c.remove(adapterPosition);
                    AssertionUtil.isNotNull(c19679x2.f57683a, new String[0]);
                    ((BulkSmsView) c19679x2.f57683a).mo13031Cu(adapterPosition);
                    c19679x2.m13001Pj((BulkSmsView) c19679x2.f57683a);
                }
            });
        }

        @Override // p193e.p194a.p1159q4.AbstractC19667s
        public void setName(String str) {
            this.f54629c.setText(str);
        }

        @Override // p193e.p194a.p1159q4.AbstractC19667s
        public void setPhoneNumber(String str) {
            this.f54630d.setText(str);
        }

        @Override // p193e.p194a.p1159q4.AbstractC19667s
        /* renamed from: u */
        public void mo13042u(Uri uri) {
            this.f54628b.m34479f(uri, null);
        }

        @Override // p193e.p194a.p1159q4.AbstractC19667s
        /* renamed from: z4 */
        public void mo13041z4(boolean z) {
            this.f54630d.setVisibility(z ? 0 : 8);
        }
    }

    public C19669t(C19679x c19679x) {
        this.f54627a = c19679x;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f54627a.mo10091Kb();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return this.f54627a.mo10064Za(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C19670a c19670a, int i) {
        this.f54627a.mo10095G(c19670a, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C19670a onCreateViewHolder(ViewGroup viewGroup, int i) {
        C19670a c19670a;
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i == 1) {
            c19670a = new C19670a(from.inflate(C2752R.layout.item_referral_target_contact, viewGroup, false), this.f54627a, i);
        } else if (i == 2) {
            c19670a = new C19670a(from.inflate(C2752R.layout.include_row_contact_with_single_action, viewGroup, false), this.f54627a, i);
        } else if (i == 3) {
            c19670a = new C19670a(from.inflate(C2752R.layout.item_add_more, viewGroup, false), this.f54627a, i);
        } else if (i != 4) {
            throw new IllegalArgumentException(C22128a.m8599l2("Type ", i, " is not handled."));
        } else {
            c19670a = new C19670a(from.inflate(C2752R.layout.item_add_more_horizontal, viewGroup, false), this.f54627a, i);
        }
        return c19670a;
    }
}
