.class public final Lcom/google/android/gms/internal/ads/zzaep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwp;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzww;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzfk;

.field private final zzc:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzaeo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfd;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaem;

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:J

.field private zzj:Lcom/google/android/gms/internal/ads/zzael;

.field private zzk:Lcom/google/android/gms/internal/ads/zzws;

.field private zzl:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaen;->zza:Lcom/google/android/gms/internal/ads/zzaen;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaep;->zza:Lcom/google/android/gms/internal/ads/zzww;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfk;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfk;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzb:Lcom/google/android/gms/internal/ads/zzfk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v1, 0x1000

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzc:Landroid/util/SparseArray;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaem;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaem;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zze:Lcom/google/android/gms/internal/ads/zzaem;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzxm;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzk:Lcom/google/android/gms/internal/ads/zzws;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzc()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zze:Lcom/google/android/gms/internal/ads/zzaem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaem;->zze()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zze:Lcom/google/android/gms/internal/ads/zzaem;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaem;->zza(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzxm;)I

    move-result p1

    return p1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzl:Z

    const/4 v11, 0x1

    if-nez v1, :cond_3

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzl:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zze:Lcom/google/android/gms/internal/ads/zzaem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaem;->zzb()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    new-instance v12, Lcom/google/android/gms/internal/ads/zzael;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zze:Lcom/google/android/gms/internal/ads/zzaem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaem;->zzd()Lcom/google/android/gms/internal/ads/zzfk;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zze:Lcom/google/android/gms/internal/ads/zzaem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaem;->zzb()J

    move-result-wide v3

    move-object v1, v12

    move-wide v5, v7

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzael;-><init>(Lcom/google/android/gms/internal/ads/zzfk;JJ)V

    iput-object v12, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzj:Lcom/google/android/gms/internal/ads/zzael;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzk:Lcom/google/android/gms/internal/ads/zzws;

    .line 6
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzwg;->zzb()Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzws;->zzL(Lcom/google/android/gms/internal/ads/zzxp;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzk:Lcom/google/android/gms/internal/ads/zzws;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzxo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaep;->zze:Lcom/google/android/gms/internal/ads/zzaem;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaem;->zzb()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzxo;-><init>(JJ)V

    .line 8
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzws;->zzL(Lcom/google/android/gms/internal/ads/zzxp;)V

    .line 9
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzj:Lcom/google/android/gms/internal/ads/zzael;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zze()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzj:Lcom/google/android/gms/internal/ads/zzael;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwg;->zza(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzxm;)I

    move-result p1

    return p1

    .line 12
    :cond_5
    :goto_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzj()V

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzd()J

    move-result-wide v0

    sub-long/2addr v7, v0

    goto :goto_3

    :cond_6
    move-wide v7, v9

    :goto_3
    const/4 p2, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x4

    cmp-long v2, v7, v0

    if-ltz v2, :cond_7

    goto :goto_4

    :cond_7
    return p2

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 13
    invoke-interface {p1, v0, v2, v1, v11}, Lcom/google/android/gms/internal/ads/zzwq;->zzm([BIIZ)Z

    move-result v0

    if-nez v0, :cond_9

    return p2

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    .line 14
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v0

    const/16 v1, 0x1b9

    if-ne v0, v1, :cond_a

    return p2

    :cond_a
    const/16 p2, 0x1ba

    if-ne v0, p2, :cond_b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwk;

    const/16 v0, 0xa

    .line 16
    invoke-virtual {p1, p2, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v0, 0x9

    .line 17
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 19
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    return v2

    :cond_b
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v3, 0x6

    if-ne v0, p2, :cond_c

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwk;

    .line 20
    invoke-virtual {p1, p2, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    .line 21
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result p2

    add-int/2addr p2, v3

    .line 23
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    return v2

    :cond_c
    shr-int/lit8 p2, v0, 0x8

    if-eq p2, v11, :cond_d

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwk;

    .line 24
    invoke-virtual {p1, v11, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    return v2

    :cond_d
    and-int/lit16 p2, v0, 0xff

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzc:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaeo;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzf:Z

    if-nez v4, :cond_13

    if-nez v0, :cond_11

    const/16 v4, 0xbd

    const/4 v5, 0x0

    if-ne p2, v4, :cond_e

    new-instance v4, Lcom/google/android/gms/internal/ads/zzadh;

    .line 26
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzadh;-><init>(Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzg:Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzi:J

    :goto_5
    move-object v5, v4

    goto :goto_6

    :cond_e
    and-int/lit16 v4, p2, 0xe0

    const/16 v6, 0xc0

    if-ne v4, v6, :cond_f

    .line 27
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaef;

    .line 28
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzg:Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzi:J

    goto :goto_5

    :cond_f
    and-int/lit16 v4, p2, 0xf0

    const/16 v6, 0xe0

    if-ne v4, v6, :cond_10

    .line 29
    new-instance v4, Lcom/google/android/gms/internal/ads/zzadt;

    .line 30
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzadt;-><init>(Lcom/google/android/gms/internal/ads/zzafg;)V

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzh:Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzi:J

    goto :goto_5

    :cond_10
    :goto_6
    if-eqz v5, :cond_11

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzafd;

    const/high16 v4, -0x80000000

    const/16 v6, 0x100

    .line 32
    invoke-direct {v0, v4, p2, v6}, Lcom/google/android/gms/internal/ads/zzafd;-><init>(III)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzk:Lcom/google/android/gms/internal/ads/zzws;

    .line 33
    invoke-interface {v5, v4, v0}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(Lcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzafd;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaeo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzb:Lcom/google/android/gms/internal/ads/zzfk;

    .line 34
    invoke-direct {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzaeo;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzfk;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzc:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v4, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzg:Z

    const-wide/32 v4, 0x100000

    if-eqz p2, :cond_12

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzh:Z

    if-eqz p2, :cond_12

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzi:J

    const-wide/16 v6, 0x2000

    add-long/2addr v4, v6

    :cond_12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v6

    cmp-long p2, v6, v4

    if-lez p2, :cond_13

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzf:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzk:Lcom/google/android/gms/internal/ads/zzws;

    .line 36
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzws;->zzB()V

    :cond_13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwk;

    .line 37
    invoke-virtual {p1, p2, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    .line 38
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    .line 39
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result p2

    add-int/2addr p2, v3

    if-nez v0, :cond_14

    .line 40
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    goto :goto_7

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    .line 41
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfd;->zzC(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v1

    .line 42
    invoke-virtual {p1, v1, v2, p2, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    .line 43
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    .line 44
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaeo;->zza(Lcom/google/android/gms/internal/ads/zzfd;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzd:Lcom/google/android/gms/internal/ads/zzfd;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzb()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfd;->zzE(I)V

    :goto_7
    return v2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzws;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzk:Lcom/google/android/gms/internal/ads/zzws;

    return-void
.end method

.method public final zzc(JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzb:Lcom/google/android/gms/internal/ads/zzfk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfk;->zze()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzb:Lcom/google/android/gms/internal/ads/zzfk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfk;->zzc()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzb:Lcom/google/android/gms/internal/ads/zzfk;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfk;->zzf(J)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzj:Lcom/google/android/gms/internal/ads/zzael;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzwg;->zzd(J)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzc:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p2, p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaep;->zzc:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaeo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaeo;->zzb()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzwq;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwk;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v0, v7, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 2
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzl(IZ)Z

    .line 3
    invoke-virtual {p1, v1, v2, v5, v2}, Lcom/google/android/gms/internal/ads/zzwk;->zzm([BIIZ)Z

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne p1, v3, :cond_6

    return v3

    :cond_6
    return v2
.end method
