.class public final Lcom/google/android/gms/internal/ads/zzalo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbae<",
        "Lcom/google/android/gms/internal/ads/zzalx;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdkf:Lcom/google/android/gms/internal/ads/zzalm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzalm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzdkf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzg(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalx;

    const-string p1, "Releasing engine reference."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzdkf:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzalm;->zza(Lcom/google/android/gms/internal/ads/zzalm;)Lcom/google/android/gms/internal/ads/zzalq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalq;->zzun()V

    return-void
.end method
