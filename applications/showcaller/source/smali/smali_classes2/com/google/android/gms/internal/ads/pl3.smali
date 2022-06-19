.class final synthetic Lcom/google/android/gms/internal/ads/pl3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cl3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/br3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/br3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pl3;->a:Lcom/google/android/gms/internal/ads/br3;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/dl3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pl3;->a:Lcom/google/android/gms/internal/ads/br3;

    new-instance v1, Lcom/google/android/gms/internal/ads/ai3;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ai3;-><init>(Lcom/google/android/gms/internal/ads/br3;)V

    return-object v1
.end method
