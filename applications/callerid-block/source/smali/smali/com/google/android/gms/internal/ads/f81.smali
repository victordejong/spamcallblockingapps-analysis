.class public final Lcom/google/android/gms/internal/ads/f81;
.super Lcom/google/android/gms/internal/ads/oc2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/oc2<",
        "Lcom/google/android/gms/internal/ads/f81;",
        "Lcom/google/android/gms/internal/ads/e71;",
        ">;",
        "Lcom/google/android/gms/internal/ads/rd2;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/ads/f81;


# instance fields
.field private zzb:I

.field private zze:J

.field private zzf:I

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/sc2;

.field private zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/f81;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/f81;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/f81;->zzj:Lcom/google/android/gms/internal/ads/f81;

    const-class v1, Lcom/google/android/gms/internal/ads/f81;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/oc2;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/oc2;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oc2;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/oc2;->l()Lcom/google/android/gms/internal/ads/sc2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f81;->zzh:Lcom/google/android/gms/internal/ads/sc2;

    return-void
.end method

.method static synthetic E()Lcom/google/android/gms/internal/ads/f81;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/f81;->zzj:Lcom/google/android/gms/internal/ads/f81;

    return-object v0
.end method


# virtual methods
.method protected final D(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/f81;->zzj:Lcom/google/android/gms/internal/ads/f81;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/e71;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/e71;-><init>(Lcom/google/android/gms/internal/ads/zp0;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/f81;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/f81;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/ads/f81;->zzj:Lcom/google/android/gms/internal/ads/f81;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u1004\u0001\u0003\u1007\u0002\u0004\u0016\u0005\u1003\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/oc2;->B(Lcom/google/android/gms/internal/ads/qd2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
