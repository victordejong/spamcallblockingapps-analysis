.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;
.super Lrb1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;,
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$e;
    }
.end annotation


# instance fields
.field public s:Landroidx/viewpager/widget/ViewPager;

.field public t:[Landroid/widget/TextView;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Lcom/kedlin/cca/ui/MultiStateButton;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lrb1;-><init>()V

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->u:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->v:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->w:I

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->z:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I
    .locals 0

    iget p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->w:I

    return p0
.end method

.method public static synthetic G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->w:I

    return p1
.end method

.method public static synthetic H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I
    .locals 2

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->w:I

    return v0
.end method

.method public static synthetic I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I
    .locals 0

    iget p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->x:I

    return p0
.end method

.method public static synthetic J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)[Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->t:[Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic K(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lrb1;->q:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic L(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I
    .locals 0

    iget p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->v:I

    return p0
.end method

.method public static synthetic M(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->v:I

    return p1
.end method

.method public static synthetic N(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic O(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)I
    .locals 0

    iget p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->u:I

    return p0
.end method

.method public static synthetic P(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lrb1;->q:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public D(Lsb1;)V
    .locals 1

    const v0, 0x7f1106a0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method

.method public final Q(Landroid/view/View;)V
    .locals 5

    new-instance v0, Liq0;

    iget-object v1, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lnd;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Liq0;-><init>(Landroid/content/Context;Lnd;)V

    invoke-virtual {v0}, Liq0;->e()I

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->x:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->t:[Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->x:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->t:[Landroid/widget/TextView;

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->t:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const-string v3, "&#8226;"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->t:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->t:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0a06ba

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->t:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->t:[Landroid/widget/TextView;

    aget-object p1, p1, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public R()V
    .locals 4

    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$e;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->s:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->s:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lrb1;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0079

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lrb1;->onPause()V

    iget-object v0, p0, Lrb1;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 10

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->v:I

    iget-object v0, p0, Lrb1;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->z:Ljava/lang/Runnable;

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->u:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a04e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060283

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0602b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-object v3, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    sget-object v4, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v4}, Lr71$a;->a()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/16 v4, 0x2c

    invoke-static {v4}, Loe1;->c(I)I

    move-result v4

    :goto_0
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->y:Lcom/kedlin/cca/ui/MultiStateButton;

    invoke-virtual {v1}, Lcom/kedlin/cca/ui/MultiStateButton;->l()V

    sget-object v1, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    const v4, 0x7f1106ac

    if-eqz v1, :cond_2

    invoke-static {}, Lr71;->p()I

    move-result v1

    const v2, 0x7f1106ad

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0001

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v5

    invoke-virtual {v7, v8, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-virtual {p0, v2, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->y:Lcom/kedlin/cca/ui/MultiStateButton;

    const v3, 0x7f0601c4

    invoke-virtual {v2, v1, v3}, Lcom/kedlin/cca/ui/MultiStateButton;->j(Landroid/text/Spanned;I)V

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->y:Lcom/kedlin/cca/ui/MultiStateButton;

    const v1, 0x7f1105e6

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/kedlin/cca/ui/MultiStateButton;->j(Landroid/text/Spanned;I)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->y:Lcom/kedlin/cca/ui/MultiStateButton;

    const v2, 0x7f1105e7

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    const v3, 0x7f0601c3

    invoke-virtual {v1, v2, v3}, Lcom/kedlin/cca/ui/MultiStateButton;->j(Landroid/text/Spanned;I)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-super {p0, p1, p2}, Lrb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d007b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0378

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;

    iget-object v1, p0, Lrb1;->p:Landroid/app/Activity;

    new-instance v2, Lw81;

    invoke-direct {v2}, Lw81;-><init>()V

    sget-object v4, Lw81$a;->b:Lw81$a;

    invoke-virtual {v2, v4}, Lw81;->G(Lw81$a;)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->Q(Landroid/view/View;)V

    const p2, 0x7f0a0497

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->s:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Liq0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lnd;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Liq0;-><init>(Landroid/content/Context;Lnd;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lg40;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->s:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->s:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$b;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->R()V

    const p2, 0x7f0a04e4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$c;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a04e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kedlin/cca/ui/MultiStateButton;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/CommunityStatsFragment;->y:Lcom/kedlin/cca/ui/MultiStateButton;

    const p2, 0x7f1203bd

    invoke-virtual {p1, p2}, Lcom/kedlin/cca/ui/MultiStateButton;->setTextAppearance(I)V

    return-void
.end method
