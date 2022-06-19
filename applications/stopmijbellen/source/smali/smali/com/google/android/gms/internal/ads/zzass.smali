.class public final Lcom/google/android/gms/internal/ads/zzass;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzarj;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzarl;

.field private static final zzb:I

.field private static final zzc:[B


# instance fields
.field private final zzd:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzasr;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzawu;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzawu;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzawu;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzawu;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzawu;

.field private final zzj:[B

.field private final zzk:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzase;",
            ">;"
        }
    .end annotation
.end field

.field private final zzl:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzasq;",
            ">;"
        }
    .end annotation
.end field

.field private zzm:I

.field private zzn:I

.field private zzo:J

.field private zzp:I

.field private zzq:Lcom/google/android/gms/internal/ads/zzawu;

.field private zzr:J

.field private zzs:J

.field private zzt:Lcom/google/android/gms/internal/ads/zzasr;

.field private zzu:I

.field private zzv:I

.field private zzw:I

.field private zzx:Lcom/google/android/gms/internal/ads/zzark;

.field private zzy:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzasp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzass;->zza:Lcom/google/android/gms/internal/ads/zzarl;

    const-string v0, "seig"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxb;->zzg(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzass;->zzb:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzass;->zzc:[B

    return-void

    nop

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
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzass;-><init>(ILcom/google/android/gms/internal/ads/zzawy;Lcom/google/android/gms/internal/ads/zzasy;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzawy;Lcom/google/android/gms/internal/ads/zzasy;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzawu;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzawu;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzi:Lcom/google/android/gms/internal/ads/zzawu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzawu;

    .line 3
    sget-object p3, Lcom/google/android/gms/internal/ads/zzaws;->zza:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzawu;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zze:Lcom/google/android/gms/internal/ads/zzawu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzawu;

    const/4 p3, 0x5

    .line 4
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzawu;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzf:Lcom/google/android/gms/internal/ads/zzawu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzawu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzawu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzg:Lcom/google/android/gms/internal/ads/zzawu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzawu;

    const/4 p3, 0x1

    .line 5
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzawu;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzh:Lcom/google/android/gms/internal/ads/zzawu;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzj:[B

    new-instance p1, Ljava/util/Stack;

    .line 6
    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzk:Ljava/util/Stack;

    new-instance p1, Ljava/util/LinkedList;

    .line 7
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzl:Ljava/util/LinkedList;

    new-instance p1, Landroid/util/SparseArray;

    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzs:J

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzass;->zzb()V

    return-void
.end method

.method private static zza(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzarf;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzasf;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzarf;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_a

    .line 2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzasf;

    .line 3
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzasg;->zzaR:I

    sget v7, Lcom/google/android/gms/internal/ads/zzasg;->zzX:I

    if-ne v6, v7, :cond_9

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzawu;->zza:[B

    new-instance v6, Lcom/google/android/gms/internal/ads/zzawu;

    .line 6
    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzawu;-><init>([B)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawu;->zzd()I

    move-result v8

    const/16 v9, 0x20

    if-ge v8, v9, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawu;->zza()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    if-eq v8, v9, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v8

    if-eq v8, v7, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzasg;->zzf(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    const/16 v6, 0x25

    const-string v8, "Unsupported pssh version: "

    const-string v9, "PsshAtomUtil"

    invoke-static {v6, v8, v7, v9}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_4
    new-instance v9, Ljava/util/UUID;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawu;->zzl()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawu;->zzl()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v7, v8, :cond_5

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v7

    mul-int/lit8 v7, v7, 0x10

    .line 14
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzawu;->zzw(I)V

    .line 15
    :cond_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawu;->zza()I

    move-result v8

    if-eq v7, v8, :cond_6

    :goto_1
    move-object v6, v2

    goto :goto_2

    :cond_6
    new-array v8, v7, [B

    .line 16
    invoke-virtual {v6, v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzawu;->zzq([BII)V

    .line 17
    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_2
    if-nez v6, :cond_7

    move-object v6, v2

    goto :goto_3

    .line 18
    :cond_7
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/UUID;

    :goto_3
    if-nez v6, :cond_8

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    .line 19
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    new-instance v7, Lcom/google/android/gms/internal/ads/zzare;

    const-string v8, "video/mp4"

    .line 20
    invoke-direct {v7, v6, v8, v5, v1}, Lcom/google/android/gms/internal/ads/zzare;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    .line 21
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    return-object v2

    .line 22
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/ads/zzarf;

    .line 23
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzarf;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zzm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zzp:I

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzawu;ILcom/google/android/gms/internal/ads/zzata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzapj;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzasg;->zze(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v1

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzata;->zze:I

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzata;->zzm:[Z

    .line 6
    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzawu;->zza()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzata;->zza(I)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzata;->zzp:Lcom/google/android/gms/internal/ads/zzawu;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawu;->zza:[B

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzata;->zzo:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzawu;->zzq([BII)V

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzata;->zzp:Lcom/google/android/gms/internal/ads/zzawu;

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzata;->zzq:Z

    return-void

    .line 10
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzapj;

    const/16 p1, 0x29

    const-string p2, "Length mismatch: "

    const-string v0, ", "

    invoke-static {p1, p2, v1, v0, v2}, Landroid/support/v4/media/b;->e(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzapj;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzh(J)V
    .locals 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzapj;
        }
    .end annotation

    :cond_0
    move-object/from16 v0, p0

    move-object v1, v0

    .line 1
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzass;->zzk:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzass;->zzk:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzase;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzase;->zza:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_45

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzass;->zzk:Ljava/util/Stack;

    .line 2
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzase;

    .line 3
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzasg;->zzaR:I

    sget v4, Lcom/google/android/gms/internal/ads/zzasg;->zzE:I

    const/16 v5, 0xc

    const/16 v6, 0x8

    if-ne v3, v4, :cond_b

    .line 4
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzase;->zzb:Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzass;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzarf;

    move-result-object v3

    sget v4, Lcom/google/android/gms/internal/ads/zzasg;->zzP:I

    .line 5
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzase;->zza(I)Lcom/google/android/gms/internal/ads/zzase;

    move-result-object v4

    new-instance v14, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzase;->zzb:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    move-wide v15, v9

    :goto_1
    if-ge v11, v8, :cond_5

    .line 8
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/zzase;->zzb:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzasf;

    .line 9
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzasg;->zzaR:I

    sget v12, Lcom/google/android/gms/internal/ads/zzasg;->zzB:I

    if-ne v10, v12, :cond_2

    .line 10
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    .line 11
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 12
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v5

    .line 13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v10

    .line 14
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v12

    .line 15
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v13

    .line 16
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v9

    .line 17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaso;

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v7, v10, v12, v13, v9}, Lcom/google/android/gms/internal/ads/zzaso;-><init>(IIII)V

    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 18
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaso;

    invoke-virtual {v14, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 19
    :cond_2
    sget v5, Lcom/google/android/gms/internal/ads/zzasg;->zzQ:I

    if-ne v10, v5, :cond_4

    .line 20
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    .line 21
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzasg;->zzf(I)I

    move-result v7

    if-nez v7, :cond_3

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzawu;->zzm()J

    move-result-wide v9

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzawu;->zzn()J

    move-result-wide v9

    :goto_2
    move-wide v15, v9

    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/16 v5, 0xc

    goto :goto_1

    :cond_5
    new-instance v4, Landroid/util/SparseArray;

    .line 24
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 25
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzase;->zzc:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_7

    .line 26
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzase;->zzc:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/google/android/gms/internal/ads/zzase;

    .line 27
    iget v7, v8, Lcom/google/android/gms/internal/ads/zzasg;->zzaR:I

    sget v9, Lcom/google/android/gms/internal/ads/zzasg;->zzG:I

    if-ne v7, v9, :cond_6

    sget v7, Lcom/google/android/gms/internal/ads/zzasg;->zzF:I

    .line 28
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzase;->zzb(I)Lcom/google/android/gms/internal/ads/zzasf;

    move-result-object v9

    const/4 v13, 0x0

    move-wide v10, v15

    move-object v12, v3

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzasn;->zza(Lcom/google/android/gms/internal/ads/zzase;Lcom/google/android/gms/internal/ads/zzasf;JLcom/google/android/gms/internal/ads/zzarf;Z)Lcom/google/android/gms/internal/ads/zzasy;

    move-result-object v7

    if-eqz v7, :cond_6

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzasy;->zza:I

    .line 29
    invoke-virtual {v4, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 30
    :cond_7
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_8

    .line 32
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzasy;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzasr;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzass;->zzx:Lcom/google/android/gms/internal/ads/zzark;

    .line 33
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzasy;->zzb:I

    invoke-interface {v7, v3, v8}, Lcom/google/android/gms/internal/ads/zzark;->zzbq(II)Lcom/google/android/gms/internal/ads/zzars;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzasr;-><init>(Lcom/google/android/gms/internal/ads/zzars;)V

    .line 34
    iget v7, v5, Lcom/google/android/gms/internal/ads/zzasy;->zza:I

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaso;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzasr;->zza(Lcom/google/android/gms/internal/ads/zzasy;Lcom/google/android/gms/internal/ads/zzaso;)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 35
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzasy;->zza:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzass;->zzs:J

    .line 36
    iget-wide v8, v5, Lcom/google/android/gms/internal/ads/zzasy;->zze:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzass;->zzs:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzass;->zzx:Lcom/google/android/gms/internal/ads/zzark;

    .line 37
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzark;->zzb()V

    goto/16 :goto_0

    :cond_9
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzawm;->zze(Z)V

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1

    .line 39
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzasy;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 40
    iget v7, v5, Lcom/google/android/gms/internal/ads/zzasy;->zza:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzasr;

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzasy;->zza:I

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaso;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzasr;->zza(Lcom/google/android/gms/internal/ads/zzasy;Lcom/google/android/gms/internal/ads/zzaso;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 41
    :cond_b
    sget v4, Lcom/google/android/gms/internal/ads/zzasg;->zzN:I

    if-ne v3, v4, :cond_43

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzass;->zzj:[B

    .line 42
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzase;->zzc:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_8
    const/4 v7, 0x1

    if-ge v5, v4, :cond_41

    .line 43
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzase;->zzc:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzase;

    .line 44
    iget v9, v8, Lcom/google/android/gms/internal/ads/zzasg;->zzaR:I

    sget v10, Lcom/google/android/gms/internal/ads/zzasg;->zzO:I

    if-ne v9, v10, :cond_40

    sget v9, Lcom/google/android/gms/internal/ads/zzasg;->zzA:I

    .line 45
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzase;->zzb(I)Lcom/google/android/gms/internal/ads/zzasf;

    move-result-object v9

    .line 46
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    .line 47
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 48
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzasg;->zze(I)I

    move-result v10

    .line 49
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v11

    .line 50
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzasr;

    if-nez v11, :cond_c

    const/4 v11, 0x0

    goto :goto_d

    :cond_c
    and-int/lit8 v12, v10, 0x1

    if-eqz v12, :cond_d

    .line 51
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zzn()J

    move-result-wide v12

    iget-object v14, v11, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    iput-wide v12, v14, Lcom/google/android/gms/internal/ads/zzata;->zzb:J

    iput-wide v12, v14, Lcom/google/android/gms/internal/ads/zzata;->zzc:J

    :cond_d
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzasr;->zzd:Lcom/google/android/gms/internal/ads/zzaso;

    and-int/lit8 v13, v10, 0x2

    if-eqz v13, :cond_e

    .line 52
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_9

    :cond_e
    iget v13, v12, Lcom/google/android/gms/internal/ads/zzaso;->zza:I

    :goto_9
    and-int/lit8 v14, v10, 0x8

    if-eqz v14, :cond_f

    .line 53
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v14

    goto :goto_a

    :cond_f
    iget v14, v12, Lcom/google/android/gms/internal/ads/zzaso;->zzb:I

    :goto_a
    and-int/lit8 v15, v10, 0x10

    if-eqz v15, :cond_10

    .line 54
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v15

    goto :goto_b

    :cond_10
    iget v15, v12, Lcom/google/android/gms/internal/ads/zzaso;->zzc:I

    :goto_b
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_11

    .line 55
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v9

    goto :goto_c

    :cond_11
    iget v9, v12, Lcom/google/android/gms/internal/ads/zzaso;->zzd:I

    :goto_c
    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzaso;

    invoke-direct {v12, v13, v14, v15, v9}, Lcom/google/android/gms/internal/ads/zzaso;-><init>(IIII)V

    iput-object v12, v10, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzaso;

    :goto_d
    if-nez v11, :cond_12

    goto/16 :goto_25

    .line 56
    :cond_12
    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    iget-wide v12, v9, Lcom/google/android/gms/internal/ads/zzata;->zzr:J

    .line 57
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzasr;->zzb()V

    sget v10, Lcom/google/android/gms/internal/ads/zzasg;->zzz:I

    .line 58
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzase;->zzb(I)Lcom/google/android/gms/internal/ads/zzasf;

    move-result-object v14

    if-eqz v14, :cond_14

    .line 59
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzase;->zzb(I)Lcom/google/android/gms/internal/ads/zzasf;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    .line 60
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 61
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzasg;->zzf(I)I

    move-result v6

    if-ne v6, v7, :cond_13

    .line 62
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzawu;->zzn()J

    move-result-wide v12

    goto :goto_e

    :cond_13
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzawu;->zzm()J

    move-result-wide v12

    .line 63
    :cond_14
    :goto_e
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzase;->zzb:Ljava/util/List;

    .line 64
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v7, :cond_16

    .line 65
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Lcom/google/android/gms/internal/ads/zzasf;

    move/from16 v16, v4

    .line 66
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzasg;->zzaR:I

    move-wide/from16 v18, v12

    sget v12, Lcom/google/android/gms/internal/ads/zzasg;->zzC:I

    if-ne v4, v12, :cond_15

    .line 67
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    const/16 v4, 0xc

    .line 68
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v3

    if-lez v3, :cond_15

    add-int/2addr v10, v3

    add-int/lit8 v14, v14, 0x1

    :cond_15
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move-object/from16 v3, v17

    move-wide/from16 v12, v18

    goto :goto_f

    :cond_16
    move-object/from16 v17, v3

    move/from16 v16, v4

    move-wide/from16 v18, v12

    const/4 v3, 0x0

    iput v3, v11, Lcom/google/android/gms/internal/ads/zzasr;->zzg:I

    iput v3, v11, Lcom/google/android/gms/internal/ads/zzasr;->zzf:I

    iput v3, v11, Lcom/google/android/gms/internal/ads/zzasr;->zze:I

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    iput v14, v3, Lcom/google/android/gms/internal/ads/zzata;->zzd:I

    iput v10, v3, Lcom/google/android/gms/internal/ads/zzata;->zze:I

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzata;->zzg:[I

    if-eqz v4, :cond_17

    array-length v4, v4

    if-ge v4, v14, :cond_18

    .line 70
    :cond_17
    new-array v4, v14, [J

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzata;->zzf:[J

    .line 71
    new-array v4, v14, [I

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzata;->zzg:[I

    :cond_18
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzata;->zzh:[I

    if-eqz v4, :cond_19

    array-length v4, v4

    if-ge v4, v10, :cond_1a

    :cond_19
    mul-int/lit8 v10, v10, 0x7d

    div-int/lit8 v10, v10, 0x64

    .line 72
    new-array v4, v10, [I

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzata;->zzh:[I

    .line 73
    new-array v4, v10, [I

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzata;->zzi:[I

    .line 74
    new-array v4, v10, [J

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzata;->zzj:[J

    .line 75
    new-array v4, v10, [Z

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzata;->zzk:[Z

    .line 76
    new-array v4, v10, [Z

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzata;->zzm:[Z

    :cond_1a
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_10
    if-ge v3, v7, :cond_28

    .line 77
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzasf;

    .line 78
    iget v13, v12, Lcom/google/android/gms/internal/ads/zzasg;->zzaR:I

    sget v14, Lcom/google/android/gms/internal/ads/zzasg;->zzC:I

    if-ne v13, v14, :cond_27

    add-int/lit8 v13, v10, 0x1

    .line 79
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    const/16 v14, 0x8

    .line 80
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 81
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzasg;->zze(I)I

    move-result v14

    iget-object v15, v11, Lcom/google/android/gms/internal/ads/zzasr;->zzc:Lcom/google/android/gms/internal/ads/zzasy;

    move-object/from16 v20, v6

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    move/from16 v21, v7

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzaso;

    move/from16 v22, v13

    iget-object v13, v6, Lcom/google/android/gms/internal/ads/zzata;->zzg:[I

    .line 82
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v23

    aput v23, v13, v10

    iget-object v13, v6, Lcom/google/android/gms/internal/ads/zzata;->zzf:[J

    move-object/from16 v23, v1

    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzata;->zzb:J

    .line 83
    aput-wide v0, v13, v10

    and-int/lit8 v24, v14, 0x1

    if-eqz v24, :cond_1b

    move-object/from16 v24, v2

    .line 84
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v2

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    int-to-long v8, v2

    add-long/2addr v0, v8

    aput-wide v0, v13, v10

    goto :goto_11

    :cond_1b
    move-object/from16 v24, v2

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    :goto_11
    and-int/lit8 v0, v14, 0x4

    .line 85
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzaso;->zzd:I

    if-eqz v0, :cond_1c

    .line 86
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v1

    :cond_1c
    and-int/lit16 v2, v14, 0x100

    and-int/lit16 v8, v14, 0x200

    and-int/lit16 v9, v14, 0x400

    and-int/lit16 v13, v14, 0x800

    .line 87
    iget-object v14, v15, Lcom/google/android/gms/internal/ads/zzasy;->zzi:[J

    if-eqz v14, :cond_1d

    move/from16 v27, v1

    array-length v1, v14

    move/from16 v28, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1e

    const/4 v1, 0x0

    aget-wide v29, v14, v1

    const-wide/16 v31, 0x0

    cmp-long v5, v29, v31

    if-nez v5, :cond_1e

    .line 88
    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzasy;->zzj:[J

    aget-wide v29, v5, v1

    const-wide/16 v31, 0x3e8

    move v1, v13

    iget-wide v13, v15, Lcom/google/android/gms/internal/ads/zzasy;->zzc:J

    move-wide/from16 v33, v13

    invoke-static/range {v29 .. v34}, Lcom/google/android/gms/internal/ads/zzaxb;->zzj(JJJ)J

    move-result-wide v13

    goto :goto_12

    :cond_1d
    move/from16 v27, v1

    move/from16 v28, v5

    :cond_1e
    move v1, v13

    const-wide/16 v13, 0x0

    :goto_12
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzata;->zzh:[I

    move-object/from16 v29, v11

    iget-object v11, v6, Lcom/google/android/gms/internal/ads/zzata;->zzi:[I

    move/from16 v30, v3

    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zzata;->zzj:[J

    move-object/from16 v31, v5

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzata;->zzk:[Z

    move-object/from16 v32, v5

    .line 89
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzata;->zzg:[I

    .line 90
    aget v5, v5, v10

    add-int/2addr v5, v4

    move-object/from16 v39, v3

    move/from16 v33, v4

    .line 91
    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzasy;->zzc:J

    move-wide/from16 v40, v13

    if-lez v10, :cond_1f

    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/zzata;->zzr:J

    goto :goto_13

    :cond_1f
    move-wide/from16 v13, v18

    :goto_13
    move/from16 v10, v33

    :goto_14
    if-ge v10, v5, :cond_26

    if-eqz v2, :cond_20

    .line 92
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v15

    goto :goto_15

    .line 93
    :cond_20
    iget v15, v7, Lcom/google/android/gms/internal/ads/zzaso;->zzb:I

    :goto_15
    if-eqz v8, :cond_21

    .line 94
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v33

    move/from16 v42, v2

    move/from16 v2, v33

    goto :goto_16

    :cond_21
    move/from16 v42, v2

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzaso;->zzc:I

    :goto_16
    if-nez v10, :cond_22

    const/4 v10, 0x0

    if-eqz v0, :cond_22

    move/from16 v43, v0

    move/from16 v0, v27

    goto :goto_17

    :cond_22
    if-eqz v9, :cond_23

    .line 95
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v33

    move/from16 v43, v0

    move/from16 v0, v33

    goto :goto_17

    :cond_23
    move/from16 v43, v0

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaso;->zzd:I

    :goto_17
    if-eqz v1, :cond_24

    move/from16 v44, v1

    .line 96
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    move-object/from16 v45, v7

    move/from16 v46, v8

    int-to-long v7, v1

    .line 97
    div-long/2addr v7, v3

    long-to-int v1, v7

    aput v1, v11, v10

    goto :goto_18

    :cond_24
    move/from16 v44, v1

    move-object/from16 v45, v7

    move/from16 v46, v8

    const/4 v1, 0x0

    .line 98
    aput v1, v11, v10

    :goto_18
    const-wide/16 v35, 0x3e8

    move-wide/from16 v33, v13

    move-wide/from16 v37, v3

    .line 99
    invoke-static/range {v33 .. v38}, Lcom/google/android/gms/internal/ads/zzaxb;->zzj(JJJ)J

    move-result-wide v7

    sub-long v7, v7, v40

    aput-wide v7, v39, v10

    .line 100
    aput v2, v31, v10

    shr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    and-int/2addr v0, v1

    xor-int/2addr v0, v1

    if-eq v1, v0, :cond_25

    const/4 v0, 0x0

    goto :goto_19

    :cond_25
    const/4 v0, 0x1

    .line 101
    :goto_19
    aput-boolean v0, v32, v10

    int-to-long v0, v15

    add-long/2addr v13, v0

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v42

    move/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v7, v45

    move/from16 v8, v46

    goto :goto_14

    .line 102
    :cond_26
    iput-wide v13, v6, Lcom/google/android/gms/internal/ads/zzata;->zzr:J

    move v4, v5

    move/from16 v10, v22

    goto :goto_1a

    :cond_27
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v30, v3

    move/from16 v33, v4

    move/from16 v28, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v29, v11

    :goto_1a
    add-int/lit8 v3, v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move/from16 v5, v28

    move-object/from16 v11, v29

    goto/16 :goto_10

    :cond_28
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v28, v5

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v29, v11

    sget v0, Lcom/google/android/gms/internal/ads/zzasg;->zzaf:I

    .line 103
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzase;->zzb(I)Lcom/google/android/gms/internal/ads/zzasf;

    move-result-object v0

    if-eqz v0, :cond_2f

    move-object/from16 v11, v29

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzasr;->zzc:Lcom/google/android/gms/internal/ads/zzasy;

    .line 104
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasy;->zzh:[Lcom/google/android/gms/internal/ads/zzasz;

    move-object/from16 v2, v26

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzaso;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaso;->zza:I

    aget-object v1, v1, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    .line 105
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzasz;->zza:I

    const/16 v3, 0x8

    .line 106
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzasg;->zze(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_29

    .line 108
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzawu;->zzw(I)V

    .line 109
    :cond_29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zzg()I

    move-result v3

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v4

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzata;->zze:I

    if-ne v4, v5, :cond_2e

    if-nez v3, :cond_2b

    .line 111
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzata;->zzm:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1b
    if-ge v5, v4, :cond_2d

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zzg()I

    move-result v7

    add-int/2addr v6, v7

    if-le v7, v1, :cond_2a

    const/4 v7, 0x1

    goto :goto_1c

    :cond_2a
    const/4 v7, 0x0

    .line 113
    :goto_1c
    aput-boolean v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_2b
    if-le v3, v1, :cond_2c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_2c
    const/4 v0, 0x0

    :goto_1d
    mul-int v6, v3, v4

    .line 114
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzata;->zzm:[Z

    const/4 v3, 0x0

    .line 115
    invoke-static {v1, v3, v4, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 116
    :cond_2d
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzata;->zza(I)V

    goto :goto_1e

    .line 117
    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapj;

    const/16 v1, 0x29

    const-string v2, "Length mismatch: "

    const-string v3, ", "

    invoke-static {v1, v2, v4, v3, v5}, Landroid/support/v4/media/b;->e(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    move-object/from16 v2, v26

    .line 119
    :goto_1e
    sget v0, Lcom/google/android/gms/internal/ads/zzasg;->zzag:I

    .line 120
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzase;->zzb(I)Lcom/google/android/gms/internal/ads/zzasf;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    const/16 v1, 0x8

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzasg;->zze(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_30

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawu;->zzw(I)V

    .line 124
    :cond_30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v1

    if-ne v1, v5, :cond_32

    .line 125
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzata;->zzc:J

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzasg;->zzf(I)I

    move-result v1

    if-nez v1, :cond_31

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zzm()J

    move-result-wide v0

    goto :goto_1f

    :cond_31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zzn()J

    move-result-wide v0

    :goto_1f
    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/zzata;->zzc:J

    goto :goto_20

    .line 127
    :cond_32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapj;

    const/16 v2, 0x28

    const-string v3, "Unexpected saio entry count: "

    invoke-static {v2, v3, v1}, Landroid/support/v4/media/b;->d(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_33
    :goto_20
    sget v0, Lcom/google/android/gms/internal/ads/zzasg;->zzak:I

    .line 130
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzase;->zzb(I)Lcom/google/android/gms/internal/ads/zzasf;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    const/4 v1, 0x0

    .line 131
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzass;->zzc(Lcom/google/android/gms/internal/ads/zzawu;ILcom/google/android/gms/internal/ads/zzata;)V

    :cond_34
    sget v0, Lcom/google/android/gms/internal/ads/zzasg;->zzah:I

    .line 132
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzase;->zzb(I)Lcom/google/android/gms/internal/ads/zzasf;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzasg;->zzai:I

    .line 133
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzase;->zzb(I)Lcom/google/android/gms/internal/ads/zzasf;

    move-result-object v1

    if-eqz v0, :cond_3c

    if-eqz v1, :cond_3c

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    const/16 v3, 0x8

    .line 134
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v3

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzass;->zzb:I

    if-eq v4, v5, :cond_35

    goto/16 :goto_22

    .line 137
    :cond_35
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzasg;->zzf(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_36

    .line 138
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzawu;->zzw(I)V

    .line 139
    :cond_36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v0

    if-ne v0, v6, :cond_3b

    const/16 v0, 0x8

    .line 140
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v0

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v3

    if-ne v3, v5, :cond_3c

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasg;->zzf(I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v6, :cond_38

    .line 143
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawu;->zzm()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_37

    goto :goto_21

    .line 144
    :cond_37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v1, "Variable length decription in sgpd found (unsupported)"

    .line 145
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    if-lt v0, v3, :cond_39

    .line 146
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzawu;->zzw(I)V

    .line 147
    :cond_39
    :goto_21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawu;->zzm()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3a

    .line 148
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzawu;->zzw(I)V

    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawu;->zzg()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3c

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawu;->zzg()I

    move-result v0

    const/16 v4, 0x10

    new-array v5, v4, [B

    const/4 v6, 0x0

    .line 151
    invoke-virtual {v1, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzawu;->zzq([BII)V

    iput-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzata;->zzl:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasz;

    invoke-direct {v1, v3, v0, v5}, Lcom/google/android/gms/internal/ads/zzasz;-><init>(ZI[B)V

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzata;->zzn:Lcom/google/android/gms/internal/ads/zzasz;

    goto :goto_22

    .line 152
    :cond_3a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    .line 153
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_3b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    .line 155
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_3c
    :goto_22
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzase;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_3f

    .line 157
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzase;->zzb:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzasf;

    .line 158
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzasg;->zzaR:I

    sget v5, Lcom/google/android/gms/internal/ads/zzasg;->zzaj:I

    if-ne v4, v5, :cond_3d

    .line 159
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    const/16 v4, 0x8

    .line 160
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v7, v23

    .line 161
    invoke-virtual {v3, v7, v5, v4}, Lcom/google/android/gms/internal/ads/zzawu;->zzq([BII)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzass;->zzc:[B

    .line 162
    invoke-static {v7, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 163
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzass;->zzc(Lcom/google/android/gms/internal/ads/zzawu;ILcom/google/android/gms/internal/ads/zzata;)V

    goto :goto_24

    :cond_3d
    move-object/from16 v7, v23

    :cond_3e
    :goto_24
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v23, v7

    goto :goto_23

    :cond_3f
    move-object/from16 v7, v23

    const/16 v0, 0x8

    const/16 v6, 0x8

    goto :goto_26

    :cond_40
    :goto_25
    move-object v7, v1

    move-object/from16 v24, v2

    move-object/from16 v17, v3

    move/from16 v16, v4

    move/from16 v28, v5

    :goto_26
    add-int/lit8 v5, v28, 0x1

    const/4 v0, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v2, v24

    goto/16 :goto_8

    .line 164
    :cond_41
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzase;->zzb:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzass;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzarf;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object/from16 v3, p0

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 165
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_42

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 166
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzasr;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzasr;->zzb:Lcom/google/android/gms/internal/ads/zzars;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzasr;->zzc:Lcom/google/android/gms/internal/ads/zzasy;

    .line 167
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzasy;->zzf:Lcom/google/android/gms/internal/ads/zzapg;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzapg;->zzc(Lcom/google/android/gms/internal/ads/zzarf;)Lcom/google/android/gms/internal/ads/zzapg;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzars;->zza(Lcom/google/android/gms/internal/ads/zzapg;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_42
    move-object v1, v3

    goto :goto_28

    :cond_43
    move-object v3, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzass;->zzk:Ljava/util/Stack;

    .line 168
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzass;->zzk:Ljava/util/Stack;

    .line 169
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzase;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzase;->zzc(Lcom/google/android/gms/internal/ads/zzase;)V

    :cond_44
    :goto_28
    move-object v0, v3

    goto/16 :goto_0

    :cond_45
    move-object v3, v0

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzass;->zzb()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzark;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzx:Lcom/google/android/gms/internal/ads/zzark;

    return-void
.end method

.method public final zze(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzasr;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzasr;->zzb()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzl:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzk:Ljava/util/Stack;

    .line 4
    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzass;->zzb()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzari;Lcom/google/android/gms/internal/ads/zzaro;)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzm:I

    const/4 v4, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_22

    if-eq v2, v7, :cond_1b

    const-wide v10, 0x7fffffffffffffffL

    const/4 v12, 0x3

    if-eq v2, v4, :cond_16

    if-ne v2, v12, :cond_c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzt:Lcom/google/android/gms/internal/ads/zzasr;

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v14, v13, :cond_2

    .line 2
    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/google/android/gms/internal/ads/zzasr;

    .line 3
    iget v5, v12, Lcom/google/android/gms/internal/ads/zzasr;->zzg:I

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzata;->zzd:I

    if-ne v5, v9, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzata;->zzf:[J

    .line 4
    aget-wide v18, v3, v5

    cmp-long v3, v18, v10

    if-gez v3, :cond_1

    move-object v15, v12

    move-wide/from16 v10, v18

    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x3

    goto :goto_1

    :cond_2
    if-nez v15, :cond_4

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzr:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzari;->zzd()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_3

    .line 5
    invoke-virtual {v1, v3, v8}, Lcom/google/android/gms/internal/ads/zzari;->zzi(IZ)Z

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzass;->zzb()V

    goto :goto_0

    .line 7
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v2, "Offset to end of mdat was negative."

    .line 8
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzata;->zzf:[J

    iget v3, v15, Lcom/google/android/gms/internal/ads/zzasr;->zzg:I

    .line 10
    aget-wide v9, v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzari;->zzd()J

    move-result-wide v2

    sub-long/2addr v9, v2

    long-to-int v2, v9

    if-gez v2, :cond_5

    const-string v2, "FragmentedMp4Extractor"

    const-string v3, "Ignoring negative offset to sample data."

    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 12
    :cond_5
    invoke-virtual {v1, v2, v8}, Lcom/google/android/gms/internal/ads/zzari;->zzi(IZ)Z

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzass;->zzt:Lcom/google/android/gms/internal/ads/zzasr;

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzt:Lcom/google/android/gms/internal/ads/zzasr;

    .line 13
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzata;->zzh:[I

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzasr;->zze:I

    aget v5, v5, v9

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzu:I

    iget-boolean v10, v3, Lcom/google/android/gms/internal/ads/zzata;->zzl:Z

    if-eqz v10, :cond_a

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzata;->zzp:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzaso;

    .line 14
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzaso;->zza:I

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzata;->zzn:Lcom/google/android/gms/internal/ads/zzasz;

    if-eqz v11, :cond_7

    goto :goto_3

    .line 15
    :cond_7
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzasr;->zzc:Lcom/google/android/gms/internal/ads/zzasy;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzasy;->zzh:[Lcom/google/android/gms/internal/ads/zzasz;

    aget-object v11, v11, v10

    .line 16
    :goto_3
    iget v10, v11, Lcom/google/android/gms/internal/ads/zzasz;->zza:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzata;->zzm:[Z

    .line 17
    aget-boolean v3, v3, v9

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzass;->zzh:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzawu;->zza:[B

    if-eq v7, v3, :cond_8

    const/4 v12, 0x0

    goto :goto_4

    :cond_8
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v12, v10

    int-to-byte v12, v12

    .line 18
    aput-byte v12, v11, v8

    .line 19
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 20
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasr;->zzb:Lcom/google/android/gms/internal/ads/zzars;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzass;->zzh:Lcom/google/android/gms/internal/ads/zzawu;

    .line 21
    invoke-interface {v2, v9, v7}, Lcom/google/android/gms/internal/ads/zzars;->zzb(Lcom/google/android/gms/internal/ads/zzawu;I)V

    .line 22
    invoke-interface {v2, v5, v10}, Lcom/google/android/gms/internal/ads/zzars;->zzb(Lcom/google/android/gms/internal/ads/zzawu;I)V

    if-nez v3, :cond_9

    add-int/2addr v10, v7

    goto :goto_5

    .line 23
    :cond_9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzawu;->zzj()I

    move-result v3

    const/4 v9, -0x2

    .line 24
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzawu;->zzw(I)V

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v4

    .line 25
    invoke-interface {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzars;->zzb(Lcom/google/android/gms/internal/ads/zzawu;I)V

    add-int/2addr v10, v7

    add-int/2addr v10, v3

    .line 26
    :goto_5
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzass;->zzv:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzu:I

    add-int v5, v2, v10

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzu:I

    goto :goto_6

    .line 27
    :cond_a
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzass;->zzv:I

    .line 28
    :goto_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzt:Lcom/google/android/gms/internal/ads/zzasr;

    .line 29
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasr;->zzc:Lcom/google/android/gms/internal/ads/zzasy;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzasy;->zzg:I

    if-ne v2, v7, :cond_b

    add-int/lit8 v5, v5, -0x8

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzu:I

    .line 30
    invoke-virtual {v1, v6, v8}, Lcom/google/android/gms/internal/ads/zzari;->zzi(IZ)Z

    :cond_b
    const/4 v2, 0x4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzm:I

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzass;->zzw:I

    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzt:Lcom/google/android/gms/internal/ads/zzasr;

    .line 31
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    .line 32
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzasr;->zzc:Lcom/google/android/gms/internal/ads/zzasy;

    .line 33
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzasr;->zzb:Lcom/google/android/gms/internal/ads/zzars;

    .line 34
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzasr;->zze:I

    .line 35
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzasy;->zzk:I

    if-nez v6, :cond_d

    :goto_7
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzass;->zzv:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzass;->zzu:I

    if-ge v4, v6, :cond_f

    sub-int/2addr v6, v4

    .line 36
    invoke-interface {v9, v1, v6, v8}, Lcom/google/android/gms/internal/ads/zzars;->zzd(Lcom/google/android/gms/internal/ads/zzari;IZ)I

    move-result v4

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzass;->zzv:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzass;->zzv:I

    goto :goto_7

    .line 37
    :cond_d
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzass;->zzf:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzawu;->zza:[B

    .line 38
    aput-byte v8, v10, v8

    .line 39
    aput-byte v8, v10, v7

    .line 40
    aput-byte v8, v10, v4

    add-int/lit8 v4, v6, 0x1

    const/4 v11, 0x4

    rsub-int/lit8 v6, v6, 0x4

    :goto_8
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zzv:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzass;->zzu:I

    if-ge v11, v12, :cond_f

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zzw:I

    if-nez v11, :cond_e

    .line 41
    invoke-virtual {v1, v10, v6, v4, v8}, Lcom/google/android/gms/internal/ads/zzari;->zzh([BIIZ)Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zzf:Lcom/google/android/gms/internal/ads/zzawu;

    .line 42
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zzf:Lcom/google/android/gms/internal/ads/zzawu;

    .line 43
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzawu;->zzi()I

    move-result v11

    const/4 v12, -0x1

    add-int/2addr v11, v12

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zzw:I

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zze:Lcom/google/android/gms/internal/ads/zzawu;

    .line 44
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zze:Lcom/google/android/gms/internal/ads/zzawu;

    const/4 v12, 0x4

    .line 45
    invoke-interface {v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzars;->zzb(Lcom/google/android/gms/internal/ads/zzawu;I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zzf:Lcom/google/android/gms/internal/ads/zzawu;

    .line 46
    invoke-interface {v9, v11, v7}, Lcom/google/android/gms/internal/ads/zzars;->zzb(Lcom/google/android/gms/internal/ads/zzawu;I)V

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zzv:I

    add-int/lit8 v11, v11, 0x5

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zzv:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zzu:I

    add-int/2addr v11, v6

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzass;->zzu:I

    goto :goto_8

    .line 47
    :cond_e
    invoke-interface {v9, v1, v11, v8}, Lcom/google/android/gms/internal/ads/zzars;->zzd(Lcom/google/android/gms/internal/ads/zzari;IZ)I

    move-result v11

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzass;->zzv:I

    add-int/2addr v12, v11

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzass;->zzv:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzass;->zzw:I

    sub-int/2addr v12, v11

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzass;->zzw:I

    goto :goto_8

    .line 48
    :cond_f
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzata;->zzj:[J

    .line 49
    aget-wide v10, v1, v2

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzata;->zzi:[I

    aget v1, v1, v2

    int-to-long v12, v1

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    iget-boolean v1, v3, Lcom/google/android/gms/internal/ads/zzata;->zzl:Z

    if-eq v7, v1, :cond_10

    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    const/high16 v4, 0x40000000    # 2.0f

    :goto_9
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzata;->zzk:[Z

    .line 50
    aget-boolean v2, v6, v2

    or-int v12, v4, v2

    if-eqz v1, :cond_13

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzata;->zzn:Lcom/google/android/gms/internal/ads/zzasz;

    if-nez v1, :cond_11

    .line 51
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzasy;->zzh:[Lcom/google/android/gms/internal/ads/zzasz;

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzaso;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaso;->zza:I

    aget-object v1, v1, v2

    :cond_11
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzt:Lcom/google/android/gms/internal/ads/zzasr;

    .line 52
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzasr;->zzi:Lcom/google/android/gms/internal/ads/zzasz;

    if-eq v1, v4, :cond_12

    new-instance v2, Lcom/google/android/gms/internal/ads/zzarr;

    .line 53
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzasz;->zzb:[B

    invoke-direct {v2, v7, v4}, Lcom/google/android/gms/internal/ads/zzarr;-><init>(I[B)V

    goto :goto_a

    .line 54
    :cond_12
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasr;->zzh:Lcom/google/android/gms/internal/ads/zzarr;

    :goto_a
    move-object v15, v2

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    const/4 v15, 0x0

    .line 55
    :goto_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzt:Lcom/google/android/gms/internal/ads/zzasr;

    .line 56
    iput-object v15, v2, Lcom/google/android/gms/internal/ads/zzasr;->zzh:Lcom/google/android/gms/internal/ads/zzarr;

    .line 57
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzasr;->zzi:Lcom/google/android/gms/internal/ads/zzasz;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzass;->zzu:I

    const/4 v14, 0x0

    .line 58
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzars;->zzc(JIIILcom/google/android/gms/internal/ads/zzarr;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzass;->zzl:Ljava/util/LinkedList;

    .line 59
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 60
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzass;->zzt:Lcom/google/android/gms/internal/ads/zzasr;

    .line 61
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzasr;->zze:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzasr;->zze:I

    .line 62
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzasr;->zzf:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzasr;->zzf:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzata;->zzg:[I

    .line 63
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzasr;->zzg:I

    aget v3, v3, v4

    if-ne v2, v3, :cond_14

    add-int/2addr v4, v7

    .line 64
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzasr;->zzg:I

    .line 65
    iput v8, v1, Lcom/google/android/gms/internal/ads/zzasr;->zzf:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzass;->zzt:Lcom/google/android/gms/internal/ads/zzasr;

    :cond_14
    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzass;->zzm:I

    return v8

    :cond_15
    const/4 v1, 0x0

    .line 66
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzl:Ljava/util/LinkedList;

    .line 67
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzasq;

    .line 68
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzasq;->zzb:I

    .line 69
    throw v1

    .line 70
    :cond_16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 71
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v3, v2, :cond_18

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 72
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzasr;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/zzata;->zzq:Z

    if-eqz v6, :cond_17

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzata;->zzc:J

    cmp-long v4, v6, v10

    if-gez v4, :cond_17

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzasr;

    move-object v5, v4

    move-wide v10, v6

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_18
    if-nez v5, :cond_19

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzm:I

    goto/16 :goto_0

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzari;->zzd()J

    move-result-wide v2

    sub-long/2addr v10, v2

    long-to-int v2, v10

    if-ltz v2, :cond_1a

    .line 74
    invoke-virtual {v1, v2, v8}, Lcom/google/android/gms/internal/ads/zzari;->zzi(IZ)Z

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzata;->zzp:Lcom/google/android/gms/internal/ads/zzawu;

    .line 75
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzawu;->zza:[B

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzata;->zzo:I

    .line 76
    invoke-virtual {v1, v3, v8, v4, v8}, Lcom/google/android/gms/internal/ads/zzari;->zzh([BIIZ)Z

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzata;->zzp:Lcom/google/android/gms/internal/ads/zzawu;

    .line 77
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    iput-boolean v8, v2, Lcom/google/android/gms/internal/ads/zzata;->zzq:Z

    goto/16 :goto_0

    .line 78
    :cond_1a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v2, "Offset to encryption data was negative."

    .line 79
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1b
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzo:J

    long-to-int v3, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzp:I

    sub-int/2addr v3, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzq:Lcom/google/android/gms/internal/ads/zzawu;

    if-eqz v2, :cond_20

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzawu;->zza:[B

    .line 81
    invoke-virtual {v1, v2, v6, v3, v8}, Lcom/google/android/gms/internal/ads/zzari;->zzh([BIIZ)Z

    .line 82
    new-instance v2, Lcom/google/android/gms/internal/ads/zzasf;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzass;->zzn:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzq:Lcom/google/android/gms/internal/ads/zzawu;

    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzasf;-><init>(ILcom/google/android/gms/internal/ads/zzawu;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzari;->zzd()J

    move-result-wide v9

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzass;->zzk:Ljava/util/Stack;

    .line 83
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzass;->zzk:Ljava/util/Stack;

    .line 84
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzase;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzase;->zzd(Lcom/google/android/gms/internal/ads/zzasf;)V

    goto/16 :goto_f

    .line 85
    :cond_1c
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzasg;->zzaR:I

    sget v5, Lcom/google/android/gms/internal/ads/zzasg;->zzD:I

    if-ne v3, v5, :cond_21

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzawu;

    .line 86
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v3

    const/4 v5, 0x4

    .line 88
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzawu;->zzw(I)V

    .line 89
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zzm()J

    move-result-wide v5

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzasg;->zzf(I)I

    move-result v3

    if-nez v3, :cond_1d

    .line 90
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zzm()J

    move-result-wide v11

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zzm()J

    move-result-wide v13

    goto :goto_d

    .line 92
    :cond_1d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zzn()J

    move-result-wide v11

    .line 93
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zzn()J

    move-result-wide v13

    :goto_d
    add-long/2addr v13, v9

    move-wide v9, v11

    move-wide/from16 v18, v13

    const-wide/32 v13, 0xf4240

    move-wide v11, v9

    move-wide v15, v5

    .line 94
    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzaxb;->zzj(JJJ)J

    move-result-wide v20

    .line 95
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzawu;->zzw(I)V

    .line 96
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zzj()I

    move-result v3

    new-array v4, v3, [I

    new-array v15, v3, [J

    new-array v13, v3, [J

    new-array v14, v3, [J

    move-wide/from16 v11, v20

    :goto_e
    if-ge v8, v3, :cond_1f

    .line 97
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v16

    const/high16 v17, -0x80000000

    and-int v17, v16, v17

    if-nez v17, :cond_1e

    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zzm()J

    move-result-wide v22

    const v17, 0x7fffffff

    and-int v16, v16, v17

    .line 99
    aput v16, v4, v8

    .line 100
    aput-wide v18, v15, v8

    .line 101
    aput-wide v11, v14, v8

    add-long v9, v9, v22

    const-wide/32 v16, 0xf4240

    move-wide v11, v9

    move/from16 v22, v3

    move-object v7, v13

    move-object v3, v14

    move-wide/from16 v13, v16

    move-wide/from16 v23, v9

    move-object v9, v15

    move-wide v15, v5

    .line 102
    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzaxb;->zzj(JJJ)J

    move-result-wide v11

    .line 103
    aget-wide v13, v3, v8

    sub-long v13, v11, v13

    aput-wide v13, v7, v8

    const/4 v10, 0x4

    .line 104
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzawu;->zzw(I)V

    .line 105
    aget v13, v4, v8

    int-to-long v13, v13

    add-long v18, v18, v13

    add-int/lit8 v8, v8, 0x1

    move-object v14, v3

    move-object v13, v7

    move-object v15, v9

    move/from16 v3, v22

    move-wide/from16 v9, v23

    const/4 v7, 0x1

    goto :goto_e

    .line 106
    :cond_1e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v2, "Unhandled indirect reference"

    .line 107
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    move-object v7, v13

    move-object v3, v14

    move-object v9, v15

    .line 108
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v5, Lcom/google/android/gms/internal/ads/zzarh;

    invoke-direct {v5, v4, v9, v7, v3}, Lcom/google/android/gms/internal/ads/zzarh;-><init>([I[J[J[J)V

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 109
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzass;->zzx:Lcom/google/android/gms/internal/ads/zzark;

    .line 110
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzarq;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzark;->zzc(Lcom/google/android/gms/internal/ads/zzarq;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzy:Z

    goto :goto_f

    .line 111
    :cond_20
    invoke-virtual {v1, v3, v8}, Lcom/google/android/gms/internal/ads/zzari;->zzi(IZ)Z

    .line 112
    :cond_21
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzari;->zzd()J

    move-result-wide v2

    .line 113
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzass;->zzh(J)V

    goto/16 :goto_0

    .line 114
    :cond_22
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzp:I

    if-nez v2, :cond_24

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzi:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzawu;->zza:[B

    const/4 v3, 0x1

    .line 115
    invoke-virtual {v1, v2, v8, v6, v3}, Lcom/google/android/gms/internal/ads/zzari;->zzh([BIIZ)Z

    move-result v2

    if-nez v2, :cond_23

    const/4 v2, -0x1

    return v2

    :cond_23
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzass;->zzp:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzi:Lcom/google/android/gms/internal/ads/zzawu;

    .line 116
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzawu;->zzv(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzi:Lcom/google/android/gms/internal/ads/zzawu;

    .line 117
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zzm()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzo:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzi:Lcom/google/android/gms/internal/ads/zzawu;

    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zze()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzn:I

    :cond_24
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzo:J

    const-wide/16 v9, 0x1

    cmp-long v5, v2, v9

    if-nez v5, :cond_25

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzi:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzawu;->zza:[B

    .line 119
    invoke-virtual {v1, v2, v6, v6, v8}, Lcom/google/android/gms/internal/ads/zzari;->zzh([BIIZ)Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzp:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzi:Lcom/google/android/gms/internal/ads/zzawu;

    .line 120
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawu;->zzn()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzo:J

    :cond_25
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzp:I

    int-to-long v9, v5

    cmp-long v5, v2, v9

    if-ltz v5, :cond_31

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzari;->zzd()J

    move-result-wide v2

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzp:I

    int-to-long v9, v5

    sub-long/2addr v2, v9

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzn:I

    .line 122
    sget v7, Lcom/google/android/gms/internal/ads/zzasg;->zzN:I

    if-ne v5, v7, :cond_26

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 123
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v5, :cond_26

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzass;->zzd:Landroid/util/SparseArray;

    .line 124
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzasr;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzasr;->zza:Lcom/google/android/gms/internal/ads/zzata;

    iput-wide v2, v9, Lcom/google/android/gms/internal/ads/zzata;->zzc:J

    iput-wide v2, v9, Lcom/google/android/gms/internal/ads/zzata;->zzb:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_26
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzn:I

    sget v7, Lcom/google/android/gms/internal/ads/zzasg;->zzk:I

    if-ne v5, v7, :cond_28

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzass;->zzt:Lcom/google/android/gms/internal/ads/zzasr;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzo:J

    add-long/2addr v2, v5

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzr:J

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzy:Z

    if-nez v2, :cond_27

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzx:Lcom/google/android/gms/internal/ads/zzark;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzarp;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzs:J

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzarp;-><init>(J)V

    .line 125
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzark;->zzc(Lcom/google/android/gms/internal/ads/zzarq;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzy:Z

    :cond_27
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzass;->zzm:I

    goto/16 :goto_0

    :cond_28
    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzE:I

    if-eq v5, v2, :cond_2f

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzG:I

    if-eq v5, v2, :cond_2f

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzH:I

    if-eq v5, v2, :cond_2f

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzI:I

    if-eq v5, v2, :cond_2f

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzJ:I

    if-eq v5, v2, :cond_2f

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzN:I

    if-eq v5, v2, :cond_2f

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzO:I

    if-eq v5, v2, :cond_2f

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzP:I

    if-eq v5, v2, :cond_2f

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzS:I

    if-ne v5, v2, :cond_29

    goto/16 :goto_12

    .line 126
    :cond_29
    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzV:I

    const-wide/32 v3, 0x7fffffff

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzU:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzF:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzD:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzW:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzz:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzA:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzR:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzB:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzC:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzX:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzaf:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzag:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzak:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzaj:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzah:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzai:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzT:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzQ:I

    if-eq v5, v2, :cond_2c

    sget v2, Lcom/google/android/gms/internal/ads/zzasg;->zzaI:I

    if-ne v5, v2, :cond_2a

    goto :goto_11

    .line 127
    :cond_2a
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzass;->zzo:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_2b

    const/4 v2, 0x0

    .line 128
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzq:Lcom/google/android/gms/internal/ads/zzawu;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzm:I

    goto/16 :goto_0

    .line 129
    :cond_2b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    .line 130
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_2c
    :goto_11
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzp:I

    if-ne v2, v6, :cond_2e

    .line 132
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzass;->zzo:J

    cmp-long v2, v9, v3

    if-gtz v2, :cond_2d

    .line 133
    new-instance v2, Lcom/google/android/gms/internal/ads/zzawu;

    long-to-int v3, v9

    .line 134
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzawu;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzq:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzass;->zzi:Lcom/google/android/gms/internal/ads/zzawu;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzawu;->zza:[B

    .line 135
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzawu;->zza:[B

    invoke-static {v3, v8, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzm:I

    goto/16 :goto_0

    .line 136
    :cond_2d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    .line 137
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_2e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    .line 139
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_2f
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzari;->zzd()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzass;->zzo:J

    add-long/2addr v2, v4

    const-wide/16 v4, -0x8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzass;->zzk:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzase;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzass;->zzn:I

    .line 141
    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzase;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzass;->zzo:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzass;->zzp:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_30

    .line 142
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzass;->zzh(J)V

    goto/16 :goto_0

    .line 143
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzass;->zzb()V

    goto/16 :goto_0

    .line 144
    :cond_31
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v2, "Atom size less than header length (unsupported)."

    .line 145
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzari;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzasx;->zza(Lcom/google/android/gms/internal/ads/zzari;)Z

    move-result p1

    return p1
.end method
