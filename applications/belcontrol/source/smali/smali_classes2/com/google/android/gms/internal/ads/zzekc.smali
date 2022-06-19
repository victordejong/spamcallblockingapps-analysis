.class public abstract Lcom/google/android/gms/internal/ads/zzekc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public zziml:I

.field public zzimm:I

.field public zzimn:I

.field public zzimo:Lcom/google/android/gms/internal/ads/zzekj;

.field private zzimp:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekc;->zzimm:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzekc;->zzimn:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzekc;->zzimp:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzekf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekc;-><init>()V

    return-void
.end method

.method public static zzb([BIIZ)Lcom/google/android/gms/internal/ads/zzekc;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeke;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeke;-><init>([BIIZLcom/google/android/gms/internal/ads/zzekf;)V

    :try_start_0
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/zzekc;->zzgf(I)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzelo; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static zzfg(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzgh(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract readDouble()D
.end method

.method public abstract readFloat()F
.end method

.method public abstract readString()Ljava/lang/String;
.end method

.method public abstract zzbgs()I
.end method

.method public abstract zzbgt()J
.end method

.method public abstract zzbgu()J
.end method

.method public abstract zzbgv()I
.end method

.method public abstract zzbgw()J
.end method

.method public abstract zzbgx()I
.end method

.method public abstract zzbgy()Z
.end method

.method public abstract zzbgz()Ljava/lang/String;
.end method

.method public abstract zzbha()Lcom/google/android/gms/internal/ads/zzejr;
.end method

.method public abstract zzbhb()I
.end method

.method public abstract zzbhc()I
.end method

.method public abstract zzbhd()I
.end method

.method public abstract zzbhe()J
.end method

.method public abstract zzbhf()I
.end method

.method public abstract zzbhg()J
.end method

.method public abstract zzbhh()J
.end method

.method public abstract zzbhi()Z
.end method

.method public abstract zzbhj()I
.end method

.method public abstract zzgd(I)V
.end method

.method public abstract zzge(I)Z
.end method

.method public abstract zzgf(I)I
.end method

.method public abstract zzgg(I)V
.end method
