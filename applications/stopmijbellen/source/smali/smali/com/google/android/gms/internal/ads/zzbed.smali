.class public final Lcom/google/android/gms/internal/ads/zzbed;
.super Lcom/google/android/gms/internal/ads/zzgkl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzglw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgkl<",
        "Lcom/google/android/gms/internal/ads/zzbed;",
        "Lcom/google/android/gms/internal/ads/zzbeb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzglw;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbed;


# instance fields
.field private zze:I

.field private zzf:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbed;->zzb:Lcom/google/android/gms/internal/ads/zzbed;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgkl;->zzaK(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgkl;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgkl;-><init>()V

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/ads/zzbed;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbed;->zzb:Lcom/google/android/gms/internal/ads/zzbed;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbed;->zzb:Lcom/google/android/gms/internal/ads/zzbed;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbeb;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbeb;-><init>(Lcom/google/android/gms/internal/ads/zzbbd;)V

    return-object p1

    .line 3
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbed;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zze"

    aput-object v1, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbec;->zza:Lcom/google/android/gms/internal/ads/zzgkp;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbed;->zzb:Lcom/google/android/gms/internal/ads/zzbed;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgkl;->zzaJ(Lcom/google/android/gms/internal/ads/zzglv;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
