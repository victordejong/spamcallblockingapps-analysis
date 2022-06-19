package p193e.p194a.p1315v4.p1316o0;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.sdk.C4417R;
import java.util.List;
import p193e.p194a.p1129p5.AbstractC19233h0;
import s1.z.c.l;
/* renamed from: e.a.v4.o0.d */
/* loaded from: classes12-dex2jar.jar:e/a/v4/o0/d.class */
public final class C21050d extends RecyclerView.AbstractC0317g<C21052b> {

    /* renamed from: a */
    public final LayoutInflater f59053a;

    /* renamed from: b */
    public List<? extends AbstractC21049c> f59054b;

    /* renamed from: c */
    public AbstractC19233h0 f59055c;

    /* renamed from: d */
    public int f59056d = 2;

    /* renamed from: e.a.v4.o0.d$a */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/o0/d$a.class */
    public static final class C21051a extends C21052b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21051a(View view) {
            super(view);
            l.e(view, "itemView");
        }

        @Override // p193e.p194a.p1315v4.p1316o0.C21050d.C21052b
        /* renamed from: N4 */
        public void mo10381N4(AbstractC19233h0 abstractC19233h0) {
            l.e(abstractC19233h0, "themedResourceProvider");
            AppCompatTextView appCompatTextView = this.f59057a;
            appCompatTextView.setTextColor(abstractC19233h0.mo13758l(C4417R.attr.tcx_brandBackgroundBlue));
            appCompatTextView.setTextSize(12.0f);
            appCompatTextView.setPadding(0, 0, 0, appCompatTextView.getResources().getDimensionPixelSize(C4417R.dimen.info_item_vertical_padding));
        }
    }

    /* renamed from: e.a.v4.o0.d$b */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/o0/d$b.class */
    public static class C21052b extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final AppCompatTextView f59057a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21052b(View view) {
            super(view);
            l.e(view, "itemView");
            View findViewById = view.findViewById(C4417R.C4419id.text);
            l.d(findViewById, "itemView.findViewById(R.id.text)");
            this.f59057a = (AppCompatTextView) findViewById;
        }

        /* renamed from: N4 */
        public void mo10381N4(AbstractC19233h0 abstractC19233h0) {
            l.e(abstractC19233h0, "themedResourceProvider");
            AppCompatTextView appCompatTextView = this.f59057a;
            appCompatTextView.setTextSize(12.0f);
            appCompatTextView.setTextColor(abstractC19233h0.mo13758l(C4417R.attr.tcx_textSecondary));
            appCompatTextView.setPadding(0, 0, 0, appCompatTextView.getResources().getDimensionPixelSize(C4417R.dimen.info_item_vertical_padding));
        }
    }

    /* renamed from: e.a.v4.o0.d$c */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/o0/d$c.class */
    public static final class C21053c extends C21052b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21053c(View view) {
            super(view);
            l.e(view, "itemView");
        }

        @Override // p193e.p194a.p1315v4.p1316o0.C21050d.C21052b
        /* renamed from: N4 */
        public void mo10381N4(AbstractC19233h0 abstractC19233h0) {
            l.e(abstractC19233h0, "themedResourceProvider");
            AppCompatTextView appCompatTextView = this.f59057a;
            appCompatTextView.setTextColor(abstractC19233h0.mo13758l(C4417R.attr.tcx_textSecondary));
            appCompatTextView.setTextSize(14.0f);
            Drawable mo13764f = abstractC19233h0.mo13764f(C4417R.C4418drawable.ic_tcx_verified_badge, C4417R.attr.tcx_brandBackgroundBlue);
            l.d(mo13764f, "themedResourceProvider.g….tcx_brandBackgroundBlue)");
            appCompatTextView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, mo13764f, (Drawable) null);
            appCompatTextView.setCompoundDrawablePadding(appCompatTextView.getResources().getDimensionPixelSize(C4417R.dimen.truesdk_horizontal_padding));
            int dimensionPixelSize = appCompatTextView.getResources().getDimensionPixelSize(C4417R.dimen.info_item_vertical_padding);
            appCompatTextView.setPadding(0, dimensionPixelSize, 0, dimensionPixelSize);
        }
    }

    public C21050d(Context context, List<? extends AbstractC21049c> list, AbstractC19233h0 abstractC19233h0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "items");
        l.e(abstractC19233h0, "themedResourceProvider");
        this.f59054b = list;
        this.f59055c = abstractC19233h0;
        this.f59053a = LayoutInflater.from(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f59056d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return this.f59054b.get(i).getType();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C21052b c21052b, int i) {
        C21052b c21052b2 = c21052b;
        l.e(c21052b2, "holder");
        c21052b2.f59057a.setText(this.f59054b.get(i).mo10380m1());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C21052b onCreateViewHolder(ViewGroup viewGroup, int i) {
        C21051a c21051a;
        l.e(viewGroup, "parent");
        if (i == 0) {
            View inflate = this.f59053a.inflate(C4417R.layout.profile_info_item_popup, viewGroup, false);
            l.d(inflate, "inflater.inflate(R.layou…tem_popup, parent, false)");
            c21051a = new C21053c(inflate);
        } else if (i != 2) {
            View inflate2 = this.f59053a.inflate(C4417R.layout.profile_info_item_popup, viewGroup, false);
            l.d(inflate2, "inflater.inflate(R.layou…tem_popup, parent, false)");
            c21051a = new C21052b(inflate2);
        } else {
            View inflate3 = this.f59053a.inflate(C4417R.layout.profile_info_item_popup, viewGroup, false);
            l.d(inflate3, "inflater.inflate(R.layou…tem_popup, parent, false)");
            c21051a = new C21051a(inflate3);
        }
        c21051a.mo10381N4(this.f59055c);
        return c21051a;
    }
}
