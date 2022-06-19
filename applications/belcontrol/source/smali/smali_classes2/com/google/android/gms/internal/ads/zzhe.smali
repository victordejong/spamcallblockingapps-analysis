.class public final Lcom/google/android/gms/internal/ads/zzhe;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field private final type:I

.field private final zzaej:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->type:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzhe;->zzaej:I

    return-void
.end method

.method public static zza(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/zzhe;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzhe;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzhe;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzhe;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static zza(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzhe;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzhe;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method
