.class public final Lcom/google/android/gms/internal/ads/zzgcf;
.super Lcom/google/android/gms/internal/ads/zzgkl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgkl<",
        "Lcom/google/android/gms/internal/ads/zzgcf;",
        "Lcom/google/android/gms/internal/ads/zzgce;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzglw;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgcf;


# instance fields
.field private zze:Lcom/google/android/gms/internal/ads/zzgcl;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgez;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgcf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcf;->zzb:Lcom/google/android/gms/internal/ads/zzgcf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgkl;->zzaK(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgkl;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgkl;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgce;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcf;->zzb:Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgkl;->zzat()Lcom/google/android/gms/internal/ads/zzgkh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgce;

    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zzgcf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcf;->zzb:Lcom/google/android/gms/internal/ads/zzgcf;

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzgjf;Lcom/google/android/gms/internal/ads/zzgjx;)Lcom/google/android/gms/internal/ads/zzgcf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgkx;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcf;->zzb:Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgkl;->zzay(Lcom/google/android/gms/internal/ads/zzgkl;Lcom/google/android/gms/internal/ads/zzgjf;Lcom/google/android/gms/internal/ads/zzgjx;)Lcom/google/android/gms/internal/ads/zzgkl;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgcf;

    return-object p0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzgcf;Lcom/google/android/gms/internal/ads/zzgcl;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zze:Lcom/google/android/gms/internal/ads/zzgcl;

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzgcf;Lcom/google/android/gms/internal/ads/zzgez;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzf:Lcom/google/android/gms/internal/ads/zzgez;

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgcf;->zzb:Lcom/google/android/gms/internal/ads/zzgcf;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgce;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgce;-><init>(Lcom/google/android/gms/internal/ads/zzgcd;)V

    return-object p1

    .line 3
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgcf;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgcf;->zzb:Lcom/google/android/gms/internal/ads/zzgcf;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgkl;->zzaJ(Lcom/google/android/gms/internal/ads/zzglv;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgcl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zze:Lcom/google/android/gms/internal/ads/zzgcl;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgcl;->zze()Lcom/google/android/gms/internal/ads/zzgcl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgez;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcf;->zzf:Lcom/google/android/gms/internal/ads/zzgez;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgez;->zze()Lcom/google/android/gms/internal/ads/zzgez;

    move-result-object v0

    :cond_0
    return-object v0
.end method
