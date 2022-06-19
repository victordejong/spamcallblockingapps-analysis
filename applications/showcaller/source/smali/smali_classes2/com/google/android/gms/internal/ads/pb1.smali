.class public Lcom/google/android/gms/internal/ads/pb1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qc1;

.field private final b:Lcom/google/android/gms/internal/ads/wn0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qc1;Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pb1;->a:Lcom/google/android/gms/internal/ads/qc1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pb1;->b:Lcom/google/android/gms/internal/ads/wn0;

    return-void
.end method

.method public static final h(Lcom/google/android/gms/internal/ads/vc1;)Lcom/google/android/gms/internal/ads/ja1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vc1;",
            ")",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/aa1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ja1;

    sget-object v1, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ja1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qc1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pb1;->a:Lcom/google/android/gms/internal/ads/qc1;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/wn0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pb1;->b:Lcom/google/android/gms/internal/ads/wn0;

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pb1;->b:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->F()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pb1;->b:Lcom/google/android/gms/internal/ads/wn0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->F()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/google/android/gms/internal/ads/x11;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/x11;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/y21;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/ja1;

    .line 2
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/ja1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/google/android/gms/internal/ads/x11;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/x11;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/aa1;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/ja1;

    .line 2
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/ja1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/ja1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/r71;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pb1;->b:Lcom/google/android/gms/internal/ads/wn0;

    new-instance v1, Lcom/google/android/gms/internal/ads/ja1;

    new-instance v2, Lcom/google/android/gms/internal/ads/ob1;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/ob1;-><init>(Lcom/google/android/gms/internal/ads/wn0;)V

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/ja1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
