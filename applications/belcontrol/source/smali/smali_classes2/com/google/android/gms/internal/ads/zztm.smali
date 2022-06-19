.class public final Lcom/google/android/gms/internal/ads/zztm;
.super Lcom/google/android/gms/internal/ads/zzbaa;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbaa<",
        "Lcom/google/android/gms/internal/ads/zztv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbvu:Lcom/google/android/gms/internal/ads/zztn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvu:Lcom/google/android/gms/internal/ads/zztn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvu:Lcom/google/android/gms/internal/ads/zztn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztn;->zza(Lcom/google/android/gms/internal/ads/zztn;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbaa;->cancel(Z)Z

    move-result p1

    return p1
.end method
