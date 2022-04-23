package p459j.p460a.p546o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$anim;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p546o.p547f.C13282a;
import p459j.p460a.p546o.p547f.C13284b;
import p459j.p460a.p546o.p548g.AbstractC13292a;
import p459j.p460a.p546o.p548g.AbstractC13293b;
import p459j.p460a.p546o.p548g.AbstractC13296e;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14130q3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� -2\u00020\u00012\u00020\u0002:\u0003+,-B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001c\u001a\u00020\u0018H\u0016J&\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001a\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001e2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0010\u0010(\u001a\u00020&2\u0006\u0010)\u001a\u00020*H\u0016R\u001f\u0010\u0004\u001a\u00060\u0005R\u00020��8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\rR\u001b\u0010\u000f\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00108FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\t\u001a\u0004\b\u0015\u0010\u0012R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\t\u001a\u0004\b\u0019\u0010\u001a¨\u0006."}, m815d2 = {"Lgogolook/callgogolook2/cs/ArticleFragment;", "Lgogolook/callgogolook2/cs/CustomerServiceFragment;", "Lgogolook/callgogolook2/cs/presenter/IArticleView;", "()V", "articleAdapter", "Lgogolook/callgogolook2/cs/ArticleFragment$ArticleAdapter;", "getArticleAdapter", "()Lgogolook/callgogolook2/cs/ArticleFragment$ArticleAdapter;", "articleAdapter$delegate", "Lkotlin/Lazy;", "articlePresenter", "Lgogolook/callgogolook2/cs/presenter/IArticlePresenter;", "getArticlePresenter", "()Lgogolook/callgogolook2/cs/presenter/IArticlePresenter;", "articlePresenter$delegate", "categoryId", "", "getCategoryId", "()I", "categoryId$delegate", "categoryIdx", "getCategoryIdx", "categoryIdx$delegate", "categoryName", "", "getCategoryName", "()Ljava/lang/String;", "categoryName$delegate", "getTitle", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "showArticles", "category", "Lgogolook/callgogolook2/cs/model/Category;", "ArticleAdapter", "ArticlePresenter", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.o.a */
/* loaded from: classes2-dex2jar.jar:j/a/o/a.class */
public final class C13227a extends AbstractC13251c implements AbstractC13293b {

    /* renamed from: i */
    public static final /* synthetic */ AbstractC14906i[] f29800i;

    /* renamed from: c */
    public final AbstractC14974f f29801c = C14975g.m662a(new C13240f());

    /* renamed from: d */
    public final AbstractC14974f f29802d = C14975g.m662a(new C13241g());

    /* renamed from: e */
    public final AbstractC14974f f29803e = C14975g.m662a(new C13242h());

    /* renamed from: f */
    public final AbstractC14974f f29804f = C14975g.m662a(new C13239e());

    /* renamed from: g */
    public final AbstractC14974f f29805g = C14975g.m662a(new C13238d());

    /* renamed from: h */
    public HashMap f29806h;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0013H\u0016J\u0018\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0013H\u0016R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001f"}, m815d2 = {"Lgogolook/callgogolook2/cs/ArticleFragment$ArticleAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "(Lgogolook/callgogolook2/cs/ArticleFragment;)V", C13032a.f29462d, "Lgogolook/callgogolook2/cs/model/Category;", "category", "getCategory", "()Lgogolook/callgogolook2/cs/model/Category;", "setCategory", "(Lgogolook/callgogolook2/cs/model/Category;)V", "expandStates", "", "", "getExpandStates", "()Ljava/util/List;", "setExpandStates", "(Ljava/util/List;)V", "getItemCount", "", "getItemViewType", "position", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "ArticleViewHolder", "ReportViewHolder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.o.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/o/a$a.class */
    public final class C13228a extends RecyclerView.Adapter<C14666a> {

        /* renamed from: a */
        public List<Boolean> f29807a;

