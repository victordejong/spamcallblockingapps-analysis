.class public final Lcom/google/android/gms/internal/ads/y14;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/y14;",
        "Lcom/google/android/gms/internal/ads/x14;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/ads/y14;


# instance fields
.field private zzb:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/y14;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/y14;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/y14;->zzl:Lcom/google/android/gms/internal/ads/y14;

    const-class v1, Lcom/google/android/gms/internal/ads/y14;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ie3;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ie3;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/y14;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzi:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzk:J

    return-void
.end method

.method public static C()Lcom/google/android/gms/internal/ads/x14;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/y14;->zzl:Lcom/google/android/gms/internal/ads/y14;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->v()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/x14;

    return-object v0
.end method

.method static synthetic D()Lcom/google/android/gms/internal/ads/y14;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/y14;->zzl:Lcom/google/android/gms/internal/ads/y14;

    return-object v0
.end method

.method static synthetic E(Lcom/google/android/gms/internal/ads/y14;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/y14;->zzg:J

    return-void
.end method

.method static synthetic F(Lcom/google/android/gms/internal/ads/y14;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/y14;->zzh:J

    return-void
.end method

.method static synthetic G(Lcom/google/android/gms/internal/ads/y14;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/y14;->zzi:J

    return-void
.end method

.method static synthetic H(Lcom/google/android/gms/internal/ads/y14;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/y14;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/y14;->zzj:J

    return-void
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/y14;->zzl:Lcom/google/android/gms/internal/ads/y14;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/x14;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/x14;-><init>(Lcom/google/android/gms/internal/ads/i14;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/y14;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/y14;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x8

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

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzk"

    aput-object p3, p1, p2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/y14;->zzl:Lcom/google/android/gms/internal/ads/y14;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1002\u0006"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
