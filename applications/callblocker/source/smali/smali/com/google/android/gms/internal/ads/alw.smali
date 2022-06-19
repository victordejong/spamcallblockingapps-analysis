.class public final Lcom/google/android/gms/internal/ads/alw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dp;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dp;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/alw;->a:Lcom/google/android/gms/internal/ads/dp;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/alw;->b:Ljava/lang/Runnable;

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dp;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alw;->a:Lcom/google/android/gms/internal/ads/dp;

    return-object v0
.end method

.method public final b()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alw;->b:Ljava/lang/Runnable;

    return-object v0
.end method
