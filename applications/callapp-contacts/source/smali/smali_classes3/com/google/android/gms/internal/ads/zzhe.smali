.class public final Lcom/google/android/gms/internal/ads/zzhe;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhe;->a:I

    .line 6
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzhe;->b:I

    return-void
.end method

.method public static a(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/zzhe;
    .locals 4

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzhe;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzhe;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzhe;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method static a(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzhe;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzhe;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method
