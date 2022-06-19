.class final Lcom/google/android/gms/internal/ads/cld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Lcom/google/android/gms/internal/ads/alq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/clb;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/cal;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/amn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/clb;Lcom/google/android/gms/internal/ads/cal;Lcom/google/android/gms/internal/ads/amn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cld;->b:Lcom/google/android/gms/internal/ads/cal;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cld;->c:Lcom/google/android/gms/internal/ads/amn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/alq;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    const/4 v2, 0x0

    .line 2092
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/clb;->h:Lcom/google/android/gms/internal/ads/dbt;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    .line 2093
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/clb;->d:Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alq;->b()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alq;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 20
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 3013
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;

    if-eqz v3, :cond_0

    .line 4013
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;

    .line 5010
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/arf;->a:Ljava/lang/String;

    .line 24
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Banner view provided from "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a parent view. Removing its old parent."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 25
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alq;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->eL:Lcom/google/android/gms/internal/ads/af;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5017
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/anp;->m:Lcom/google/android/gms/internal/ads/aue;

    .line 6004
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/aue;->a:Lcom/google/android/gms/internal/ads/avj;

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    .line 6095
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/clb;->b:Lcom/google/android/gms/internal/ads/bza;

    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/avj;->a(Lcom/google/android/gms/internal/ads/bza;)Lcom/google/android/gms/internal/ads/avj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    .line 7094
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/clb;->c:Lcom/google/android/gms/internal/ads/bzz;

    .line 8006
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/avj;->a:Lcom/google/android/gms/internal/ads/aue;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aue;->a(Lcom/google/android/gms/internal/ads/aue;Lcom/google/android/gms/internal/ads/bzz;)Lcom/google/android/gms/internal/ads/bzz;

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    .line 8093
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/clb;->d:Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alq;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cld;->b:Lcom/google/android/gms/internal/ads/cal;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/cal;->a(Ljava/lang/Object;)V

    .line 34
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->eL:Lcom/google/android/gms/internal/ads/af;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    .line 8096
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/clb;->a:Ljava/util/concurrent/Executor;

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    .line 9095
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/clb;->b:Lcom/google/android/gms/internal/ads/bza;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/clc;->a(Lcom/google/android/gms/internal/ads/bza;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    .line 9097
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/clb;->f:Lcom/google/android/gms/internal/ads/atx;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alq;->f()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/atx;->a(I)V

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cld;->c:Lcom/google/android/gms/internal/ads/amn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amn;->b()Lcom/google/android/gms/internal/ads/aor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aor;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    const/4 v3, 0x0

    .line 1092
    iput-object v3, v2, Lcom/google/android/gms/internal/ads/clb;->h:Lcom/google/android/gms/internal/ads/dbt;

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cld;->c:Lcom/google/android/gms/internal/ads/amn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/amn;->a()Lcom/google/android/gms/internal/ads/arn;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/arn;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 6
    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->eL:Lcom/google/android/gms/internal/ads/af;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    .line 1096
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/clb;->a:Ljava/util/concurrent/Executor;

    .line 9
    new-instance v3, Lcom/google/android/gms/internal/ads/clf;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/clf;-><init>(Lcom/google/android/gms/internal/ads/cld;Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/clb;

    .line 1097
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/clb;->f:Lcom/google/android/gms/internal/ads/atx;

    const/16 v3, 0x3c

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/atx;->a(I)V

    .line 11
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    const-string v2, "BannerAdLoader.onFailure"

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/cqb;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cld;->b:Lcom/google/android/gms/internal/ads/cal;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cal;->a()V

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
