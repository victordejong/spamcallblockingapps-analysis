.class final synthetic Lcom/google/android/gms/internal/ads/bqw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aee;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bev;

.field private final b:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bev;Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqw;->a:Lcom/google/android/gms/internal/ads/bev;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqw;->b:Lcom/google/android/gms/internal/ads/act;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqw;->a:Lcom/google/android/gms/internal/ads/bev;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqw;->b:Lcom/google/android/gms/internal/ads/act;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bev;->a()V

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->p()V

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aef;->g()V

    .line 5
    return-void
.end method
