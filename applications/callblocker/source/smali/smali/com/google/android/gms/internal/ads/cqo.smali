.class final Lcom/google/android/gms/internal/ads/cqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cpb;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/cqn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cqn;Lcom/google/android/gms/internal/ads/cpb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqo;->b:Lcom/google/android/gms/internal/ads/cqn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cqo;->a:Lcom/google/android/gms/internal/ads/cpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqo;->b:Lcom/google/android/gms/internal/ads/cqn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqo;->a:Lcom/google/android/gms/internal/ads/cpb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cqn;->b(Lcom/google/android/gms/internal/ads/cqn;Lcom/google/android/gms/internal/ads/cpb;)V

    .line 3
    return-void
.end method
