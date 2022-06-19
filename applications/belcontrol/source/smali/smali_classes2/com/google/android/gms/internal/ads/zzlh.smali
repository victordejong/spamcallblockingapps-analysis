.class public final Lcom/google/android/gms/internal/ads/zzlh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzka;


# static fields
.field private static final zzapk:Lcom/google/android/gms/internal/ads/zzkb;

.field private static final zzaxj:I

.field private static final zzaxk:[B


# instance fields
.field private final flags:I

.field private zzaip:J

.field private final zzapr:Lcom/google/android/gms/internal/ads/zzpn;

.field private zzarg:I

.field private zzarh:I

.field private zzark:Lcom/google/android/gms/internal/ads/zzkc;

.field private final zzaxl:Lcom/google/android/gms/internal/ads/zzls;

.field private final zzaxm:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzlm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxn:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzaxp:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzaxq:Lcom/google/android/gms/internal/ads/zzpr;

.field private final zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzaxs:[B

.field private final zzaxt:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzkv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxu:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzlj;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxv:I

.field private zzaxw:I

.field private zzaxx:J

.field private zzaxy:I

.field private zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

.field private zzaya:J

.field private zzayb:I

.field private zzayc:J

.field private zzayd:Lcom/google/android/gms/internal/ads/zzlm;

.field private zzaye:I

.field private zzayf:Z

.field private zzayg:Lcom/google/android/gms/internal/ads/zzkh;

.field private zzayh:[Lcom/google/android/gms/internal/ads/zzkh;

.field private zzayi:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlh;->zzapk:Lcom/google/android/gms/internal/ads/zzkb;

    const-string v0, "seig"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpt;->zzbh(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxj:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxk:[B

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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzlh;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzlh;-><init>(ILcom/google/android/gms/internal/ads/zzpr;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzpr;)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzlh;-><init>(ILcom/google/android/gms/internal/ads/zzpr;Lcom/google/android/gms/internal/ads/zzls;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzpr;Lcom/google/android/gms/internal/ads/zzls;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->flags:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxq:Lcom/google/android/gms/internal/ads/zzpr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxl:Lcom/google/android/gms/internal/ads/zzls;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzpm;->zzbjt:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpn;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzapr:Lcom/google/android/gms/internal/ads/zzpn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxn:Lcom/google/android/gms/internal/ads/zzpn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxp:Lcom/google/android/gms/internal/ads/zzpn;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxs:[B

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxu:Ljava/util/LinkedList;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaip:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzayc:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlh;->zzhb()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzpn;ILcom/google/android/gms/internal/ads/zzlu;)V
    .locals 3

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzkw;->zzas(I)I

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

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v1

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzaxc:I

    if-ne v1, v2, :cond_1

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzbba:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpn;->zziv()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzlu;->zzau(I)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbc:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zze([BII)V

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbe:Z

    return-void

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhw;

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzaxc:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhw;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzky;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzjo;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzky;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzkw;->type:I

    sget v7, Lcom/google/android/gms/internal/ads/zzkw;->zzaur:I

    if-ne v6, v7, :cond_9

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    new-instance v6, Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzpn;-><init>([B)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->limit()I

    move-result v8

    const/16 v9, 0x20

    if-ge v8, v9, :cond_1

    :goto_1
    move-object v6, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->zziv()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    if-eq v8, v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v8

    if-eq v8, v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    const/16 v6, 0x25

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unsupported pssh version: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PsshAtomUtil"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v9, Ljava/util/UUID;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->readLong()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->readLong()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v7, v8, :cond_5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    :cond_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->zziv()I

    move-result v8

    if-eq v7, v8, :cond_6

    goto :goto_1

    :cond_6
    new-array v8, v7, [B

    invoke-virtual {v6, v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zze([BII)V

    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_2
    if-nez v6, :cond_7

    move-object v6, v2

    goto :goto_3

    :cond_7
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/UUID;

    :goto_3
    if-nez v6, :cond_8

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    new-instance v7, Lcom/google/android/gms/internal/ads/zzjo$zza;

    const-string v8, "video/mp4"

    invoke-direct {v7, v6, v8, v5}, Lcom/google/android/gms/internal/ads/zzjo$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    return-object v2

    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/ads/zzjo;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzjo;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private final zzeb(J)V
    .locals 53

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkv;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasu:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_4f

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkv;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzkw;->type:I

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaty:I

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v9, 0x1

    if-ne v2, v3, :cond_d

    const-string v2, "Unexpected moov box."

    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(ZLjava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzlh;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjo;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzauj:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzkv;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v3

    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move-wide/from16 v16, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_4

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzky;

    iget v13, v11, Lcom/google/android/gms/internal/ads/zzkw;->type:I

    sget v14, Lcom/google/android/gms/internal/ads/zzkw;->zzatv:I

    if-ne v13, v14, :cond_1

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v14

    sub-int/2addr v14, v9

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v5

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v8

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v9, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-direct {v9, v14, v5, v8, v11}, Lcom/google/android/gms/internal/ads/zzlg;-><init>(IIII)V

    invoke-static {v13, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-virtual {v15, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    sget v5, Lcom/google/android/gms/internal/ads/zzkw;->zzauk:I

    if-ne v13, v5, :cond_3

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v8

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v8

    :goto_2
    move-wide/from16 v16, v8

    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0xc

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasw:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v5, :cond_7

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasw:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/google/android/gms/internal/ads/zzkv;

    iget v9, v10, Lcom/google/android/gms/internal/ads/zzkw;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkw;->zzaua:I

    if-ne v9, v11, :cond_5

    sget v9, Lcom/google/android/gms/internal/ads/zzkw;->zzatz:I

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v11

    const/4 v9, 0x0

    move-wide/from16 v12, v16

    move-object v14, v2

    move-object v7, v15

    move v15, v9

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzkx;->zza(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzky;JLcom/google/android/gms/internal/ads/zzjo;Z)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v9

    if-eqz v9, :cond_6

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzls;->id:I

    invoke-virtual {v3, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_5
    move-object v7, v15

    :cond_6
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object v15, v7

    const/16 v7, 0x8

    goto :goto_4

    :cond_7
    move-object v7, v15

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_8

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzls;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    iget v10, v5, Lcom/google/android/gms/internal/ads/zzls;->type:I

    invoke-interface {v9, v2, v10}, Lcom/google/android/gms/internal/ads/zzkc;->zzc(II)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzlm;-><init>(Lcom/google/android/gms/internal/ads/zzkh;)V

    iget v9, v5, Lcom/google/android/gms/internal/ads/zzls;->id:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzlm;->zza(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzlg;)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    iget v10, v5, Lcom/google/android/gms/internal/ads/zzls;->id:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaip:J

    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzls;->zzaip:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaip:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->flags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzkc;->zzc(II)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    const-wide v2, 0x7fffffffffffffffL

    const-string v5, "application/x-emsg"

    invoke-static {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzht;->zza(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzht;)V

    :cond_9
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->flags:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayh:[Lcom/google/android/gms/internal/ads/zzkh;

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzkc;->zzc(II)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "application/cea-608"

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzht;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzht;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzkh;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayh:[Lcom/google/android/gms/internal/ads/zzkh;

    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzkc;->zzgs()V

    goto/16 :goto_0

    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_c

    const/4 v9, 0x1

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    :goto_7
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(Z)V

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v1, :cond_0

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzls;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzls;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzlm;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzls;->id:I

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzlm;->zza(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzlg;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_d
    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzauh:I

    if-ne v2, v3, :cond_4d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->flags:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxs:[B

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasw:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v7, :cond_4c

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasw:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzkv;

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzkw;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkw;->zzaui:I

    if-ne v10, v11, :cond_4b

    sget v10, Lcom/google/android/gms/internal/ads/zzkw;->zzatu:I

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzkw;->zzas(I)I

    move-result v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v12

    and-int/lit8 v13, v3, 0x10

    if-nez v13, :cond_e

    goto :goto_a

    :cond_e
    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzlm;

    if-nez v12, :cond_f

    move-object v12, v4

    goto :goto_f

    :cond_f
    and-int/lit8 v13, v11, 0x1

    if-eqz v13, :cond_10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v13

    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzlu;->zzbaq:J

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzlu;->zzbar:J

    :cond_10
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazt:Lcom/google/android/gms/internal/ads/zzlg;

    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    goto :goto_b

    :cond_11
    iget v14, v13, Lcom/google/android/gms/internal/ads/zzlg;->zzaxi:I

    :goto_b
    and-int/lit8 v15, v11, 0x8

    if-eqz v15, :cond_12

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v15

    goto :goto_c

    :cond_12
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzlg;->duration:I

    :goto_c
    and-int/lit8 v16, v11, 0x10

    if-eqz v16, :cond_13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v16

    move/from16 v4, v16

    goto :goto_d

    :cond_13
    iget v4, v13, Lcom/google/android/gms/internal/ads/zzlg;->size:I

    :goto_d
    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_14

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v10

    goto :goto_e

    :cond_14
    iget v10, v13, Lcom/google/android/gms/internal/ads/zzlg;->flags:I

    :goto_e
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-direct {v13, v14, v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzlg;-><init>(IIII)V

    iput-object v13, v11, Lcom/google/android/gms/internal/ads/zzlu;->zzbao:Lcom/google/android/gms/internal/ads/zzlg;

    :goto_f
    if-eqz v12, :cond_4b

    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget-wide v10, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbbf:J

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzlm;->reset()V

    sget v13, Lcom/google/android/gms/internal/ads/zzkw;->zzatt:I

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v14

    if-eqz v14, :cond_16

    and-int/lit8 v14, v3, 0x2

    if-nez v14, :cond_16

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_15

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v10

    goto :goto_10

    :cond_15
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v10

    :cond_16
    :goto_10
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_11
    if-ge v15, v14, :cond_19

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v7

    move-object/from16 v7, v20

    check-cast v7, Lcom/google/android/gms/internal/ads/zzky;

    move-wide/from16 v22, v10

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzkw;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkw;->zzatw:I

    if-ne v10, v11, :cond_17

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v10, 0xc

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v7

    if-lez v7, :cond_18

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_17
    const/16 v10, 0xc

    :cond_18
    :goto_12
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v21

    move-wide/from16 v10, v22

    goto :goto_11

    :cond_19
    move/from16 v21, v7

    move-wide/from16 v22, v10

    const/4 v7, 0x0

    const/16 v10, 0xc

    iput v7, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    iput v7, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazv:I

    iput v7, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    iget-object v7, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iput v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbas:I

    iput v2, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzaxc:I

    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbau:[I

    if-eqz v11, :cond_1a

    array-length v11, v11

    if-ge v11, v6, :cond_1b

    :cond_1a
    new-array v11, v6, [J

    iput-object v11, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbat:[J

    new-array v6, v6, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbau:[I

    :cond_1b
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbav:[I

    if-eqz v6, :cond_1c

    array-length v6, v6

    if-ge v6, v2, :cond_1d

    :cond_1c
    mul-int/lit8 v2, v2, 0x7d

    div-int/lit8 v2, v2, 0x64

    new-array v6, v2, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbav:[I

    new-array v6, v2, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbaw:[I

    new-array v6, v2, [J

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbax:[J

    new-array v6, v2, [Z

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbay:[Z

    new-array v2, v2, [Z

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbba:[Z

    :cond_1d
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_13
    const-wide/16 v24, 0x0

    if-ge v2, v14, :cond_32

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/google/android/gms/internal/ads/zzky;

    iget v15, v10, Lcom/google/android/gms/internal/ads/zzkw;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkw;->zzatw:I

    if-ne v15, v11, :cond_31

    add-int/lit8 v11, v6, 0x1

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v15

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzkw;->zzas(I)I

    move-result v15

    move/from16 v27, v11

    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    move-object/from16 v28, v13

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    move/from16 v29, v14

    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbao:Lcom/google/android/gms/internal/ads/zzlg;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbau:[I

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v30

    aput v30, v0, v6

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbat:[J

    move-object/from16 v31, v4

    move-object/from16 v30, v5

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbaq:J

    aput-wide v4, v0, v6

    and-int/lit8 v4, v15, 0x1

    if-eqz v4, :cond_1e

    aget-wide v4, v0, v6

    move-object/from16 v32, v1

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v1

    move/from16 v33, v8

    move-object/from16 v34, v9

    int-to-long v8, v1

    add-long/2addr v4, v8

    aput-wide v4, v0, v6

    goto :goto_14

    :cond_1e
    move-object/from16 v32, v1

    move/from16 v33, v8

    move-object/from16 v34, v9

    :goto_14
    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_15

    :cond_1f
    const/4 v0, 0x0

    :goto_15
    iget v1, v14, Lcom/google/android/gms/internal/ads/zzlg;->flags:I

    if-eqz v0, :cond_20

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v1

    :cond_20
    and-int/lit16 v4, v15, 0x100

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    goto :goto_16

    :cond_21
    const/4 v4, 0x0

    :goto_16
    and-int/lit16 v5, v15, 0x200

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    goto :goto_17

    :cond_22
    const/4 v5, 0x0

    :goto_17
    and-int/lit16 v8, v15, 0x400

    if-eqz v8, :cond_23

    const/4 v8, 0x1

    goto :goto_18

    :cond_23
    const/4 v8, 0x0

    :goto_18
    and-int/lit16 v9, v15, 0x800

    if-eqz v9, :cond_24

    const/4 v9, 0x1

    goto :goto_19

    :cond_24
    const/4 v9, 0x0

    :goto_19
    iget-object v15, v11, Lcom/google/android/gms/internal/ads/zzls;->zzbal:[J

    move/from16 v35, v1

    if-eqz v15, :cond_25

    array-length v1, v15

    move-object/from16 v36, v12

    const/4 v12, 0x1

    if-ne v1, v12, :cond_26

    const/4 v1, 0x0

    aget-wide v37, v15, v1

    cmp-long v12, v37, v24

    if-nez v12, :cond_26

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzls;->zzbam:[J

    aget-wide v37, v12, v1

    const-wide/16 v39, 0x3e8

    move v12, v2

    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/zzls;->zzdf:J

    move-wide/from16 v41, v1

    invoke-static/range {v37 .. v42}, Lcom/google/android/gms/internal/ads/zzpt;->zza(JJJ)J

    move-result-wide v24

    goto :goto_1a

    :cond_25
    move-object/from16 v36, v12

    :cond_26
    move v12, v2

    :goto_1a
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbav:[I

    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbaw:[I

    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbax:[J

    move/from16 v37, v12

    iget-object v12, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbay:[Z

    move-object/from16 v38, v12

    iget v12, v11, Lcom/google/android/gms/internal/ads/zzls;->type:I

    move-object/from16 v39, v1

    const/4 v1, 0x2

    if-ne v12, v1, :cond_27

    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_1b

    :cond_27
    const/4 v1, 0x0

    :goto_1b
    iget-object v12, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbau:[I

    aget v12, v12, v6

    add-int/2addr v12, v7

    move/from16 v46, v1

    move-object/from16 v26, v2

    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/zzls;->zzdf:J

    move v11, v7

    if-lez v6, :cond_28

    iget-wide v6, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbbf:J

    goto :goto_1c

    :cond_28
    move-wide/from16 v6, v22

    :goto_1c
    if-ge v11, v12, :cond_30

    if-eqz v4, :cond_29

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v40

    move/from16 v47, v3

    move/from16 v3, v40

    goto :goto_1d

    :cond_29
    move/from16 v47, v3

    iget v3, v14, Lcom/google/android/gms/internal/ads/zzlg;->duration:I

    :goto_1d
    if-eqz v5, :cond_2a

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v40

    move/from16 v48, v4

    move/from16 v4, v40

    goto :goto_1e

    :cond_2a
    move/from16 v48, v4

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzlg;->size:I

    :goto_1e
    if-nez v11, :cond_2b

    if-eqz v0, :cond_2b

    move/from16 v49, v0

    move/from16 v0, v35

    goto :goto_1f

    :cond_2b
    if-eqz v8, :cond_2c

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v40

    move/from16 v49, v0

    move/from16 v0, v40

    goto :goto_1f

    :cond_2c
    move/from16 v49, v0

    iget v0, v14, Lcom/google/android/gms/internal/ads/zzlg;->flags:I

    :goto_1f
    move/from16 v50, v5

    if-eqz v9, :cond_2d

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    move/from16 v51, v8

    move/from16 v52, v9

    int-to-long v8, v5

    div-long/2addr v8, v1

    long-to-int v5, v8

    aput v5, v26, v11

    goto :goto_20

    :cond_2d
    move/from16 v51, v8

    move/from16 v52, v9

    const/4 v5, 0x0

    aput v5, v26, v11

    :goto_20
    const-wide/16 v42, 0x3e8

    move-wide/from16 v40, v6

    move-wide/from16 v44, v1

    invoke-static/range {v40 .. v45}, Lcom/google/android/gms/internal/ads/zzpt;->zza(JJJ)J

    move-result-wide v8

    sub-long v8, v8, v24

    aput-wide v8, v15, v11

    aput v4, v39, v11

    const/16 v4, 0x10

    shr-int/2addr v0, v4

    const/4 v4, 0x1

    and-int/2addr v0, v4

    if-nez v0, :cond_2f

    if-eqz v46, :cond_2e

    if-nez v11, :cond_2f

    :cond_2e
    const/4 v0, 0x1

    goto :goto_21

    :cond_2f
    const/4 v0, 0x0

    :goto_21
    aput-boolean v0, v38, v11

    int-to-long v3, v3

    add-long/2addr v6, v3

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v47

    move/from16 v4, v48

    move/from16 v0, v49

    move/from16 v5, v50

    move/from16 v8, v51

    move/from16 v9, v52

    goto/16 :goto_1c

    :cond_30
    move/from16 v47, v3

    iput-wide v6, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbbf:J

    move v7, v12

    move/from16 v6, v27

    goto :goto_22

    :cond_31
    move-object/from16 v32, v1

    move/from16 v37, v2

    move/from16 v47, v3

    move-object/from16 v31, v4

    move-object/from16 v30, v5

    move v11, v7

    move/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v36, v12

    move-object/from16 v28, v13

    move/from16 v29, v14

    :goto_22
    add-int/lit8 v2, v37, 0x1

    move-object/from16 v0, p0

    move-object/from16 v13, v28

    move/from16 v14, v29

    move-object/from16 v5, v30

    move-object/from16 v4, v31

    move-object/from16 v1, v32

    move/from16 v8, v33

    move-object/from16 v9, v34

    move-object/from16 v12, v36

    move/from16 v3, v47

    const/16 v10, 0xc

    goto/16 :goto_13

    :cond_32
    move-object/from16 v32, v1

    move/from16 v47, v3

    move-object/from16 v31, v4

    move-object/from16 v30, v5

    move/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v36, v12

    sget v0, Lcom/google/android/gms/internal/ads/zzkw;->zzauz:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v0

    if-eqz v0, :cond_39

    move-object/from16 v4, v36

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzls;->zzbak:[Lcom/google/android/gms/internal/ads/zzlr;

    move-object/from16 v2, v31

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbao:Lcom/google/android/gms/internal/ads/zzlg;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzlg;->zzaxi:I

    aget-object v1, v1, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzlr;->zzbag:I

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzkw;->zzas(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_33

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    :cond_33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v4

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzaxc:I

    if-ne v4, v5, :cond_38

    if-nez v3, :cond_35

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbba:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_23
    if-ge v5, v4, :cond_37

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v7

    add-int/2addr v6, v7

    if-le v7, v1, :cond_34

    const/4 v7, 0x1

    goto :goto_24

    :cond_34
    const/4 v7, 0x0

    :goto_24
    aput-boolean v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_35
    if-le v3, v1, :cond_36

    const/4 v0, 0x1

    goto :goto_25

    :cond_36
    const/4 v0, 0x0

    :goto_25
    mul-int v3, v3, v4

    const/4 v1, 0x0

    add-int/lit8 v6, v3, 0x0

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbba:[Z

    invoke-static {v3, v1, v4, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_37
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzlu;->zzau(I)V

    goto :goto_26

    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzaxc:I

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length mismatch: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    move-object/from16 v2, v31

    :goto_26
    sget v0, Lcom/google/android/gms/internal/ads/zzkw;->zzava:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkw;->zzas(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3a

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    :cond_3a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v1

    if-ne v1, v5, :cond_3c

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v1

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbar:J

    if-nez v1, :cond_3b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v0

    goto :goto_27

    :cond_3b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v0

    :goto_27
    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbar:J

    goto :goto_28

    :cond_3c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected saio entry count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_28
    sget v0, Lcom/google/android/gms/internal/ads/zzkw;->zzave:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzlh;->zza(Lcom/google/android/gms/internal/ads/zzpn;ILcom/google/android/gms/internal/ads/zzlu;)V

    :cond_3e
    sget v0, Lcom/google/android/gms/internal/ads/zzkw;->zzavb:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzkw;->zzavc:I

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v1

    if-eqz v0, :cond_46

    if-eqz v1, :cond_46

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzlh;->zzaxj:I

    if-ne v4, v5, :cond_46

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3f

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    :cond_3f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_45

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v3

    if-ne v3, v5, :cond_44

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v0

    if-ne v0, v4, :cond_41

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v3

    cmp-long v0, v3, v24

    if-eqz v0, :cond_40

    const/4 v0, 0x4

    const/4 v3, 0x2

    goto :goto_29

    :cond_40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v1, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    const/4 v3, 0x2

    if-lt v0, v3, :cond_42

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    goto :goto_29

    :cond_42
    const/4 v0, 0x4

    :goto_29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_43

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v3

    const/16 v5, 0x10

    new-array v6, v5, [B

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzpn;->zze([BII)V

    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbaz:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlr;

    invoke-direct {v1, v4, v3, v6}, Lcom/google/android/gms/internal/ads/zzlr;-><init>(ZI[B)V

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbb:Lcom/google/android/gms/internal/ads/zzlr;

    goto :goto_2a

    :cond_43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    const/4 v0, 0x4

    goto :goto_2a

    :cond_45
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    const/4 v0, 0x4

    const/4 v4, 0x1

    :cond_47
    :goto_2a
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v1, :cond_4a

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzky;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzkw;->type:I

    sget v7, Lcom/google/android/gms/internal/ads/zzkw;->zzavd:I

    if-ne v6, v7, :cond_48

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    move-object/from16 v7, v30

    const/16 v8, 0x10

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10, v8}, Lcom/google/android/gms/internal/ads/zzpn;->zze([BII)V

    sget-object v11, Lcom/google/android/gms/internal/ads/zzlh;->zzaxk:[B

    invoke-static {v7, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_49

    invoke-static {v5, v8, v2}, Lcom/google/android/gms/internal/ads/zzlh;->zza(Lcom/google/android/gms/internal/ads/zzpn;ILcom/google/android/gms/internal/ads/zzlu;)V

    goto :goto_2c

    :cond_48
    move-object/from16 v7, v30

    const/16 v6, 0x8

    const/16 v8, 0x10

    const/4 v10, 0x0

    :cond_49
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v30, v7

    goto :goto_2b

    :cond_4a
    move-object/from16 v7, v30

    const/16 v6, 0x8

    const/4 v10, 0x0

    goto :goto_2d

    :cond_4b
    move-object/from16 v32, v1

    move-object/from16 v19, v2

    move/from16 v47, v3

    move/from16 v21, v7

    move/from16 v33, v8

    const/4 v0, 0x4

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v10, 0x0

    move-object v7, v5

    :goto_2d
    add-int/lit8 v8, v33, 0x1

    move-object/from16 v0, p0

    move-object v5, v7

    move-object/from16 v2, v19

    move/from16 v7, v21

    move-object/from16 v1, v32

    move/from16 v3, v47

    const/4 v4, 0x0

    const/4 v6, 0x4

    goto/16 :goto_9

    :cond_4c
    const/4 v10, 0x0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzlh;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjo;

    move-result-object v0

    move-object/from16 v2, p0

    if-eqz v0, :cond_4e

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v8, 0x0

    :goto_2e
    if-ge v8, v1, :cond_4e

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzasp:Lcom/google/android/gms/internal/ads/zzkh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzls;->zzahz:Lcom/google/android/gms/internal/ads/zzht;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzht;->zza(Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzht;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_4d
    move-object v2, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzkv;->zza(Lcom/google/android/gms/internal/ads/zzkv;)V

    :cond_4e
    move-object v0, v2

    goto/16 :goto_0

    :cond_4f
    move-object v2, v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlh;->zzhb()V

    return-void
.end method

.method private final zzhb()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzkg;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :cond_0
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    const/4 v3, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_26

    if-eq v2, v6, :cond_1d

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x3

    if-eq v2, v3, :cond_18

    if-ne v2, v11, :cond_c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v13, v12, :cond_2

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzlm;

    iget v11, v15, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbas:I

    if-eq v11, v8, :cond_1

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbat:[J

    aget-wide v17, v4, v11

    cmp-long v4, v17, v9

    if-gez v4, :cond_1

    move-object v14, v15

    move-wide/from16 v9, v17

    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x3

    goto :goto_1

    :cond_2
    if-nez v14, :cond_4

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaya:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlh;->zzhb()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto/16 :goto_10

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v2, v14, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbat:[J

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    aget-wide v8, v2, v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v2, v8

    if-gez v2, :cond_5

    const-string v2, "FragmentedMp4Extractor"

    const-string v4, "Ignoring negative offset to sample data."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbav:[I

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    aget v8, v8, v9

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    iget-boolean v8, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbaz:Z

    if-eqz v8, :cond_a

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbao:Lcom/google/android/gms/internal/ads/zzlg;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzlg;->zzaxi:I

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbbb:Lcom/google/android/gms/internal/ads/zzlr;

    if-eqz v11, :cond_7

    goto :goto_2

    :cond_7
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzls;->zzbak:[Lcom/google/android/gms/internal/ads/zzlr;

    aget-object v11, v11, v10

    :goto_2
    iget v10, v11, Lcom/google/android/gms/internal/ads/zzlr;->zzbag:I

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbba:[Z

    aget-boolean v4, v4, v9

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxp:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    if-eqz v4, :cond_8

    const/16 v12, 0x80

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    :goto_3
    or-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, v11, v7

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzasp:Lcom/google/android/gms/internal/ads/zzkh;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxp:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-interface {v2, v9, v6}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    invoke-interface {v2, v8, v10}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    if-nez v4, :cond_9

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedShort()I

    move-result v4

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    invoke-interface {v2, v8, v4}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v4

    :goto_4
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    goto :goto_5

    :cond_a
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzls;->zzbaj:I

    if-ne v2, v6, :cond_b

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    sub-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    :cond_b
    const/4 v2, 0x4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzasp:Lcom/google/android/gms/internal/ads/zzkh;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    iget v9, v5, Lcom/google/android/gms/internal/ads/zzls;->zzasq:I

    const-wide/16 v10, 0x3e8

    if-eqz v9, :cond_10

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxn:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    aput-byte v7, v12, v7

    aput-byte v7, v12, v6

    aput-byte v7, v12, v3

    add-int/lit8 v3, v9, 0x1

    rsub-int/lit8 v9, v9, 0x4

    :goto_6
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    if-ge v13, v14, :cond_11

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    if-nez v13, :cond_e

    invoke-interface {v1, v12, v9, v3}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxn:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxn:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v13

    sub-int/2addr v13, v6

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzapr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzapr:Lcom/google/android/gms/internal/ads/zzpn;

    const/4 v14, 0x4

    invoke-interface {v8, v13, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxn:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-interface {v8, v13, v6}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayh:[Lcom/google/android/gms/internal/ads/zzkh;

    if-eqz v13, :cond_d

    iget-object v13, v5, Lcom/google/android/gms/internal/ads/zzls;->zzahz:Lcom/google/android/gms/internal/ads/zzht;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    aget-byte v15, v12, v14

    invoke-static {v13, v15}, Lcom/google/android/gms/internal/ads/zzpm;->zza(Ljava/lang/String;B)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x1

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    :goto_7
    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayf:Z

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    add-int/lit8 v13, v13, 0x5

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    add-int/2addr v13, v9

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    goto :goto_6

    :cond_e
    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayf:Z

    if-eqz v14, :cond_f

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzpn;->reset(I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    invoke-interface {v1, v13, v7, v14}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    invoke-interface {v8, v13, v14}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v15, v14, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzpn;->limit()I

    move-result v14

    invoke-static {v15, v14}, Lcom/google/android/gms/internal/ads/zzpm;->zzb([BI)I

    move-result v14

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzls;->zzahz:Lcom/google/android/gms/internal/ads/zzht;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzpn;->zzbh(I)V

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzlu;->zzav(I)J

    move-result-wide v6

    mul-long v6, v6, v10

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayh:[Lcom/google/android/gms/internal/ads/zzkh;

    invoke-static {v6, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zznw;->zza(JLcom/google/android/gms/internal/ads/zzpn;[Lcom/google/android/gms/internal/ads/zzkh;)V

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    invoke-interface {v8, v1, v13, v6}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzjz;IZ)I

    move-result v13

    :goto_8
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    add-int/2addr v6, v13

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    sub-int/2addr v6, v13

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_10
    :goto_9
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    if-ge v3, v6, :cond_11

    sub-int/2addr v6, v3

    const/4 v3, 0x0

    invoke-interface {v8, v1, v6, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzjz;IZ)I

    move-result v6

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    goto :goto_9

    :cond_11
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzlu;->zzav(I)J

    move-result-wide v6

    mul-long v6, v6, v10

    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbaz:Z

    if-eqz v3, :cond_12

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    :goto_a
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbay:[Z

    aget-boolean v2, v10, v2

    or-int v11, v9, v2

    if-eqz v3, :cond_15

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbbb:Lcom/google/android/gms/internal/ads/zzlr;

    if-eqz v2, :cond_13

    goto :goto_b

    :cond_13
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzls;->zzbak:[Lcom/google/android/gms/internal/ads/zzlr;

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbao:Lcom/google/android/gms/internal/ads/zzlg;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzlg;->zzaxi:I

    aget-object v2, v2, v3

    :goto_b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzazy:Lcom/google/android/gms/internal/ads/zzlr;

    if-eq v2, v5, :cond_14

    new-instance v3, Lcom/google/android/gms/internal/ads/zzkk;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzlr;->zzbah:[B

    const/4 v9, 0x1

    invoke-direct {v3, v9, v5}, Lcom/google/android/gms/internal/ads/zzkk;-><init>(I[B)V

    goto :goto_c

    :cond_14
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzazx:Lcom/google/android/gms/internal/ads/zzkk;

    :goto_c
    move-object v14, v3

    goto :goto_d

    :cond_15
    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_d
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iput-object v14, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzazx:Lcom/google/android/gms/internal/ads/zzkk;

    iput-object v2, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzazy:Lcom/google/android/gms/internal/ads/zzlr;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    const/4 v13, 0x0

    move-wide v9, v6

    :goto_e
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzkh;->zza(JIIILcom/google/android/gms/internal/ads/zzkk;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxu:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxu:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzlj;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayb:I

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzlj;->size:I

    sub-int v13, v3, v12

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayb:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzlj;->zzaym:J

    add-long v9, v6, v2

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto :goto_e

    :cond_16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazv:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazv:I

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbau:[I

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    aget v4, v4, v5

    if-ne v3, v4, :cond_17

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazv:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    :goto_f
    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    const/4 v6, 0x1

    :goto_10
    if-eqz v6, :cond_0

    return v3

    :cond_18
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    if-ge v3, v2, :cond_1a

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzlu;->zzbbe:Z

    if-eqz v6, :cond_19

    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzlu;->zzbar:J

    cmp-long v7, v5, v9

    if-gez v7, :cond_19

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzlm;

    move-wide v9, v5

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1a
    if-nez v4, :cond_1b

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    goto/16 :goto_0

    :cond_1b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v2

    sub-long/2addr v9, v2

    long-to-int v2, v9

    if-ltz v2, :cond_1c

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbc:I

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbe:Z

    goto/16 :goto_0

    :cond_1c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Offset to encryption data was negative."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    long-to-int v2, v6

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    sub-int/2addr v2, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    if-eqz v4, :cond_25

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzky;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzky;-><init>(ILcom/google/android/gms/internal/ads/zzpn;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v6

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzkv;->zza(Lcom/google/android/gms/internal/ads/zzky;)V

    goto/16 :goto_15

    :cond_1e
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzkw;->type:I

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzatx:I

    if-ne v4, v8, :cond_22

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v14

    if-nez v4, :cond_1f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v8

    goto :goto_12

    :cond_1f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v8

    :goto_12
    add-long/2addr v6, v8

    const-wide/32 v10, 0xf4240

    move-wide v8, v4

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzpt;->zza(JJJ)J

    move-result-wide v19

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedShort()I

    move-result v3

    new-array v12, v3, [I

    new-array v13, v3, [J

    new-array v10, v3, [J

    new-array v11, v3, [J

    move-wide/from16 v21, v19

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v3, :cond_21

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v9

    const/high16 v16, -0x80000000

    and-int v16, v9, v16

    if-nez v16, :cond_20

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v23

    const v16, 0x7fffffff

    and-int v9, v9, v16

    aput v9, v12, v8

    aput-wide v6, v13, v8

    aput-wide v21, v11, v8

    add-long v4, v4, v23

    const-wide/32 v21, 0xf4240

    move/from16 v18, v8

    move-wide v8, v4

    move/from16 p2, v3

    move-wide/from16 v23, v4

    move-object v3, v10

    move-object v4, v11

    move-wide/from16 v10, v21

    move-object v5, v12

    move-object v1, v13

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzpt;->zza(JJJ)J

    move-result-wide v21

    aget-wide v8, v4, v18

    sub-long v8, v21, v8

    aput-wide v8, v3, v18

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    aget v9, v5, v18

    int-to-long v9, v9

    add-long/2addr v6, v9

    add-int/lit8 v9, v18, 0x1

    move-object v13, v1

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v8, v9

    move-wide/from16 v4, v23

    move-object/from16 v1, p1

    move/from16 v3, p2

    goto :goto_13

    :cond_20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Unhandled indirect reference"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v1, v13

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzjy;

    invoke-direct {v6, v5, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzjy;-><init>([I[J[J[J)V

    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayc:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkf;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzkc;->zza(Lcom/google/android/gms/internal/ads/zzkf;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayi:Z

    goto :goto_14

    :cond_22
    sget v1, Lcom/google/android/gms/internal/ads/zzkw;->zzawd:I

    if-ne v4, v1, :cond_24

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    if-eqz v2, :cond_24

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzjc()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzjc()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzpt;->zza(JJJ)J

    move-result-wide v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zziv()I

    move-result v9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {v2, v1, v9}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayc:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v1, v5

    if-eqz v7, :cond_23

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    add-long v6, v1, v3

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzkh;->zza(JIIILcom/google/android/gms/internal/ads/zzkk;)V

    goto :goto_14

    :cond_23
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxu:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzlj;

    invoke-direct {v2, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzlj;-><init>(JI)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayb:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayb:I

    :cond_24
    :goto_14
    move-object/from16 v1, p1

    goto :goto_15

    :cond_25
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    :goto_15
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzlh;->zzeb(J)V

    goto/16 :goto_0

    :cond_26
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    if-nez v2, :cond_28

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzjz;->zza([BIIZ)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_1e

    :cond_27
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    :cond_28
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_29

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    invoke-interface {v1, v2, v5, v5}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    :cond_29
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-ltz v2, :cond_37

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v6

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    int-to-long v8, v2

    sub-long/2addr v6, v8

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkw;->zzauh:I

    if-ne v2, v4, :cond_2a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_2a

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/zzlu;->zzbap:J

    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/zzlu;->zzbar:J

    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/zzlu;->zzbaq:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkw;->zzate:I

    if-ne v2, v4, :cond_2c

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaya:J

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayi:Z

    if-nez v2, :cond_2b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzki;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaip:J

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzki;-><init>(J)V

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzkc;->zza(Lcom/google/android/gms/internal/ads/zzkf;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayi:Z

    :cond_2b
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    :goto_17
    const/4 v2, 0x1

    goto/16 :goto_1d

    :cond_2c
    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaty:I

    if-eq v2, v3, :cond_2e

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaua:I

    if-eq v2, v3, :cond_2e

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaub:I

    if-eq v2, v3, :cond_2e

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzauc:I

    if-eq v2, v3, :cond_2e

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaud:I

    if-eq v2, v3, :cond_2e

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzauh:I

    if-eq v2, v3, :cond_2e

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaui:I

    if-eq v2, v3, :cond_2e

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzauj:I

    if-eq v2, v3, :cond_2e

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaum:I

    if-ne v2, v3, :cond_2d

    goto :goto_18

    :cond_2d
    const/4 v3, 0x0

    goto :goto_19

    :cond_2e
    :goto_18
    const/4 v3, 0x1

    :goto_19
    if-eqz v3, :cond_30

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzkv;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_2f

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzlh;->zzeb(J)V

    goto :goto_17

    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlh;->zzhb()V

    goto :goto_17

    :cond_30
    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaup:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzauo:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzatz:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzatx:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzauq:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzatt:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzatu:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaul:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzatv:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzatw:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaur:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzauz:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzava:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzave:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzavd:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzavb:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzavc:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaun:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzauk:I

    if-eq v2, v3, :cond_32

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzawd:I

    if-ne v2, v3, :cond_31

    goto :goto_1a

    :cond_31
    const/4 v2, 0x0

    goto :goto_1b

    :cond_32
    :goto_1a
    const/4 v2, 0x1

    :goto_1b
    const-wide/32 v3, 0x7fffffff

    if-eqz v2, :cond_35

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    if-ne v2, v5, :cond_34

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    cmp-long v2, v6, v3

    if-gtz v2, :cond_33

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpn;

    long-to-int v3, v6

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1c

    :cond_33
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_34
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_36

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    :goto_1c
    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    :goto_1d
    const/4 v6, 0x1

    :goto_1e
    if-nez v6, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_36
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzkc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjz;)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzlp;->zzd(Lcom/google/android/gms/internal/ads/zzjz;)Z

    move-result p1

    return p1
.end method

.method public final zzc(JJ)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzlm;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzlm;->reset()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxu:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzayb:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlh;->zzhb()V

    return-void
.end method
