.class public final Lcom/google/android/gms/internal/ads/zzbdw;
.super Lcom/google/android/gms/internal/ads/zzgkl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgkl<",
        "Lcom/google/android/gms/internal/ads/zzbdw;",
        "Lcom/google/android/gms/internal/ads/zzbdv;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzglw;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbdw;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbdw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdw;->zzb:Lcom/google/android/gms/internal/ads/zzbdw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgkl;->zzaK(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgkl;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgkl;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbdv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdw;->zzb:Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgkl;->zzat()Lcom/google/android/gms/internal/ads/zzgkh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdv;

    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zzbdw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdw;->zzb:Lcom/google/android/gms/internal/ads/zzbdw;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbdw;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdw;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdw;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdw;->zzf:I

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzbdw;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdw;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdw;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdw;->zzg:I

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzbdw;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdw;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdw;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdw;->zzh:I

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdw;->zzb:Lcom/google/android/gms/internal/ads/zzbdw;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdv;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbdv;-><init>(Lcom/google/android/gms/internal/ads/zzbbd;)V

    return-object p1

    .line 3
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbdw;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zze"

    aput-object v2, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbdw;->zzb:Lcom/google/android/gms/internal/ads/zzbdw;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgkl;->zzaJ(Lcom/google/android/gms/internal/ads/zzglv;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
