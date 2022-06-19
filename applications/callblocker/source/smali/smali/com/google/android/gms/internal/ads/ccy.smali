.class public final Lcom/google/android/gms/internal/ads/ccy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/btm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/btm",
        "<",
        "Lcom/google/android/gms/internal/ads/ake;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/afh;

.field private final d:Lcom/google/android/gms/internal/ads/cdn;

.field private final e:Lcom/google/android/gms/internal/ads/cev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cev",
            "<",
            "Lcom/google/android/gms/internal/ads/ajy;",
            "Lcom/google/android/gms/internal/ads/ake;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/view/ViewGroup;

.field private final g:Lcom/google/android/gms/internal/ads/chj;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/ake;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/afh;Lcom/google/android/gms/internal/ads/cev;Lcom/google/android/gms/internal/ads/cdn;Lcom/google/android/gms/internal/ads/chj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/afh;",
            "Lcom/google/android/gms/internal/ads/cev",
            "<",
            "Lcom/google/android/gms/internal/ads/ajy;",
            "Lcom/google/android/gms/internal/ads/ake;",
            ">;",
            "Lcom/google/android/gms/internal/ads/cdn;",
            "Lcom/google/android/gms/internal/ads/chj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ccy;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ccy;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ccy;->c:Lcom/google/android/gms/internal/ads/afh;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ccy;->e:Lcom/google/android/gms/internal/ads/cev;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ccy;->d:Lcom/google/android/gms/internal/ads/cdn;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ccy;->g:Lcom/google/android/gms/internal/ads/chj;

    .line 8
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->f:Landroid/view/ViewGroup;

    .line 9
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ccy;Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/ajx;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ccy;->b(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/ajx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ccy;)Lcom/google/android/gms/internal/ads/cev;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->e:Lcom/google/android/gms/internal/ads/cev;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ccy;Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->h:Lcom/google/android/gms/internal/ads/crt;

    return-object v0
.end method

.method private final declared-synchronized b(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/ajx;
    .locals 4

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/ads/cdd;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->d:Lcom/google/android/gms/internal/ads/cdn;

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cdn;->a(Lcom/google/android/gms/internal/ads/cdn;)Lcom/google/android/gms/internal/ads/cdn;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/google/android/gms/internal/ads/atf$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/atf$a;-><init>()V

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ccy;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/apv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ccy;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/arl;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    .line 36
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/ces;)Lcom/google/android/gms/internal/ads/atf$a;

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->c:Lcom/google/android/gms/internal/ads/afh;

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->i()Lcom/google/android/gms/internal/ads/ajx;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/akf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ccy;->f:Landroid/view/ViewGroup;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/akf;-><init>(Landroid/view/ViewGroup;)V

    .line 39
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/ajx;->a(Lcom/google/android/gms/internal/ads/akf;)Lcom/google/android/gms/internal/ads/ajx;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/apb$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/apb$a;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ccy;->a:Landroid/content/Context;

    .line 40
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/apb$a;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/cdd;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/apb$a;->a(Lcom/google/android/gms/internal/ads/chh;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/apb$a;->a()Lcom/google/android/gms/internal/ads/apb;

    move-result-object v2

    .line 43
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/ajx;->a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/ajx;

    move-result-object v0

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/atf$a;->a()Lcom/google/android/gms/internal/ads/atf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ajx;->a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/ajx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 45
    monitor-exit p0

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ccy;)Lcom/google/android/gms/internal/ads/cdn;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->d:Lcom/google/android/gms/internal/ads/cdn;

    return-object v0
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/ajx;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ccy;->b(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/ajx;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dyk;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->g:Lcom/google/android/gms/internal/ads/chj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/chj;->a(Lcom/google/android/gms/internal/ads/dyk;)Lcom/google/android/gms/internal/ads/chj;

    .line 47
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->h:Lcom/google/android/gms/internal/ads/crt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->h:Lcom/google/android/gms/internal/ads/crt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/crt;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/btl;Lcom/google/android/gms/internal/ads/bto;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dya;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/btl;",
            "Lcom/google/android/gms/internal/ads/bto",
            "<-",
            "Lcom/google/android/gms/internal/ads/ake;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 11
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "loadAd must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 12
    if-nez p2, :cond_1

    .line 13
    const-string/jumbo v1, "Ad unit ID should not be null for app open ad."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ccy;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/cdc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/cdc;-><init>(Lcom/google/android/gms/internal/ads/ccy;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 16
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ccy;->h:Lcom/google/android/gms/internal/ads/crt;

    if-nez v1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->a:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/dya;->f:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/chp;->a(Landroid/content/Context;Z)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->g:Lcom/google/android/gms/internal/ads/chj;

    .line 20
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/chj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyd;->c()Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/chj;->a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/chj;->a(Lcom/google/android/gms/internal/ads/dya;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chj;->e()Lcom/google/android/gms/internal/ads/chh;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/google/android/gms/internal/ads/cdd;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/cdd;-><init>(Lcom/google/android/gms/internal/ads/cde;)V

    .line 25
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/cdd;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->e:Lcom/google/android/gms/internal/ads/cev;

    new-instance v2, Lcom/google/android/gms/internal/ads/cew;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/cew;-><init>(Lcom/google/android/gms/internal/ads/ceu;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/cdb;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/cdb;-><init>(Lcom/google/android/gms/internal/ads/ccy;)V

    .line 27
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/cev;->a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->h:Lcom/google/android/gms/internal/ads/crt;

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->h:Lcom/google/android/gms/internal/ads/crt;

    new-instance v2, Lcom/google/android/gms/internal/ads/cde;

    invoke-direct {v2, p0, p4, v1}, Lcom/google/android/gms/internal/ads/cde;-><init>(Lcom/google/android/gms/internal/ads/ccy;Lcom/google/android/gms/internal/ads/bto;Lcom/google/android/gms/internal/ads/cdd;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ccy;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    const/4 v0, 0x1

    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic b()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->d:Lcom/google/android/gms/internal/ads/cdn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cdn;->a(I)V

    return-void
.end method
