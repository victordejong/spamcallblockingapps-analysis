.class final Lcom/google/android/gms/internal/ads/zzciq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcir;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcis;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcip;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcip;-><init>(Lcom/google/android/gms/internal/ads/zzciq;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
