.class final synthetic Lcom/google/android/gms/internal/ads/zzedk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# static fields
.field static final synthetic zzidt:[I

.field static final synthetic zzidu:[I

.field static final synthetic zzidv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefe;->values()[Lcom/google/android/gms/internal/ads/zzefe;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedk;->zzidv:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzefe;->zzifd:Lcom/google/android/gms/internal/ads/zzefe;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzefe;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzedk;->zzidv:[I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzefe;->zziff:Lcom/google/android/gms/internal/ads/zzefe;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzefe;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzedk;->zzidv:[I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzefe;->zzife:Lcom/google/android/gms/internal/ads/zzefe;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefe;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2
    :catch_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefs;->values()[Lcom/google/android/gms/internal/ads/zzefs;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/gms/internal/ads/zzedk;->zzidu:[I

    :try_start_3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzefs;->zziga:Lcom/google/android/gms/internal/ads/zzefs;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefs;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzedk;->zzidu:[I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzefs;->zzigb:Lcom/google/android/gms/internal/ads/zzefs;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefs;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzedk;->zzidu:[I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzefs;->zzigc:Lcom/google/android/gms/internal/ads/zzefs;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzefs;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 3
    :catch_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeft;->values()[Lcom/google/android/gms/internal/ads/zzeft;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/gms/internal/ads/zzedk;->zzidt:[I

    :try_start_6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzeft;->zzigh:Lcom/google/android/gms/internal/ads/zzeft;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeft;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzedk;->zzidt:[I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzeft;->zzigj:Lcom/google/android/gms/internal/ads/zzeft;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeft;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedk;->zzidt:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeft;->zzigk:Lcom/google/android/gms/internal/ads/zzeft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeft;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
