package gogolook.callgogolook2.search;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.gogolook.commonlib.view.IconFontTextView;
import com.google.android.gms.maps.model.LatLng;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.gson.TextSearchResultEntry;
import gogolook.callgogolook2.main.MainActivity;
import p081h.p203i.p392f.p393a.p394b.AbstractC10182b;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchMarker.class */
public class TextSearchMarker implements AbstractC10182b {

    /* renamed from: a */
    public TextSearchResultEntry f12737a;

    /* renamed from: b */
    public View f12738b;

    /* renamed from: c */
    public LatLng f12739c;
    @BindView(R$id.iftv_call)
    public IconFontTextView call;
    @BindView(R$id.ll_right)
    public LinearLayout callContainer;
    @BindView(R$id.tv_call_times)
    public TextView callTimes;

    /* renamed from: d */
    public int f12740d;
    @BindView(R$id.tv_distance)
    public TextView distance;
    @BindView(R$id.tv_favorite_times)
    public TextView favoriteTimes;
    @BindView(R$id.ll_line_fourth)
    public LinearLayout lineFourthContainer;
    @BindView(R$id.line_primary)
    public TextView linePrimary;
    @BindView(R$id.line_secondary_number)
    public TextView lineSecondaryNumber;
    @BindView(R$id.ll_line_tertiary)
    public LinearLayout lineTertiaryContainer;

    /* renamed from: gogolook.callgogolook2.search.TextSearchMarker$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchMarker$a.class */
    public class View$OnClickListenerC5157a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ TextSearchFragment f12741a;

        public View$OnClickListenerC5157a(TextSearchFragment textSearchFragment) {
            this.f12741a = textSearchFragment;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f12741a.m26300a(TextSearchMarker.this.f12737a.num, TextSearchMarker.this.f12737a.e164, 0, "FROM_Map");
        }
    }

    /* renamed from: gogolook.callgogolook2.search.TextSearchMarker$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/TextSearchMarker$b.class */
    public class View$OnClickListenerC5158b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f12743a;

        /* renamed from: b */
        public final /* synthetic */ TextSearchFragment f12744b;

        public View$OnClickListenerC5158b(Context context, TextSearchFragment textSearchFragment) {
            this.f12743a = context;
            this.f12744b = textSearchFragment;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C14108o4.m2499a((CharSequence) TextSearchMarker.this.f12737a.num)) {
                C14217x3.m2145e((Activity) this.f12743a, TextSearchMarker.this.f12737a.num, 5);
                C14299q.m1721f(TextSearchMarker.this.f12740d);
                C14299q.m1714g("searchresults_call", this.f12744b.m26230o0() ? 0.0d : 1.0d);
                C14289m.m1894a((Integer) 1, "Map", Integer.valueOf(TextSearchMarker.this.f12740d));
            }
        }
    }

    public TextSearchMarker(LatLng latLng, TextSearchResultEntry textSearchResultEntry, int i) {
        this.f12739c = latLng;
        this.f12737a = textSearchResultEntry;
        this.f12740d = i;
    }

    /* renamed from: a */
    public View m26191a(Context context, TextSearchFragment textSearchFragment, LayoutInflater layoutInflater, String str) {
        if (this.f12738b == null) {
            this.f12738b = layoutInflater.inflate(R$layout.text_search_on_map_listitem, (ViewGroup) null);
        }
        ButterKnife.bind(this, this.f12738b);
        m26190a(context, textSearchFragment, str);
        return this.f12738b;
    }

    /* renamed from: a */
    public void m26192a() {
        View view = this.f12738b;
        if (view != null) {
            view.setOnClickListener(null);
            this.f12738b = null;
        }
        LinearLayout linearLayout = this.callContainer;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(null);
        }
    }

    /* renamed from: a */
    public final void m26190a(Context context, TextSearchFragment textSearchFragment, String str) {
        if (this.f12738b != null) {
            MainActivity mainActivity = null;
            if (context instanceof MainActivity) {
                mainActivity = (MainActivity) context;
            }
            this.f12738b.setOnClickListener(new View$OnClickListenerC5157a(textSearchFragment));
            this.callContainer.setOnClickListener(new View$OnClickListenerC5158b(context, textSearchFragment));
            this.linePrimary.setText(C14217x3.m2160b(this.f12737a.name) ? this.f12737a.num : this.f12737a.name);
            this.lineSecondaryNumber.setText(this.f12737a.address);
            this.callTimes.setText(String.valueOf(this.f12737a.callCount));
            this.favoriteTimes.setText(String.valueOf(this.f12737a.favoriteCount));
            if (this.f12737a.distance > 0.0d) {
                this.distance.setVisibility(0);
                this.distance.setText(C14217x3.m2192a(context, this.f12737a.distance));
            } else {
                this.distance.setVisibility(8);
            }
            int childCount = this.lineTertiaryContainer.getChildCount() - 1;
            if (this.lineTertiaryContainer.getChildAt(childCount) instanceof LinearLayout) {
                ((LinearLayout) this.lineTertiaryContainer.getChildAt(childCount)).removeAllViews();
            }
            String[] split = str.split("\\s+");
            if (this.f12737a.label.size() > 0 && mainActivity != null) {
                textSearchFragment.m26298a(split, this.f12737a.label, this);
            }
        }
    }

    @Override // p081h.p203i.p392f.p393a.p394b.AbstractC10182b
    public LatLng getPosition() {
        return this.f12739c;
    }
}
