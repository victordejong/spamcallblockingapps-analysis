.class public final Lcom/google/android/gms/internal/ads/cfy;
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
        "Lcom/google/android/gms/internal/ads/bdr;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/afh;

.field private final d:Lcom/google/android/gms/internal/ads/cfa;

.field private final e:Lcom/google/android/gms/internal/ads/cev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cev",
            "<",
            "Lcom/google/android/gms/internal/ads/bdu;",
            "Lcom/google/android/gms/internal/ads/bdr;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/chb;

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
            "Lcom/google/android/gms/internal/ads/bdr;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/afh;Lcom/google/android/gms/internal/ads/cev;Lcom/google/android/gms/internal/ads/cfa;Lcom/google/android/gms/internal/ads/chj;Lcom/google/android/gms/internal/ads/chb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/afh;",
            "Lcom/google/android/gms/internal/ads/cev",
            "<",
            "Lcom/google/android/gms/internal/ads/bdu;",
            "Lcom/google/android/gms/internal/ads/bdr;",
            ">;",
            "Lcom/google/android/gms/internal/ads/cfa;",
            "Lcom/google/android/gms/internal/ads/chj;",
            "Lcom/google/android/gms/internal/ads/chb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfy;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cfy;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cfy;->c:Lcom/google/android/gms/internal/ads/afh;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cfy;->e:Lcom/google/android/gms/internal/ads/cev;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cfy;->d:Lcom/google/android/gms/internal/ads/cfa;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cfy;->g:Lcom/google/android/gms/internal/ads/chj;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/cfy;->f:Lcom/google/android/gms/internal/ads/chb;

    .line 9
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cfy;Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/bdx;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cfy;->b(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/bdx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cfy;)Lcom/google/android/gms/internal/ads/cfa;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfy;->d:Lcom/google/android/gms/internal/ads/cfa;

    return-object v0
.end method

.method private final b(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/bdx;
    .locals 4

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/gms/internal/ads/cgd;

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfy;->d:Lcom/google/android/gms/internal/ads/cfa;

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/internal/ads/cfa;)Lcom/google/android/gms/internal/ads/cfa;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cfy;->c:Lcom/google/android/gms/internal/ads/afh;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afh;->m()Lcom/google/android/gms/internal/ads/bdx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/apb$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/apb$a;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cfy;->a:Landroid/content/Context;

    .line 43
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/apb$a;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/cgd;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 44
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/apb$a;->a(Lcom/google/android/gms/internal/ads/chh;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/cgd;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/apb$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cfy;->f:Lcom/google/android/gms/internal/ads/chb;

    .line 46
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/apb$a;->a(Lcom/google/android/gms/internal/ads/chb;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/apb$a;->a()Lcom/google/android/gms/internal/ads/apb;

    move-result-object v2

    .line 48
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/bdx;->a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/bdx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/atf$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/atf$a;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cfy;->b:Ljava/util/concurrent/Executor;

    .line 49
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/app;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cfy;->b:Ljava/util/concurrent/Executor;

    .line 50
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/arg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cfy;->b:Ljava/util/concurrent/Executor;

    .line 51
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/apv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cfy;->b:Ljava/util/concurrent/Executor;

    .line 52
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/ads/reward/a;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cfy;->b:Ljava/util/concurrent/Executor;

    .line 53
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/aqe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cfy;->b:Ljava/util/concurrent/Executor;

    .line 54
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/arw;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v2

    .line 55
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/atf$a;->a(Lcom/google/android/gms/internal/ads/ces;)Lcom/google/android/gms/internal/ads/atf$a;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atf$a;->a()Lcom/google/android/gms/internal/ads/atf;

    move-result-object v0

    .line 57
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/bdx;->a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/bdx;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cfy;)Lcom/google/android/gms/internal/ads/cev;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfy;->e:Lcom/google/android/gms/internal/ads/cev;

    return-object v0
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/bdx;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cfy;->b(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/bdx;

    move-result-object v0

    return-object v0
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfy;->g:Lcom/google/android/gms/internal/ads/chj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chj;->d()Lcom/google/android/gms/internal/ads/cgv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cgv;->a(I)Lcom/google/android/gms/internal/ads/cgv;

    .line 37
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfy;->h:Lcom/google/android/gms/internal/ads/crt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfy;->h:Lcom/google/android/gms/internal/ads/crt;

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

.method public final a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/btl;Lcom/google/android/gms/internal/ads/bto;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dya;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/btl;",
            "Lcom/google/android/gms/internal/ads/bto",
            "<-",
            "Lcom/google/android/gms/internal/ads/bdr;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    new-instance v3, Lcom/google/android/gms/internal/ads/rh;

    invoke-direct {v3, p1, p2}, Lcom/google/android/gms/internal/ads/rh;-><init>(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)V

    .line 13
    instance-of v0, p3, Lcom/google/android/gms/internal/ads/cfv;

    if-eqz v0, :cond_2

    .line 14
    check-cast p3, Lcom/google/android/gms/internal/ads/cfv;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/cfv;->a:Ljava/lang/String;

    .line 16
    :goto_0
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/rh;->b:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 17
    const-string/jumbo v0, "Ad unit ID should not be null for rewarded video ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfy;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/cfx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cfx;-><init>(Lcom/google/android/gms/internal/ads/cfy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move v0, v2

    .line 35
    :goto_1
    return v0

    .line 20
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cfy;->h:Lcom/google/android/gms/internal/ads/crt;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cfy;->h:Lcom/google/android/gms/internal/ads/crt;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/crt;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cfy;->a:Landroid/content/Context;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/rh;->a:Lcom/google/android/gms/internal/ads/dya;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/dya;->f:Z

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/chp;->a(Landroid/content/Context;Z)V

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cfy;->g:Lcom/google/android/gms/internal/ads/chj;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/rh;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/chj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyd;->b()Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/chj;->a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/rh;->a:Lcom/google/android/gms/internal/ads/dya;

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/chj;->a(Lcom/google/android/gms/internal/ads/dya;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/chj;->e()Lcom/google/android/gms/internal/ads/chh;

    move-result-object v2

    .line 28
    new-instance v3, Lcom/google/android/gms/internal/ads/cgd;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/cgd;-><init>(Lcom/google/android/gms/internal/ads/cfz;)V

    .line 29
    iput-object v2, v3, Lcom/google/android/gms/internal/ads/cgd;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 30
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/cgd;->b:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfy;->e:Lcom/google/android/gms/internal/ads/cev;

    new-instance v1, Lcom/google/android/gms/internal/ads/cew;

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/cew;-><init>(Lcom/google/android/gms/internal/ads/ceu;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/cga;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/cga;-><init>(Lcom/google/android/gms/internal/ads/cfy;)V

    .line 32
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cev;->a(Lcom/google/android/gms/internal/ads/cew;Lcom/google/android/gms/internal/ads/cex;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cfy;->h:Lcom/google/android/gms/internal/ads/crt;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfy;->h:Lcom/google/android/gms/internal/ads/crt;

    new-instance v1, Lcom/google/android/gms/internal/ads/cfz;

    invoke-direct {v1, p0, p4, v3}, Lcom/google/android/gms/internal/ads/cfz;-><init>(Lcom/google/android/gms/internal/ads/cfy;Lcom/google/android/gms/internal/ads/bto;Lcom/google/android/gms/internal/ads/cgd;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cfy;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method final synthetic b()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfy;->d:Lcom/google/android/gms/internal/ads/cfa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cfa;->a(I)V

    return-void
.end method
