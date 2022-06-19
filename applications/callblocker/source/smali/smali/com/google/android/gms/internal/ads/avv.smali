.class public Lcom/google/android/gms/internal/ads/avv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/awx;

.field private final b:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/awx;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/avv;-><init>(Lcom/google/android/gms/internal/ads/awx;Lcom/google/android/gms/internal/ads/act;)V

    .line 2
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/awx;Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/avv;->a:Lcom/google/android/gms/internal/ads/awx;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/avv;->b:Lcom/google/android/gms/internal/ads/act;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/auq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/asl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avv;->b:Lcom/google/android/gms/internal/ads/act;

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/auq;

    new-instance v2, Lcom/google/android/gms/internal/ads/avx;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/avx;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/auq;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method public final a()Lcom/google/android/gms/internal/ads/awx;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avv;->a:Lcom/google/android/gms/internal/ads/awx;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/ads/axc;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/axc;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/app;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/auq;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/auq;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/act;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avv;->b:Lcom/google/android/gms/internal/ads/act;

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avv;->b:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avv;->b:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avv;->b:Lcom/google/android/gms/internal/ads/act;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/avv;->b:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    goto :goto_0
.end method
