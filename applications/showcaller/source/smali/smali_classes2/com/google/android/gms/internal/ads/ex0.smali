.class public Lcom/google/android/gms/internal/ads/ex0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vy0;

.field private final b:Landroid/view/View;

.field private final c:Lcom/google/android/gms/internal/ads/hj2;

.field private final d:Lcom/google/android/gms/internal/ads/wn0;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/vy0;Lcom/google/android/gms/internal/ads/hj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ex0;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ex0;->d:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ex0;->a:Lcom/google/android/gms/internal/ads/vy0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ex0;->c:Lcom/google/android/gms/internal/ads/hj2;

    return-void
.end method

.method public static final f(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/xj2;)Lcom/google/android/gms/internal/ads/ja1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            "Lcom/google/android/gms/internal/ads/xj2;",
            ")",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/n41;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ja1;

    new-instance v1, Lcom/google/android/gms/internal/ads/cx0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cx0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/xj2;)V

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/ja1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static final g(Lcom/google/android/gms/internal/ads/oy0;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oy0;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/n41;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ja1;

    sget-object v1, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ja1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lcom/google/android/gms/internal/ads/my0;)Lcom/google/android/gms/internal/ads/ja1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/my0;",
            ")",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/n41;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ja1;

    sget-object v1, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ja1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/wn0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex0;->d:Lcom/google/android/gms/internal/ads/wn0;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex0;->b:Landroid/view/View;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/vy0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex0;->a:Lcom/google/android/gms/internal/ads/vy0;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/hj2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex0;->c:Lcom/google/android/gms/internal/ads/hj2;

    return-object v0
.end method

.method public e(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/l41;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/n41;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/l41;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/l41;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/l41;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
