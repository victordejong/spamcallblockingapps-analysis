.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final F:Ljava/lang/String;

.field public static final G:Ljava/lang/String;


# instance fields
.field public A:Landroid/widget/ProgressBar;

.field public B:Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;

.field public C:Lrt0;

.field public D:J

.field public E:Lyt0;

.field public l:Ljava/lang/String;

.field public m:Landroid/widget/FrameLayout;

.field public n:Landroidx/recyclerview/widget/RecyclerView$g;

.field public o:Li91;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public x:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public y:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

.field public z:Landroid/widget/ProgressBar;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->F:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".NUMBER_FOR_LOOKUP"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->n:Landroidx/recyclerview/widget/RecyclerView$g;

    new-instance v0, Loy0;

    invoke-direct {v0, p0}, Loy0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->C:Lrt0;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->D:J

    new-instance v1, Lyt0;

    invoke-direct {v1, v0}, Lyt0;-><init>(Lrt0;)V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->E:Lyt0;

    return-void
.end method

.method private synthetic M()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic O(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->z:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->p()V

    return-void
.end method

.method public static synthetic Q(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic R(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iget-boolean p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->l:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->A:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->x()V

    return-void
.end method

.method private synthetic T(Ljava/lang/Long;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->u:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic V(Ljava/lang/Long;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->t:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic X(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic Z(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->D:J

    return-void
.end method

.method private synthetic b0(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->z:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->E:Lyt0;

    iget-wide v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->D:J

    invoke-virtual {v0, p1, v1, v2}, Lyt0;->e(Ljava/util/ArrayList;J)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->y:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    invoke-virtual {p1}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->d()V

    return-void
.end method

.method private synthetic d0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->w:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->d()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->x:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->d()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->x:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->b(Lgp0;)Lcom/facebook/shimmer/ShimmerFrameLayout;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->w:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic f0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic h0(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lg8;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private synthetic j0(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->J(I)Lxv0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->v0(Lxv0;)V

    return-void
.end method

.method private synthetic l0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p1, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    sget-object v0, Lpy0;->a:Lpy0;

    invoke-static {p1, v0}, Loe1;->u0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p1, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const-string v0, "LOOKUP_NO_CREDITS"

    invoke-static {p1, v0}, Loe1;->n0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11040b

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110411

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1101b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110555

    new-instance v2, Lly0;

    invoke-direct {v2, p0}, Lly0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private synthetic n0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p1, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->v(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic p0(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast v0, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;

    invoke-virtual {v0, p0, v1, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private synthetic r0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p1, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->o:Li91;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lq71$g;->b:Lq71$g;

    invoke-virtual {p1, v0, v1, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->q(Li91;Ljava/lang/String;Lq71$g;)V

    return-void
.end method

.method public static t0()Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;
    .locals 1

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;

    invoke-direct {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->q:Lve;

    new-instance v1, Lzx0;

    invoke-direct {v1, p0}, Lzx0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->p:Lve;

    new-instance v1, Lfy0;

    invoke-direct {v1, p0}, Lfy0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->s:Lve;

    new-instance v1, Lgy0;

    invoke-direct {v1, p0}, Lgy0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->m:Lve;

    new-instance v1, Lmy0;

    invoke-direct {v1, p0}, Lmy0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->w:Lve;

    new-instance v1, Liy0;

    invoke-direct {v1, p0}, Liy0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->r:Lve;

    new-instance v1, Lny0;

    invoke-direct {v1, p0}, Lny0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->t:Lve;

    new-instance v1, Lcy0;

    invoke-direct {v1, p0}, Lcy0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->n:Lve;

    new-instance v1, Lky0;

    invoke-direct {v1, p0}, Lky0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->o:Lve;

    new-instance v1, Ley0;

    invoke-direct {v1, p0}, Ley0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public final J(I)Lxv0;
    .locals 12

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->v:Landroid/widget/TextView;

    const v1, 0x7f11068c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060197

    const v1, 0x7f110416

    if-nez p1, :cond_0

    const/16 p1, 0x64

    new-instance v2, Lyv0;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    int-to-float p1, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    const v5, 0x7f06019b

    invoke-static {v4, v5}, Lg8;->d(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v3, p1, v4}, Lyv0;-><init>(Ljava/lang/String;FI)V

    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->u0(II)V

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x1e

    if-lez p1, :cond_1

    if-gt p1, v3, :cond_1

    new-instance v2, Lyv0;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    int-to-float p1, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v0}, Lg8;->d(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v3, p1, v4}, Lyv0;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    const v6, 0x7f06019c

    const v7, 0x7f110451

    const/16 v8, 0x46

    if-le p1, v3, :cond_2

    if-gt p1, v8, :cond_2

    new-array v4, v4, [Lyv0;

    new-instance v8, Lyv0;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v3, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v9, Landroid/content/Context;

    invoke-static {v9, v0}, Lg8;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {v8, v1, v3, v0}, Lyv0;-><init>(Ljava/lang/String;FI)V

    aput-object v8, v4, v5

    new-instance v0, Lyv0;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-float p1, p1

    sub-float/2addr p1, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lg8;->d(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v1, p1, v3}, Lyv0;-><init>(Ljava/lang/String;FI)V

    aput-object v0, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v6, v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->u0(II)V

    goto :goto_1

    :cond_2
    const/4 v9, 0x3

    new-array v9, v9, [Lyv0;

    new-instance v10, Lyv0;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v3, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v11, Landroid/content/Context;

    invoke-static {v11, v0}, Lg8;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {v10, v1, v3, v0}, Lyv0;-><init>(Ljava/lang/String;FI)V

    aput-object v10, v9, v5

    new-instance v0, Lyv0;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v5, v8

    sub-float/2addr v5, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lg8;->d(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v1, v5, v3}, Lyv0;-><init>(Ljava/lang/String;FI)V

    aput-object v0, v9, v2

    new-instance v0, Lyv0;

    const v1, 0x7f1103ae

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p1, v8

    int-to-float p1, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0601a2

    invoke-static {v3, v5}, Lg8;->d(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v2, p1, v3}, Lyv0;-><init>(Ljava/lang/String;FI)V

    aput-object v0, v9, v4

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v5, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->u0(II)V

    :goto_1
    new-instance v0, Lxv0;

    invoke-direct {v0, p1}, Lxv0;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final K()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljy0;

    invoke-direct {v1, p0}, Ljy0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->l:Ljava/lang/String;

    invoke-static {v0}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->o:Li91;

    return-void
.end method

.method public L()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110411

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic N()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->M()V

    return-void
.end method

.method public synthetic P(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->O(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic S(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->R(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic U(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->T(Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic W(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->V(Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic Y(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->X(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic a0(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->Z(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic c0(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->b0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic e0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic g0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->f0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic i0(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->h0(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic k0(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->j0(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic m0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->l0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic o0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->n0(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->n:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-static {v0}, Lle1;->b(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lqb1;->onStart()V

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->E:Lyt0;

    invoke-static {v0, v1}, Lle1;->h(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$g;)Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->n:Landroidx/recyclerview/widget/RecyclerView$g;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->y:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    invoke-virtual {v1, v0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->n:Landroidx/recyclerview/widget/RecyclerView$g;

    const-string v1, "4818e1c09e7b46feacd5179beded5aa3"

    invoke-static {v0, v1}, Lle1;->f(Landroidx/recyclerview/widget/RecyclerView$g;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lqb1;->onStop()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->w()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->E:Lyt0;

    invoke-virtual {v0}, Lyt0;->d()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->x0(Landroid/view/View;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->w:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p2}, Lcom/facebook/shimmer/ShimmerFrameLayout;->c()V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->x:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p2}, Lcom/facebook/shimmer/ShimmerFrameLayout;->c()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->K()V

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->w0(Landroid/view/View;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->o:Li91;

    invoke-virtual {p1, p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->s(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;Li91;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->p()V

    return-void
.end method

.method public on_lookup_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->t(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V

    return-void
.end method

.method public on_lookup_reverse_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->A:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1102f4

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f1101cf

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public on_lookup_reverse_success(Ld71$b;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->A:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->v(Ld71$b;)V

    return-void
.end method

.method public on_lookup_success(Lw61$b;)V
    .locals 1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->y0()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->u(Lw61$b;)V

    return-void
.end method

.method public on_report_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 0

    return-void
.end method

.method public on_report_success()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->p()V

    return-void
.end method

.method public on_reports_success(Lc71$c;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->m(Lc71$c;)V

    return-void
.end method

.method public synthetic q0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->p0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic s0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->r0(Landroid/view/View;)V

    return-void
.end method

.method public final u0(II)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lg8;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lg8;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->s:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method

.method public final v0(Lxv0;)V
    .locals 3

    new-instance v0, Lwv0;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->B:Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;

    invoke-direct {v0, v1}, Lwv0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;)V

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->B:Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;

    invoke-virtual {v1, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;->setPieData(Lxv0;Lwv0;)V

    return-void
.end method

.method public final w0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->y:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->n:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p1, v0}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->y:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    invoke-virtual {p1}, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;->g()V

    return-void
.end method

.method public final x0(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0685

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->p:Landroid/widget/TextView;

    const v0, 0x7f0a04bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->m:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0676

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0a0687

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->q:Landroid/widget/TextView;

    const v0, 0x7f0a02ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->w:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const v0, 0x7f0a057a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->x:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const v0, 0x7f0a053c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->y:Lcom/cooltechworks/views/shimmer/ShimmerRecyclerView;

    const v0, 0x7f0a04b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->B:Lcom/flexaspect/android/everycallcontrol/ui/customview/piechart/PieChart;

    const v0, 0x7f0a0673

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->r:Landroid/widget/TextView;

    const v0, 0x7f0a03af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->z:Landroid/widget/ProgressBar;

    const v0, 0x7f0a04cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->A:Landroid/widget/ProgressBar;

    const v0, 0x7f0a066a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->s:Landroid/widget/TextView;

    const v0, 0x7f0a0677

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->t:Landroid/widget/TextView;

    const v0, 0x7f0a0670

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->u:Landroid/widget/TextView;

    const v0, 0x7f0a069a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->v:Landroid/widget/TextView;

    const v0, 0x7f0a038c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0386

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0384

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v2, Lby0;

    invoke-direct {v2, p0}, Lby0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lhy0;

    invoke-direct {v0, p0}, Lhy0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->m:Landroid/widget/FrameLayout;

    new-instance v1, Ldy0;

    invoke-direct {v1, p0}, Ldy0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lay0;

    invoke-direct {v0, p0}, Lay0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d00e3

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method

.method public final y0()V
    .locals 7

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->X0()Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->U()Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    :goto_0
    invoke-static {}, Lfa1;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->X0()Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lr71$a;->q0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->g()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lr71$a;->q1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->g()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lr71$a;->n(Ljava/lang/Long;)V

    :cond_1
    return-void
.end method
