.class public final synthetic Lcom/google/android/gms/internal/ads/zzamq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbac;


# instance fields
.field private final zzbwd:Lcom/google/android/gms/internal/ads/zzbaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzbwd:Lcom/google/android/gms/internal/ads/zzbaa;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamq;->zzbwd:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaly;

    const-string v2, "Cannot get Javascript Engine"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaly;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
