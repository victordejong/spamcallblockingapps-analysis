.class public final Lcom/google/android/gms/internal/ads/bhm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/bgy;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/zzb;

.field private final b:Lcom/google/android/gms/internal/ads/aeb;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/bli;

.field private final e:Lcom/google/android/gms/internal/ads/cty;

.field private final f:Lcom/google/android/gms/internal/ads/brs;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/die;

.field private final i:Lcom/google/android/gms/internal/ads/zzbar;

.field private final j:Lcom/google/android/gms/internal/ads/cus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/aeb;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bhm;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bhm;->g:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bhm;->h:Lcom/google/android/gms/internal/ads/die;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bhm;->i:Lcom/google/android/gms/internal/ads/zzbar;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bhm;->a:Lcom/google/android/gms/ads/internal/zzb;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bhm;->b:Lcom/google/android/gms/internal/ads/aeb;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bhm;->f:Lcom/google/android/gms/internal/ads/brs;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bhm;->j:Lcom/google/android/gms/internal/ads/cus;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/bhm;->d:Lcom/google/android/gms/internal/ads/bli;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/bhm;->e:Lcom/google/android/gms/internal/ads/cty;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bhm;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bhm;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/bhm;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bhm;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/die;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bhm;->h:Lcom/google/android/gms/internal/ads/die;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/zzbar;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bhm;->i:Lcom/google/android/gms/internal/ads/zzbar;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/ads/internal/zzb;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bhm;->a:Lcom/google/android/gms/ads/internal/zzb;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/aeb;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bhm;->b:Lcom/google/android/gms/internal/ads/aeb;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/brs;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bhm;->f:Lcom/google/android/gms/internal/ads/brs;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/cus;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bhm;->j:Lcom/google/android/gms/internal/ads/cus;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/bli;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bhm;->d:Lcom/google/android/gms/internal/ads/bli;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/cty;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bhm;->e:Lcom/google/android/gms/internal/ads/cty;

    return-object p0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/bgy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bgy;-><init>(Lcom/google/android/gms/internal/ads/bhm;)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bgy;->a()V

    return-object v0
.end method
