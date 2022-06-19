package com.appnext.suggestedappswider.views.templates;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.appnext.base.C0472a;
import com.appnext.suggestedappswider.C0671R;
import com.appnext.suggestedappswider.databinding.AnGridCollectionTemplateItemBinding;
import com.appnext.suggestedappswider.models.SuggestedAppsWiderViewModel;
import com.appnext.suggestedappswider.views.templates.C0694a;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import kotlin.Metadata;
import s1.u.s;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018�� .2\f\u0012\b\u0012\u00060\u0002R\u00020��0\u0001:\u0003,-.B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0003J \u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u0012H\u0016J\u001c\u0010\u001d\u001a\u00020\u00152\n\u0010\u001e\u001a\u00060\u0002R\u00020��2\u0006\u0010\u001f\u001a\u00020\u0012H\u0017J\u001c\u0010 \u001a\u00060\u0002R\u00020��2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0006\u0010$\u001a\u00020\u0015J\u0006\u0010%\u001a\u00020\u0015J\u0014\u0010&\u001a\u00020\u00152\n\u0010\u001e\u001a\u00060\u0002R\u00020��H\u0016J\u0018\u0010'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u0012H\u0002J\u0014\u0010*\u001a\u00020\u00152\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u000e0\rR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n��¨\u0006/"}, d2 = {"Lcom/appnext/suggestedappswider/views/templates/ANSuggestedAppsWiderTemplateAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/appnext/suggestedappswider/views/templates/ANSuggestedAppsWiderTemplateAdapter$ANCollectionTemplateViewHolder;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "animated", "", "anGridCollectionTemplateAdapterCallbacks", "Lcom/appnext/suggestedappswider/views/templates/ANSuggestedAppsWiderTemplateAdapter$ANGridCollectionTemplateAdapterCallbacks;", "(Landroid/content/Context;ZLcom/appnext/suggestedappswider/views/templates/ANSuggestedAppsWiderTemplateAdapter$ANGridCollectionTemplateAdapterCallbacks;)V", "getContext", "()Landroid/content/Context;", "mAds", "", "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;", "mHandler", "Landroid/os/Handler;", "mStartAnimationIndex", "", "mStopAnimationIndex", "animEnd", "", "appIcon", "Landroid/widget/ImageView;", "animFrame", "animStart", "animTitle", "Landroid/widget/TextView;", "getItemCount", "onBindViewHolder", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onPause", "onResume", "onViewAttachedToWindow", "playAnimation", "index", "count", "updateAds", "ads", "ANCollectionTemplateViewHolder", "ANGridCollectionTemplateAdapterCallbacks", "Companion", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.appnext.suggestedappswider.views.templates.a */
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/views/templates/a.class */
public final class C0694a extends RecyclerView.AbstractC0317g<C0695a> {

    /* renamed from: hy */
    public static final C0697c f2140hy = new C0697c(null);
    private final Context context;

    /* renamed from: hA */
    private final AbstractC0696b f2142hA;

    /* renamed from: hz */
    private final boolean f2143hz;
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    /* renamed from: gf */
    private List<SuggestedAppsWiderViewModel> f2141gf = s.a;

    @Metadata(d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/appnext/suggestedappswider/views/templates/ANSuggestedAppsWiderTemplateAdapter$ANCollectionTemplateViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;", "(Lcom/appnext/suggestedappswider/views/templates/ANSuggestedAppsWiderTemplateAdapter;Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;)V", "getBinding", "()Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.views.templates.a$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/views/templates/a$a.class */
    public final class C0695a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: hB */
        private final AnGridCollectionTemplateItemBinding f2144hB;

        /* renamed from: hC */
        public final /* synthetic */ C0694a f2145hC;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0695a(C0694a c0694a, AnGridCollectionTemplateItemBinding anGridCollectionTemplateItemBinding) {
            super(anGridCollectionTemplateItemBinding.getRoot());
            l.e(c0694a, "this$0");
            l.e(anGridCollectionTemplateItemBinding, "binding");
            this.f2145hC = c0694a;
            this.f2144hB = anGridCollectionTemplateItemBinding;
        }

        /* renamed from: bu */
        public final AnGridCollectionTemplateItemBinding m42095bu() {
            return this.f2144hB;
        }
    }

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/appnext/suggestedappswider/views/templates/ANSuggestedAppsWiderTemplateAdapter$ANGridCollectionTemplateAdapterCallbacks;", "", "onViewAttachedToWindow", "", "suggestedAppsWiderModel", "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;", "onViewClicked", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.views.templates.a$b */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/views/templates/a$b.class */
    public interface AbstractC0696b {
        /* renamed from: f */
        void m42094f(SuggestedAppsWiderViewModel suggestedAppsWiderViewModel);

