package p193e.p194a.p1315v4.p1316o0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.sdk.C4417R;
import java.util.List;
import s1.z.c.l;
/* renamed from: e.a.v4.o0.f */
/* loaded from: classes12-dex2jar.jar:e/a/v4/o0/f.class */
public final class C21055f extends RecyclerView.AbstractC0317g<C21056a> {

    /* renamed from: a */
    public final Context f59060a;

    /* renamed from: b */
    public final List<C21054e> f59061b;

    /* renamed from: e.a.v4.o0.f$a */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/o0/f$a.class */
    public static final class C21056a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final AppCompatTextView f59062a;

        /* renamed from: b */
        public final AppCompatImageView f59063b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21056a(View view) {
            super(view);
            l.e(view, "itemView");
            View findViewById = view.findViewById(C4417R.C4419id.textMain);
            l.d(findViewById, "itemView.findViewById(R.id.textMain)");
            this.f59062a = (AppCompatTextView) findViewById;
            View findViewById2 = view.findViewById(C4417R.C4419id.imageLeft);
            l.d(findViewById2, "itemView.findViewById(R.id.imageLeft)");
            this.f59063b = (AppCompatImageView) findViewById2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C21055f(Context context, List<? extends C21054e> list) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "items");
        this.f59060a = context;
        this.f59061b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f59061b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C21056a c21056a, int i) {
        C21056a c21056a2 = c21056a;
        l.e(c21056a2, "holder");
        C21054e c21054e = this.f59061b.get(i);
        c21056a2.f59062a.setText(c21054e.f59059b);
        c21056a2.f59063b.setImageResource(c21054e.f59058a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C21056a onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(this.f59060a).inflate(C4417R.layout.profile_info_item, viewGroup, false);
        l.d(inflate, "inflater.inflate(layout.…info_item, parent, false)");
        return new C21056a(inflate);
    }
}
