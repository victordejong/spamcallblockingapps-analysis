.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity<",
        "Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Ljava/lang/String;


# instance fields
.field public j:Ljava/lang/String;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;-><init>()V

    return-void
.end method

.method private synthetic K(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    move-object v0, p1

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-static {}, Lfa1;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->v(Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/util/billing/SkuDetails;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic M(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    move-object v0, p1

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-static {}, Lfa1;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->v(Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/util/billing/SkuDetails;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic O(Ljava/util/ArrayList;)V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-virtual {v2}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-virtual {p1}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic Q(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->k:Landroid/widget/ImageView;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->k:Landroid/widget/ImageView;

    new-instance v0, Lot0;

    invoke-direct {v0, p0}, Lot0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->l:Landroid/widget/ImageView;

    new-instance v0, Lpt0;

    invoke-direct {v0, p0}, Lpt0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private synthetic S(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    const v0, 0x7f0d0022

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->g:I

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->d:Ljava/lang/Class;

    const v0, 0x7f0a04e3

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->h:I

    return-void
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    new-instance v1, Lmt0;

    invoke-direct {v1, p0}, Lmt0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->n:Lve;

    new-instance v1, Lnt0;

    invoke-direct {v1, p0}, Lnt0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public synthetic L(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->K(Landroid/view/View;)V

    return-void
.end method

.method public synthetic N(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->M(Landroid/view/View;)V

    return-void
.end method

.method public synthetic P(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->O(Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic R(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->Q(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic T(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->S(Landroid/view/View;)V

    return-void
.end method

.method public final U(Landroid/widget/ImageView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-static {p0}, Loe1;->r(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x18

    invoke-static {v2}, Loe1;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final V()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    invoke-static {v1, v2}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public final W(Ltz0;)V
    .locals 8

    const v0, 0x7f0a06da

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    const v1, 0x7f0a06b9

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lbu0;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;

    sget-object v5, Ltz0;->a:Ltz0;

    invoke-static {v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->K(Ltz0;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ltz0;->b:Ltz0;

    invoke-static {v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->K(Ltz0;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ltz0;->c:Ltz0;

    invoke-static {v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->K(Ltz0;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    sget-object v5, Ltz0;->d:Ltz0;

    invoke-static {v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->K(Ltz0;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    sget-object v5, Ltz0;->f:Ltz0;

    invoke-static {v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->K(Ltz0;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;

    move-result-object v5

    const/4 v7, 0x4

    aput-object v5, v4, v7

    sget-object v5, Ltz0;->g:Ltz0;

    invoke-static {v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;->K(Ltz0;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/slide/PurchaseSlideFragment;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lbu0;-><init>(Lnd;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lg40;)V

    invoke-virtual {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    :goto_0
    invoke-virtual {v1, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lm91$c;->l:Lm91$c;

    new-instance v1, Lm91$a;

    invoke-direct {v1, p1, p2, p3}, Lm91$a;-><init>(IILandroid/content/Intent;)V

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    invoke-static {p0, p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->a(Landroidx/fragment/app/FragmentActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->V()V

    const p1, 0x7f0a00ca

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->k:Landroid/widget/ImageView;

    const p1, 0x7f0a00c6

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->l:Landroid/widget/ImageView;

    const p1, 0x7f0a0693

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->m:Landroid/widget/TextView;

    const p1, 0x7f0a06a5

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->n:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->U(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ltz0;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->W(Ltz0;)V

    const p1, 0x7f0a034c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Llt0;

    invoke-direct {v0, p0}, Llt0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/purchase/PurchaseActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->y(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public on_purchase_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 2

    invoke-static {}, Lbc1;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error purchasing item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public on_purchase_success(Lcom/kedlin/cca/core/util/billing/Purchase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase success! Item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lr71;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->r(Lcom/kedlin/cca/core/util/billing/Purchase;)V

    sget-object p1, Lkt0;->c:Lkt0;

    invoke-static {p0, p1}, Loe1;->T(Landroid/content/Context;Lkt0;)V

    :cond_0
    return-void
.end method
