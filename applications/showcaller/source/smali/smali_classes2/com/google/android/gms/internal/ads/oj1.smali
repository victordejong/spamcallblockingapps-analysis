.class public final Lcom/google/android/gms/internal/ads/oj1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/qj1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/a;

.field private final b:Lcom/google/android/gms/internal/ads/ho0;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/rn1;

.field private final e:Lcom/google/android/gms/internal/ads/jo2;

.field private final f:Lcom/google/android/gms/internal/ads/dw1;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/u;

.field private final i:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final j:Lcom/google/android/gms/internal/ads/bp2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/ho0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oj1;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oj1;->g:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/oj1;->h:Lcom/google/android/gms/internal/ads/u;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/oj1;->i:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/oj1;->a:Lcom/google/android/gms/ads/internal/a;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/oj1;->b:Lcom/google/android/gms/internal/ads/ho0;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/oj1;->f:Lcom/google/android/gms/internal/ads/dw1;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/oj1;->j:Lcom/google/android/gms/internal/ads/bp2;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/oj1;->d:Lcom/google/android/gms/internal/ads/rn1;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/oj1;->e:Lcom/google/android/gms/internal/ads/jo2;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/ads/internal/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oj1;->a:Lcom/google/android/gms/ads/internal/a;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/ho0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oj1;->b:Lcom/google/android/gms/internal/ads/ho0;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/oj1;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oj1;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/rn1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oj1;->d:Lcom/google/android/gms/internal/ads/rn1;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/jo2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oj1;->e:Lcom/google/android/gms/internal/ads/jo2;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/dw1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oj1;->f:Lcom/google/android/gms/internal/ads/dw1;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/oj1;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oj1;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/u;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oj1;->h:Lcom/google/android/gms/internal/ads/u;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/zzcgz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oj1;->i:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/bp2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oj1;->j:Lcom/google/android/gms/internal/ads/bp2;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/qj1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/qj1;-><init>(Lcom/google/android/gms/internal/ads/oj1;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qj1;->b()V

    return-object v0
.end method
