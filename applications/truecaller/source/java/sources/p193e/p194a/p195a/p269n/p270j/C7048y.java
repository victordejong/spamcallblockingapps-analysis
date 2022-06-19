package p193e.p194a.p195a.p269n.p270j;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.mediamanager.SortOption;
import e.m.a.g.e.d;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.k;
import s1.s;
import s1.u.i;
import s1.z.b.l;
/* renamed from: e.a.a.n.j.y */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/y.class */
public final class C7048y extends d {

    /* renamed from: o */
    public final SortOption f22741o;

    /* renamed from: p */
    public final boolean f22742p;

    /* renamed from: q */
    public final l<SortOption, s> f22743q;

    /* renamed from: e.a.a.n.j.y$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/y$a.class */
    public static final class View$OnClickListenerC7049a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ SortOption f22744a;

        /* renamed from: b */
        public final /* synthetic */ C7048y f22745b;

        /* renamed from: c */
        public final /* synthetic */ ViewGroup f22746c;

        public View$OnClickListenerC7049a(SortOption sortOption, C7048y c7048y, LayoutInflater layoutInflater, ViewGroup viewGroup) {
            this.f22744a = sortOption;
            this.f22745b = c7048y;
            this.f22746c = viewGroup;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [e.a.a.n.j.y, n3.b.a.p] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f22745b.f22743q.d(this.f22744a);
            this.f22745b.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C7048y(Context context, SortOption sortOption, boolean z, l<? super SortOption, s> lVar) {
        super(context, 2131952156);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(sortOption, "selectedOption");
        s1.z.c.l.e(lVar, "listener");
        this.f22741o = sortOption;
        this.f22742p = z;
        this.f22743q = lVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C7048y.super.onCreate(bundle);
        List d0 = i.d0(new k[]{new k(SortOption.DATE_DESC, Integer.valueOf((int) C2752R.string.media_manager_sort_date_descending)), new k(SortOption.DATE_ASC, Integer.valueOf((int) C2752R.string.media_manager_sort_date_ascending))});
        if (this.f22742p) {
            d0.add(new k(SortOption.SIZE_DESC, Integer.valueOf((int) C2752R.string.media_manager_sort_size_descending)));
            d0.add(new k(SortOption.SIZE_ASC, Integer.valueOf((int) C2752R.string.media_manager_sort_size_ascending)));
        }
        List<k> S0 = i.S0(d0);
        LayoutInflater from = LayoutInflater.from(getContext());
        View inflate = from.inflate(C2752R.layout.dialog_media_manager_sort, (ViewGroup) null);
        View findViewById = inflate.findViewById(2131362924);
        s1.z.c.l.d(findViewById, "view.findViewById(R.id.container)");
        ViewGroup viewGroup = (ViewGroup) findViewById;
        for (k kVar : S0) {
            SortOption sortOption = (SortOption) kVar.a;
            int intValue = ((Number) kVar.b).intValue();
            View inflate2 = from.inflate(C2752R.layout.item_media_manager_sort_option, viewGroup, false);
            Objects.requireNonNull(inflate2, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) inflate2;
            textView.setText(intValue);
            textView.setOnClickListener(new View$OnClickListenerC7049a(sortOption, this, from, viewGroup));
            if (sortOption == this.f22741o) {
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, C19291g.m13535l0(getContext(), 2131232406, 2130970017), (Drawable) null);
            }
            viewGroup.addView(textView);
        }
        setContentView(inflate);
    }
}