        /* renamed from: b */
        public C13284b f29808b;

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, m815d2 = {"Lgogolook/callgogolook2/cs/ArticleFragment$ArticleAdapter$ArticleViewHolder;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "parent", "Landroid/view/ViewGroup;", "(Lgogolook/callgogolook2/cs/ArticleFragment$ArticleAdapter;Landroid/view/ViewGroup;)V", "ivMore", "Landroid/widget/ImageView;", "tvContent", "Landroid/widget/TextView;", "getTvContent", "()Landroid/widget/TextView;", "setTvContent", "(Landroid/widget/TextView;)V", "tvTitle", "getTvTitle", "setTvTitle", "vPrimary", "Landroid/view/View;", "getVPrimary", "()Landroid/view/View;", "setVPrimary", "(Landroid/view/View;)V", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
        /* renamed from: j.a.o.a$a$a */
        /* loaded from: classes2-dex2jar.jar:j/a/o/a$a$a.class */
        public final class C13229a extends C14666a {

            /* renamed from: a */
            public View f29810a = m906a(R$id.v_primary);

            /* renamed from: b */
            public TextView f29811b = (TextView) m906a(2131363467);

            /* renamed from: c */
            public TextView f29812c = (TextView) m906a(R$id.tv_content);

            /* renamed from: d */
            public ImageView f29813d = (ImageView) m906a(2131362470);

            /* renamed from: e */
            public final /* synthetic */ C13228a f29814e;

            /* renamed from: j.a.o.a$a$a$a */
            /* loaded from: classes2-dex2jar.jar:j/a/o/a$a$a$a.class */
            public static final class View$OnClickListenerC13230a implements View.OnClickListener {
                public View$OnClickListenerC13230a() {
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C13284b a = C13229a.this.f29814e.m4377a();
                    if (a != null) {
                        C13282a articles = a.articles(C13229a.this.getAdapterPosition());
                        if (articles != null) {
                            String clickUrl = articles.clickUrl();
                            C15149k.m383a((Object) clickUrl, "it.clickUrl()");
                            if (!(clickUrl.length() > 0)) {
                                articles = null;
                            }
                            if (articles != null) {
                                try {
                                    C13227a.this.m4383M().mo4320b(articles);
                                    C14217x3.m2156c(C13227a.this.getContext(), new Intent("android.intent.action.VIEW", Uri.parse(articles.clickUrl())));
                                } catch (Exception e) {
                                    C14080m2.m2613a("ArticleFragment", e, true);
                                    C14989s sVar = C14989s.f33022a;
                                }
                            }
                        }
                    }
                }
            }

            @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m815d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, m814k = 3, m813mv = {1, 1, 13})
            /* renamed from: j.a.o.a$a$a$b */
            /* loaded from: classes2-dex2jar.jar:j/a/o/a$a$a$b.class */
            public static final class View$OnClickListenerC13231b implements View.OnClickListener {

                /* renamed from: j.a.o.a$a$a$b$a */
                /* loaded from: classes2-dex2jar.jar:j/a/o/a$a$a$b$a.class */
                public static final class C13232a implements ValueAnimator.AnimatorUpdateListener {

                    /* renamed from: b */
                    public final /* synthetic */ boolean f29818b;

                    /* renamed from: c */
                    public final /* synthetic */ int f29819c;

                    public C13232a(boolean z, int i) {
                        this.f29818b = z;
                        this.f29819c = i;
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        C15149k.m383a((Object) valueAnimator, "va");
                        Object animatedValue = valueAnimator.getAnimatedValue();
                        if (animatedValue != null) {
                            float floatValue = ((Float) animatedValue).floatValue();
                            if (!this.f29818b) {
                                TextView b = C13229a.this.m4372b();
                                float f = this.f29819c;
                                b.setTranslationY((-f) + ((f * floatValue) / 255.0f));
                                C13229a.this.f29813d.setRotation(((floatValue * 180.0f) / 255.0f) + 90.0f);
                            } else {
                                C13229a.this.m4372b().setTranslationY(((-floatValue) * this.f29819c) / 255.0f);
                                C13229a.this.f29813d.setRotation(270.0f - ((floatValue * 180.0f) / 255.0f));
                            }
                            TextView b2 = C13229a.this.m4372b();
                            b2.getLayoutParams().height = Math.max(1, (int) (this.f29819c + C13229a.this.m4372b().getTranslationY()));
                            b2.requestLayout();
                            return;
                        }
                        throw new C14986p("null cannot be cast to non-null type kotlin.Float");
                    }
                }

                /* renamed from: j.a.o.a$a$a$b$b */
                /* loaded from: classes2-dex2jar.jar:j/a/o/a$a$a$b$b.class */
                public static final class C13233b extends AnimatorListenerAdapter {

                    /* renamed from: b */
                    public final /* synthetic */ boolean f29821b;

                    /* renamed from: c */
                    public final /* synthetic */ int f29822c;

                    public C13233b(boolean z, int i) {
                        this.f29821b = z;
                        this.f29822c = i;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        C13282a articles;
                        if (!this.f29821b) {
                            C13229a.this.f29813d.setRotation(270.0f);
                            C13229a.this.m4372b().setTranslationY(0.0f);
                            C13229a.this.m4372b().getLayoutParams().height = -2;
                            C13284b a = C13229a.this.f29814e.m4377a();
                            if (!(a == null || (articles = a.articles(C13229a.this.getAdapterPosition())) == null)) {
                                C13227a.this.m4383M().mo4322a(articles);
                            }
                        } else {
                            C13229a.this.f29813d.setRotation(90.0f);
                            C13229a.this.m4372b().setTranslationY(-C13229a.this.m4372b().getMeasuredHeight());
                            C13229a.this.m4372b().getLayoutParams().height = 1;
                        }
                        C13229a.this.m4372b().requestLayout();
                        List<Boolean> b = C13229a.this.f29814e.m4374b();
                        if (b != null) {
                            b.set(C13229a.this.getAdapterPosition(), Boolean.valueOf(true ^ this.f29821b));
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        if (!this.f29821b) {
                            C13229a.this.m4372b().setTranslationY(this.f29822c);
                            C13229a.this.f29813d.setRotation(90.0f);
                            return;
                        }
                        C13229a.this.m4372b().setTranslationY(0.0f);
                        C13229a.this.f29813d.setRotation(270.0f);
                    }
                }

                public View$OnClickListenerC13231b() {
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Boolean bool;
                    List<Boolean> b = C13229a.this.f29814e.m4374b();
                    boolean booleanValue = (b == null || (bool = b.get(C13229a.this.getAdapterPosition())) == null) ? false : bool.booleanValue();
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 255.0f);
                    ViewParent parent = C13229a.this.m4372b().getParent();
                    if (parent != null) {
                        C13229a.this.m4372b().measure(View.MeasureSpec.makeMeasureSpec(((View) parent).getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                        int measuredHeight = C13229a.this.m4372b().getMeasuredHeight();
                        ofFloat.addUpdateListener(new C13232a(booleanValue, measuredHeight));
                        ofFloat.addListener(new C13233b(booleanValue, measuredHeight));
                        C15149k.m383a((Object) ofFloat, "valueAnimator");
                        ofFloat.setInterpolator(new DecelerateInterpolator());
                        ofFloat.start();
                        return;
                    }
                    throw new C14986p("null cannot be cast to non-null type android.view.View");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C13229a(C13228a aVar, ViewGroup viewGroup) {
                super(viewGroup, R$layout.listitem_cs_article);
                C15149k.m377b(viewGroup, "parent");
                this.f29814e = aVar;
                ((ImageView) m906a(2131362546)).setVisibility(8);
                ((TextView) m906a(2131363555)).setVisibility(8);
                this.itemView.setBackgroundResource(R$drawable.list_selector);
                this.f29810a.setBackgroundColor(-1);
                this.f29810a.bringToFront();
                this.f29811b.setVisibility(0);
                this.f29812c.setOnClickListener(new View$OnClickListenerC13230a());
                this.f29813d.setVisibility(0);
                this.f29813d.setImageResource(R$drawable.ic_more_gray);
                this.f29813d.setRotation(90.0f);
                this.f29810a.setOnClickListener(new View$OnClickListenerC13231b());
            }

            /* renamed from: b */
            public final TextView m4372b() {
                return this.f29812c;
            }

            /* renamed from: c */
            public final TextView m4371c() {
                return this.f29811b;
            }
        }

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m815d2 = {"Lgogolook/callgogolook2/cs/ArticleFragment$ArticleAdapter$ReportViewHolder;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "parent", "Landroid/view/ViewGroup;", "(Lgogolook/callgogolook2/cs/ArticleFragment$ArticleAdapter;Landroid/view/ViewGroup;)V", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
        /* renamed from: j.a.o.a$a$b */
        /* loaded from: classes2-dex2jar.jar:j/a/o/a$a$b.class */
        public final class C13234b extends C14666a {

            /* renamed from: a */
            public final /* synthetic */ C13228a f29823a;

            /* renamed from: j.a.o.a$a$b$a */
            /* loaded from: classes2-dex2jar.jar:j/a/o/a$a$b$a.class */
            public static final class View$OnClickListenerC13235a implements View.OnClickListener {
                public View$OnClickListenerC13235a() {
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C13227a.this.m4383M().mo4321b(C13227a.this.m4382N());
                    FragmentManager fragmentManager = C13227a.this.getFragmentManager();
                    if (fragmentManager != null) {
                        FragmentTransaction customAnimations = fragmentManager.beginTransaction().setCustomAnimations(R$anim.slide_in_right, R$anim.slide_out_left, R$anim.slide_in_left, R$anim.slide_out_right);
                        C13253d dVar = new C13253d();
                        Bundle bundle = new Bundle();
                        bundle.putAll(C13227a.this.getArguments());
                        dVar.setArguments(bundle);
                        customAnimations.add(R$id.fragment_container, dVar, "ReportFragment").addToBackStack("ReportFragment").commit();
                        return;
                    }
                    C15149k.m378b();
                    throw null;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C13234b(C13228a aVar, ViewGroup viewGroup) {
                super(viewGroup, R$layout.listitem_cs_article);
                C15149k.m377b(viewGroup, "parent");
                this.f29823a = aVar;
                m906a(R$id.v_top_divider).setVisibility(0);
                m906a(R$id.tv_content).setVisibility(8);
                m906a(2131362546).setVisibility(8);
                m906a(2131362470).setVisibility(8);
                TextView textView = (TextView) m906a(2131363467);
                textView.setVisibility(0);
                textView.setText(textView.getContext().getString(R$string.drawer_help_report));
                TextView textView2 = (TextView) m906a(2131363555);
                textView2.setVisibility(0);
                textView2.setText(textView2.getContext().getString(R$string.drawer_help_report_detail));
                this.itemView.setBackgroundResource(R$drawable.list_selector);
                this.itemView.setOnClickListener(new View$OnClickListenerC13235a());
            }
        }

        public C13228a() {
        }

        /* renamed from: a */
        public final C13284b m4377a() {
            return this.f29808b;
        }

        /* renamed from: a */
        public final void m4376a(C13284b bVar) {
            this.f29808b = bVar;
            C13284b bVar2 = this.f29808b;
            if (bVar2 != null) {
                int articlesLength = bVar2.articlesLength();
                ArrayList arrayList = new ArrayList(articlesLength);
                for (int i = 0; i < articlesLength; i++) {
                    arrayList.add(false);
                }
                this.f29807a = arrayList;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x00bc, code lost:
            if (r8 != null) goto L_0x00c5;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(p459j.p460a.p613z0.p617p.C14666a r8, int r9) {
            /*
                Method dump skipped, instructions count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p546o.C13227a.C13228a.onBindViewHolder(j.a.z0.p.a, int):void");
        }

        /* renamed from: b */
        public final List<Boolean> m4374b() {
            return this.f29807a;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            C13284b bVar = this.f29808b;
            return (bVar != null ? bVar.articlesLength() : 0) + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            int i2 = 1;
            if (i < getItemCount() - 1) {
                i2 = 0;
            }
            return i2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public C14666a onCreateViewHolder(ViewGroup viewGroup, int i) {
            C15149k.m377b(viewGroup, "parent");
            return i != 0 ? new C13234b(this, viewGroup) : new C13229a(this, viewGroup);
        }
    }

    /* renamed from: j.a.o.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/o/a$b.class */
    public static final class C13236b implements AbstractC13292a {

        /* renamed from: a */
        public final AbstractC13296e f29825a;

        /* renamed from: b */
        public final AbstractC13293b f29826b;

        public C13236b(AbstractC13296e eVar, AbstractC13293b bVar) {
            C15149k.m377b(eVar, "model");
            C15149k.m377b(bVar, "view");
            this.f29825a = eVar;
            this.f29826b = bVar;
        }

        @Override // p459j.p460a.p546o.p548g.AbstractC13292a
        /* renamed from: a */
        public void mo4323a(int i) {
            this.f29826b.mo4319a(this.f29825a.mo4315d(i));
        }

        @Override // p459j.p460a.p546o.p548g.AbstractC13292a
        /* renamed from: a */
        public void mo4322a(C13282a aVar) {
            C15149k.m377b(aVar, "article");
            String gfIssueNo = aVar.gfIssueNo();
            C15149k.m383a((Object) gfIssueNo, "article.gfIssueNo()");
            C14289m.m1861d(Integer.parseInt(gfIssueNo), 2);
        }

        @Override // p459j.p460a.p546o.p548g.AbstractC13292a
        /* renamed from: b */
        public void mo4321b(int i) {
            C14289m.m1861d(i, 4);
        }

        @Override // p459j.p460a.p546o.p548g.AbstractC13292a
        /* renamed from: b */
        public void mo4320b(C13282a aVar) {
            C15149k.m377b(aVar, "article");
            String gfIssueNo = aVar.gfIssueNo();
            C15149k.m383a((Object) gfIssueNo, "article.gfIssueNo()");
            C14289m.m1861d(Integer.parseInt(gfIssueNo), 3);
        }
    }

    /* renamed from: j.a.o.a$c */
    /* loaded from: classes2-dex2jar.jar:j/a/o/a$c.class */
    public static final class C13237c {
        public C13237c() {
        }

        public /* synthetic */ C13237c(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.o.a$d */
    /* loaded from: classes2-dex2jar.jar:j/a/o/a$d.class */
    public static final class C13238d extends AbstractC15150l implements AbstractC15107a<C13228a> {
        public C13238d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13228a invoke() {
            return new C13228a();
        }
    }

    /* renamed from: j.a.o.a$e */
    /* loaded from: classes2-dex2jar.jar:j/a/o/a$e.class */
    public static final class C13239e extends AbstractC15150l implements AbstractC15107a<C13236b> {
        public C13239e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13236b invoke() {
            FragmentActivity activity = C13227a.this.getActivity();
            if (activity != null) {
                return new C13236b((AbstractC13296e) activity, C13227a.this);
            }
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.cs.presenter.IFaqContentModel");
        }
    }

    /* renamed from: j.a.o.a$f */
    /* loaded from: classes2-dex2jar.jar:j/a/o/a$f.class */
    public static final class C13240f extends AbstractC15150l implements AbstractC15107a<Integer> {
        public C13240f() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            Bundle arguments = C13227a.this.getArguments();
            if (arguments != null) {
                return arguments.getInt("category_id");
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: j.a.o.a$g */
    /* loaded from: classes2-dex2jar.jar:j/a/o/a$g.class */
    public static final class C13241g extends AbstractC15150l implements AbstractC15107a<Integer> {
        public C13241g() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            Bundle arguments = C13227a.this.getArguments();
            if (arguments != null) {
                return arguments.getInt("category_index");
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: j.a.o.a$h */
    /* loaded from: classes2-dex2jar.jar:j/a/o/a$h.class */
    public static final class C13242h extends AbstractC15150l implements AbstractC15107a<String> {
        public C13242h() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            Bundle arguments = C13227a.this.getArguments();
            if (arguments != null) {
                String string = arguments.getString("category_name");
                if (string == null) {
                    string = "";
                }
                return string;
            }
            C15149k.m378b();
            throw null;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13227a.class), "categoryId", "getCategoryId()I");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C13227a.class), "categoryIdx", "getCategoryIdx()I");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C13227a.class), "categoryName", "getCategoryName()Ljava/lang/String;");
        C15131a0.m412a(sVar3);
        C15157s sVar4 = new C15157s(C15131a0.m419a(C13227a.class), "articlePresenter", "getArticlePresenter()Lgogolook/callgogolook2/cs/presenter/IArticlePresenter;");
        C15131a0.m412a(sVar4);
        C15157s sVar5 = new C15157s(C15131a0.m419a(C13227a.class), "articleAdapter", "getArticleAdapter()Lgogolook/callgogolook2/cs/ArticleFragment$ArticleAdapter;");
        C15131a0.m412a(sVar5);
        f29800i = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4, sVar5};
        new C13237c(null);
    }

    @Override // p459j.p460a.p546o.AbstractC13251c
    /* renamed from: J */
    public void mo4362J() {
        HashMap hashMap = this.f29806h;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // p459j.p460a.p546o.AbstractC13251c
    /* renamed from: K */
    public String mo4361K() {
        return m4380P();
    }

    /* renamed from: L */
    public final C13228a m4384L() {
        AbstractC14974f fVar = this.f29805g;
        AbstractC14906i iVar = f29800i[4];
        return (C13228a) fVar.getValue();
    }

    /* renamed from: M */
    public final AbstractC13292a m4383M() {
        AbstractC14974f fVar = this.f29804f;
        AbstractC14906i iVar = f29800i[3];
        return (AbstractC13292a) fVar.getValue();
    }

    /* renamed from: N */
    public final int m4382N() {
        AbstractC14974f fVar = this.f29801c;
        AbstractC14906i iVar = f29800i[0];
        return ((Number) fVar.getValue()).intValue();
    }

    /* renamed from: O */
    public final int m4381O() {
        AbstractC14974f fVar = this.f29802d;
        AbstractC14906i iVar = f29800i[1];
        return ((Number) fVar.getValue()).intValue();
    }

    /* renamed from: P */
    public final String m4380P() {
        AbstractC14974f fVar = this.f29803e;
        AbstractC14906i iVar = f29800i[2];
        return (String) fVar.getValue();
    }

    @Override // p459j.p460a.p546o.p548g.AbstractC13293b
    /* renamed from: a */
    public void mo4319a(C13284b bVar) {
        C15149k.m377b(bVar, "category");
        m4384L().m4376a(bVar);
        m4384L().notifyDataSetChanged();
    }

    /* renamed from: b */
    public View m4378b(int i) {
        if (this.f29806h == null) {
            this.f29806h = new HashMap();
        }
        View view = (View) this.f29806h.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f29806h.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C15149k.m377b(layoutInflater, "inflater");
        return layoutInflater.inflate(R$layout.layout_recyclerview, viewGroup, false);
    }

    @Override // p459j.p460a.p546o.AbstractC13251c, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo4362J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = (RecyclerView) m4378b(R$id.recycler_view);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerView.getContext());
        linearLayoutManager.setOrientation(1);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.addItemDecoration(new C14130q3());
        recyclerView.setAdapter(m4384L());
        m4383M().mo4323a(m4381O());
    }
}
