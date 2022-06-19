.class public final enum Lcom/google/android/gms/internal/ads/zzbzl;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbzl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/google/android/gms/internal/ads/zzbzl;

.field public static final enum e:Lcom/google/android/gms/internal/ads/zzbzl;

.field public static final enum f:Lcom/google/android/gms/internal/ads/zzbzl;

.field private static final synthetic g:[Lcom/google/android/gms/internal/ads/zzbzl;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzl;

    const-string v1, "HTML_DISPLAY"

    const/4 v2, 0x0

    const-string v3, "htmlDisplay"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbzl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbzl;->d:Lcom/google/android/gms/internal/ads/zzbzl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzl;

    const-string v3, "NATIVE_DISPLAY"

    const/4 v4, 0x1

    const-string v5, "nativeDisplay"

    .line 2
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbzl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbzl;->e:Lcom/google/android/gms/internal/ads/zzbzl;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbzl;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    const-string v7, "video"

    .line 3
    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbzl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzbzl;->f:Lcom/google/android/gms/internal/ads/zzbzl;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzbzl;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzbzl;->g:[Lcom/google/android/gms/internal/ads/zzbzl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbzl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzl;->g:[Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbzl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbzl;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzd:Ljava/lang/String;

    return-object v0
.end method
