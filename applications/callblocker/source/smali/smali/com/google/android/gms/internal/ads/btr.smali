.class public final Lcom/google/android/gms/internal/ads/btr;
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
        "Lcom/google/android/gms/internal/ads/amh;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chj;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/afh;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/btk;

.field private e:Lcom/google/android/gms/internal/ads/amt;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/btk;Lcom/google/android/gms/internal/ads/chj;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/btr;->c:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/btr;->d:Lcom/google/android/gms/internal/ads/btk;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/btr;->a:Lcom/google/android/gms/internal/ads/chj;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btr;->e:Lcom/google/android/gms/internal/ads/amt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btr;->e:Lcom/google/android/gms/internal/ads/amt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/btl;Lcom/google/android/gms/internal/ads/bto;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dya;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/btl;",
            "Lcom/google/android/gms/internal/ads/bto",
            "<-",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btr;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ve;->o(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dya;->s:Lcom/google/android/gms/internal/ads/dxu;

    if-nez v2, :cond_0

    .line 9
    const-string/jumbo v1, "Failed to load the ad because app ID is missing."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/btq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/btq;-><init>(Lcom/google/android/gms/internal/ads/btr;)V

    .line 11
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move v1, v0

    .line 46
    :goto_0
    return v1

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    const-string/jumbo v1, "Ad unit ID should not be null for NativeAdLoader."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/btt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/btt;-><init>(Lcom/google/android/gms/internal/ads/btr;)V

    .line 16
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btr;->c:Landroid/content/Context;

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/dya;->f:Z

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/chp;->a(Landroid/content/Context;Z)V

    .line 20
    instance-of v0, p3, Lcom/google/android/gms/internal/ads/btn;

    if-eqz v0, :cond_2

    .line 21
    check-cast p3, Lcom/google/android/gms/internal/ads/btn;

    iget v0, p3, Lcom/google/android/gms/internal/ads/btn;->a:I

    .line 22
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btr;->a:Lcom/google/android/gms/internal/ads/chj;

    .line 23
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/chj;->a(Lcom/google/android/gms/internal/ads/dya;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/chj;->a(I)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chj;->e()Lcom/google/android/gms/internal/ads/chh;

    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/afh;->l()Lcom/google/android/gms/internal/ads/axn;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/apb$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/apb$a;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/btr;->c:Landroid/content/Context;

    .line 26
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/apb$a;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v3

    .line 27
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/apb$a;->a(Lcom/google/android/gms/internal/ads/chh;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/apb$a;->a()Lcom/google/android/gms/internal/ads/apb;

    move-result-object v3

    .line 29
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/axn;->a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/axn;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/atf$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/atf$a;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/btr;->d:Lcom/google/android/gms/internal/ads/btk;

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/btk;->c()Lcom/google/android/gms/internal/ads/arg;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/arg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/btr;->d:Lcom/google/android/gms/internal/ads/btk;

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/btk;->d()Lcom/google/android/gms/internal/ads/apv;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 32
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/apv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/btr;->d:Lcom/google/android/gms/internal/ads/btk;

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/btk;->e()Lcom/google/android/gms/internal/ads/aqi;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/aqi;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/btr;->d:Lcom/google/android/gms/internal/ads/btk;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/btk;->f()Lcom/google/android/gms/internal/ads/dxs;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/dxs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/btr;->d:Lcom/google/android/gms/internal/ads/btk;

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/btk;->b()Lcom/google/android/gms/internal/ads/app;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/app;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->m:Lcom/google/android/gms/internal/ads/dzw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/dzw;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atf$a;->a()Lcom/google/android/gms/internal/ads/atf;

    move-result-object v0

    .line 38
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/axn;->a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/axn;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btr;->d:Lcom/google/android/gms/internal/ads/btk;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/btk;->a()Lcom/google/android/gms/internal/ads/axk;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/axn;->a(Lcom/google/android/gms/internal/ads/axk;)Lcom/google/android/gms/internal/ads/axn;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/axn;->a()Lcom/google/android/gms/internal/ads/axo;

    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/afh;->p()Lcom/google/android/gms/internal/ads/chr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/chr;->a(I)V

    .line 43
    new-instance v2, Lcom/google/android/gms/internal/ads/amt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/afh;->c()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/btr;->b:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/afh;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/axo;->a()Lcom/google/android/gms/internal/ads/ang;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ang;->b()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/amt;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/crt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/btr;->e:Lcom/google/android/gms/internal/ads/amt;

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btr;->e:Lcom/google/android/gms/internal/ads/amt;

    new-instance v3, Lcom/google/android/gms/internal/ads/bts;

    invoke-direct {v3, p0, p4, v0}, Lcom/google/android/gms/internal/ads/bts;-><init>(Lcom/google/android/gms/internal/ads/btr;Lcom/google/android/gms/internal/ads/bto;Lcom/google/android/gms/internal/ads/axo;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/amt;->a(Lcom/google/android/gms/internal/ads/crh;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1
.end method

.method final synthetic b()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btr;->d:Lcom/google/android/gms/internal/ads/btk;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/btk;->d()Lcom/google/android/gms/internal/ads/apv;

    move-result-object v0

    const/4 v1, 0x1

    .line 49
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apv;->a(I)V

    .line 50
    return-void
.end method

.method final synthetic c()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btr;->d:Lcom/google/android/gms/internal/ads/btk;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/btk;->d()Lcom/google/android/gms/internal/ads/apv;

    move-result-object v0

    const/16 v1, 0x8

    .line 53
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/apv;->a(I)V

    .line 54
    return-void
.end method
