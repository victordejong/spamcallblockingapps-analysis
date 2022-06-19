.class public final Lcom/google/android/gms/internal/ads/zzaca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwp;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzww;

.field private static final zzb:[B

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzab;


# instance fields
.field private zzA:I

.field private zzB:I

.field private zzC:Z

.field private zzD:Lcom/google/android/gms/internal/ads/zzws;

.field private zzE:[Lcom/google/android/gms/internal/ads/zzxt;

.field private zzF:[Lcom/google/android/gms/internal/ads/zzxt;

.field private zzG:Z

.field private final zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzab;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzabz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfd;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfd;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfd;

.field private final zzi:[B

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfd;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzyx;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzfd;

.field private final zzm:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzabl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzn:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/zzaby;",
            ">;"
        }
    .end annotation
.end field

.field private zzo:I

.field private zzp:I

.field private zzq:J

.field private zzr:I

.field private zzs:Lcom/google/android/gms/internal/ads/zzfd;

.field private zzt:J

.field private zzu:I

.field private zzv:J

.field private zzw:J

.field private zzx:J

.field private zzy:Lcom/google/android/gms/internal/ads/zzabz;

.field private zzz:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabw;->zza:Lcom/google/android/gms/internal/ads/zzabw;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaca;->zza:Lcom/google/android/gms/internal/ads/zzww;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaca;->zzb:[B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    const-string v1, "application/x-emsg"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaca;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaca;-><init>(ILcom/google/android/gms/internal/ads/zzfk;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzfk;)V
    .locals 1

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzd:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzyx;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzyx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzk:Lcom/google/android/gms/internal/ads/zzyx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfd;

    const/16 p2, 0x10

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzl:Lcom/google/android/gms/internal/ads/zzfd;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfd;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzf:Lcom/google/android/gms/internal/ads/zzfd;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v0, 0x5

    .line 7
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzg:Lcom/google/android/gms/internal/ads/zzfd;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfd;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzh:Lcom/google/android/gms/internal/ads/zzfd;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzi:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfd;

    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfd;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzj:Lcom/google/android/gms/internal/ads/zzfd;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzn:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzw:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzv:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzx:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzws;->zza:Lcom/google/android/gms/internal/ads/zzws;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzD:Lcom/google/android/gms/internal/ads/zzws;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzxt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzE:[Lcom/google/android/gms/internal/ads/zzxt;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzxt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzF:[Lcom/google/android/gms/internal/ads/zzxt;

    return-void
.end method

.method private static zze(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbj;
        }
    .end annotation

    if-ltz p0, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object p0

    throw p0
.end method

.method private static zzf(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzabm;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzs;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzabm;

    .line 3
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzabn;->zzd:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v4

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzach;->zza([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 7
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzr;

    const-string v7, "video/mp4"

    .line 8
    invoke-direct {v6, v5, v1, v7, v4}, Lcom/google/android/gms/internal/ads/zzr;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 9
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzs;

    .line 10
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzs;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private final zzg()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzr:I

    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzfd;ILcom/google/android/gms/internal/ads/zzacm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbj;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzacm;->zzm:[Z

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzacm;->zze:I

    .line 4
    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzacm;->zze:I

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzacm;->zzm:[Z

    .line 6
    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result p1

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzb(I)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzacm;->zzo:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzacm;->zzo:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result v1

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzacm;->zzo:Lcom/google/android/gms/internal/ads/zzfd;

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzacm;->zzp:Z

    return-void

    :cond_2
    const/16 p0, 0x50

    const-string p1, "Senc sample count "

    const-string p2, " is different from fragment sample count"

    .line 10
    invoke-static {p0, p1, v1, p2, v2}, Landroid/support/v4/media/b;->e(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 11
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object p0

    throw p0
.end method

.method private final zzi(J)V
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbj;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzabl;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzabl;->zza:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_4b

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzabl;

    .line 3
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzabn;->zzd:I

    const v4, 0x6d6f6f76

    const/16 v5, 0xc

    if-ne v2, v4, :cond_8

    .line 4
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaca;->zzf(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v7

    const v2, 0x6d766578

    .line 5
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zza(I)Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v11, Landroid/util/SparseArray;

    .line 8
    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Ljava/util/List;

    .line 9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_4

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Ljava/util/List;

    .line 10
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzabm;

    .line 11
    iget v13, v12, Lcom/google/android/gms/internal/ads/zzabn;->zzd:I

    const v14, 0x74726578

    if-ne v13, v14, :cond_1

    .line 12
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 13
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 14
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v5

    .line 15
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v13

    .line 16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v14

    .line 17
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v15

    .line 18
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v12

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzabv;

    add-int/lit8 v13, v13, -0x1

    invoke-direct {v6, v13, v14, v15, v12}, Lcom/google/android/gms/internal/ads/zzabv;-><init>(IIII)V

    .line 20
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 21
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzabv;

    invoke-virtual {v11, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const v5, 0x6d656864

    if-ne v13, v5, :cond_3

    .line 22
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v6, 0x8

    .line 23
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v8

    if-nez v8, :cond_2

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v8

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzt()J

    move-result-wide v8

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v6, 0x8

    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0xc

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzxf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzxf;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzabx;

    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/ads/zzabx;-><init>(Lcom/google/android/gms/internal/ads/zzaca;)V

    const/4 v2, 0x0

    const/4 v12, 0x0

    move-wide v5, v8

    move v8, v2

    move v9, v12

    .line 26
    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzabu;->zzc(Lcom/google/android/gms/internal/ads/zzabl;Lcom/google/android/gms/internal/ads/zzxf;JLcom/google/android/gms/internal/ads/zzs;ZZLcom/google/android/gms/internal/ads/zzfpv;)Ljava/util/List;

    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_5

    .line 29
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzacn;

    .line 30
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzacn;->zza:Lcom/google/android/gms/internal/ads/zzack;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzabz;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaca;->zzD:Lcom/google/android/gms/internal/ads/zzws;

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzack;->zzb:I

    .line 31
    invoke-interface {v8, v4, v9}, Lcom/google/android/gms/internal/ads/zzws;->zzv(II)Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object v8

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzack;->zza:I

    .line 32
    invoke-static {v11, v9}, Lcom/google/android/gms/internal/ads/zzaca;->zzj(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzabv;

    move-result-object v9

    invoke-direct {v7, v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzabz;-><init>(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzacn;Lcom/google/android/gms/internal/ads/zzabv;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzack;->zza:I

    .line 33
    invoke-virtual {v5, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaca;->zzw:J

    iget-wide v5, v6, Lcom/google/android/gms/internal/ads/zzack;->zze:J

    .line 34
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzaca;->zzw:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaca;->zzD:Lcom/google/android/gms/internal/ads/zzws;

    .line 35
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzws;->zzB()V

    goto/16 :goto_0

    :cond_6
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v3, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_0

    .line 37
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzacn;

    .line 38
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzacn;->zza:Lcom/google/android/gms/internal/ads/zzack;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzack;->zza:I

    .line 39
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzabz;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzack;->zza:I

    .line 40
    invoke-static {v11, v6}, Lcom/google/android/gms/internal/ads/zzaca;->zzj(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzabv;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzabz;->zzh(Lcom/google/android/gms/internal/ads/zzacn;Lcom/google/android/gms/internal/ads/zzabv;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    const/16 v6, 0x8

    const v4, 0x6d6f6f66

    if-ne v2, v4, :cond_49

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaca;->zzi:[B

    .line 41
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_42

    .line 42
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzabl;

    .line 43
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzabn;->zzd:I

    const v9, 0x74726166

    if-ne v8, v9, :cond_41

    const v8, 0x74666864

    .line 44
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v8

    .line 45
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 47
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 48
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v9

    const v10, 0xffffff

    and-int/2addr v9, v10

    .line 49
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v10

    .line 50
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzabz;

    if-nez v10, :cond_9

    const/4 v10, 0x0

    goto :goto_c

    :cond_9
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_a

    .line 51
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzt()J

    move-result-wide v11

    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iput-wide v11, v13, Lcom/google/android/gms/internal/ads/zzacm;->zzb:J

    iput-wide v11, v13, Lcom/google/android/gms/internal/ads/zzacm;->zzc:J

    :cond_a
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzabz;->zze:Lcom/google/android/gms/internal/ads/zzabv;

    and-int/lit8 v12, v9, 0x2

    if-eqz v12, :cond_b

    .line 52
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    .line 53
    :cond_b
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzabv;->zza:I

    :goto_8
    and-int/lit8 v13, v9, 0x8

    if-eqz v13, :cond_c

    .line 54
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v13

    goto :goto_9

    .line 55
    :cond_c
    iget v13, v11, Lcom/google/android/gms/internal/ads/zzabv;->zzb:I

    :goto_9
    and-int/lit8 v14, v9, 0x10

    if-eqz v14, :cond_d

    .line 56
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v14

    goto :goto_a

    .line 57
    :cond_d
    iget v14, v11, Lcom/google/android/gms/internal/ads/zzabv;->zzc:I

    :goto_a
    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_e

    .line 58
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v8

    goto :goto_b

    .line 59
    :cond_e
    iget v8, v11, Lcom/google/android/gms/internal/ads/zzabv;->zzd:I

    .line 60
    :goto_b
    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzabv;

    invoke-direct {v11, v12, v13, v14, v8}, Lcom/google/android/gms/internal/ads/zzabv;-><init>(IIII)V

    iput-object v11, v9, Lcom/google/android/gms/internal/ads/zzacm;->zza:Lcom/google/android/gms/internal/ads/zzabv;

    :goto_c
    if-nez v10, :cond_f

    goto/16 :goto_29

    .line 61
    :cond_f
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iget-wide v11, v8, Lcom/google/android/gms/internal/ads/zzacm;->zzq:J

    iget-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Z

    .line 62
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzabz;->zzi()V

    const/4 v13, 0x1

    .line 63
    invoke-static {v10, v13}, Lcom/google/android/gms/internal/ads/zzabz;->zzg(Lcom/google/android/gms/internal/ads/zzabz;Z)V

    const v14, 0x74666474

    .line 64
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v14

    if-eqz v14, :cond_11

    iget-object v9, v14, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 65
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 66
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v6

    if-ne v6, v13, :cond_10

    .line 67
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzt()J

    move-result-wide v11

    goto :goto_d

    :cond_10
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v11

    :goto_d
    iput-wide v11, v8, Lcom/google/android/gms/internal/ads/zzacm;->zzq:J

    iput-boolean v13, v8, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Z

    goto :goto_e

    :cond_11
    iput-wide v11, v8, Lcom/google/android/gms/internal/ads/zzacm;->zzq:J

    iput-boolean v9, v8, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Z

    .line 68
    :goto_e
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Ljava/util/List;

    .line 69
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_f
    const v14, 0x7472756e

    if-ge v11, v9, :cond_13

    .line 70
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzabm;

    move-object/from16 v16, v2

    .line 71
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzabn;->zzd:I

    if-ne v2, v14, :cond_12

    .line 72
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v14, 0xc

    .line 73
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v2

    if-lez v2, :cond_12

    add-int/2addr v13, v2

    add-int/lit8 v12, v12, 0x1

    :cond_12
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    goto :goto_f

    :cond_13
    move-object/from16 v16, v2

    const/4 v2, 0x0

    iput v2, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzh:I

    iput v2, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzg:I

    iput v2, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzf:I

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iput v12, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzd:I

    iput v13, v2, Lcom/google/android/gms/internal/ads/zzacm;->zze:I

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzg:[I

    .line 75
    array-length v11, v11

    if-ge v11, v12, :cond_14

    new-array v11, v12, [J

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzf:[J

    new-array v11, v12, [I

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzg:[I

    :cond_14
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzh:[I

    .line 76
    array-length v11, v11

    if-ge v11, v13, :cond_15

    mul-int/lit8 v13, v13, 0x7d

    div-int/lit8 v13, v13, 0x64

    .line 77
    new-array v11, v13, [I

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzh:[I

    .line 78
    new-array v11, v13, [I

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzi:[I

    .line 79
    new-array v11, v13, [J

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzj:[J

    .line 80
    new-array v11, v13, [Z

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzk:[Z

    .line 81
    new-array v11, v13, [Z

    iput-object v11, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzm:[Z

    :cond_15
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_10
    const-wide/16 v17, 0x0

    if-ge v2, v9, :cond_24

    .line 82
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzabm;

    .line 83
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzabn;->zzd:I

    if-ne v15, v14, :cond_23

    add-int/lit8 v14, v12, 0x1

    .line 84
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v15, 0x8

    .line 85
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 86
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v15

    const v19, 0xffffff

    and-int v15, v15, v19

    move/from16 v19, v4

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzd:Lcom/google/android/gms/internal/ads/zzacn;

    .line 87
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzacn;->zza:Lcom/google/android/gms/internal/ads/zzack;

    move-object/from16 v20, v6

    iget-object v6, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    move/from16 v21, v9

    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzacm;->zza:Lcom/google/android/gms/internal/ads/zzabv;

    .line 88
    sget v22, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    move/from16 v22, v14

    iget-object v14, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzg:[I

    .line 89
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v23

    aput v23, v14, v12

    iget-object v14, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzf:[J

    move-object/from16 v23, v1

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzb:J

    .line 90
    aput-wide v0, v14, v12

    and-int/lit8 v24, v15, 0x1

    if-eqz v24, :cond_16

    move-object/from16 v24, v3

    .line 91
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    int-to-long v7, v3

    add-long/2addr v0, v7

    aput-wide v0, v14, v12

    goto :goto_11

    :cond_16
    move-object/from16 v24, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    :goto_11
    and-int/lit8 v0, v15, 0x4

    .line 92
    iget v1, v9, Lcom/google/android/gms/internal/ads/zzabv;->zzd:I

    if-eqz v0, :cond_17

    .line 93
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v1

    :cond_17
    and-int/lit16 v3, v15, 0x100

    and-int/lit16 v7, v15, 0x200

    and-int/lit16 v8, v15, 0x400

    and-int/lit16 v14, v15, 0x800

    iget-object v15, v4, Lcom/google/android/gms/internal/ads/zzack;->zzh:[J

    if-eqz v15, :cond_18

    move/from16 v27, v1

    array-length v1, v15

    move/from16 v28, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_19

    const/4 v1, 0x0

    .line 94
    aget-wide v29, v15, v1

    cmp-long v5, v29, v17

    if-nez v5, :cond_19

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzack;->zzi:[J

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfn;->zzC(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 95
    check-cast v5, [J

    aget-wide v29, v5, v1

    const-wide/32 v31, 0xf4240

    move v5, v2

    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    move-wide/from16 v33, v1

    .line 96
    invoke-static/range {v29 .. v34}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v17

    goto :goto_12

    :cond_18
    move/from16 v27, v1

    move/from16 v28, v5

    :cond_19
    move v5, v2

    :goto_12
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzh:[I

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzi:[I

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzj:[J

    move/from16 v29, v5

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzk:[Z

    move-object/from16 v30, v5

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzg:[I

    .line 97
    aget v5, v5, v12

    add-int/2addr v5, v11

    move/from16 v31, v11

    iget-wide v11, v4, Lcom/google/android/gms/internal/ads/zzack;->zzc:J

    move-object v4, v1

    move-object/from16 v37, v2

    iget-wide v1, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzq:J

    move-object/from16 v38, v4

    move/from16 v4, v31

    :goto_13
    if-ge v4, v5, :cond_22

    if-eqz v3, :cond_1a

    .line 98
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v31

    move/from16 v39, v3

    move/from16 v3, v31

    goto :goto_14

    :cond_1a
    move/from16 v39, v3

    iget v3, v9, Lcom/google/android/gms/internal/ads/zzabv;->zzb:I

    :goto_14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaca;->zze(I)I

    if-eqz v7, :cond_1b

    .line 99
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v31

    move/from16 v40, v5

    move/from16 v5, v31

    goto :goto_15

    :cond_1b
    move/from16 v40, v5

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzabv;->zzc:I

    :goto_15
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaca;->zze(I)I

    if-eqz v8, :cond_1c

    .line 100
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v31

    move/from16 v41, v0

    move/from16 v0, v31

    goto :goto_16

    :cond_1c
    if-nez v4, :cond_1d

    const/4 v4, 0x0

    move/from16 v41, v0

    if-eqz v0, :cond_1e

    move/from16 v0, v27

    goto :goto_16

    :cond_1d
    move/from16 v41, v0

    .line 101
    :cond_1e
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzabv;->zzd:I

    :goto_16
    if-eqz v14, :cond_1f

    move/from16 v42, v7

    .line 102
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v7

    move/from16 v43, v8

    int-to-long v7, v7

    const-wide/32 v31, 0xf4240

    mul-long v7, v7, v31

    .line 103
    div-long/2addr v7, v11

    long-to-int v8, v7

    aput v8, v37, v4

    goto :goto_17

    :cond_1f
    move/from16 v42, v7

    move/from16 v43, v8

    const/4 v7, 0x0

    .line 104
    aput v7, v37, v4

    :goto_17
    const-wide/32 v33, 0xf4240

    move-wide/from16 v31, v1

    move-wide/from16 v35, v11

    .line 105
    invoke-static/range {v31 .. v36}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v7

    sub-long v7, v7, v17

    aput-wide v7, v15, v4

    move-object/from16 v32, v9

    iget-boolean v9, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Z

    if-nez v9, :cond_20

    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzd:Lcom/google/android/gms/internal/ads/zzacn;

    move-wide/from16 v33, v11

    .line 106
    iget-wide v11, v9, Lcom/google/android/gms/internal/ads/zzacn;->zzh:J

    add-long/2addr v7, v11

    aput-wide v7, v15, v4

    goto :goto_18

    :cond_20
    move-wide/from16 v33, v11

    .line 107
    :goto_18
    aput v5, v38, v4

    shr-int/lit8 v0, v0, 0x10

    const/4 v5, 0x1

    and-int/2addr v0, v5

    xor-int/2addr v0, v5

    if-eq v5, v0, :cond_21

    const/4 v0, 0x0

    goto :goto_19

    :cond_21
    const/4 v0, 0x1

    .line 108
    :goto_19
    aput-boolean v0, v30, v4

    int-to-long v7, v3

    add-long/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, v32

    move-wide/from16 v11, v33

    move/from16 v3, v39

    move/from16 v5, v40

    move/from16 v0, v41

    move/from16 v7, v42

    move/from16 v8, v43

    goto/16 :goto_13

    :cond_22
    move/from16 v40, v5

    .line 109
    iput-wide v1, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzq:J

    move/from16 v12, v22

    move/from16 v11, v40

    goto :goto_1a

    :cond_23
    move-object/from16 v23, v1

    move/from16 v29, v2

    move-object/from16 v24, v3

    move/from16 v19, v4

    move/from16 v28, v5

    move-object/from16 v20, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move/from16 v21, v9

    move/from16 v31, v11

    :goto_1a
    add-int/lit8 v2, v29, 0x1

    const v14, 0x7472756e

    move-object/from16 v0, p0

    move/from16 v4, v19

    move-object/from16 v6, v20

    move/from16 v9, v21

    move-object/from16 v1, v23

    move-object/from16 v3, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move/from16 v5, v28

    goto/16 :goto_10

    :cond_24
    move-object/from16 v23, v1

    move-object/from16 v24, v3

    move/from16 v19, v4

    move/from16 v28, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzd:Lcom/google/android/gms/internal/ads/zzacn;

    .line 110
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzacn;->zza:Lcom/google/android/gms/internal/ads/zzack;

    move-object/from16 v1, v26

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzacm;->zza:Lcom/google/android/gms/internal/ads/zzabv;

    .line 111
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzabv;->zza:I

    .line 113
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzack;->zza(I)Lcom/google/android/gms/internal/ads/zzacl;

    move-result-object v0

    const v2, 0x7361697a

    .line 114
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 115
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzacl;->zzd:I

    const/16 v4, 0x8

    .line 117
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_25

    .line 119
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 120
    :cond_25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v4

    .line 121
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v5

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzacm;->zze:I

    if-gt v5, v6, :cond_2a

    if-nez v4, :cond_27

    .line 122
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzacm;->zzm:[Z

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-ge v6, v5, :cond_29

    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v9

    add-int/2addr v8, v9

    if-le v9, v3, :cond_26

    const/4 v9, 0x1

    goto :goto_1c

    :cond_26
    const/4 v9, 0x0

    .line 124
    :goto_1c
    aput-boolean v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_27
    if-le v4, v3, :cond_28

    const/4 v2, 0x1

    goto :goto_1d

    :cond_28
    const/4 v2, 0x0

    :goto_1d
    mul-int v8, v4, v5

    .line 125
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzacm;->zzm:[Z

    const/4 v4, 0x0

    .line 126
    invoke-static {v3, v4, v5, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_29
    const/4 v2, 0x0

    .line 127
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzacm;->zzm:[Z

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzacm;->zze:I

    .line 128
    invoke-static {v3, v5, v4, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v8, :cond_2b

    .line 129
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzacm;->zzb(I)V

    goto :goto_1e

    :cond_2a
    const/16 v0, 0x4e

    const-string v1, "Saiz sample count "

    const-string v2, " is greater than fragment sample count"

    .line 130
    invoke-static {v0, v1, v5, v2, v6}, Landroid/support/v4/media/b;->e(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 131
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    throw v0

    :cond_2b
    :goto_1e
    const v2, 0x7361696f

    .line 132
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v3, 0x8

    .line 133
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 134
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    .line 135
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 136
    :cond_2c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v3

    if-ne v3, v6, :cond_2e

    .line 137
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzacm;->zzc:J

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v3

    if-nez v3, :cond_2d

    .line 138
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v2

    goto :goto_1f

    :cond_2d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzt()J

    move-result-wide v2

    :goto_1f
    add-long/2addr v5, v2

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzacm;->zzc:J

    goto :goto_20

    .line 139
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 140
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected saio entry count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    throw v0

    :cond_2f
    :goto_20
    const/4 v2, 0x0

    const v3, 0x73656e63

    .line 141
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzb(I)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v3

    if-eqz v3, :cond_30

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v4, 0x0

    .line 142
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzaca;->zzh(Lcom/google/android/gms/internal/ads/zzfd;ILcom/google/android/gms/internal/ads/zzacm;)V

    :cond_30
    if-eqz v0, :cond_31

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzacl;->zzb:Ljava/lang/String;

    move-object v10, v0

    goto :goto_21

    :cond_31
    move-object v10, v2

    :goto_21
    const/4 v0, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 143
    :goto_22
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_34

    .line 144
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzabm;

    .line 145
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    .line 146
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzabn;->zzd:I

    const v8, 0x73626770

    const v9, 0x73656967

    if-ne v5, v8, :cond_32

    const/16 v5, 0xc

    .line 147
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 148
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v5

    if-ne v5, v9, :cond_33

    move-object v3, v6

    goto :goto_23

    :cond_32
    const/16 v8, 0xc

    const v11, 0x73677064

    if-ne v5, v11, :cond_33

    .line 149
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 150
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v5

    if-ne v5, v9, :cond_33

    move-object v4, v6

    :cond_33
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_34
    if-eqz v3, :cond_3d

    if-nez v4, :cond_35

    goto/16 :goto_26

    :cond_35
    const/16 v0, 0x8

    .line 151
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 152
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v5

    const/4 v6, 0x4

    .line 153
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_36

    .line 154
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 155
    :cond_36
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v3

    if-ne v3, v8, :cond_3c

    .line 156
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 157
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v0

    .line 158
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    if-ne v0, v8, :cond_38

    .line 159
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v5

    cmp-long v0, v5, v17

    if-eqz v0, :cond_37

    goto :goto_24

    :cond_37
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 160
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    throw v0

    :cond_38
    const/4 v3, 0x2

    if-lt v0, v3, :cond_39

    .line 161
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 162
    :cond_39
    :goto_24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v5

    const-wide/16 v8, 0x1

    cmp-long v0, v5, v8

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    .line 163
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 164
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v3

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v13, v5, 0x4

    and-int/lit8 v14, v3, 0xf

    .line 165
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v3

    if-ne v3, v0, :cond_3d

    .line 166
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v11

    const/16 v3, 0x10

    new-array v12, v3, [B

    const/4 v5, 0x0

    .line 167
    invoke-virtual {v4, v12, v5, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    if-nez v11, :cond_3a

    .line 168
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzk()I

    move-result v2

    new-array v3, v2, [B

    .line 169
    invoke-virtual {v4, v3, v5, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    move-object v15, v3

    goto :goto_25

    :cond_3a
    move-object v15, v2

    :goto_25
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzacm;->zzl:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzacl;

    const/4 v9, 0x1

    move-object v8, v0

    .line 170
    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzacl;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzacm;->zzn:Lcom/google/android/gms/internal/ads/zzacl;

    goto :goto_26

    :cond_3b
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 171
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    throw v0

    :cond_3c
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 172
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    throw v0

    .line 173
    :cond_3d
    :goto_26
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v0, :cond_40

    .line 174
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzabm;

    .line 175
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzabn;->zzd:I

    const v5, 0x75756964

    if-ne v4, v5, :cond_3e

    .line 176
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v4, 0x8

    .line 177
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object/from16 v6, v23

    .line 178
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzaca;->zzb:[B

    .line 179
    invoke-static {v6, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 180
    invoke-static {v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzaca;->zzh(Lcom/google/android/gms/internal/ads/zzfd;ILcom/google/android/gms/internal/ads/zzacm;)V

    goto :goto_28

    :cond_3e
    move-object/from16 v6, v23

    :cond_3f
    :goto_28
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v23, v6

    goto :goto_27

    :cond_40
    move-object/from16 v6, v23

    goto :goto_2a

    :cond_41
    :goto_29
    move-object v6, v1

    move-object/from16 v16, v2

    move-object/from16 v24, v3

    move/from16 v19, v4

    move/from16 v28, v5

    :goto_2a
    add-int/lit8 v5, v28, 0x1

    const/16 v0, 0x8

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v16

    move/from16 v4, v19

    move-object/from16 v3, v24

    const/16 v6, 0x8

    goto/16 :goto_7

    :cond_42
    move-object/from16 v24, v3

    const/4 v0, 0x0

    move-object/from16 v2, v24

    .line 181
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaca;->zzf(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v1

    move-object/from16 v3, p0

    if-eqz v1, :cond_44

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 182
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v2, :cond_44

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 183
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzabz;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzabz;->zzd:Lcom/google/android/gms/internal/ads/zzacn;

    .line 184
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzacn;->zza:Lcom/google/android/gms/internal/ads/zzack;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzacm;->zza:Lcom/google/android/gms/internal/ads/zzabv;

    .line 185
    sget v8, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzabv;->zza:I

    .line 186
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzack;->zza(I)Lcom/google/android/gms/internal/ads/zzacl;

    move-result-object v6

    if-eqz v6, :cond_43

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzacl;->zzb:Ljava/lang/String;

    goto :goto_2c

    :cond_43
    move-object v6, v0

    .line 187
    :goto_2c
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzs;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzabz;->zzd:Lcom/google/android/gms/internal/ads/zzacn;

    .line 188
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzacn;->zza:Lcom/google/android/gms/internal/ads/zzack;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzack;->zzf:Lcom/google/android/gms/internal/ads/zzab;

    .line 189
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzz;->zzB(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzz;->zzY()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v6

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzabz;->zza:Lcom/google/android/gms/internal/ads/zzxt;

    .line 190
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzxt;->zzk(Lcom/google/android/gms/internal/ads/zzab;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_44
    iget-wide v0, v3, Lcom/google/android/gms/internal/ads/zzaca;->zzv:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v4

    if-eqz v2, :cond_48

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 191
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v0, :cond_47

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 192
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzabz;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaca;->zzv:J

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzf:I

    :goto_2e
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzacm;->zze:I

    if-ge v6, v8, :cond_46

    .line 193
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzacm;->zza(I)J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-gez v9, :cond_46

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzacm;->zzk:[Z

    .line 194
    aget-boolean v7, v7, v6

    if-eqz v7, :cond_45

    iput v6, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzi:I

    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_47
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v3, Lcom/google/android/gms/internal/ads/zzaca;->zzv:J

    :cond_48
    move-object v1, v3

    goto :goto_2f

    :cond_49
    move-object v2, v3

    move-object v3, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabl;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzc(Lcom/google/android/gms/internal/ads/zzabl;)V

    :cond_4a
    :goto_2f
    move-object v0, v3

    goto/16 :goto_0

    :cond_4b
    move-object v3, v0

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaca;->zzg()V

    return-void
.end method

.method private static final zzj(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzabv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzabv;",
            ">;I)",
            "Lcom/google/android/gms/internal/ads/zzabv;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzabv;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzabv;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzxm;)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzo:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_2e

    const-string v9, "FragmentedMp4Extractor"

    if-eq v2, v7, :cond_21

    const-wide v3, 0x7fffffffffffffffL

    const/4 v10, 0x3

    if-eq v2, v5, :cond_1c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzy:Lcom/google/android/gms/internal/ads/zzabz;

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v11, 0x0

    move-wide v11, v3

    move-object v3, v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    .line 2
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzabz;

    .line 3
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzabz;->zzj(Lcom/google/android/gms/internal/ads/zzabz;)Z

    move-result v14

    if-nez v14, :cond_0

    iget v14, v13, Lcom/google/android/gms/internal/ads/zzabz;->zzf:I

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzabz;->zzd:Lcom/google/android/gms/internal/ads/zzacn;

    iget v15, v15, Lcom/google/android/gms/internal/ads/zzacn;->zzb:I

    if-eq v14, v15, :cond_2

    :cond_0
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzabz;->zzj(Lcom/google/android/gms/internal/ads/zzabz;)Z

    move-result v14

    if-eqz v14, :cond_1

    iget v14, v13, Lcom/google/android/gms/internal/ads/zzabz;->zzh:I

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iget v15, v15, Lcom/google/android/gms/internal/ads/zzacm;->zzd:I

    if-ne v14, v15, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzabz;->zzd()J

    move-result-wide v14

    cmp-long v16, v14, v11

    if-gez v16, :cond_2

    move-object v3, v13

    move-wide v11, v14

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_5

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzt:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_4

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwk;

    .line 6
    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaca;->zzg()V

    goto/16 :goto_e

    :cond_4
    const-string v1, "Offset to end of mdat was negative."

    .line 8
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v1

    throw v1

    .line 9
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzabz;->zzd()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v11

    sub-long/2addr v4, v11

    long-to-int v2, v4

    if-gez v2, :cond_6

    const-string v2, "Ignoring negative offset to sample data."

    .line 10
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_6
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzwk;

    .line 11
    invoke-virtual {v4, v2, v8}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzy:Lcom/google/android/gms/internal/ads/zzabz;

    move-object v2, v3

    :cond_7
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzo:I

    const/4 v4, 0x6

    if-ne v3, v10, :cond_f

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabz;->zzb()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    .line 13
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzf:I

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzi:I

    if-ge v5, v9, :cond_c

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwk;

    .line 14
    invoke-virtual {v1, v3, v8}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabz;->zzf()Lcom/google/android/gms/internal/ads/zzacl;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 16
    :cond_8
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzacm;->zzo:Lcom/google/android/gms/internal/ads/zzfd;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzacl;->zzd:I

    if-eqz v1, :cond_9

    .line 17
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    :cond_9
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzf:I

    .line 18
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzacm;->zzc(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 20
    :cond_a
    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabz;->zzk()Z

    move-result v1

    if-nez v1, :cond_b

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzy:Lcom/google/android/gms/internal/ads/zzabz;

    :cond_b
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzo:I

    goto/16 :goto_c

    .line 21
    :cond_c
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzd:Lcom/google/android/gms/internal/ads/zzacn;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzacn;->zza:Lcom/google/android/gms/internal/ads/zzack;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzack;->zzg:I

    if-ne v5, v7, :cond_d

    add-int/lit8 v3, v3, -0x8

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzwk;

    const/16 v5, 0x8

    .line 22
    invoke-virtual {v3, v5, v8}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    .line 23
    :cond_d
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzd:Lcom/google/android/gms/internal/ads/zzacn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzacn;->zza:Lcom/google/android/gms/internal/ads/zzack;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzack;->zzf:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    const-string v5, "audio/ac4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    const/4 v5, 0x7

    .line 24
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzabz;->zzc(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzj:Lcom/google/android/gms/internal/ads/zzfd;

    .line 25
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/ads/zzvy;->zzb(ILcom/google/android/gms/internal/ads/zzfd;)V

    .line 26
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzabz;->zza:Lcom/google/android/gms/internal/ads/zzxt;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzj:Lcom/google/android/gms/internal/ads/zzfd;

    .line 27
    invoke-static {v3, v9, v5}, Lcom/google/android/gms/internal/ads/zzxr;->zzb(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzfd;I)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    goto :goto_4

    .line 28
    :cond_e
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    .line 29
    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/internal/ads/zzabz;->zzc(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    .line 30
    :goto_4
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    const/4 v3, 0x4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzo:I

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzB:I

    .line 31
    :cond_f
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzabz;->zzd:Lcom/google/android/gms/internal/ads/zzacn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzacn;->zza:Lcom/google/android/gms/internal/ads/zzack;

    .line 32
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzabz;->zza:Lcom/google/android/gms/internal/ads/zzxt;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabz;->zze()J

    move-result-wide v14

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzack;->zzj:I

    if-nez v5, :cond_10

    :goto_5
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    if-ge v3, v4, :cond_17

    sub-int/2addr v4, v3

    .line 34
    invoke-static {v9, v1, v4, v8}, Lcom/google/android/gms/internal/ads/zzxr;->zza(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzdg;IZ)I

    move-result v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    goto :goto_5

    .line 35
    :cond_10
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzg:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v5

    .line 36
    aput-byte v8, v5, v8

    .line 37
    aput-byte v8, v5, v7

    const/4 v10, 0x2

    .line 38
    aput-byte v8, v5, v10

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzack;->zzj:I

    add-int/lit8 v11, v10, 0x1

    rsub-int/lit8 v10, v10, 0x4

    :goto_6
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    if-ge v12, v13, :cond_17

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzB:I

    const-string v13, "video/hevc"

    if-nez v12, :cond_15

    move-object v12, v1

    check-cast v12, Lcom/google/android/gms/internal/ads/zzwk;

    .line 39
    invoke-virtual {v12, v5, v10, v11, v8}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzg:Lcom/google/android/gms/internal/ads/zzfd;

    .line 40
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzg:Lcom/google/android/gms/internal/ads/zzfd;

    .line 41
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v12

    if-lez v12, :cond_14

    add-int/lit8 v12, v12, -0x1

    .line 42
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzB:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzf:Lcom/google/android/gms/internal/ads/zzfd;

    .line 43
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzf:Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v12, 0x4

    .line 44
    invoke-static {v9, v8, v12}, Lcom/google/android/gms/internal/ads/zzxr;->zzb(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzfd;I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzg:Lcom/google/android/gms/internal/ads/zzfd;

    .line 45
    invoke-static {v9, v8, v7}, Lcom/google/android/gms/internal/ads/zzxr;->zzb(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzfd;I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzF:[Lcom/google/android/gms/internal/ads/zzxt;

    .line 46
    array-length v8, v8

    if-lez v8, :cond_13

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzack;->zzf:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    aget-byte v12, v5, v12

    .line 47
    sget-object v16, Lcom/google/android/gms/internal/ads/zzeu;->zza:[B

    const-string v6, "video/avc"

    .line 48
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    and-int/lit8 v6, v12, 0x1f

    if-eq v6, v4, :cond_12

    .line 49
    :cond_11
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    and-int/lit8 v6, v12, 0x7e

    shr-int/2addr v6, v7

    const/16 v8, 0x27

    if-ne v6, v8, :cond_13

    :cond_12
    const/4 v6, 0x1

    goto :goto_7

    :cond_13
    const/4 v6, 0x0

    :goto_7
    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzC:Z

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    add-int/2addr v6, v10

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    goto :goto_9

    :cond_14
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 50
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v1

    throw v1

    .line 51
    :cond_15
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzC:Z

    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzh:Lcom/google/android/gms/internal/ads/zzfd;

    .line 52
    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/ads/zzfd;->zzC(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzh:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v4

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzB:I

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzwk;

    const/4 v8, 0x0

    .line 53
    invoke-virtual {v7, v4, v8, v6, v8}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzh:Lcom/google/android/gms/internal/ads/zzfd;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzB:I

    .line 54
    invoke-static {v9, v4, v6}, Lcom/google/android/gms/internal/ads/zzxr;->zzb(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzfd;I)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzB:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzh:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzh:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result v7

    .line 55
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzeu;->zzb([BI)I

    move-result v6

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzh:Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzack;->zzf:Lcom/google/android/gms/internal/ads/zzab;

    .line 56
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzh:Lcom/google/android/gms/internal/ads/zzfd;

    .line 57
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzE(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzh:Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzF:[Lcom/google/android/gms/internal/ads/zzxt;

    .line 58
    invoke-static {v14, v15, v6, v7}, Lcom/google/android/gms/internal/ads/zzwh;->zza(JLcom/google/android/gms/internal/ads/zzfd;[Lcom/google/android/gms/internal/ads/zzxt;)V

    goto :goto_8

    :cond_16
    const/4 v4, 0x0

    .line 59
    invoke-static {v9, v1, v12, v4}, Lcom/google/android/gms/internal/ads/zzxr;->zza(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzdg;IZ)I

    move-result v4

    .line 60
    :goto_8
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzA:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzB:I

    sub-int/2addr v6, v4

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzB:I

    const/4 v4, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_9
    const/4 v8, 0x0

    const/4 v6, 0x0

    goto/16 :goto_6

    .line 61
    :cond_17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabz;->zza()I

    move-result v12

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabz;->zzf()Lcom/google/android/gms/internal/ads/zzacl;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzacl;->zzc:Lcom/google/android/gms/internal/ads/zzxs;

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    :goto_a
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzz:I

    const/4 v3, 0x0

    move-wide v10, v14

    move-wide v4, v14

    move v14, v3

    move-object v15, v1

    .line 63
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzxt;->zzs(JIIILcom/google/android/gms/internal/ads/zzxs;)V

    :cond_19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzn:Ljava/util/ArrayDeque;

    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzn:Ljava/util/ArrayDeque;

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaby;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzu:I

    .line 66
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzaby;->zzb:I

    sub-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzu:I

    .line 67
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzaby;->zza:J

    add-long/2addr v6, v4

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzE:[Lcom/google/android/gms/internal/ads/zzxt;

    .line 68
    array-length v15, v3

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v15, :cond_19

    aget-object v8, v3, v14

    const/4 v11, 0x1

    .line 69
    iget v12, v1, Lcom/google/android/gms/internal/ads/zzaby;->zzb:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzu:I

    const/16 v16, 0x0

    move-wide v9, v6

    move/from16 v17, v14

    move-object/from16 v14, v16

    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzxt;->zzs(JIIILcom/google/android/gms/internal/ads/zzxs;)V

    add-int/lit8 v14, v17, 0x1

    goto :goto_b

    .line 70
    :cond_1a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzabz;->zzk()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzy:Lcom/google/android/gms/internal/ads/zzabz;

    :cond_1b
    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzo:I

    :goto_c
    const/4 v1, 0x0

    return v1

    .line 71
    :cond_1c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 72
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v2, :cond_1e

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzabz;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iget-boolean v8, v7, Lcom/google/android/gms/internal/ads/zzacm;->zzp:Z

    if-eqz v8, :cond_1d

    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/zzacm;->zzc:J

    cmp-long v9, v7, v4

    if-gez v9, :cond_1d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzabz;

    move-wide v4, v7

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_1e
    if-nez v3, :cond_1f

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzo:I

    :goto_e
    move-object v5, v0

    goto/16 :goto_18

    :cond_1f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-ltz v2, :cond_20

    .line 75
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzwk;

    const/4 v5, 0x0

    .line 76
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzo:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v3

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzo:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result v6

    .line 77
    invoke-virtual {v4, v3, v5, v6, v5}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzo:Lcom/google/android/gms/internal/ads/zzfd;

    .line 78
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzacm;->zzp:Z

    goto :goto_e

    :cond_20
    const-string v1, "Offset to encryption data was negative."

    const/4 v2, 0x0

    .line 79
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v1

    throw v1

    .line 80
    :cond_21
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzq:J

    long-to-int v2, v5

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzr:I

    sub-int/2addr v2, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzs:Lcom/google/android/gms/internal/ads/zzfd;

    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v6

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzwk;

    const/16 v8, 0x8

    const/4 v10, 0x0

    .line 81
    invoke-virtual {v7, v6, v8, v2, v10}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzabm;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzp:I

    invoke-direct {v2, v6, v5}, Lcom/google/android/gms/internal/ads/zzabm;-><init>(ILcom/google/android/gms/internal/ads/zzfd;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v5

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    .line 82
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_22

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzabl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzabm;)V

    move-object v5, v0

    goto/16 :goto_17

    .line 84
    :cond_22
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzabn;->zzd:I

    if-ne v1, v4, :cond_26

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    const/16 v2, 0x8

    .line 85
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v2

    const/4 v3, 0x4

    .line 87
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v2

    if-nez v2, :cond_23

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v7

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v9

    goto :goto_f

    .line 91
    :cond_23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzt()J

    move-result-wide v7

    .line 92
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzt()J

    move-result-wide v9

    :goto_f
    move-wide v13, v7

    add-long/2addr v5, v9

    const-wide/32 v9, 0xf4240

    move-wide v7, v13

    move-wide v11, v3

    .line 93
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v15

    const/4 v2, 0x2

    .line 94
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzo()I

    move-result v2

    new-array v11, v2, [I

    new-array v12, v2, [J

    new-array v9, v2, [J

    new-array v10, v2, [J

    const/4 v7, 0x0

    move-wide v7, v13

    move-wide/from16 v17, v15

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v2, :cond_25

    .line 96
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v14

    const/high16 v19, -0x80000000

    and-int v19, v14, v19

    if-nez v19, :cond_24

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v14, v14, v21

    .line 98
    aput v14, v11, v13

    .line 99
    aput-wide v5, v12, v13

    .line 100
    aput-wide v17, v10, v13

    add-long v17, v7, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v7, v17

    move/from16 p2, v2

    move-object v14, v9

    move-object v2, v10

    move-wide/from16 v9, v19

    move-object v0, v11

    move-object/from16 v22, v12

    move-wide v11, v3

    .line 101
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v7

    .line 102
    aget-wide v9, v2, v13

    sub-long v9, v7, v9

    aput-wide v9, v14, v13

    const/4 v9, 0x4

    .line 103
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 104
    aget v9, v0, v13

    int-to-long v9, v9

    add-long/2addr v5, v9

    add-int/lit8 v13, v13, 0x1

    move-object v11, v0

    move-object v10, v2

    move-object v9, v14

    move-object/from16 v12, v22

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-wide/from16 v26, v7

    move-wide/from16 v7, v17

    move-wide/from16 v17, v26

    goto :goto_10

    :cond_24
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    .line 105
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbj;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    throw v0

    :cond_25
    move-object v14, v9

    move-object v2, v10

    move-object v0, v11

    move-object/from16 v22, v12

    .line 106
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzwi;

    move-object/from16 v4, v22

    invoke-direct {v3, v0, v4, v14, v2}, Lcom/google/android/gms/internal/ads/zzwi;-><init>([I[J[J[J)V

    .line 107
    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 108
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v5, p0

    iput-wide v1, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzx:J

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzD:Lcom/google/android/gms/internal/ads/zzws;

    .line 109
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzxp;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzws;->zzL(Lcom/google/android/gms/internal/ads/zzxp;)V

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzG:Z

    goto/16 :goto_16

    :cond_26
    move-object v5, v0

    if-ne v1, v3, :cond_2c

    .line 110
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzE:[Lcom/google/android/gms/internal/ads/zzxt;

    .line 111
    array-length v1, v1

    if-eqz v1, :cond_2c

    const/16 v1, 0x8

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_28

    const/4 v4, 0x1

    if-eq v1, v4, :cond_27

    const/16 v0, 0x2e

    const-string v2, "Skipping unsupported emsg version: "

    invoke-static {v0, v2, v1, v9}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_16

    .line 114
    :cond_27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v6

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzt()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    move-wide v14, v6

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v8

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v6

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v10

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzv(C)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzv(C)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v1

    move-wide v14, v2

    move-object/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v16, v8

    :goto_11
    move-wide/from16 v23, v10

    goto :goto_13

    :cond_28
    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzv(C)Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;->zzv(C)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v12

    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v14

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzx:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_29

    add-long/2addr v6, v14

    move-wide/from16 v16, v6

    goto :goto_12

    :cond_29
    move-wide/from16 v16, v2

    .line 128
    :goto_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzfn;->zzt(JJJ)J

    move-result-wide v6

    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v10

    move-object/from16 v20, v1

    move-object/from16 v19, v4

    move-wide/from16 v21, v6

    goto :goto_11

    :goto_13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v1

    .line 130
    new-array v1, v1, [B

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v4

    const/4 v6, 0x0

    .line 131
    invoke-virtual {v0, v1, v6, v4}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    .line 132
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyw;

    move-object/from16 v18, v0

    move-object/from16 v25, v1

    invoke-direct/range {v18 .. v25}, Lcom/google/android/gms/internal/ads/zzyw;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzk:Lcom/google/android/gms/internal/ads/zzyx;

    .line 133
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzyx;->zza(Lcom/google/android/gms/internal/ads/zzyw;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfd;-><init>([B)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v0

    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzE:[Lcom/google/android/gms/internal/ads/zzxt;

    .line 134
    array-length v6, v4

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v6, :cond_2a

    aget-object v8, v4, v7

    const/4 v9, 0x0

    .line 135
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 136
    invoke-interface {v8, v1, v0}, Lcom/google/android/gms/internal/ads/zzxt;->zzq(Lcom/google/android/gms/internal/ads/zzfd;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_2a
    cmp-long v1, v16, v2

    if-nez v1, :cond_2b

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzn:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaby;

    invoke-direct {v2, v14, v15, v0}, Lcom/google/android/gms/internal/ads/zzaby;-><init>(JI)V

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v1, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzu:I

    add-int/2addr v1, v0

    iput v1, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzu:I

    goto :goto_16

    :cond_2b
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzE:[Lcom/google/android/gms/internal/ads/zzxt;

    .line 138
    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_2c

    aget-object v6, v1, v3

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v7, v16

    move v10, v0

    .line 139
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzxt;->zzs(JIIILcom/google/android/gms/internal/ads/zzxs;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2c
    :goto_16
    move-object/from16 v1, p1

    goto :goto_17

    :cond_2d
    move-object v5, v0

    .line 140
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwk;

    const/4 v3, 0x0

    .line 141
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzwk;->zzo(IZ)Z

    .line 142
    :goto_17
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v2

    .line 143
    invoke-direct {v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzaca;->zzi(J)V

    :goto_18
    move-object v0, v5

    goto/16 :goto_0

    :cond_2e
    move-object v5, v0

    const/4 v0, 0x0

    .line 144
    iget v2, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzr:I

    if-nez v2, :cond_30

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzl:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v2

    const/16 v6, 0x8

    const/4 v7, 0x1

    .line 145
    invoke-interface {v1, v2, v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzwq;->zzn([BIIZ)Z

    move-result v2

    if-nez v2, :cond_2f

    const/4 v0, -0x1

    return v0

    :cond_2f
    iput v6, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzr:I

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzl:Lcom/google/android/gms/internal/ads/zzfd;

    .line 146
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzl:Lcom/google/android/gms/internal/ads/zzfd;

    .line 147
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzs()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzq:J

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzl:Lcom/google/android/gms/internal/ads/zzfd;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v0

    iput v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzp:I

    :cond_30
    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzq:J

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_31

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzl:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwk;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 149
    invoke-virtual {v2, v0, v6, v6, v7}, Lcom/google/android/gms/internal/ads/zzwk;->zzn([BIIZ)Z

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzr:I

    add-int/2addr v0, v6

    iput v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzr:I

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzl:Lcom/google/android/gms/internal/ads/zzfd;

    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzt()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzq:J

    goto :goto_19

    :cond_31
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_33

    .line 151
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzc()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_32

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabl;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzabl;->zza:J

    :cond_32
    cmp-long v0, v6, v8

    if-eqz v0, :cond_33

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzr:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzq:J

    .line 154
    :cond_33
    :goto_19
    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzq:J

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzr:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_40

    .line 155
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v6

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzr:I

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzp:I

    const v2, 0x6d646174

    const v8, 0x6d6f6f66

    if-eq v0, v8, :cond_34

    if-ne v0, v2, :cond_35

    :cond_34
    iget-boolean v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzG:Z

    if-nez v0, :cond_35

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzD:Lcom/google/android/gms/internal/ads/zzws;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzxo;

    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzw:J

    invoke-direct {v9, v10, v11, v6, v7}, Lcom/google/android/gms/internal/ads/zzxo;-><init>(JJ)V

    .line 156
    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/ads/zzws;->zzL(Lcom/google/android/gms/internal/ads/zzxp;)V

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzG:Z

    :cond_35
    iget v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzp:I

    if-ne v0, v8, :cond_36

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 157
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v0, :cond_36

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 158
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzabz;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzabz;->zzb:Lcom/google/android/gms/internal/ads/zzacm;

    iput-wide v6, v10, Lcom/google/android/gms/internal/ads/zzacm;->zzc:J

    iput-wide v6, v10, Lcom/google/android/gms/internal/ads/zzacm;->zzb:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_36
    iget v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzp:I

    if-ne v0, v2, :cond_37

    const/4 v0, 0x0

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzy:Lcom/google/android/gms/internal/ads/zzabz;

    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzq:J

    add-long/2addr v6, v2

    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzt:J

    const/4 v0, 0x2

    iput v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzo:I

    goto/16 :goto_18

    :cond_37
    const v2, 0x6d6f6f76

    if-eq v0, v2, :cond_3e

    const v2, 0x7472616b

    if-eq v0, v2, :cond_3e

    const v2, 0x6d646961

    if-eq v0, v2, :cond_3e

    const v2, 0x6d696e66

    if-eq v0, v2, :cond_3e

    const v2, 0x7374626c

    if-eq v0, v2, :cond_3e

    if-eq v0, v8, :cond_3e

    const v2, 0x74726166

    if-eq v0, v2, :cond_3e

    const v2, 0x6d766578

    if-eq v0, v2, :cond_3e

    const v2, 0x65647473

    if-ne v0, v2, :cond_38

    goto/16 :goto_1c

    :cond_38
    const v2, 0x68646c72    # 4.3148E24f

    const-wide/32 v6, 0x7fffffff

    if-eq v0, v2, :cond_3b

    const v2, 0x6d646864

    if-eq v0, v2, :cond_3b

    const v2, 0x6d766864

    if-eq v0, v2, :cond_3b

    if-eq v0, v4, :cond_3b

    const v2, 0x73747364

    if-eq v0, v2, :cond_3b

    const v2, 0x73747473

    if-eq v0, v2, :cond_3b

    const v2, 0x63747473

    if-eq v0, v2, :cond_3b

    const v2, 0x73747363

    if-eq v0, v2, :cond_3b

    const v2, 0x7374737a

    if-eq v0, v2, :cond_3b

    const v2, 0x73747a32

    if-eq v0, v2, :cond_3b

    const v2, 0x7374636f

    if-eq v0, v2, :cond_3b

    const v2, 0x636f3634

    if-eq v0, v2, :cond_3b

    const v2, 0x73747373

    if-eq v0, v2, :cond_3b

    const v2, 0x74666474

    if-eq v0, v2, :cond_3b

    const v2, 0x74666864

    if-eq v0, v2, :cond_3b

    const v2, 0x746b6864

    if-eq v0, v2, :cond_3b

    const v2, 0x74726578

    if-eq v0, v2, :cond_3b

    const v2, 0x7472756e

    if-eq v0, v2, :cond_3b

    const v2, 0x70737368    # 3.013775E29f

    if-eq v0, v2, :cond_3b

    const v2, 0x7361697a

    if-eq v0, v2, :cond_3b

    const v2, 0x7361696f

    if-eq v0, v2, :cond_3b

    const v2, 0x73656e63

    if-eq v0, v2, :cond_3b

    const v2, 0x75756964

    if-eq v0, v2, :cond_3b

    const v2, 0x73626770

    if-eq v0, v2, :cond_3b

    const v2, 0x73677064

    if-eq v0, v2, :cond_3b

    const v2, 0x656c7374

    if-eq v0, v2, :cond_3b

    const v2, 0x6d656864

    if-eq v0, v2, :cond_3b

    if-ne v0, v3, :cond_39

    goto :goto_1b

    .line 159
    :cond_39
    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzq:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_3a

    const/4 v0, 0x0

    .line 160
    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzs:Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v0, 0x1

    iput v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzo:I

    goto/16 :goto_18

    :cond_3a
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    throw v0

    .line 161
    :cond_3b
    :goto_1b
    iget v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzr:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3d

    .line 162
    iget-wide v3, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzq:J

    cmp-long v0, v3, v6

    if-gtz v0, :cond_3c

    .line 163
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfd;

    long-to-int v4, v3

    .line 164
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(I)V

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzl:Lcom/google/android/gms/internal/ads/zzfd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzH()[B

    move-result-object v4

    const/4 v6, 0x0

    .line 165
    invoke-static {v3, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzs:Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v0, 0x1

    iput v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzo:I

    goto/16 :goto_18

    :cond_3c
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    .line 166
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    throw v0

    :cond_3d
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    .line 167
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    throw v0

    .line 168
    :cond_3e
    :goto_1c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwq;->zze()J

    move-result-wide v2

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzq:J

    add-long/2addr v2, v6

    const-wide/16 v6, -0x8

    add-long/2addr v2, v6

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzabl;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzp:I

    .line 169
    invoke-direct {v4, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzabl;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzq:J

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzaca;->zzr:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-nez v0, :cond_3f

    .line 170
    invoke-direct {v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzaca;->zzi(J)V

    goto/16 :goto_18

    .line 171
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaca;->zzg()V

    goto/16 :goto_18

    :cond_40
    const-string v0, "Atom size less than header length (unsupported)."

    .line 172
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzws;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzD:Lcom/google/android/gms/internal/ads/zzws;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaca;->zzg()V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzxt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzE:[Lcom/google/android/gms/internal/ads/zzxt;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfn;->zzaa([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzxt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzE:[Lcom/google/android/gms/internal/ads/zzxt;

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzaca;->zzc:Lcom/google/android/gms/internal/ads/zzab;

    .line 4
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzxt;->zzk(Lcom/google/android/gms/internal/ads/zzab;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzd:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzxt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzF:[Lcom/google/android/gms/internal/ads/zzxt;

    const/16 p1, 0x64

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzF:[Lcom/google/android/gms/internal/ads/zzxt;

    .line 6
    array-length v1, v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzD:Lcom/google/android/gms/internal/ads/zzws;

    const/4 v3, 0x3

    .line 7
    invoke-interface {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzws;->zzv(II)Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzd:Ljava/util/List;

    .line 8
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzab;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzxt;->zzk(Lcom/google/android/gms/internal/ads/zzab;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzF:[Lcom/google/android/gms/internal/ads/zzxt;

    .line 9
    aput-object p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final zzc(JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zze:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabz;->zzi()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzn:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzu:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzv:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaca;->zzm:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaca;->zzg()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzwq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacj;->zza(Lcom/google/android/gms/internal/ads/zzwq;)Z

    move-result p1

    return p1
.end method
