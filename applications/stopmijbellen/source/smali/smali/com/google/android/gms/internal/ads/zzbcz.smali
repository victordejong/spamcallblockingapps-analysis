.class public final Lcom/google/android/gms/internal/ads/zzbcz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgko;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgko<",
            "Lcom/google/android/gms/internal/ads/zzbcz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcz;->zza:Lcom/google/android/gms/internal/ads/zzgko;

    return-void
.end method

.method public static zza(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method
