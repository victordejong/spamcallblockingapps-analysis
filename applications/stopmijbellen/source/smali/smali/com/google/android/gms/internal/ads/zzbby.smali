.class public final Lcom/google/android/gms/internal/ads/zzbby;
.super Lcom/google/android/gms/internal/ads/zzgkl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgkl<",
        "Lcom/google/android/gms/internal/ads/zzbby;",
        "Lcom/google/android/gms/internal/ads/zzbbx;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzglw;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbby;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzbbw;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbby;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbby;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbby;->zzb:Lcom/google/android/gms/internal/ads/zzbby;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbby;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgkl;->zzaK(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgkl;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgkl;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkl;->zzaE()Lcom/google/android/gms/internal/ads/zzgku;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzg:Lcom/google/android/gms/internal/ads/zzgku;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/ads/zzbby;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbby;->zzb:Lcom/google/android/gms/internal/ads/zzbby;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbby;->zzb:Lcom/google/android/gms/internal/ads/zzbby;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbx;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbbx;-><init>(Lcom/google/android/gms/internal/ads/zzbbd;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbby;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbby;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    .line 6
    const-class p2, Lcom/google/android/gms/internal/ads/zzbbw;

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcj;->zza:Lcom/google/android/gms/internal/ads/zzgkp;

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbby;->zzb:Lcom/google/android/gms/internal/ads/zzbby;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u100c\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgkl;->zzaJ(Lcom/google/android/gms/internal/ads/zzglv;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
