.class public abstract Lcom/google/android/gms/internal/ads/zzdxg;
.super Lcom/google/android/gms/internal/ads/zzdwy;
.source "com.google.android.gms:play-services-gass@@19.7.0"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdwy<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient zzhxt:Lcom/google/android/gms/internal/ads/zzdxd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxd<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwy;-><init>()V

    return-void
.end method

.method private static varargs zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdxg;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdxg<",
            "TE;>;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdxg;->zzer(I)I

    move-result v2

    .line 18
    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v3, p0, :cond_2

    .line 23
    aget-object v4, p1, v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzdxo;->zzd(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 25
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdwz;->zzep(I)I

    move-result v10

    :goto_2
    and-int v11, v10, v7

    .line 27
    aget-object v12, v6, v11

    if-nez v12, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 29
    aput-object v4, p1, v8

    .line 30
    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_3

    .line 33
    :cond_0
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 36
    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_3

    .line 38
    aget-object p0, p1, v0

    .line 39
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {p1, p0, v5}, Lcom/google/android/gms/internal/ads/zzdxz;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 40
    :cond_3
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzdxg;->zzer(I)I

    move-result p0

    div-int/lit8 v2, v2, 0x2

    if-ge p0, v2, :cond_4

    move p0, v8

    goto :goto_0

    .line 42
    :cond_4
    array-length p0, p1

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdxg;->zzw(II)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_5
    move-object v4, p1

    .line 43
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdxx;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzdxx;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    .line 15
    :cond_6
    aget-object p0, p1, v0

    .line 16
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdxg;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdxg;

    move-result-object p0

    return-object p0

    .line 13
    :cond_7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzhyn:Lcom/google/android/gms/internal/ads/zzdxx;

    return-object p0
.end method

.method public static varargs zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdxg;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/android/gms/internal/ads/zzdxg<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    array-length v0, p6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7ffffff9

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "the total number of elements must fit in an int"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzdwl;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    array-length v0, p6

    const/4 v3, 0x6

    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/Object;

    .line 4
    aput-object p0, v4, v2

    .line 5
    aput-object p1, v4, v1

    const/4 p0, 0x2

    .line 6
    aput-object p2, v4, p0

    const/4 p0, 0x3

    .line 7
    aput-object p3, v4, p0

    const/4 p0, 0x4

    .line 8
    aput-object p4, v4, p0

    const/4 p0, 0x5

    .line 9
    aput-object p5, v4, p0

    .line 10
    array-length p0, p6

    invoke-static {p6, v2, v4, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzdxg;->zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdxg;

    move-result-object p0

    return-object p0
.end method

.method public static zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdxg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/ads/zzdxg<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdxz;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic zzb(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdxg;
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdxg;->zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdxg;

    move-result-object p0

    return-object p0
.end method

.method static zzer(I)I
    .locals 6

    const/4 v0, 0x2

    .line 45
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x1

    const v1, 0x2ccccccc

    if-ge p0, v1, :cond_1

    add-int/lit8 v1, p0, -0x1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string p0, "collection too large"

    .line 51
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwl;->checkArgument(ZLjava/lang/Object;)V

    return v1
.end method

.method public static zzes(I)Lcom/google/android/gms/internal/ads/zzdxj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/android/gms/internal/ads/zzdxj<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "expectedSize"

    .line 67
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwx;->zzh(ILjava/lang/String;)I

    .line 68
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdxj;-><init>(I)V

    return-object v0
.end method

.method private static zzw(II)Z
    .locals 1

    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzx(II)Z
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdxg;->zzw(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 57
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzdxg;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxg;->zzazn()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxg;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxg;->zzazn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxg;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 62
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdxw;->zza(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 63
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdxw;->zzg(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwy;->zzazg()Lcom/google/android/gms/internal/ads/zzdya;

    move-result-object v0

    return-object v0
.end method

.method public zzazk()Lcom/google/android/gms/internal/ads/zzdxd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdxd<",
            "TE;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxg;->zzhxt:Lcom/google/android/gms/internal/ads/zzdxd;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxg;->zzazo()Lcom/google/android/gms/internal/ads/zzdxd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxg;->zzhxt:Lcom/google/android/gms/internal/ads/zzdxd;

    :cond_0
    return-object v0
.end method

.method zzazn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method zzazo()Lcom/google/android/gms/internal/ads/zzdxd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdxd<",
            "TE;>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwy;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxd;->zzc([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdxd;

    move-result-object v0

    return-object v0
.end method
