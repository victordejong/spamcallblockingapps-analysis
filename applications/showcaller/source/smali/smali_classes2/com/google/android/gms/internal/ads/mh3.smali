.class public final Lcom/google/android/gms/internal/ads/mh3;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/mh3;",
        "Lcom/google/android/gms/internal/ads/lh3;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/ads/mh3;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgex;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgex;

.field private zzg:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/mh3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mh3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/mh3;->zzh:Lcom/google/android/gms/internal/ads/mh3;

    const-class v1, Lcom/google/android/gms/internal/ads/mh3;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ie3;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ie3;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/mh3;->zzg:B

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgex;->d:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mh3;->zze:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mh3;->zzf:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method public static C()Lcom/google/android/gms/internal/ads/lh3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/mh3;->zzh:Lcom/google/android/gms/internal/ads/mh3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->v()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lh3;

    return-object v0
.end method

.method static synthetic D()Lcom/google/android/gms/internal/ads/mh3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/mh3;->zzh:Lcom/google/android/gms/internal/ads/mh3;

    return-object v0
.end method

.method static synthetic E(Lcom/google/android/gms/internal/ads/mh3;Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/mh3;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/mh3;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mh3;->zze:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method static synthetic F(Lcom/google/android/gms/internal/ads/mh3;Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/mh3;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/mh3;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mh3;->zzf:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/ads/mh3;->zzg:B

    return-object v2

    .line 2
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/mh3;->zzh:Lcom/google/android/gms/internal/ads/mh3;

    return-object p1

    .line 3
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/lh3;

    .line 4
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/lh3;-><init>(Lcom/google/android/gms/internal/ads/gh3;)V

    return-object p1

    .line 5
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/mh3;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/mh3;-><init>()V

    return-object p1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zze"

    aput-object p2, p1, p3

    const-string p2, "zzf"

    aput-object p2, p1, v2

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/mh3;->zzh:Lcom/google/android/gms/internal/ads/mh3;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u150a\u0000\u0002\u100a\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/mh3;->zzg:B

    .line 8
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
