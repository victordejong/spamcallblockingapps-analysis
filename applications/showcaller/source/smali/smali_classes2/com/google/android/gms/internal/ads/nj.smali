.class final synthetic Lcom/google/android/gms/internal/ads/nj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/rj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nj;->d:Lcom/google/android/gms/internal/ads/rj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nj;->d:Lcom/google/android/gms/internal/ads/rj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rj;->g()V

    return-void
.end method
