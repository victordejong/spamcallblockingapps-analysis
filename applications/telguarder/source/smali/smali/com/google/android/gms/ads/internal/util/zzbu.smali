.class public final Lcom/google/android/gms/ads/internal/util/zzbu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# static fields
.field private static zzegv:Lcom/google/android/gms/ads/internal/util/zzbu;


# instance fields
.field zzegw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzzr()Lcom/google/android/gms/ads/internal/util/zzbu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbu;->zzegv:Lcom/google/android/gms/ads/internal/util/zzbu;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbu;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzbu;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzbu;->zzegv:Lcom/google/android/gms/ads/internal/util/zzbu;

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbu;->zzegv:Lcom/google/android/gms/ads/internal/util/zzbu;

    return-object v0
.end method
