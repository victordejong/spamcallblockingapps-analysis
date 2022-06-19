.class public final Lcom/google/android/gms/internal/ads/bca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/internal/ads/ajk;

.field private final c:Lcom/google/android/gms/internal/ads/aup;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ajk;Lcom/google/android/gms/internal/ads/aup;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bca;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bca;->c:Lcom/google/android/gms/internal/ads/aup;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bca;->b:Lcom/google/android/gms/internal/ads/ajk;

    .line 5
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/act;)V
    .locals 3

    .prologue
    .line 6
    if-nez p1, :cond_0

    .line 15
    :goto_0
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bca;->c:Lcom/google/android/gms/internal/ads/aup;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aup;->a(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bca;->c:Lcom/google/android/gms/internal/ads/aup;

    new-instance v1, Lcom/google/android/gms/internal/ads/bcd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bcd;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bca;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bca;->c:Lcom/google/android/gms/internal/ads/aup;

    new-instance v1, Lcom/google/android/gms/internal/ads/bcc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bcc;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bca;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bca;->c:Lcom/google/android/gms/internal/ads/aup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bca;->b:Lcom/google/android/gms/internal/ads/ajk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bca;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bca;->b:Lcom/google/android/gms/internal/ads/ajk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ajk;->a(Lcom/google/android/gms/internal/ads/act;)V

    .line 13
    const-string/jumbo v0, "/trackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/internal/ads/bcg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bcg;-><init>(Lcom/google/android/gms/internal/ads/bca;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 14
    const-string/jumbo v0, "/untrackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/internal/ads/bcf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bcf;-><init>(Lcom/google/android/gms/internal/ads/bca;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    goto :goto_0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bca;->b:Lcom/google/android/gms/internal/ads/ajk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ajk;->a()V

    .line 17
    return-void
.end method

.method final synthetic b(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bca;->b:Lcom/google/android/gms/internal/ads/ajk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ajk;->b()V

    .line 19
    return-void
.end method
