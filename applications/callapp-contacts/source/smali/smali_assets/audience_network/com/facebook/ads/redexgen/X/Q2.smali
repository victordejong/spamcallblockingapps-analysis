.class public final Lcom/facebook/ads/redexgen/X/Q2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Q0;,
        Lcom/facebook/ads/redexgen/X/Q1;
    }
.end annotation


# static fields
.field public static A09:Lcom/facebook/ads/redexgen/X/Q2;

.field public static A0A:[B

.field public static final A0B:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ee;

.field public A01:Lcom/facebook/ads/redexgen/X/Hh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Ljava/io/File;

.field public A03:Z

.field public final A04:Landroid/content/Context;

.field public final A05:Landroid/os/Handler;

.field public final A06:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Q0;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/EX;

.field public final A08:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 48673
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Q2;->A0B()V

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/a9;->A03:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v2, Lcom/facebook/ads/redexgen/X/Q2;->A0B:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Ee;)V
    .locals 2
    .param p2    # Lcom/facebook/ads/redexgen/X/Ee;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 48674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48675
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A05:Landroid/os/Handler;

    .line 48676
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A06:Landroid/util/SparseArray;

    .line 48677
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pz;-><init>(Lcom/facebook/ads/redexgen/X/Q2;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A08:Ljava/lang/Runnable;

    .line 48678
    new-instance v0, Lcom/facebook/ads/redexgen/X/HY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/HY;-><init>(Lcom/facebook/ads/redexgen/X/Q2;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A07:Lcom/facebook/ads/redexgen/X/EX;

    .line 48679
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q2;->A04:Landroid/content/Context;

    .line 48680
    if-eqz p2, :cond_0

    .line 48681
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Q2;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    .line 48682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A07:Lcom/facebook/ads/redexgen/X/EX;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A0R(Lcom/facebook/ads/redexgen/X/EX;)V

    .line 48683
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A01()Lcom/facebook/ads/redexgen/X/Ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A0Q()V

    .line 48684
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Q2;)Landroid/os/Handler;
    .locals 0

    .line 48685
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/Ee;
    .locals 10

    .line 48686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    if-nez v0, :cond_0

    .line 48687
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A03()Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A02()Lcom/facebook/ads/redexgen/X/bJ;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Ej;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Ej;-><init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 48688
    .local v1, "downloaderConstructorHelper":Lcom/facebook/ads/redexgen/X/Ej;
    new-instance v4, Lcom/facebook/ads/redexgen/X/Ee;

    const/16 v6, 0xa

    const/4 v7, 0x5

    .line 48689
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A06()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x34

    const/16 v1, 0xc

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q2;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v9, Lcom/facebook/ads/redexgen/X/Q2;->A0B:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Ee;-><init>(Lcom/facebook/ads/redexgen/X/Ej;IILjava/io/File;[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Q2;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    .line 48690
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q2;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A07:Lcom/facebook/ads/redexgen/X/EX;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A0R(Lcom/facebook/ads/redexgen/X/EX;)V

    .line 48691
    .end local v1    # "downloaderConstructorHelper":Lcom/facebook/ads/redexgen/X/Ej;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/bJ;
    .locals 3

    .line 48692
    const/16 v2, 0x4e

    const/4 v1, 0x3

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q2;->A07(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2n;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/2n;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hd;)V

    return-object v0
.end method

.method private final declared-synchronized A03()Lcom/facebook/ads/redexgen/X/Hh;
    .locals 5

    monitor-enter p0

    .line 48693
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    if-nez v0, :cond_0

    .line 48694
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A06()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x40

    const/16 v1, 0xe

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q2;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48695
    const-wide/32 v2, 0x8000000

    new-instance v1, Lcom/facebook/ads/redexgen/X/BO;

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/redexgen/X/BO;-><init>(J)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/bd;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/bd;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/ba;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    .line 48696
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Q2;
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A01:Lcom/facebook/ads/redexgen/X/Hh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 48697
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/bD;Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/bZ;
    .locals 7

    .line 48698
    new-instance v0, Lcom/facebook/ads/redexgen/X/bZ;

    new-instance v3, Lcom/facebook/ads/redexgen/X/bH;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/bH;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/bZ;-><init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/HF;ILcom/facebook/ads/redexgen/X/Hj;)V

    return-object v0
.end method

.method public static A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Q2;
    .locals 2

    .line 48699
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q2;->A09:Lcom/facebook/ads/redexgen/X/Q2;

    if-nez v0, :cond_0

    .line 48700
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q2;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Q2;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Ee;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Q2;->A09:Lcom/facebook/ads/redexgen/X/Q2;

    .line 48701
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q2;->A09:Lcom/facebook/ads/redexgen/X/Q2;

    return-object v0
.end method

.method private A06()Ljava/io/File;
    .locals 1

    .line 48702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A02:Ljava/io/File;

    if-nez v0, :cond_0

    .line 48703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A04:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A02:Ljava/io/File;

    .line 48704
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A02:Ljava/io/File;

    return-object v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Q2;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x67

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A08()V
    .locals 12

    .line 48705
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A01()Lcom/facebook/ads/redexgen/X/Ee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A0T()[Lcom/facebook/ads/redexgen/X/Ed;

    move-result-object v8

    .line 48706
    .local p0, "taskStates":[Lcom/facebook/ads/redexgen/X/Ed;
    array-length v7, v8

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v5, v8, v6

    .line 48707
    .local v7, "taskState":Lcom/facebook/ads/redexgen/X/Ed;
    iget v4, v5, Lcom/facebook/ads/redexgen/X/Ed;->A02:I

    .line 48708
    .local v6, "taskId":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Q0;

    .line 48709
    .local v5, "downloadConfig":Lcom/facebook/ads/redexgen/X/Q0;
    if-eqz v9, :cond_1

    .line 48710
    iget v10, v5, Lcom/facebook/ads/redexgen/X/Ed;->A01:I

    .line 48711
    .local v4, "state":I
    const/4 v0, 0x2

    if-eq v10, v0, :cond_0

    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/Ed;->A03:J

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/Q0;->A00:J

    cmp-long v11, v2, v0

    if-lez v11, :cond_2

    .line 48712
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    const/16 v1, 0x13

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q2;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q2;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Ed;->A03:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48713
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Q0;->A01:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q1;->A9x()V

    .line 48714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 48715
    .end local v4    # "state":I
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    const/4 v1, 0x4

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q2;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    const/4 v1, 0x7

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q2;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Ed;->A03:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48716
    .end local v7    # "taskState":Lcom/facebook/ads/redexgen/X/Ed;
    .end local v6    # "taskId":I
    .end local v5    # "downloadConfig":Lcom/facebook/ads/redexgen/X/Q0;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 48717
    :cond_2
    const/4 v0, 0x4

    if-eq v10, v0, :cond_3

    const/4 v0, 0x3

    if-ne v10, v0, :cond_1

    .line 48718
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    const/16 v1, 0xe

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q2;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48719
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Q0;->A01:Lcom/facebook/ads/redexgen/X/Q1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q1;->AA6()V

    .line 48720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 48721
    :cond_4
    return-void
.end method

.method private A09()V
    .locals 2

    .line 48722
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A03:Z

    if-nez v0, :cond_0

    .line 48723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A03:Z

    .line 48724
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q2;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A08:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48725
    :cond_0
    return-void
.end method

.method private A0A()V
    .locals 2

    .line 48726
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q2;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A08:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Q2;->A03:Z

    .line 48728
    return-void
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Q2;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x67t
        -0x45t
        -0xet
        -0x13t
        -0x22t
        -0x14t
        -0x4dt
        -0x67t
        -0x45t
        -0x3t
        0x14t
        0xft
        0x0t
        0xet
        -0x45t
        -0x18t
        0x13t
        0x1bt
        0x12t
        0x10t
        0x13t
        0x5t
        0x8t
        0x9t
        0x8t
        -0x2et
        -0x3ct
        -0x9t
        0x18t
        0x5t
        0x18t
        0x9t
        -0x22t
        -0x3ct
        0x1bt
        0x48t
        0x48t
        0x45t
        0x48t
        0x4t
        -0xat
        0x29t
        0x4at
        0x37t
        0x4at
        0x3bt
        0x10t
        -0xat
        -0x2ct
        -0x1ft
        -0xdt
        -0x15t
        0x21t
        0x24t
        0x2et
        0x37t
        -0x13t
        0x21t
        0x23t
        0x34t
        0x29t
        0x2ft
        0x2et
        0x33t
        -0x28t
        -0x25t
        -0x1bt
        -0x12t
        -0x5ct
        -0x25t
        -0x1at
        -0x12t
        -0x1bt
        -0x1dt
        -0x1at
        -0x28t
        -0x25t
        -0x16t
        0x21t
        0x24t
        0x33t
    .end array-data
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Q2;)V
    .locals 0

    .line 48729
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A08()V

    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Q2;)V
    .locals 0

    .line 48730
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A0A()V

    return-void
.end method


# virtual methods
.method public final A0E(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/HH;
    .locals 3

    .line 48731
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A02()Lcom/facebook/ads/redexgen/X/bJ;

    move-result-object v2

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/bD;

    invoke-direct {v1, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/bD;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 48732
    .local p0, "upstreamFactory":Lcom/facebook/ads/redexgen/X/bD;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A03()Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Q2;->A04(Lcom/facebook/ads/redexgen/X/bD;Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/bZ;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Q1;J)V
    .locals 4

    .line 48733
    const/4 v3, 0x0

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/a9;

    invoke-direct {v1, p1, v0, v3, v3}, Lcom/facebook/ads/redexgen/X/a9;-><init>(Landroid/net/Uri;Z[BLjava/lang/String;)V

    .line 48734
    .local p0, "downloadAction":Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A01()Lcom/facebook/ads/redexgen/X/Ee;

    move-result-object v0

    .line 48735
    .local p2, "downloadManager":Lcom/facebook/ads/redexgen/X/Ee;
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ee;->A0P(Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)I

    move-result v2

    .line 48736
    .local p3, "actionId":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Q2;->A06:Landroid/util/SparseArray;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q0;

    invoke-direct {v0, p2, p3, p4, v3}, Lcom/facebook/ads/redexgen/X/Q0;-><init>(Lcom/facebook/ads/redexgen/X/Q1;JLcom/facebook/ads/redexgen/X/Pz;)V

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48737
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q2;->A09()V

    .line 48738
    return-void
.end method
