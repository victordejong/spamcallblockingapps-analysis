.class final Lcom/google/android/gms/internal/ads/zztm;
.super Lcom/google/android/gms/internal/ads/zzbaa;
.source "com.google.android.gms:play-services-ads@@19.7.0"


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
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvu:Lcom/google/android/gms/internal/ads/zztn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvu:Lcom/google/android/gms/internal/ads/zztn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztn;->zza(Lcom/google/android/gms/internal/ads/zztn;)V

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbaa;->cancel(Z)Z

    move-result p1

    return p1
.end method
