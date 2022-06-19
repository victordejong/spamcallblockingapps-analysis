.class public final Lcom/google/android/gms/internal/ads/zzehu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeau;


# static fields
.field private static final zzidb:[B


# instance fields
.field private final zzijj:Ljava/lang/String;

.field private final zzijk:[B

.field private final zzijl:Lcom/google/android/gms/internal/ads/zzeic;

.field private final zzijm:Lcom/google/android/gms/internal/ads/zzehr;

.field private final zzijn:Ljava/security/interfaces/ECPrivateKey;

.field private final zzijo:Lcom/google/android/gms/internal/ads/zzehw;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzehu;->zzidb:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzeic;Lcom/google/android/gms/internal/ads/zzehr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzijn:Ljava/security/interfaces/ECPrivateKey;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzehw;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzijo:Lcom/google/android/gms/internal/ads/zzehw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzijk:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzijj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzijl:Lcom/google/android/gms/internal/ads/zzeic;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehu;->zzijm:Lcom/google/android/gms/internal/ads/zzehr;

    return-void
.end method
