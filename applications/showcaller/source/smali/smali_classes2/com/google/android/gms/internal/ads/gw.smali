.class final synthetic Lcom/google/android/gms/internal/ads/gw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jv2;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/iw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/iw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gw;->d:Lcom/google/android/gms/internal/ads/iw;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gw;->d:Lcom/google/android/gms/internal/ads/iw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iw;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
