package p459j.p460a.p576w.p581r;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.viewpagerindicator.CirclePageIndicator;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.IapPageProductInfo;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p081h.p450p.AbstractC10843h;
import p081h.p450p.C10837d;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p576w.C13752i;
import p459j.p460a.p576w.p577n.C13773d;
import p459j.p460a.p576w.p578o.C13796c;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p626l.C14989s;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� 72\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00017B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0002H\u0002J\u001e\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0002H\u0002J\u0018\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u0017H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0002H\u0002J\u0018\u0010\"\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u0017H\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0011H\u0002J\b\u0010'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020(H\u0016J\u0018\u0010+\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010*\u001a\u00020(H\u0016J\u0018\u0010,\u001a\u00020\u00022\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020(H\u0016J\u0018\u00100\u001a\u00020\u00132\u0006\u00101\u001a\u00020\u00152\u0006\u00102\u001a\u00020%H\u0002J\u0018\u00103\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u00104\u001a\u00020(H\u0002J\u0010\u00105\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0006\u00106\u001a\u00020\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R$\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��¨\u00068"}, m815d2 = {"Lgogolook/callgogolook2/iap/ui/IapAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "iapViewModel", "Lgogolook/callgogolook2/iap/ui/IapViewModel;", "(Lgogolook/callgogolook2/iap/ui/IapViewModel;)V", "indicatorView", "Lcom/viewpagerindicator/CirclePageIndicator;", "introAnimation", "Ljava/lang/Runnable;", C13032a.f29462d, "", "isStateError", "()Z", "setStateError", "(Z)V", "lastDownX", "", "bindBiannualProduct", "", "view", "Landroid/view/View;", "biannualObject", "Lgogolook/callgogolook2/realm/obj/iap/PlanProductRealmObject;", "bindError", "holder", "bindIndicator", "data", "", "Lgogolook/callgogolook2/iap/model/IapIntro;", "bindIntro", "bindMonthlyProduct", "monthlyObject", "bindProducts", "bindYearlyProduct", "yearlyObject", "formatPrice", "", "price", "getItemCount", "", "getItemViewType", "position", "onBindViewHolder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setSelectProduct", "itemView", "productType", "startAutoPlay", "size", "stopAutoPlay", "unregisterCallback", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.r.a */
/* loaded from: classes2-dex2jar.jar:j/a/w/r/a.class */
public final class C13834a extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a */
    public boolean f31061a;

    /* renamed from: b */
    public CirclePageIndicator f31062b;

    /* renamed from: c */
    public Runnable f31063c;

    /* renamed from: d */
    public float f31064d;

    /* renamed from: e */
    public final C13865h f31065e;

    /* renamed from: j.a.w.r.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/a$a.class */
    public static final class C13835a {
        public C13835a() {
        }

        public /* synthetic */ C13835a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.w.r.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/a$b.class */
    public static final class C13836b implements AbstractC10843h {

        /* renamed from: a */
        public final /* synthetic */ CirclePageIndicator f31066a;

        /* renamed from: b */
        public final /* synthetic */ C13834a f31067b;

        /* renamed from: c */
        public final /* synthetic */ C10837d f31068c;

        /* renamed from: d */
        public final /* synthetic */ int f31069d;

        public C13836b(CirclePageIndicator circlePageIndicator, C13834a aVar, C10837d dVar, int i) {
            this.f31066a = circlePageIndicator;
            this.f31067b = aVar;
            this.f31068c = dVar;
            this.f31069d = i;
        }

        @Override // p081h.p450p.AbstractC10843h
        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                this.f31068c.mo10436a().notifyItemChanged(this.f31067b.f31065e.m3286i(), C14989s.f33022a);
            }
        }

        @Override // p081h.p450p.AbstractC10843h
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // p081h.p450p.AbstractC10843h
        public void onPageSelected(int i) {
            this.f31067b.f31065e.m3307a(i);
            C13834a aVar = this.f31067b;
            CirclePageIndicator circlePageIndicator = this.f31066a;
            C15149k.m383a((Object) circlePageIndicator, "this@apply");
            aVar.m3358a(circlePageIndicator, this.f31069d);
        }
    }

    /* renamed from: j.a.w.r.a$c */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/a$c.class */
    public static final class View$OnTouchListenerC13837c implements View.OnTouchListener {

        /* renamed from: b */
        public final /* synthetic */ View f31071b;

        /* renamed from: c */
        public final /* synthetic */ int f31072c;

        public View$OnTouchListenerC13837c(View view, int i) {
            this.f31071b = view;
            this.f31072c = i;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C15149k.m383a((Object) motionEvent, NotificationCompat.CATEGORY_EVENT);
            int action = motionEvent.getAction();
            if (action == 0) {
                C13834a aVar = C13834a.this;
                CirclePageIndicator circlePageIndicator = (CirclePageIndicator) this.f31071b.findViewById(R$id.cpiIndicator);
                C15149k.m383a((Object) circlePageIndicator, "view.cpiIndicator");
                aVar.m3359a(circlePageIndicator);
                C13834a.this.f31064d = motionEvent.getRawX();
                return false;
            } else if (action != 1 && action != 3) {
                return false;
            } else {
                C13834a aVar2 = C13834a.this;
                CirclePageIndicator circlePageIndicator2 = (CirclePageIndicator) this.f31071b.findViewById(R$id.cpiIndicator);
                C15149k.m383a((Object) circlePageIndicator2, "view.cpiIndicator");
                aVar2.m3358a(circlePageIndicator2, this.f31072c);
                if (Math.abs(motionEvent.getRawX() - C13834a.this.f31064d) <= C13834a.this.f31065e.m3282m()) {
                    return false;
                }
                C13752i.m3520b();
                return false;
            }
        }
    }

    /* renamed from: j.a.w.r.a$d */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/a$d.class */
    public static final class View$OnClickListenerC13838d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f31073a;

        /* renamed from: b */
        public final /* synthetic */ C13834a f31074b;

        public View$OnClickListenerC13838d(View view, C13834a aVar, Map map) {
            this.f31073a = view;
            this.f31074b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13834a aVar = this.f31074b;
            View view2 = this.f31073a;
            C15149k.m383a((Object) view2, "this");
            aVar.m3356a(view2, "ad_free_m");
            this.f31074b.f31065e.m3303a("ad_free_m");
        }
    }

    /* renamed from: j.a.w.r.a$e */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/a$e.class */
    public static final class View$OnClickListenerC13839e implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f31075a;

        /* renamed from: b */
        public final /* synthetic */ C13834a f31076b;

        public View$OnClickListenerC13839e(View view, C13834a aVar, Map map) {
            this.f31075a = view;
            this.f31076b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13834a aVar = this.f31076b;
            View view2 = this.f31075a;
            C15149k.m383a((Object) view2, "this");
            aVar.m3356a(view2, "ad_free_biannual");
            this.f31076b.f31065e.m3303a("ad_free_biannual");
        }
    }

    /* renamed from: j.a.w.r.a$f */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/a$f.class */
    public static final class View$OnClickListenerC13840f implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f31077a;

        /* renamed from: b */
        public final /* synthetic */ C13834a f31078b;

        public View$OnClickListenerC13840f(View view, C13834a aVar, Map map) {
            this.f31077a = view;
            this.f31078b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13834a aVar = this.f31078b;
            View view2 = this.f31077a;
            C15149k.m383a((Object) view2, "this");
            aVar.m3356a(view2, "ad_free_y");
            this.f31078b.f31065e.m3303a("ad_free_y");
        }
    }

    /* renamed from: j.a.w.r.a$g */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/a$g.class */
    public static final class RunnableC13841g implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ View f31080b;

        /* renamed from: c */
        public final /* synthetic */ int f31081c;

        public RunnableC13841g(View view, int i) {
            this.f31080b = view;
            this.f31081c = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ((CirclePageIndicator) this.f31080b.findViewById(R$id.cpiIndicator)).m29327c((C13834a.this.f31065e.m3286i() + 1) % this.f31081c);
        }
    }

    static {
        new C13835a(null);
    }

    public C13834a(C13865h hVar) {
        C15149k.m377b(hVar, "iapViewModel");
        this.f31065e = hVar;
    }

    /* renamed from: a */
    public final String m3360a(float f) {
        String format = new DecimalFormat("0.##").format(f);
        C15149k.m383a((Object) format, "DecimalFormat(\"0.##\").format(price.toDouble())");
        return format;
    }

    /* renamed from: a */
    public final void m3361a() {
        CirclePageIndicator circlePageIndicator = this.f31062b;
        if (circlePageIndicator != null) {
            circlePageIndicator.m29330a((AbstractC10843h) null);
        }
        this.f31063c = null;
    }

    /* renamed from: a */
    public final void m3359a(View view) {
        view.removeCallbacks(this.f31063c);
    }

    /* renamed from: a */
    public final void m3358a(View view, int i) {
        if (this.f31063c == null) {
            this.f31063c = new RunnableC13841g(view, i);
        }
        m3359a(view);
        view.postDelayed(this.f31063c, 6500L);
    }

    /* renamed from: a */
    public final void m3357a(View view, PlanProductRealmObject planProductRealmObject) {
        SkuDetailsRealmObject skuDetails = planProductRealmObject.getSkuDetails();
        if (skuDetails != null) {
            float realPrice = skuDetails.getRealPrice();
            TextView textView = (TextView) view.findViewById(R$id.tvBiannualPrice);
            C15149k.m383a((Object) textView, "tvBiannualPrice");
            textView.setText(m3360a(realPrice));
            float f = realPrice / 6;
            C15136c0 c0Var = C15136c0.f33133a;
            String a = C14206w4.m2225a((int) R$string.premiumsubscribe_monthly_price);
            Object[] objArr = {m3360a(f)};
            String format = String.format(a, Arrays.copyOf(objArr, objArr.length));
            C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
            TextView textView2 = (TextView) view.findViewById(R$id.tvBiannualPricePerMonth);
            C15149k.m383a((Object) textView2, "tvBiannualPricePerMonth");
            textView2.setText(format);
            TextView textView3 = (TextView) view.findViewById(R$id.tvBiannualCurrency);
            C15149k.m383a((Object) textView3, "tvBiannualCurrency");
            textView3.setText(C15149k.m381a(skuDetails.getPriceCurrencyCode(), (Object) C14206w4.m2225a((int) R$string.premiumsubscribe_perhalfyear)));
        }
    }

    /* renamed from: a */
    public final void m3356a(View view, String str) {
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R$id.rlProductMonthly);
        C15149k.m383a((Object) relativeLayout, "rlProductMonthly");
        relativeLayout.setSelected(C15149k.m384a((Object) "ad_free_m", (Object) str));
        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R$id.rlProductBiannual);
        C15149k.m383a((Object) relativeLayout2, "rlProductBiannual");
        relativeLayout2.setSelected(C15149k.m384a((Object) "ad_free_biannual", (Object) str));
        RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R$id.rlProductYearly);
        C15149k.m383a((Object) relativeLayout3, "rlProductYearly");
        relativeLayout3.setSelected(C15149k.m384a((Object) "ad_free_y", (Object) str));
    }

    /* renamed from: a */
    public final void m3355a(View view, List<C13796c> list) {
        int size = list.size();
        C10837d dVar = new C10837d();
        dVar.mo10432a((ViewPager2) view.findViewById(R$id.viewPager2));
        ((ViewPager2) view.findViewById(R$id.viewPager2)).getChildAt(0).setOnTouchListener(new View$OnTouchListenerC13837c(view, size));
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) view.findViewById(R$id.cpiIndicator);
        circlePageIndicator.m29326d(C14217x3.m2201a(3.0f));
        circlePageIndicator.m29331a(dVar);
        circlePageIndicator.m29332a(this.f31065e.m3286i(), false);
        circlePageIndicator.m29330a(new C13836b(circlePageIndicator, this, dVar, size));
        C15149k.m383a((Object) circlePageIndicator, "this");
        m3358a(circlePageIndicator, size);
        this.f31062b = circlePageIndicator;
    }

    /* renamed from: a */
    public final void m3354a(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        C13773d.AbstractC13775b value = this.f31065e.m3289g().getValue();
        int b = value instanceof C13773d.AbstractC13775b.C13776a ? ((C13773d.AbstractC13775b.C13776a) value).m3450b() : -1;
        Boolean value2 = this.f31065e.m3277r().getValue();
        if (value2 == null) {
            value2 = true;
        }
        C15149k.m383a((Object) value2, "iapViewModel.isGetProductSuccess.value ?: true");
        value2.booleanValue();
        TextView textView = (TextView) view.findViewById(R$id.tvSubscriptStatus);
        C15149k.m383a((Object) textView, "tvSubscriptStatus");
        boolean h = C14217x3.m2137h(MyApplication.m29013o());
        int i = R$string.ad_free_iap_content_not_available;
        if (!h) {
            i = R$string.error_code_nointernet;
        } else if (1 == b) {
            i = R$string.intro_verify_dialogue_fail_suggest;
        }
        textView.setText(C14206w4.m2225a(i));
    }

    /* renamed from: a */
    public final void m3348a(boolean z) {
        this.f31061a = z;
        notifyDataSetChanged();
    }

    /* renamed from: b */
    public final void m3347b(View view, PlanProductRealmObject planProductRealmObject) {
        SkuDetailsRealmObject skuDetails = planProductRealmObject.getSkuDetails();
        if (skuDetails != null) {
            TextView textView = (TextView) view.findViewById(R$id.tvMonthlyPrice);
            C15149k.m383a((Object) textView, "tvMonthlyPrice");
            textView.setText(m3360a(C14021h2.m2792a(planProductRealmObject)));
            TextView textView2 = (TextView) view.findViewById(R$id.tvMonthlyCurrency);
            C15149k.m383a((Object) textView2, "tvMonthlyCurrency");
            textView2.setText(C15149k.m381a(skuDetails.getPriceCurrencyCode(), (Object) C14206w4.m2225a((int) R$string.premiumsubscribe_permonth)));
        }
    }

    /* renamed from: b */
    public final void m3346b(RecyclerView.ViewHolder viewHolder) {
        List<C13796c> j = this.f31065e.m3285j();
        if (j != null) {
            View view = viewHolder.itemView;
            C13863f fVar = new C13863f(j);
            C15149k.m383a((Object) view, "it");
            ViewPager2 viewPager2 = (ViewPager2) view.findViewById(R$id.viewPager2);
            C15149k.m383a((Object) viewPager2, "it.viewPager2");
            viewPager2.setAdapter(fVar);
            if (j.size() < 2) {
                CirclePageIndicator circlePageIndicator = (CirclePageIndicator) view.findViewById(R$id.cpiIndicator);
                C15149k.m383a((Object) circlePageIndicator, "it.cpiIndicator");
                circlePageIndicator.setVisibility(8);
            } else {
                m3355a(view, j);
            }
            C15149k.m383a((Object) view, "it");
            ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(R$id.clSlide);
            C15149k.m383a((Object) constraintLayout, "it.clSlide");
            constraintLayout.setVisibility(0);
        }
    }

    /* renamed from: c */
    public final void m3344c(View view, PlanProductRealmObject planProductRealmObject) {
        IapPageProductInfo.ProductInfo n = this.f31065e.m3281n();
        String d = n != null ? n.m28424d() : null;
        boolean z = false;
        if (!(!(d == null || d.length() == 0))) {
            d = null;
        }
        if (d != null) {
            TextView textView = (TextView) view.findViewById(R$id.tvRecommend);
            C15149k.m383a((Object) textView, "tvRecommend");
            textView.setText(d);
        } else {
            ((TextView) view.findViewById(R$id.tvRecommend)).setText(R$string.premiumsubscribe_yearly_recommend_full_price);
        }
        TextView textView2 = (TextView) view.findViewById(R$id.tvYearlySubtitle);
        C15149k.m383a((Object) textView2, "tvYearlySubtitle");
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        textView2.setText(C14021h2.m2794a(o, planProductRealmObject.getDiscount()));
        SkuDetailsRealmObject skuDetails = planProductRealmObject.getSkuDetails();
        if (skuDetails != null) {
            boolean z2 = skuDetails.getIntroductoryPriceAmountMicros() != 0;
            float introPrice = z2 ? skuDetails.getIntroPrice() : skuDetails.getRealPrice();
            TextView textView3 = (TextView) view.findViewById(R$id.tvYearlyPrice);
            C15149k.m383a((Object) textView3, "tvYearlyPrice");
            textView3.setText(m3360a(introPrice));
            C15136c0 c0Var = C15136c0.f33133a;
            String a = C14206w4.m2225a((int) R$string.premiumsubscribe_monthly_price);
            Object[] objArr = {m3360a(introPrice / 12)};
            String format = String.format(a, Arrays.copyOf(objArr, objArr.length));
            C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
            TextView textView4 = (TextView) view.findViewById(R$id.tvYearlyPricePerMonth);
            C15149k.m383a((Object) textView4, "tvYearlyPricePerMonth");
            textView4.setText(format);
            TextView textView5 = (TextView) view.findViewById(R$id.tvYearlyCurrency);
            C15149k.m383a((Object) textView5, "tvYearlyCurrency");
            textView5.setText(C15149k.m381a(skuDetails.getPriceCurrencyCode(), (Object) C14206w4.m2225a((int) R$string.premiumsubscribe_peryear)));
            TextView textView6 = (TextView) view.findViewById(R$id.tvIntroPriceNotice);
            textView6.setVisibility(z2 ? 0 : 8);
            C15136c0 c0Var2 = C15136c0.f33133a;
            String a2 = C14206w4.m2225a((int) R$string.iap_page_introprice_notice);
            Object[] objArr2 = {skuDetails.getPrice()};
            String format2 = String.format(a2, Arrays.copyOf(objArr2, objArr2.length));
            C15149k.m383a((Object) format2, "java.lang.String.format(format, *args)");
            textView6.setText(format2);
        }
        if (4 == planProductRealmObject.getPromoType()) {
            z = true;
        }
        if (z) {
            ((TextView) view.findViewById(R$id.tvYearlyTitle)).setText(R$string.premiumsubscribe_payoption_winback);
            ((TextView) view.findViewById(R$id.tvRecommend)).setBackgroundResource(R$drawable.recommend_badge_purple);
            C13865h hVar = this.f31065e;
            RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R$id.rlRecommend);
            C15149k.m383a((Object) relativeLayout, "rlRecommend");
            hVar.m3305a(relativeLayout);
        } else {
            ((TextView) view.findViewById(R$id.tvYearlyTitle)).setText(R$string.premiumsubscribe_payoption_year);
            ((TextView) view.findViewById(R$id.tvRecommend)).setBackgroundResource(R$drawable.iap_recommend_badge);
            this.f31065e.m3308a();
        }
        ((RelativeLayout) view.findViewById(R$id.rlProductYearly)).setBackgroundResource(z ? R$drawable.iap_promo_product_bg_selector : R$drawable.iap_product_bg_selector);
    }

    /* renamed from: c */
    public final void m3343c(RecyclerView.ViewHolder viewHolder) {
        Map<String, PlanProductRealmObject> f = this.f31065e.m3291f();
        if (f != null) {
            View view = viewHolder.itemView;
            PlanProductRealmObject planProductRealmObject = f.get("ad_free_m");
            if (planProductRealmObject != null) {
                C15149k.m383a((Object) view, "this");
                m3347b(view, planProductRealmObject);
            }
            PlanProductRealmObject planProductRealmObject2 = f.get("ad_free_biannual");
            if (planProductRealmObject2 != null) {
                C15149k.m383a((Object) view, "this");
                m3357a(view, planProductRealmObject2);
            }
            PlanProductRealmObject planProductRealmObject3 = f.get("ad_free_y");
            if (planProductRealmObject3 != null) {
                C15149k.m383a((Object) view, "this");
                m3344c(view, planProductRealmObject3);
            }
            String value = this.f31065e.m3284k().getValue();
            if (value != null) {
                C15149k.m383a((Object) view, "this");
                C15149k.m383a((Object) value, "it");
                m3356a(view, value);
            }
            ((RelativeLayout) view.findViewById(R$id.rlProductMonthly)).setOnClickListener(new View$OnClickListenerC13838d(view, this, f));
            ((RelativeLayout) view.findViewById(R$id.rlProductBiannual)).setOnClickListener(new View$OnClickListenerC13839e(view, this, f));
            ((RelativeLayout) view.findViewById(R$id.rlProductYearly)).setOnClickListener(new View$OnClickListenerC13840f(view, this, f));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f31061a ? 1 : 3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i != 0 ? i != 1 ? i != 2 ? 0 : 3 : 2 : this.f31061a ? 0 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C15149k.m377b(viewHolder, "holder");
        if (viewHolder instanceof C13862e) {
            m3346b(viewHolder);
        } else if (viewHolder instanceof C13864g) {
            m3343c(viewHolder);
        } else if (viewHolder instanceof C13843c) {
            m3354a(viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        return i != 1 ? i != 2 ? i != 3 ? new C13843c(viewGroup) : new C13842b(viewGroup) : new C13864g(viewGroup) : new C13862e(viewGroup);
    }
}
