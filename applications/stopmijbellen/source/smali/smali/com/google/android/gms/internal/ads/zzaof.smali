.class public final Lcom/google/android/gms/internal/ads/zzaof;
.super Lcom/google/android/gms/internal/ads/zzgkl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgkl<",
        "Lcom/google/android/gms/internal/ads/zzaof;",
        "Lcom/google/android/gms/internal/ads/zzaoe;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzglw;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzaof;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzaoi;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgjf;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgjf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaof;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaof;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaof;->zzb:Lcom/google/android/gms/internal/ads/zzaof;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaof;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgkl;->zzaK(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgkl;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgkl;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjf;->zzb:Lcom/google/android/gms/internal/ads/zzgjf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzg:Lcom/google/android/gms/internal/ads/zzgjf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzh:Lcom/google/android/gms/internal/ads/zzgjf;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/ads/zzaof;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaof;->zzb:Lcom/google/android/gms/internal/ads/zzaof;

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzgjf;Lcom/google/android/gms/internal/ads/zzgjx;)Lcom/google/android/gms/internal/ads/zzaof;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgkx;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaof;->zzb:Lcom/google/android/gms/internal/ads/zzaof;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgkl;->zzay(Lcom/google/android/gms/internal/ads/zzgkl;Lcom/google/android/gms/internal/ads/zzgjf;Lcom/google/android/gms/internal/ads/zzgjx;)Lcom/google/android/gms/internal/ads/zzgkl;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaof;

    return-object p0
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaof;->zzb:Lcom/google/android/gms/internal/ads/zzaof;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaoe;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaoe;-><init>(Lcom/google/android/gms/internal/ads/zzaod;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaof;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaof;-><init>()V

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

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzaof;->zzb:Lcom/google/android/gms/internal/ads/zzaof;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgkl;->zzaJ(Lcom/google/android/gms/internal/ads/zzglv;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzaoi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzf:Lcom/google/android/gms/internal/ads/zzaoi;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaoi;->zzg()Lcom/google/android/gms/internal/ads/zzaoi;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgjf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzh:Lcom/google/android/gms/internal/ads/zzgjf;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgjf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaof;->zzg:Lcom/google/android/gms/internal/ads/zzgjf;

    return-object v0
.end method
