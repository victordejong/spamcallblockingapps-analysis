.class public final enum Lcom/google/android/gms/internal/ads/zzfgh;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzfgh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum e:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum f:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum g:Lcom/google/android/gms/internal/ads/zzfgh;

.field public static final enum h:Lcom/google/android/gms/internal/ads/zzfgh;

.field private static final synthetic i:[Lcom/google/android/gms/internal/ads/zzfgh;


# instance fields
.field private final zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgh;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const/4 v2, 0x0

    const-string v3, "definedByJavaScript"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->d:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgh;

    const-string v3, "HTML_DISPLAY"

    const/4 v4, 0x1

    const-string v5, "htmlDisplay"

    .line 2
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfgh;->e:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfgh;

    const-string v5, "NATIVE_DISPLAY"

    const/4 v6, 0x2

    const-string v7, "nativeDisplay"

    .line 3
    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzfgh;->f:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfgh;

    const-string v7, "VIDEO"

    const/4 v8, 0x3

    const-string v9, "video"

    .line 4
    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzfgh;->g:Lcom/google/android/gms/internal/ads/zzfgh;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfgh;

    const-string v9, "AUDIO"

    const/4 v10, 0x4

    const-string v11, "audio"

    .line 5
    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzfgh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzfgh;->h:Lcom/google/android/gms/internal/ads/zzfgh;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/ads/zzfgh;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/gms/internal/ads/zzfgh;->i:[Lcom/google/android/gms/internal/ads/zzfgh;

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

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfgh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgh;->i:[Lcom/google/android/gms/internal/ads/zzfgh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfgh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfgh;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zzf:Ljava/lang/String;

    return-object v0
.end method
