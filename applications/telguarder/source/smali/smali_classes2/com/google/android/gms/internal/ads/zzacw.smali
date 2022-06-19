.class final synthetic Lcom/google/android/gms/internal/ads/zzacw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# static fields
.field static final synthetic zzdcg:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzacz;->zztb()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacw;->zzdcg:[I

    const/4 v1, 0x1

    :try_start_0
    sget v2, Lcom/google/android/gms/internal/ads/zzacz;->zzdci:I

    sub-int/2addr v2, v1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacw;->zzdcg:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzacz;->zzdcj:I

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacw;->zzdcg:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzacz;->zzdck:I

    sub-int/2addr v2, v1

    const/4 v3, 0x3

    aput v3, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacw;->zzdcg:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzacz;->zzdcl:I

    sub-int/2addr v2, v1

    const/4 v1, 0x4

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
