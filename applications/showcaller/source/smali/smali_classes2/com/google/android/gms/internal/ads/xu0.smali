.class final synthetic Lcom/google/android/gms/internal/ads/xu0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/yu0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xu0;->d:Lcom/google/android/gms/internal/ads/yu0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu0;->d:Lcom/google/android/gms/internal/ads/yu0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yu0;->a:Lcom/google/android/gms/internal/ads/zu0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zu0;->b(Lcom/google/android/gms/internal/ads/zu0;)Lcom/google/android/gms/internal/ads/ev0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ev0;->c()V

    return-void
.end method
