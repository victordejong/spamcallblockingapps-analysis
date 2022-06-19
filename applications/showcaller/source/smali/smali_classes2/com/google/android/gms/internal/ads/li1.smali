.class public final Lcom/google/android/gms/internal/ads/li1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/internal/ads/pv0;

.field private final c:Lcom/google/android/gms/internal/ads/la1;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/pv0;Lcom/google/android/gms/internal/ads/la1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/li1;->a:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/li1;->c:Lcom/google/android/gms/internal/ads/la1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/li1;->b:Lcom/google/android/gms/internal/ads/pv0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/li1;->c:Lcom/google/android/gms/internal/ads/la1;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/la1;->S0(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/li1;->c:Lcom/google/android/gms/internal/ads/la1;

    new-instance v1, Lcom/google/android/gms/internal/ads/gi1;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/gi1;-><init>(Lcom/google/android/gms/internal/ads/wn0;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/li1;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/m81;->D0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/li1;->c:Lcom/google/android/gms/internal/ads/la1;

    new-instance v1, Lcom/google/android/gms/internal/ads/hi1;

    .line 3
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/hi1;-><init>(Lcom/google/android/gms/internal/ads/wn0;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/li1;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/m81;->D0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/li1;->c:Lcom/google/android/gms/internal/ads/la1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/li1;->b:Lcom/google/android/gms/internal/ads/pv0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/li1;->a:Ljava/util/concurrent/Executor;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/m81;->D0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/li1;->b:Lcom/google/android/gms/internal/ads/pv0;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/pv0;->a(Lcom/google/android/gms/internal/ads/wn0;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ji1;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ji1;-><init>(Lcom/google/android/gms/internal/ads/li1;)V

    const-string v1, "/trackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ki1;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ki1;-><init>(Lcom/google/android/gms/internal/ads/li1;)V

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    return-void
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/wn0;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/li1;->b:Lcom/google/android/gms/internal/ads/pv0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pv0;->b()V

    return-void
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/wn0;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/li1;->b:Lcom/google/android/gms/internal/ads/pv0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pv0;->c()V

    return-void
.end method
