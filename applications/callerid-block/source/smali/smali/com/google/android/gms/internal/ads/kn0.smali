.class public final Lcom/google/android/gms/internal/ads/kn0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/mn0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/a;

.field private final b:Lcom/google/android/gms/internal/ads/ut;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/jr0;

.field private final e:Lcom/google/android/gms/internal/ads/aq1;

.field private final f:Lcom/google/android/gms/internal/ads/jz0;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/zh2;

.field private final i:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final j:Lcom/google/android/gms/internal/ads/tq1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/ut;Lcom/google/android/gms/internal/ads/jz0;Lcom/google/android/gms/internal/ads/tq1;Lcom/google/android/gms/internal/ads/jr0;Lcom/google/android/gms/internal/ads/aq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kn0;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kn0;->g:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kn0;->h:Lcom/google/android/gms/internal/ads/zh2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/kn0;->i:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/kn0;->a:Lcom/google/android/gms/ads/internal/a;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/kn0;->b:Lcom/google/android/gms/internal/ads/ut;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/kn0;->f:Lcom/google/android/gms/internal/ads/jz0;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/kn0;->j:Lcom/google/android/gms/internal/ads/tq1;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/kn0;->d:Lcom/google/android/gms/internal/ads/jr0;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/kn0;->e:Lcom/google/android/gms/internal/ads/aq1;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/kn0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kn0;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/kn0;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kn0;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/kn0;)Lcom/google/android/gms/internal/ads/zh2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kn0;->h:Lcom/google/android/gms/internal/ads/zh2;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/kn0;)Lcom/google/android/gms/internal/ads/zzbbq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kn0;->i:Lcom/google/android/gms/internal/ads/zzbbq;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/kn0;)Lcom/google/android/gms/ads/internal/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kn0;->a:Lcom/google/android/gms/ads/internal/a;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/kn0;)Lcom/google/android/gms/internal/ads/ut;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kn0;->b:Lcom/google/android/gms/internal/ads/ut;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/kn0;)Lcom/google/android/gms/internal/ads/jz0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kn0;->f:Lcom/google/android/gms/internal/ads/jz0;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/kn0;)Lcom/google/android/gms/internal/ads/tq1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kn0;->j:Lcom/google/android/gms/internal/ads/tq1;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/kn0;)Lcom/google/android/gms/internal/ads/jr0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kn0;->d:Lcom/google/android/gms/internal/ads/jr0;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/kn0;)Lcom/google/android/gms/internal/ads/aq1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/kn0;->e:Lcom/google/android/gms/internal/ads/aq1;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/mn0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/mn0;-><init>(Lcom/google/android/gms/internal/ads/kn0;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mn0;->a()V

    return-object v0
.end method
