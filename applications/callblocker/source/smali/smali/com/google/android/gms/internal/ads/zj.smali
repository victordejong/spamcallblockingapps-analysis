.class final Lcom/google/android/gms/internal/ads/zj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/za;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/za;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zj;->a:Lcom/google/android/gms/internal/ads/za;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zj;->a:Lcom/google/android/gms/internal/ads/za;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->a(Lcom/google/android/gms/internal/ads/za;)Lcom/google/android/gms/internal/ads/zl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zj;->a:Lcom/google/android/gms/internal/ads/za;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->a(Lcom/google/android/gms/internal/ads/za;)Lcom/google/android/gms/internal/ads/zl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zl;->c()V

    .line 4
    :cond_0
    return-void
.end method
