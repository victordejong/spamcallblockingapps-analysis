.class public final Lcom/google/android/gms/internal/ads/zzuw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzelj<",
        "Ljava/lang/Integer;",
        "Lcom/google/android/gms/internal/ads/zzug$zzc$zza;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcb(I)Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzc$zza;->zzcab:Lcom/google/android/gms/internal/ads/zzug$zzc$zza;

    :cond_0
    return-object p1
.end method
