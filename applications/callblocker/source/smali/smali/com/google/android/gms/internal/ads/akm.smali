.class final Lcom/google/android/gms/internal/ads/akm;
.super Lcom/google/android/gms/internal/ads/akk;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/View;

.field private final e:Lcom/google/android/gms/internal/ads/act;

.field private final f:Lcom/google/android/gms/internal/ads/cgq;

.field private final g:Lcom/google/android/gms/internal/ads/ami;

.field private final h:Lcom/google/android/gms/internal/ads/azg;

.field private final i:Lcom/google/android/gms/internal/ads/auu;

.field private final j:Lcom/google/android/gms/internal/ads/dhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dhn",
            "<",
            "Lcom/google/android/gms/internal/ads/bst;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/Executor;

.field private l:Lcom/google/android/gms/internal/ads/dyd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/amk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cgq;Landroid/view/View;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/ami;Lcom/google/android/gms/internal/ads/azg;Lcom/google/android/gms/internal/ads/auu;Lcom/google/android/gms/internal/ads/dhn;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/amk;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/cgq;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/act;",
            "Lcom/google/android/gms/internal/ads/ami;",
            "Lcom/google/android/gms/internal/ads/azg;",
            "Lcom/google/android/gms/internal/ads/auu;",
            "Lcom/google/android/gms/internal/ads/dhn",
            "<",
            "Lcom/google/android/gms/internal/ads/bst;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/akk;-><init>(Lcom/google/android/gms/internal/ads/amk;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/akm;->c:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/akm;->d:Landroid/view/View;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/akm;->e:Lcom/google/android/gms/internal/ads/act;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/akm;->f:Lcom/google/android/gms/internal/ads/cgq;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/akm;->g:Lcom/google/android/gms/internal/ads/ami;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/akm;->h:Lcom/google/android/gms/internal/ads/azg;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/akm;->i:Lcom/google/android/gms/internal/ads/auu;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/akm;->j:Lcom/google/android/gms/internal/ads/dhn;

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/akm;->k:Ljava/util/concurrent/Executor;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->d:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/dyd;)V
    .locals 2

    .prologue
    .line 13
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->e:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->e:Lcom/google/android/gms/internal/ads/act;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/aei;->a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/aei;)V

    .line 15
    iget v0, p2, Lcom/google/android/gms/internal/ads/dyd;->c:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 16
    iget v0, p2, Lcom/google/android/gms/internal/ads/dyd;->f:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/akm;->l:Lcom/google/android/gms/internal/ads/dyd;

    .line 18
    :cond_0
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    .prologue
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->g:Lcom/google/android/gms/internal/ads/ami;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ami;->a()Lcom/google/android/gms/internal/ads/eba;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdhk; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 21
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cgq;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->l:Lcom/google/android/gms/internal/ads/dyd;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->l:Lcom/google/android/gms/internal/ads/dyd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/chk;->a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/cgq;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->b:Lcom/google/android/gms/internal/ads/cgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cgr;->T:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->b:Lcom/google/android/gms/internal/ads/cgr;

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    if-eqz v0, :cond_1

    const-string/jumbo v3, "FirstParty"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    const/4 v0, 0x1

    .line 30
    :goto_1
    if-nez v0, :cond_3

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/cgq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/akm;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/akm;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/cgq;-><init>(IIZ)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 29
    goto :goto_1

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->b:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->o:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/akm;->f:Lcom/google/android/gms/internal/ads/cgq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/chk;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/cgq;)Lcom/google/android/gms/internal/ads/cgq;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/cgq;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->f:Lcom/google/android/gms/internal/ads/cgq;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->a:Lcom/google/android/gms/internal/ads/chd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgs;->c:I

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->i:Lcom/google/android/gms/internal/ads/auu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/auu;->a()V

    .line 36
    return-void
.end method

.method public final g_()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/akl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/akl;-><init>(Lcom/google/android/gms/internal/ads/akm;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/akk;->g_()V

    .line 39
    return-void
.end method

.method final synthetic h()V
    .locals 3

    .prologue
    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->h:Lcom/google/android/gms/internal/ads/azg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azg;->d()Lcom/google/android/gms/internal/ads/dj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->h:Lcom/google/android/gms/internal/ads/azg;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azg;->d()Lcom/google/android/gms/internal/ads/dj;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akm;->j:Lcom/google/android/gms/internal/ads/dhn;

    .line 44
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dhn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dzn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/akm;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/dj;->a(Lcom/google/android/gms/internal/ads/dzn;Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string/jumbo v1, "RemoteException when notifyAdLoad is called"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
