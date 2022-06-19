.class public Lcom/bumptech/glide/manager/r;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/r$a;
    }
.end annotation


# instance fields
.field private final X:Lcom/bumptech/glide/manager/a;

.field private final Y:Lcom/bumptech/glide/manager/p;

.field private final Z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/r;",
            ">;"
        }
    .end annotation
.end field

.field private a0:Lcom/bumptech/glide/manager/r;

.field private b0:Lcom/bumptech/glide/h;

.field private c0:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/manager/a;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/r;-><init>(Lcom/bumptech/glide/manager/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/r$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/r$a;-><init>(Lcom/bumptech/glide/manager/r;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/r;->Y:Lcom/bumptech/glide/manager/p;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/r;->Z:Ljava/util/Set;

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->X:Lcom/bumptech/glide/manager/a;

    return-void
.end method

.method private E1(Lcom/bumptech/glide/manager/r;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->Z:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private H1()Landroidx/fragment/app/Fragment;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->G()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->c0:Landroidx/fragment/app/Fragment;

    :goto_0
    return-object v0
.end method

.method private static K1(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/j;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->G()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->G()Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/j;

    move-result-object p0

    return-object p0
.end method

.method private L1(Landroidx/fragment/app/Fragment;)Z
    .locals 2

    invoke-direct {p0}, Lcom/bumptech/glide/manager/r;->H1()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->G()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->G()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private M1(Landroid/content/Context;Landroidx/fragment/app/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/manager/r;->Q1()V

    invoke-static {p1}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/b;->k()Lcom/bumptech/glide/manager/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/manager/o;->k(Landroidx/fragment/app/j;)Lcom/bumptech/glide/manager/r;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->a0:Lcom/bumptech/glide/manager/r;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/manager/r;->a0:Lcom/bumptech/glide/manager/r;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/manager/r;->E1(Lcom/bumptech/glide/manager/r;)V

    :cond_0
    return-void
.end method

.method private N1(Lcom/bumptech/glide/manager/r;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->Z:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private Q1()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->a0:Lcom/bumptech/glide/manager/r;

    if-eqz v0, :cond_0

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/r;->N1(Lcom/bumptech/glide/manager/r;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/r;->a0:Lcom/bumptech/glide/manager/r;

    :cond_0
    return-void
.end method


# virtual methods
.method F1()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->a0:Lcom/bumptech/glide/manager/r;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->Z:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/manager/r;->a0:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/r;->F1()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/manager/r;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/r;->H1()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bumptech/glide/manager/r;->L1(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method G1()Lcom/bumptech/glide/manager/a;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->X:Lcom/bumptech/glide/manager/a;

    return-object v0
.end method

.method public I1()Lcom/bumptech/glide/h;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->b0:Lcom/bumptech/glide/h;

    return-object v0
.end method

.method public J0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->J0()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->X:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->d()V

    return-void
.end method

.method public J1()Lcom/bumptech/glide/manager/p;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->Y:Lcom/bumptech/glide/manager/p;

    return-object v0
.end method

.method public K0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K0()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->X:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->e()V

    return-void
.end method

.method O1(Landroidx/fragment/app/Fragment;)V
    .locals 1

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->c0:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->w()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/manager/r;->K1(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/j;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->w()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/manager/r;->M1(Landroid/content/Context;Landroidx/fragment/app/j;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public P1(Lcom/bumptech/glide/h;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/manager/r;->b0:Lcom/bumptech/glide/h;

    return-void
.end method

.method public j0(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->j0(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/bumptech/glide/manager/r;->K1(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/j;

    move-result-object p1

    const/4 v0, 0x5

    const-string v1, "SupportRMFragment"

    if-nez p1, :cond_1

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Unable to register fragment with root, ancestor detached"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->w()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/bumptech/glide/manager/r;->M1(Landroid/content/Context;Landroidx/fragment/app/j;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Unable to register fragment with root"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public r0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->r0()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/r;->X:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->c()V

    invoke-direct {p0}, Lcom/bumptech/glide/manager/r;->Q1()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bumptech/glide/manager/r;->H1()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->u0()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/r;->c0:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lcom/bumptech/glide/manager/r;->Q1()V

    return-void
.end method