        /* renamed from: g */
        void m42093g(SuggestedAppsWiderViewModel suggestedAppsWiderViewModel);
    }

    @Metadata(d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/appnext/suggestedappswider/views/templates/ANSuggestedAppsWiderTemplateAdapter$Companion;", "", "()V", "ANIMATION_END_DELAY", "", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.views.templates.a$c */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/views/templates/a$c.class */
    public static final class C0697c {
        private C0697c() {
        }

        public /* synthetic */ C0697c(f fVar) {
            this();
        }
    }

    public C0694a(Context context, boolean z, AbstractC0696b abstractC0696b) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC0696b, "anGridCollectionTemplateAdapterCallbacks");
        this.context = context;
        this.f2143hz = z;
        this.f2142hA = abstractC0696b;
    }

    /* renamed from: a */
    public static final void m42098a(C0694a c0694a, SuggestedAppsWiderViewModel suggestedAppsWiderViewModel, View view) {
        l.e(c0694a, "this$0");
        l.e(suggestedAppsWiderViewModel, "$this_with");
        AbstractC0696b abstractC0696b = c0694a.f2142hA;
        if (abstractC0696b != null) {
            abstractC0696b.m42094f(suggestedAppsWiderViewModel);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public final int getItemCount() {
        return this.f2141gf.size();
    }

    /* renamed from: l */
    public final void m42096l(List<SuggestedAppsWiderViewModel> list) {
        l.e(list, "ads");
        try {
            this.f2141gf = list;
            notifyDataSetChanged();
            this.mHandler.removeCallbacksAndMessages(null);
            List<SuggestedAppsWiderViewModel> list2 = this.f2141gf;
            if (list2 == null || !(!list2.isEmpty()) || !this.f2143hz) {
                return;
            }
            this.f2141gf.size();
        } catch (Throwable th) {
            C0472a.m42577a("ANSuggestedAppsWiderTemplateAdapter - updateAds", th);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public final /* synthetic */ void onBindViewHolder(C0695a c0695a, int i) {
        C0695a c0695a2 = c0695a;
        l.e(c0695a2, "holder");
        try {
            final SuggestedAppsWiderViewModel suggestedAppsWiderViewModel = this.f2141gf.get(i);
            c0695a2.m42095bu().setCollectionAd(suggestedAppsWiderViewModel);
            if (Build.VERSION.SDK_INT >= 29) {
                c0695a2.m42095bu().appTitle.setTypeface(c0695a2.m42095bu().appTitle.getTypeface(), 400);
            } else {
                c0695a2.m42095bu().appTitle.setTypeface(Typeface.DEFAULT);
            }
            c0695a2.itemView.setOnClickListener(new View.OnClickListener() { // from class: e.e.a.b.a.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C0694a.m42098a(C0694a.this, suggestedAppsWiderViewModel, view);
                }
            });
            c0695a2.m42095bu().appTitle.setTextColor(this.context.getColor(C0671R.color.animation_text_unselected));
        } catch (Throwable th) {
            C0472a.m42577a("ANSuggestedAppsWiderTemplateAdapter-onBindViewHolder", th);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public final /* synthetic */ C0695a onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        AnGridCollectionTemplateItemBinding inflate = AnGridCollectionTemplateItemBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        l.d(inflate, "inflate(LayoutInflater.from(parent.context), parent, false)");
        return new C0695a(this, inflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public final /* synthetic */ void onViewAttachedToWindow(C0695a c0695a) {
        C0695a c0695a2 = c0695a;
        l.e(c0695a2, "holder");
        try {
            super.onViewAttachedToWindow(c0695a2);
            AbstractC0696b abstractC0696b = this.f2142hA;
            if (abstractC0696b == null) {
                return;
            }
            abstractC0696b.m42093g(this.f2141gf.get(c0695a2.getAdapterPosition()));
        } catch (Throwable th) {
        }
    }
}
