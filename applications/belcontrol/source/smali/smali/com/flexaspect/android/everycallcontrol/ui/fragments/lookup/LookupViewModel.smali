.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;
.super Lfv0;
.source ""


# instance fields
.field public g:Landroid/content/Context;

.field public h:I

.field public j:Li91;

.field public k:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;

.field public l:Z

.field public m:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/util/ArrayList<",
            "Lc71$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public x:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lfv0;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->h:I

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->l:Z

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->m:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->n:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->o:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->p:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->q:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->r:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->s:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->t:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->u:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->v:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->w:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->x:Lve;

    return-void
.end method

.method private synthetic q(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->k:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public m(Lc71$c;)V
    .locals 2

    iget v0, p1, Lc71$c;->b:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->m:Lve;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lve;->j(Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->u:Lve;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lve;->j(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->n(Lc71$c;)V

    iget-object p1, p1, Lc71$c;->a:[Lc71$b;

    array-length p1, p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->v:Lve;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lve;->j(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final n(Lc71$c;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lc71$c;->a:[Lc71$b;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lyx0;->a:Lyx0;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lc71$b;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->w:Lve;

    invoke-virtual {p1, v0}, Lve;->j(Ljava/lang/Object;)V

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->h:I

    invoke-virtual {p0}, Lfv0;->h()V

    return-void
.end method

.method public final o(I[I)I
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget v3, p2, v0

    if-le v1, v3, :cond_1

    sub-int/2addr v1, v3

    int-to-float v1, v1

    goto :goto_0

    :cond_1
    rsub-int/lit8 v3, v3, 0xc

    add-int/2addr v3, v1

    int-to-float v1, v3

    :goto_0
    const/4 v3, 0x1

    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_2

    aget v4, p2, v3

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    int-to-float p2, v0

    div-float/2addr p2, v1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/high16 p1, 0x428e0000    # 71.0f

    const v0, 0x3e947ae1    # 0.29f

    :goto_2
    mul-float v0, v0, p2

    add-float/2addr p1, v0

    :goto_3
    float-to-int p1, p1

    return p1

    :cond_3
    const/high16 p1, 0x41f80000    # 31.0f

    const v0, 0x3ec7ae14    # 0.39f

    goto :goto_2

    :cond_4
    const p1, 0x3e99999a    # 0.3f

    mul-float p1, p1, p2

    goto :goto_3
.end method

.method public p()V
    .locals 6

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->j:Li91;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->x:Lve;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lve;->j(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->k:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel$2;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel$2;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->j:Li91;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->h:I

    const/16 v5, 0xa

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "reports"

    invoke-static {v3, v0, v1, v2}, Lcom/kedlin/cca/core/service/BackgroundWorker;->f(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic r(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->q(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public s(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;Li91;)V
    .locals 4

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->j:Li91;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->k:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->g:Landroid/content/Context;

    invoke-static {}, Lfa1;->w()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, -0x1f4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->g:Landroid/content/Context;

    const v1, 0x7f1104ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lk61$a;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->g:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lk61$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p2, v0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->t(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->x:Lve;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lve;->j(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->x:Lve;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lve;->j(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel$1;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel$1;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "lookup"

    invoke-static {p2, p1, v0, v1}, Lcom/kedlin/cca/core/service/BackgroundWorker;->f(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    return-void
.end method

.method public t(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lk61$a;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->g:Landroid/content/Context;

    const p2, 0x7f1102f4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->g:Landroid/content/Context;

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

    move-result-object p2

    new-instance p3, Lqy0;

    invoke-direct {p3, p0}, Lqy0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;)V

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public u(Lw61$b;)V
    .locals 6

    iget-object v0, p1, Lw61$b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->x:Lve;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lve;->j(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->p:Lve;

    iget-wide v1, p1, Lw61$b;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lve;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->q:Lve;

    iget-wide v1, p1, Lw61$b;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lve;->j(Ljava/lang/Object;)V

    iget v0, p1, Lw61$b;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    new-instance v0, Lo81;

    invoke-direct {v0}, Lo81;-><init>()V

    iget-object v2, p1, Lw61$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lo81;->I(Ljava/lang/String;Z)Lo81;

    invoke-virtual {v0}, Lo81;->K()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lw61$b;->a:Ljava/lang/String;

    invoke-static {v2}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo81;->N(Li91;)V

    iget v2, p1, Lw61$b;->k:I

    iput v2, v0, Lo81;->d:I

    invoke-virtual {v0}, Lo81;->z()Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->y(Lw61$b;)V

    const v0, 0x7f060197

    iget v2, p1, Lw61$b;->b:I

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget v1, p1, Lw61$b;->g:I

    if-ne v1, v3, :cond_2

    const v0, 0x7f06023d

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110410

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->g:Landroid/content/Context;

    const v2, 0x7f1103fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const v0, 0x7f0601a2

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p1, Lw61$b;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const v4, 0x7f11040f

    goto :goto_0

    :cond_4
    const v4, 0x7f11040e

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lw61$b;->d:Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->n:Lve;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lve;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->s:Lve;

    invoke-virtual {v0, v1}, Lve;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->x:Lve;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lve;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->o:Lve;

    iget v1, p1, Lw61$b;->b:I

    iget-object p1, p1, Lw61$b;->l:[I

    invoke-virtual {p0, v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->o(I[I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lve;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public v(Ld71$b;)V
    .locals 2

    iget-object v0, p1, Ld71$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->g:Landroid/content/Context;

    const v0, 0x7f1102f5

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->z(Ld71$b;)V

    :goto_0
    iput-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->l:Z

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->h:I

    return-void
.end method

.method public x()V
    .locals 5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->j:Li91;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->k:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1103fb

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1101cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->k:Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel$3;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel$3;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->j:Li91;

    aput-object v4, v1, v3

    const-string v3, "lookup_reverse"

    invoke-static {v3, v0, v2, v1}, Lcom/kedlin/cca/core/service/BackgroundWorker;->f(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Lw61$b;)V
    .locals 5

    iget-object v0, p1, Lw61$b;->a:Ljava/lang/String;

    iget-object v1, p1, Lw61$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lw61$b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lw61$b;->c:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->j:Li91;

    invoke-virtual {v3}, Li91;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lw61$b;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lw61$b;->f:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, v1, v2

    const-string p1, "%s%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->j:Li91;

    invoke-virtual {v0}, Li91;->e()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lw61$b;->f:Ljava/lang/String;

    :goto_2
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->r:Lve;

    invoke-virtual {v1, v0}, Lve;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->t:Lve;

    invoke-virtual {v0, p1}, Lve;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final z(Ld71$b;)V
    .locals 8

    iget-object v0, p1, Ld71$b;->a:Ljava/lang/String;

    iget-object v1, p1, Ld71$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "%s%s"

    const-string v6, ""

    if-nez v0, :cond_2

    iget-object v0, p1, Ld71$b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Ld71$b;->c:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p1, Ld71$b;->a:Ljava/lang/String;

    aput-object v7, v4, v3

    iget-object v3, p1, Ld71$b;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ld71$b;->f:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    aput-object v6, v4, v2

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_2
    :goto_1
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v4, p1, Ld71$b;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->j:Li91;

    invoke-virtual {v4}, Li91;->e()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    iget-object v4, p1, Ld71$b;->c:Ljava/lang/String;

    :goto_2
    aput-object v4, v0, v3

    iget-object v3, p1, Ld71$b;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object p1, v6

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ld71$b;->f:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    aput-object p1, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->r:Lve;

    invoke-virtual {p1, v0}, Lve;->j(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->t:Lve;

    invoke-virtual {p1, v6}, Lve;->j(Ljava/lang/Object;)V

    return-void
.end method
