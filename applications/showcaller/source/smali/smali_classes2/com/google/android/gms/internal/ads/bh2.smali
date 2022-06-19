.class final synthetic Lcom/google/android/gms/internal/ads/bh2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/fh2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fh2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bh2;->d:Lcom/google/android/gms/internal/ads/fh2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bh2;->d:Lcom/google/android/gms/internal/ads/fh2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fh2;->c:Lcom/google/android/gms/internal/ads/gh2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gh2;->d(Lcom/google/android/gms/internal/ads/gh2;)Lcom/google/android/gms/internal/ads/a42;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a42;->d()V

    return-void
.end method
