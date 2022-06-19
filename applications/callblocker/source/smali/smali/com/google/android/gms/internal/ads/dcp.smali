.class final synthetic Lcom/google/android/gms/internal/ads/dcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/ddh;->values()[Lcom/google/android/gms/internal/ads/ddh;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/dcp;->b:[I

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dcp;->b:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/ddh;->h:Lcom/google/android/gms/internal/ads/ddh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ddh;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dcp;->b:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/ddh;->j:Lcom/google/android/gms/internal/ads/ddh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ddh;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/ads/dcp;->b:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/ddh;->g:Lcom/google/android/gms/internal/ads/ddh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ddh;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 2
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dct;->values()[Lcom/google/android/gms/internal/ads/dct;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/dcp;->a:[I

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dcp;->a:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/dct;->d:Lcom/google/android/gms/internal/ads/dct;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dct;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dcp;->a:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/dct;->b:Lcom/google/android/gms/internal/ads/dct;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dct;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/ads/dcp;->a:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/dct;->a:Lcom/google/android/gms/internal/ads/dct;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dct;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
