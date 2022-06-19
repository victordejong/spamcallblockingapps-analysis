.class public final Lcom/google/android/gms/internal/ads/zzlh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

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
.method static constructor <clinit>()V
    .locals 1

    .line 677
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlh;->zzapk:Lcom/google/android/gms/internal/ads/zzkb;

    const-string v0, "seig"

    .line 678
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpt;->zzbh(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxj:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 679
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

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzlh;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzlh;-><init>(ILcom/google/android/gms/internal/ads/zzpr;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzpr;)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzlh;-><init>(ILcom/google/android/gms/internal/ads/zzpr;Lcom/google/android/gms/internal/ads/zzls;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzpr;Lcom/google/android/gms/internal/ads/zzls;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->flags:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxq:Lcom/google/android/gms/internal/ads/zzpr;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxl:Lcom/google/android/gms/internal/ads/zzls;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzpm;->zzbjt:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpn;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzapr:Lcom/google/android/gms/internal/ads/zzpn;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxn:Lcom/google/android/gms/internal/ads/zzpn;

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxp:Lcom/google/android/gms/internal/ads/zzpn;

    new-array p1, p2, [B

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxs:[B

    .line 17
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    .line 18
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxu:Ljava/util/LinkedList;

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaip:J

    .line 21
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzayc:J

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlh;->zzhb()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzpn;ILcom/google/android/gms/internal/ads/zzlu;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 617
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 618
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result p1

    .line 619
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

    .line 623
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v1

    .line 624
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzaxc:I

    if-ne v1, v2, :cond_1

    .line 626
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzbba:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 627
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpn;->zziv()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzlu;->zzau(I)V

    .line 629
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbc:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zze([BII)V

    .line 630
    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 631
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbe:Z

    return-void

    .line 625
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

    .line 621
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

    .line 634
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_a

    .line 636
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzky;

    .line 637
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzky;->type:I

    sget v7, Lcom/google/android/gms/internal/ads/zzkw;->zzaur:I

    if-ne v6, v7, :cond_9

    if-nez v4, :cond_0

    .line 639
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 640
    :cond_0
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    .line 643
    new-instance v6, Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzpn;-><init>([B)V

    .line 644
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->limit()I

    move-result v7

    const/16 v8, 0x20

    if-ge v7, v8, :cond_1

    :goto_1
    move-object v6, v2

    goto :goto_2

    .line 646
    :cond_1
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 647
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v7

    .line 648
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->zziv()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    if-eq v7, v8, :cond_2

    goto :goto_1

    .line 650
    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v7

    .line 651
    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzaur:I

    if-eq v7, v8, :cond_3

    goto :goto_1

    .line 653
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    const/16 v6, 0x25

    .line 655
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

    .line 657
    :cond_4
    new-instance v9, Ljava/util/UUID;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->readLong()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->readLong()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v7, v8, :cond_5

    .line 659
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    .line 660
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    .line 661
    :cond_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v7

    .line 662
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpn;->zziv()I

    move-result v8

    if-eq v7, v8, :cond_6

    goto :goto_1

    .line 664
    :cond_6
    new-array v8, v7, [B

    .line 665
    invoke-virtual {v6, v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zze([BII)V

    .line 666
    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_2
    if-nez v6, :cond_7

    move-object v6, v2

    goto :goto_3

    .line 670
    :cond_7
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/UUID;

    :goto_3
    if-nez v6, :cond_8

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    .line 673
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 674
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

    .line 676
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/ads/zzjo;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzjo;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private final zzeb(J)V
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 323
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

    .line 324
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkv;

    .line 325
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaty:I

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v9, 0x1

    if-ne v2, v3, :cond_d

    const-string v2, "Unexpected moov box."

    .line 327
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzpg;->checkState(ZLjava/lang/Object;)V

    .line 328
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzlh;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjo;

    move-result-object v2

    .line 329
    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzauj:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzkv;->zzaq(I)Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v3

    .line 330
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 332
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move-wide/from16 v16, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_4

    .line 334
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzky;

    .line 335
    iget v13, v11, Lcom/google/android/gms/internal/ads/zzky;->type:I

    sget v14, Lcom/google/android/gms/internal/ads/zzkw;->zzatv:I

    if-ne v13, v14, :cond_1

    .line 336
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    .line 337
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 338
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v13

    .line 339
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v14

    sub-int/2addr v14, v9

    .line 340
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v5

    .line 341
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v8

    .line 342
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v11

    .line 343
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v9, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-direct {v9, v14, v5, v8, v11}, Lcom/google/android/gms/internal/ads/zzlg;-><init>(IIII)V

    invoke-static {v13, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 345
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-virtual {v15, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 346
    :cond_1
    iget v5, v11, Lcom/google/android/gms/internal/ads/zzky;->type:I

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzauk:I

    if-ne v5, v8, :cond_3

    .line 347
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    .line 348
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 349
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v8

    .line 350
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v8

    if-nez v8, :cond_2

    .line 351
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

    .line 354
    :cond_4
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 355
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasw:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v5, :cond_7

    .line 357
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasw:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/google/android/gms/internal/ads/zzkv;

    .line 358
    iget v9, v10, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkw;->zzaua:I

    if-ne v9, v11, :cond_5

    .line 359
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

    .line 361
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

    .line 363
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 364
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_8

    .line 366
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzls;

    .line 367
    new-instance v8, Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    iget v10, v5, Lcom/google/android/gms/internal/ads/zzls;->type:I

    invoke-interface {v9, v2, v10}, Lcom/google/android/gms/internal/ads/zzkc;->zzc(II)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzlm;-><init>(Lcom/google/android/gms/internal/ads/zzkh;)V

    .line 368
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzls;->id:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzlm;->zza(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzlg;)V

    .line 369
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    iget v10, v5, Lcom/google/android/gms/internal/ads/zzls;->id:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaip:J

    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzls;->zzaip:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaip:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 373
    :cond_8
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->flags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    if-nez v1, :cond_9

    .line 374
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzkc;->zzc(II)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    const-wide v2, 0x7fffffffffffffffL

    const-string v5, "application/x-emsg"

    .line 375
    invoke-static {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzht;->zza(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 376
    :cond_9
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->flags:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayh:[Lcom/google/android/gms/internal/ads/zzkh;

    if-nez v1, :cond_a

    .line 377
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

    .line 378
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzht;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzht;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzkh;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 379
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayh:[Lcom/google/android/gms/internal/ads/zzkh;

    .line 380
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzkc;->zzgs()V

    goto/16 :goto_0

    .line 381
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

    .line 383
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzls;

    .line 384
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

    .line 387
    :cond_d
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzauh:I

    if-ne v2, v3, :cond_4d

    .line 389
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->flags:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxs:[B

    .line 390
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasw:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v7, :cond_4c

    .line 392
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasw:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzkv;

    .line 393
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzkv;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkw;->zzaui:I

    if-ne v10, v11, :cond_4b

    .line 395
    sget v10, Lcom/google/android/gms/internal/ads/zzkw;->zzatu:I

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v10

    .line 396
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v11, 0x8

    .line 397
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 398
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v11

    .line 399
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzkw;->zzas(I)I

    move-result v11

    .line 400
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v12

    and-int/lit8 v13, v3, 0x10

    if-nez v13, :cond_e

    goto :goto_a

    :cond_e
    const/4 v12, 0x0

    .line 401
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

    .line 405
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v13

    .line 406
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzlu;->zzbaq:J

    .line 407
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzlu;->zzbar:J

    .line 408
    :cond_10
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazt:Lcom/google/android/gms/internal/ads/zzlg;

    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_11

    .line 410
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

    .line 412
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v15

    goto :goto_c

    :cond_12
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzlg;->duration:I

    :goto_c
    and-int/lit8 v16, v11, 0x10

    if-eqz v16, :cond_13

    .line 414
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v16

    move/from16 v4, v16

    goto :goto_d

    :cond_13
    iget v4, v13, Lcom/google/android/gms/internal/ads/zzlg;->size:I

    :goto_d
    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_14

    .line 416
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v10

    goto :goto_e

    :cond_14
    iget v10, v13, Lcom/google/android/gms/internal/ads/zzlg;->flags:I

    .line 417
    :goto_e
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-direct {v13, v14, v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzlg;-><init>(IIII)V

    iput-object v13, v11, Lcom/google/android/gms/internal/ads/zzlu;->zzbao:Lcom/google/android/gms/internal/ads/zzlg;

    :goto_f
    if-eqz v12, :cond_4b

    .line 421
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    .line 422
    iget-wide v10, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbbf:J

    .line 423
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzlm;->reset()V

    .line 424
    sget v13, Lcom/google/android/gms/internal/ads/zzkw;->zzatt:I

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v13

    if-eqz v13, :cond_16

    and-int/lit8 v13, v3, 0x2

    if-nez v13, :cond_16

    .line 426
    sget v10, Lcom/google/android/gms/internal/ads/zzkw;->zzatt:I

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v11, 0x8

    .line 427
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 428
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v11

    .line 429
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_15

    .line 430
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v10

    goto :goto_10

    :cond_15
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v10

    .line 435
    :cond_16
    :goto_10
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    .line 436
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_11
    if-ge v15, v14, :cond_19

    .line 438
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v7

    move-object/from16 v7, v20

    check-cast v7, Lcom/google/android/gms/internal/ads/zzky;

    move-wide/from16 v22, v10

    .line 439
    iget v10, v7, Lcom/google/android/gms/internal/ads/zzky;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkw;->zzatw:I

    if-ne v10, v11, :cond_17

    .line 440
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v10, 0xc

    .line 441
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 442
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

    .line 447
    iput v7, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    .line 448
    iput v7, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazv:I

    .line 449
    iput v7, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    .line 450
    iget-object v7, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    .line 451
    iput v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbas:I

    .line 452
    iput v2, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzaxc:I

    .line 453
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbau:[I

    if-eqz v11, :cond_1a

    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbau:[I

    array-length v11, v11

    if-ge v11, v6, :cond_1b

    .line 454
    :cond_1a
    new-array v11, v6, [J

    iput-object v11, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbat:[J

    .line 455
    new-array v6, v6, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbau:[I

    .line 456
    :cond_1b
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbav:[I

    if-eqz v6, :cond_1c

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbav:[I

    array-length v6, v6

    if-ge v6, v2, :cond_1d

    :cond_1c
    mul-int/lit8 v2, v2, 0x7d

    .line 457
    div-int/lit8 v2, v2, 0x64

    .line 458
    new-array v6, v2, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbav:[I

    .line 459
    new-array v6, v2, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbaw:[I

    .line 460
    new-array v6, v2, [J

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbax:[J

    .line 461
    new-array v6, v2, [Z

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbay:[Z

    .line 462
    new-array v2, v2, [Z

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzlu;->zzbba:[Z

    :cond_1d
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_13
    const-wide/16 v24, 0x0

    if-ge v2, v14, :cond_32

    .line 466
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/google/android/gms/internal/ads/zzky;

    .line 467
    iget v15, v10, Lcom/google/android/gms/internal/ads/zzky;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkw;->zzatw:I

    if-ne v15, v11, :cond_31

    add-int/lit8 v11, v6, 0x1

    .line 468
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v15, 0x8

    .line 469
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 470
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v15

    .line 471
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzkw;->zzas(I)I

    move-result v15

    move/from16 v27, v11

    .line 472
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    move-object/from16 v28, v13

    .line 473
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    move/from16 v29, v14

    .line 474
    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbao:Lcom/google/android/gms/internal/ads/zzlg;

    .line 475
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbau:[I

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v30

    aput v30, v0, v6

    .line 476
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbat:[J

    move-object/from16 v31, v4

    move-object/from16 v30, v5

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbaq:J

    aput-wide v4, v0, v6

    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_1e

    .line 478
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbat:[J

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

    .line 480
    :goto_15
    iget v1, v14, Lcom/google/android/gms/internal/ads/zzlg;->flags:I

    if-eqz v0, :cond_20

    .line 482
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

    .line 488
    :goto_19
    iget-object v15, v11, Lcom/google/android/gms/internal/ads/zzls;->zzbal:[J

    if-eqz v15, :cond_25

    iget-object v15, v11, Lcom/google/android/gms/internal/ads/zzls;->zzbal:[J

    array-length v15, v15

    move/from16 v35, v1

    const/4 v1, 0x1

    if-ne v15, v1, :cond_26

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzls;->zzbal:[J

    const/4 v15, 0x0

    aget-wide v36, v1, v15

    cmp-long v1, v36, v24

    if-nez v1, :cond_26

    .line 489
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzls;->zzbam:[J

    aget-wide v36, v1, v15

    const-wide/16 v38, 0x3e8

    move v15, v2

    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/zzls;->zzdf:J

    move-wide/from16 v40, v1

    invoke-static/range {v36 .. v41}, Lcom/google/android/gms/internal/ads/zzpt;->zza(JJJ)J

    move-result-wide v24

    goto :goto_1a

    :cond_25
    move/from16 v35, v1

    :cond_26
    move v15, v2

    .line 490
    :goto_1a
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbav:[I

    .line 491
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbaw:[I

    move-object/from16 v36, v12

    .line 492
    iget-object v12, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbax:[J

    move/from16 v37, v15

    .line 493
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbay:[Z

    move-object/from16 v38, v15

    .line 494
    iget v15, v11, Lcom/google/android/gms/internal/ads/zzls;->type:I

    move-object/from16 v39, v1

    const/4 v1, 0x2

    if-ne v15, v1, :cond_27

    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_1b

    :cond_27
    const/4 v1, 0x0

    .line 495
    :goto_1b
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbau:[I

    aget v15, v15, v6

    add-int/2addr v15, v7

    move-object/from16 v26, v12

    .line 496
    iget-wide v11, v11, Lcom/google/android/gms/internal/ads/zzls;->zzdf:J

    move/from16 v40, v7

    if-lez v6, :cond_28

    .line 497
    iget-wide v6, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbbf:J

    goto :goto_1c

    :cond_28
    move-wide/from16 v6, v22

    :goto_1c
    move/from16 v46, v3

    move/from16 v3, v40

    :goto_1d
    if-ge v3, v15, :cond_30

    if-eqz v4, :cond_29

    .line 499
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v40

    move/from16 v47, v4

    move/from16 v4, v40

    goto :goto_1e

    :cond_29
    move/from16 v47, v4

    .line 500
    iget v4, v14, Lcom/google/android/gms/internal/ads/zzlg;->duration:I

    :goto_1e
    if-eqz v5, :cond_2a

    .line 501
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v40

    move/from16 v48, v5

    move/from16 v5, v40

    goto :goto_1f

    :cond_2a
    move/from16 v48, v5

    iget v5, v14, Lcom/google/android/gms/internal/ads/zzlg;->size:I

    :goto_1f
    if-nez v3, :cond_2b

    if-eqz v0, :cond_2b

    move/from16 v49, v0

    move/from16 v0, v35

    goto :goto_20

    :cond_2b
    if-eqz v8, :cond_2c

    .line 503
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v40

    move/from16 v49, v0

    move/from16 v0, v40

    goto :goto_20

    :cond_2c
    move/from16 v49, v0

    iget v0, v14, Lcom/google/android/gms/internal/ads/zzlg;->flags:I

    :goto_20
    if-eqz v9, :cond_2d

    move/from16 v50, v8

    .line 505
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    move/from16 v51, v9

    int-to-long v8, v8

    .line 506
    div-long/2addr v8, v11

    long-to-int v9, v8

    aput v9, v2, v3

    goto :goto_21

    :cond_2d
    move/from16 v50, v8

    move/from16 v51, v9

    const/4 v8, 0x0

    .line 508
    aput v8, v2, v3

    :goto_21
    const-wide/16 v42, 0x3e8

    move-wide/from16 v40, v6

    move-wide/from16 v44, v11

    .line 510
    invoke-static/range {v40 .. v45}, Lcom/google/android/gms/internal/ads/zzpt;->zza(JJJ)J

    move-result-wide v8

    sub-long v8, v8, v24

    aput-wide v8, v26, v3

    .line 511
    aput v5, v39, v3

    const/16 v5, 0x10

    shr-int/2addr v0, v5

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-nez v0, :cond_2f

    if-eqz v1, :cond_2e

    if-nez v3, :cond_2f

    :cond_2e
    const/4 v0, 0x1

    goto :goto_22

    :cond_2f
    const/4 v0, 0x0

    .line 512
    :goto_22
    aput-boolean v0, v38, v3

    int-to-long v4, v4

    add-long/2addr v6, v4

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v47

    move/from16 v5, v48

    move/from16 v0, v49

    move/from16 v8, v50

    move/from16 v9, v51

    goto :goto_1d

    .line 515
    :cond_30
    iput-wide v6, v13, Lcom/google/android/gms/internal/ads/zzlu;->zzbbf:J

    move v7, v15

    move/from16 v6, v27

    goto :goto_23

    :cond_31
    move-object/from16 v32, v1

    move/from16 v37, v2

    move/from16 v46, v3

    move-object/from16 v31, v4

    move-object/from16 v30, v5

    move/from16 v40, v7

    move/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v36, v12

    move-object/from16 v28, v13

    move/from16 v29, v14

    :goto_23
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

    move/from16 v3, v46

    const/16 v10, 0xc

    goto/16 :goto_13

    :cond_32
    move-object/from16 v32, v1

    move/from16 v46, v3

    move-object/from16 v31, v4

    move-object/from16 v30, v5

    move/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v36, v12

    .line 519
    sget v0, Lcom/google/android/gms/internal/ads/zzkw;->zzauz:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v0

    if-eqz v0, :cond_39

    move-object/from16 v4, v36

    .line 521
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzls;->zzbak:[Lcom/google/android/gms/internal/ads/zzlr;

    move-object/from16 v2, v31

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbao:Lcom/google/android/gms/internal/ads/zzlg;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzlg;->zzaxi:I

    aget-object v1, v1, v3

    .line 522
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    .line 523
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzlr;->zzbag:I

    const/16 v3, 0x8

    .line 524
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 525
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v4

    .line 526
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzkw;->zzas(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_33

    .line 528
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    .line 529
    :cond_33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v3

    .line 530
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v4

    .line 531
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzaxc:I

    if-ne v4, v5, :cond_38

    if-nez v3, :cond_35

    .line 535
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbba:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_24
    if-ge v5, v4, :cond_37

    .line 537
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v7

    add-int/2addr v6, v7

    if-le v7, v1, :cond_34

    const/4 v7, 0x1

    goto :goto_25

    :cond_34
    const/4 v7, 0x0

    .line 539
    :goto_25
    aput-boolean v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_35
    if-le v3, v1, :cond_36

    const/4 v0, 0x1

    goto :goto_26

    :cond_36
    const/4 v0, 0x0

    :goto_26
    mul-int v3, v3, v4

    const/4 v1, 0x0

    add-int/lit8 v6, v3, 0x0

    .line 544
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbba:[Z

    invoke-static {v3, v1, v4, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 545
    :cond_37
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzlu;->zzau(I)V

    goto :goto_27

    .line 532
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

    .line 546
    :goto_27
    sget v0, Lcom/google/android/gms/internal/ads/zzkw;->zzava:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 548
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v1, 0x8

    .line 549
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 550
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v3

    .line 551
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkw;->zzas(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3a

    .line 553
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    .line 554
    :cond_3a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v1

    if-ne v1, v5, :cond_3c

    .line 557
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v1

    .line 558
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbar:J

    if-nez v1, :cond_3b

    .line 559
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v0

    goto :goto_28

    :cond_3b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v0

    :goto_28
    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbar:J

    goto :goto_29

    .line 556
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

    .line 560
    :cond_3d
    :goto_29
    sget v0, Lcom/google/android/gms/internal/ads/zzkw;->zzave:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 562
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/4 v1, 0x0

    .line 563
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzlh;->zza(Lcom/google/android/gms/internal/ads/zzpn;ILcom/google/android/gms/internal/ads/zzlu;)V

    .line 564
    :cond_3e
    sget v0, Lcom/google/android/gms/internal/ads/zzkw;->zzavb:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v0

    .line 565
    sget v1, Lcom/google/android/gms/internal/ads/zzkw;->zzavc:I

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzkv;->zzap(I)Lcom/google/android/gms/internal/ads/zzky;

    move-result-object v1

    if-eqz v0, :cond_46

    if-eqz v1, :cond_46

    .line 567
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v3, 0x8

    .line 568
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 569
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v3

    .line 570
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzlh;->zzaxj:I

    if-ne v4, v5, :cond_46

    .line 571
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3f

    const/4 v3, 0x4

    .line 572
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    .line 573
    :cond_3f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_45

    const/16 v0, 0x8

    .line 575
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 576
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v0

    .line 577
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v3

    if-ne v3, v5, :cond_44

    .line 578
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v0

    if-ne v0, v4, :cond_41

    .line 580
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v3

    cmp-long v0, v3, v24

    if-eqz v0, :cond_40

    const/4 v0, 0x4

    const/4 v3, 0x2

    goto :goto_2a

    .line 581
    :cond_40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v1, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    const/4 v3, 0x2

    if-lt v0, v3, :cond_42

    const/4 v0, 0x4

    .line 583
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    goto :goto_2a

    :cond_42
    const/4 v0, 0x4

    .line 584
    :goto_2a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_43

    .line 586
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    .line 587
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    .line 588
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v3

    const/16 v5, 0x10

    new-array v6, v5, [B

    const/4 v7, 0x0

    .line 590
    invoke-virtual {v1, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzpn;->zze([BII)V

    .line 591
    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbaz:Z

    .line 592
    new-instance v1, Lcom/google/android/gms/internal/ads/zzlr;

    invoke-direct {v1, v4, v3, v6}, Lcom/google/android/gms/internal/ads/zzlr;-><init>(ZI[B)V

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbb:Lcom/google/android/gms/internal/ads/zzlr;

    goto :goto_2b

    .line 585
    :cond_43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    const/4 v0, 0x4

    goto :goto_2b

    .line 574
    :cond_45
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    const/4 v0, 0x4

    const/4 v4, 0x1

    .line 593
    :cond_47
    :goto_2b
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v1, :cond_4a

    .line 595
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzky;

    .line 596
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzky;->type:I

    sget v7, Lcom/google/android/gms/internal/ads/zzkw;->zzavd:I

    if-ne v6, v7, :cond_48

    .line 597
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    const/16 v6, 0x8

    .line 598
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    move-object/from16 v7, v30

    const/16 v8, 0x10

    const/4 v10, 0x0

    .line 599
    invoke-virtual {v5, v7, v10, v8}, Lcom/google/android/gms/internal/ads/zzpn;->zze([BII)V

    .line 600
    sget-object v11, Lcom/google/android/gms/internal/ads/zzlh;->zzaxk:[B

    invoke-static {v7, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_49

    .line 601
    invoke-static {v5, v8, v2}, Lcom/google/android/gms/internal/ads/zzlh;->zza(Lcom/google/android/gms/internal/ads/zzpn;ILcom/google/android/gms/internal/ads/zzlu;)V

    goto :goto_2d

    :cond_48
    move-object/from16 v7, v30

    const/16 v6, 0x8

    const/16 v8, 0x10

    const/4 v10, 0x0

    :cond_49
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v30, v7

    goto :goto_2c

    :cond_4a
    move-object/from16 v7, v30

    const/16 v6, 0x8

    const/4 v10, 0x0

    goto :goto_2e

    :cond_4b
    move-object/from16 v32, v1

    move-object/from16 v19, v2

    move/from16 v46, v3

    move/from16 v21, v7

    move/from16 v33, v8

    const/4 v0, 0x4

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v10, 0x0

    move-object v7, v5

    :goto_2e
    add-int/lit8 v8, v33, 0x1

    move-object/from16 v0, p0

    move-object v5, v7

    move-object/from16 v2, v19

    move/from16 v7, v21

    move-object/from16 v1, v32

    move/from16 v3, v46

    const/4 v4, 0x0

    const/4 v6, 0x4

    goto/16 :goto_9

    :cond_4c
    const/4 v10, 0x0

    .line 604
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkv;->zzasv:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzlh;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjo;

    move-result-object v0

    move-object/from16 v2, p0

    if-eqz v0, :cond_4e

    .line 606
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v8, 0x0

    :goto_2f
    if-ge v8, v1, :cond_4e

    .line 608
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzlm;

    .line 609
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzasp:Lcom/google/android/gms/internal/ads/zzkh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzls;->zzahz:Lcom/google/android/gms/internal/ads/zzht;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzht;->zza(Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zze(Lcom/google/android/gms/internal/ads/zzht;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    :cond_4d
    move-object v2, v0

    .line 612
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 613
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

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlh;->zzhb()V

    return-void
.end method

.method private final zzhb()V
    .locals 1

    const/4 v0, 0x0

    .line 320
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    .line 321
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzkg;)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 37
    :cond_0
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    const/4 v3, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_26

    const/4 v8, 0x4

    if-eq v2, v6, :cond_1d

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x3

    if-eq v2, v3, :cond_18

    if-ne v2, v11, :cond_c

    .line 188
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    if-nez v2, :cond_6

    .line 189
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    .line 192
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v13, v12, :cond_2

    .line 194
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzlm;

    .line 195
    iget v11, v15, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbas:I

    if-eq v11, v4, :cond_1

    .line 196
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbat:[J

    iget v11, v15, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

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

    .line 204
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaya:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_3

    .line 207
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlh;->zzhb()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto/16 :goto_10

    .line 206
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_4
    iget-object v2, v14, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbat:[J

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    aget-wide v9, v2, v4

    .line 211
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v2, v9

    if-gez v2, :cond_5

    const-string v2, "FragmentedMp4Extractor"

    const-string v4, "Ignoring negative offset to sample data."

    .line 213
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 215
    :cond_5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    .line 216
    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    .line 217
    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbav:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    aget v2, v2, v4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    .line 218
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbaz:Z

    if-eqz v2, :cond_a

    .line 219
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    .line 220
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    .line 221
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    .line 222
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbao:Lcom/google/android/gms/internal/ads/zzlg;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzlg;->zzaxi:I

    .line 223
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbbb:Lcom/google/android/gms/internal/ads/zzlr;

    if-eqz v11, :cond_7

    .line 224
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbbb:Lcom/google/android/gms/internal/ads/zzlr;

    goto :goto_2

    .line 225
    :cond_7
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzls;->zzbak:[Lcom/google/android/gms/internal/ads/zzlr;

    aget-object v10, v11, v10

    .line 226
    :goto_2
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzlr;->zzbag:I

    .line 227
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlu;->zzbba:[Z

    iget v11, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    aget-boolean v4, v4, v11

    .line 228
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxp:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    if-eqz v4, :cond_8

    const/16 v12, 0x80

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    :goto_3
    or-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, v11, v7

    .line 229
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxp:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 230
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzasp:Lcom/google/android/gms/internal/ads/zzkh;

    .line 231
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxp:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-interface {v2, v11, v6}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    .line 232
    invoke-interface {v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    if-nez v4, :cond_9

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 235
    :cond_9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedShort()I

    move-result v4

    const/4 v11, -0x2

    .line 236
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    .line 238
    invoke-interface {v2, v9, v4}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v4

    .line 240
    :goto_4
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    .line 241
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    goto :goto_5

    .line 242
    :cond_a
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    .line 243
    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzls;->zzbaj:I

    if-ne v2, v6, :cond_b

    .line 244
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    sub-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    .line 245
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    .line 246
    :cond_b
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    .line 247
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    .line 248
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    .line 249
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlm;->zzazs:Lcom/google/android/gms/internal/ads/zzls;

    .line 250
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v9, v5, Lcom/google/android/gms/internal/ads/zzlm;->zzasp:Lcom/google/android/gms/internal/ads/zzkh;

    .line 251
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    .line 252
    iget v10, v4, Lcom/google/android/gms/internal/ads/zzls;->zzasq:I

    const-wide/16 v11, 0x3e8

    if-eqz v10, :cond_10

    .line 253
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxn:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    .line 254
    aput-byte v7, v10, v7

    .line 255
    aput-byte v7, v10, v6

    .line 256
    aput-byte v7, v10, v3

    .line 257
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzls;->zzasq:I

    add-int/2addr v3, v6

    .line 258
    iget v13, v4, Lcom/google/android/gms/internal/ads/zzls;->zzasq:I

    rsub-int/lit8 v13, v13, 0x4

    .line 259
    :goto_6
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    if-ge v14, v15, :cond_11

    .line 260
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    if-nez v14, :cond_e

    .line 261
    invoke-interface {v1, v10, v13, v3}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    .line 262
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxn:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 263
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxn:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzpn;->zzja()I

    move-result v14

    sub-int/2addr v14, v6

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    .line 264
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzapr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 265
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzapr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-interface {v9, v14, v8}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    .line 266
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxn:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-interface {v9, v14, v6}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    .line 267
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayh:[Lcom/google/android/gms/internal/ads/zzkh;

    if-eqz v14, :cond_d

    iget-object v14, v4, Lcom/google/android/gms/internal/ads/zzls;->zzahz:Lcom/google/android/gms/internal/ads/zzht;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    aget-byte v15, v10, v8

    .line 268
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzpm;->zza(Ljava/lang/String;B)Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    goto :goto_7

    :cond_d
    const/4 v14, 0x0

    :goto_7
    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayf:Z

    .line 269
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    add-int/lit8 v14, v14, 0x5

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    .line 270
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    add-int/2addr v14, v13

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    goto :goto_6

    .line 271
    :cond_e
    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayf:Z

    if-eqz v15, :cond_f

    .line 272
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzpn;->reset(I)V

    .line 273
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    invoke-interface {v1, v14, v7, v15}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    .line 274
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    invoke-interface {v9, v14, v15}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    .line 275
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    .line 276
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzpn;->limit()I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzpm;->zzb([BI)I

    move-result v8

    .line 277
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzls;->zzahz:Lcom/google/android/gms/internal/ads/zzht;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzht;->zzahe:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 278
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzpn;->zzbh(I)V

    .line 279
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzlu;->zzav(I)J

    move-result-wide v6

    mul-long v6, v6, v11

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxo:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayh:[Lcom/google/android/gms/internal/ads/zzkh;

    invoke-static {v6, v7, v8, v15}, Lcom/google/android/gms/internal/ads/zznw;->zza(JLcom/google/android/gms/internal/ads/zzpn;[Lcom/google/android/gms/internal/ads/zzkh;)V

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    .line 281
    invoke-interface {v9, v1, v14, v6}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzjz;IZ)I

    move-result v14

    .line 282
    :goto_8
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    add-int/2addr v6, v14

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    .line 283
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    sub-int/2addr v6, v14

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarg:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    goto/16 :goto_6

    .line 286
    :cond_10
    :goto_9
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    if-ge v3, v6, :cond_11

    sub-int/2addr v6, v3

    const/4 v3, 0x0

    .line 287
    invoke-interface {v9, v1, v6, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzjz;IZ)I

    move-result v6

    .line 288
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzarh:I

    goto :goto_9

    .line 290
    :cond_11
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzlu;->zzav(I)J

    move-result-wide v6

    mul-long v6, v6, v11

    .line 291
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbaz:Z

    if-eqz v3, :cond_12

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    .line 292
    :goto_a
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbay:[Z

    aget-boolean v5, v8, v5

    or-int v12, v3, v5

    .line 295
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbaz:Z

    if-eqz v3, :cond_15

    .line 296
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbb:Lcom/google/android/gms/internal/ads/zzlr;

    if-eqz v3, :cond_13

    .line 297
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbb:Lcom/google/android/gms/internal/ads/zzlr;

    goto :goto_b

    .line 298
    :cond_13
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzls;->zzbak:[Lcom/google/android/gms/internal/ads/zzlr;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbao:Lcom/google/android/gms/internal/ads/zzlg;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxi:I

    aget-object v3, v3, v4

    .line 299
    :goto_b
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlm;->zzazy:Lcom/google/android/gms/internal/ads/zzlr;

    if-eq v3, v4, :cond_14

    .line 300
    new-instance v4, Lcom/google/android/gms/internal/ads/zzkk;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzlr;->zzbah:[B

    const/4 v8, 0x1

    invoke-direct {v4, v8, v5}, Lcom/google/android/gms/internal/ads/zzkk;-><init>(I[B)V

    goto :goto_c

    .line 301
    :cond_14
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlm;->zzazx:Lcom/google/android/gms/internal/ads/zzkk;

    :goto_c
    move-object v15, v4

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 302
    :goto_d
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iput-object v15, v4, Lcom/google/android/gms/internal/ads/zzlm;->zzazx:Lcom/google/android/gms/internal/ads/zzkk;

    .line 303
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzlm;->zzazy:Lcom/google/android/gms/internal/ads/zzlr;

    .line 304
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaye:I

    const/4 v14, 0x0

    move-wide v10, v6

    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzkh;->zza(JIIILcom/google/android/gms/internal/ads/zzkk;)V

    .line 305
    :goto_e
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxu:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 306
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxu:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzlj;

    .line 307
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayb:I

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzlj;->size:I

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayb:I

    .line 308
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzlj;->zzaym:J

    add-long v9, v6, v4

    const/4 v11, 0x1

    iget v12, v3, Lcom/google/android/gms/internal/ads/zzlj;->size:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayb:I

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzkh;->zza(JIIILcom/google/android/gms/internal/ads/zzkk;)V

    goto :goto_e

    .line 310
    :cond_16
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzazu:I

    .line 311
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzazv:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzazv:I

    .line 312
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzlm;->zzazv:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbau:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    aget v2, v2, v4

    if-ne v3, v2, :cond_17

    .line 313
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazw:I

    .line 314
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzlm;->zzazv:I

    const/4 v2, 0x0

    .line 315
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    :goto_f
    const/4 v2, 0x3

    .line 316
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    const/4 v6, 0x1

    :goto_10
    if-eqz v6, :cond_0

    return v3

    .line 167
    :cond_18
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    if-ge v3, v2, :cond_1a

    .line 169
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    .line 170
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzlu;->zzbbe:Z

    if-eqz v6, :cond_19

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/zzlu;->zzbar:J

    cmp-long v8, v6, v9

    if-gez v8, :cond_19

    .line 171
    iget-wide v4, v5, Lcom/google/android/gms/internal/ads/zzlu;->zzbar:J

    .line 172
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzlm;

    move-wide v9, v4

    move-object v4, v6

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1a
    if-nez v4, :cond_1b

    const/4 v2, 0x3

    .line 175
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    goto/16 :goto_0

    .line 177
    :cond_1b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v2

    sub-long/2addr v9, v2

    long-to-int v2, v9

    if-ltz v2, :cond_1c

    .line 180
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    .line 181
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    .line 182
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbc:I

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    .line 183
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbd:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 184
    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzlu;->zzbbe:Z

    goto/16 :goto_0

    .line 179
    :cond_1c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Offset to encryption data was negative."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1d
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    long-to-int v2, v6

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    sub-int/2addr v2, v4

    .line 97
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    if-eqz v4, :cond_25

    .line 98
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    .line 99
    new-instance v2, Lcom/google/android/gms/internal/ads/zzky;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzky;-><init>(ILcom/google/android/gms/internal/ads/zzpn;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v6

    .line 100
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 101
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzkv;->zza(Lcom/google/android/gms/internal/ads/zzky;)V

    goto/16 :goto_15

    .line 102
    :cond_1e
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzky;->type:I

    sget v8, Lcom/google/android/gms/internal/ads/zzkw;->zzatx:I

    if-ne v4, v8, :cond_22

    .line 103
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    .line 104
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 105
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v4

    .line 106
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzkw;->zzar(I)I

    move-result v4

    const/4 v5, 0x4

    .line 107
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    .line 108
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v14

    if-nez v4, :cond_1f

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v4

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v8

    goto :goto_12

    .line 113
    :cond_1f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v4

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v8

    :goto_12
    add-long/2addr v6, v8

    const-wide/32 v10, 0xf4240

    move-wide v8, v4

    move-wide v12, v14

    .line 115
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzpt;->zza(JJJ)J

    move-result-wide v20

    .line 116
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    .line 117
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedShort()I

    move-result v3

    .line 118
    new-array v12, v3, [I

    .line 119
    new-array v13, v3, [J

    .line 120
    new-array v10, v3, [J

    .line 121
    new-array v11, v3, [J

    move-wide/from16 v22, v20

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v3, :cond_21

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v9

    const/high16 v16, -0x80000000

    and-int v16, v9, v16

    if-nez v16, :cond_20

    .line 129
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v24

    const v16, 0x7fffffff

    and-int v9, v9, v16

    .line 130
    aput v9, v12, v8

    .line 131
    aput-wide v6, v13, v8

    .line 132
    aput-wide v22, v11, v8

    add-long v4, v4, v24

    const-wide/32 v22, 0xf4240

    move/from16 v19, v8

    move-wide v8, v4

    move/from16 p2, v3

    move-wide/from16 v24, v4

    move-object v3, v10

    move-object v4, v11

    move-wide/from16 v10, v22

    move-object v5, v12

    move-object v1, v13

    move-wide v12, v14

    .line 134
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzpt;->zza(JJJ)J

    move-result-wide v22

    .line 135
    aget-wide v8, v4, v19

    sub-long v8, v22, v8

    aput-wide v8, v3, v19

    const/4 v8, 0x4

    .line 136
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    .line 137
    aget v9, v5, v19

    int-to-long v9, v9

    add-long/2addr v6, v9

    add-int/lit8 v9, v19, 0x1

    move-object v13, v1

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v8, v9

    move-wide/from16 v4, v24

    move-object/from16 v1, p1

    move/from16 v3, p2

    goto :goto_13

    .line 128
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

    .line 139
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzjy;

    invoke-direct {v6, v5, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzjy;-><init>([I[J[J[J)V

    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 141
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayc:J

    .line 142
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkf;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzkc;->zza(Lcom/google/android/gms/internal/ads/zzkf;)V

    const/4 v1, 0x1

    .line 143
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayi:Z

    goto :goto_14

    .line 144
    :cond_22
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzky;->type:I

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzawd:I

    if-ne v1, v3, :cond_24

    .line 145
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzky;->zzawt:Lcom/google/android/gms/internal/ads/zzpn;

    .line 146
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    if-eqz v2, :cond_24

    const/16 v2, 0xc

    .line 147
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 148
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzjc()Ljava/lang/String;

    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzjc()Ljava/lang/String;

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v7

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzpt;->zza(JJJ)J

    move-result-wide v3

    .line 153
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 154
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpn;->zziv()I

    move-result v9

    .line 155
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-interface {v2, v1, v9}, Lcom/google/android/gms/internal/ads/zzkh;->zza(Lcom/google/android/gms/internal/ads/zzpn;I)V

    .line 156
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayc:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v1, v5

    if-eqz v7, :cond_23

    .line 157
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayg:Lcom/google/android/gms/internal/ads/zzkh;

    add-long v6, v1, v3

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzkh;->zza(JIIILcom/google/android/gms/internal/ads/zzkk;)V

    goto :goto_14

    .line 158
    :cond_23
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxu:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzlj;

    invoke-direct {v2, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzlj;-><init>(JI)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 159
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayb:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayb:I

    :cond_24
    :goto_14
    move-object/from16 v1, p1

    goto :goto_15

    .line 161
    :cond_25
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjz;->zzag(I)V

    .line 162
    :goto_15
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzlh;->zzeb(J)V

    goto/16 :goto_0

    .line 39
    :cond_26
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    if-nez v2, :cond_28

    .line 40
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzjz;->zza([BIIZ)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_1d

    .line 42
    :cond_27
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    .line 43
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzbi(I)V

    .line 44
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzix()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    .line 45
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    .line 46
    :cond_28
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_29

    .line 48
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    invoke-interface {v1, v2, v5, v5}, Lcom/google/android/gms/internal/ads/zzjz;->readFully([BII)V

    .line 49
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    .line 50
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzjb()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    .line 51
    :cond_29
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-ltz v2, :cond_37

    .line 53
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v6

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    int-to-long v8, v2

    sub-long/2addr v6, v8

    .line 54
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkw;->zzauh:I

    if-ne v2, v4, :cond_2a

    .line 55
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_2a

    .line 57
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzlm;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzlm;->zzazr:Lcom/google/android/gms/internal/ads/zzlu;

    .line 58
    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/zzlu;->zzbap:J

    .line 59
    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/zzlu;->zzbar:J

    .line 60
    iput-wide v6, v8, Lcom/google/android/gms/internal/ads/zzlu;->zzbaq:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 62
    :cond_2a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkw;->zzate:I

    if-ne v2, v4, :cond_2c

    const/4 v2, 0x0

    .line 63
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayd:Lcom/google/android/gms/internal/ads/zzlm;

    .line 64
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaya:J

    .line 65
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayi:Z

    if-nez v2, :cond_2b

    .line 66
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzki;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaip:J

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzki;-><init>(J)V

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzkc;->zza(Lcom/google/android/gms/internal/ads/zzkf;)V

    const/4 v2, 0x1

    .line 67
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzayi:Z

    .line 68
    :cond_2b
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    :goto_17
    const/4 v2, 0x1

    goto/16 :goto_1c

    .line 70
    :cond_2c
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    .line 71
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
    const/4 v2, 0x0

    goto :goto_19

    :cond_2e
    :goto_18
    const/4 v2, 0x1

    :goto_19
    if-eqz v2, :cond_30

    .line 73
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjz;->getPosition()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 74
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzkv;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 75
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_2f

    .line 76
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzlh;->zzeb(J)V

    goto :goto_17

    .line 77
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlh;->zzhb()V

    goto :goto_17

    .line 78
    :cond_30
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxw:I

    .line 79
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

    .line 81
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxy:I

    if-ne v2, v5, :cond_34

    .line 83
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    cmp-long v2, v6, v3

    if-gtz v2, :cond_33

    .line 85
    new-instance v2, Lcom/google/android/gms/internal/ads/zzpn;

    long-to-int v3, v6

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    .line 86
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxr:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpn;->data:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    .line 87
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    goto :goto_1c

    .line 84
    :cond_33
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_34
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_35
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxx:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_36

    const/4 v2, 0x0

    .line 90
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxz:Lcom/google/android/gms/internal/ads/zzpn;

    const/4 v2, 0x1

    .line 91
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxv:I

    :goto_1c
    const/4 v6, 0x1

    :goto_1d
    if-nez v6, :cond_0

    const/4 v1, -0x1

    return v1

    .line 89
    :cond_36
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_37
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzkc;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzark:Lcom/google/android/gms/internal/ads/zzkc;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjz;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzlp;->zzd(Lcom/google/android/gms/internal/ads/zzjz;)Z

    move-result p1

    return p1
.end method

.method public final zzc(JJ)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 29
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxm:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzlm;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzlm;->reset()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxu:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 32
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzayb:I

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlh;->zzaxt:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlh;->zzhb()V

    return-void
.end method
