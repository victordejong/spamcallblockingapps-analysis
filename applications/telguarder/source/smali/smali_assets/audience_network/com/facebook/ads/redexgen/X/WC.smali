.class public final Lcom/facebook/ads/redexgen/X/WC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9V;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/WD;,
        Lcom/facebook/ads/redexgen/X/9Z;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/9V<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/9N;

.field public A01:Lcom/facebook/ads/redexgen/X/9N;

.field public A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/WC<",
            "TT;>.RecordFileBasedFetch;>;"
        }
    .end annotation
.end field

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/9M;

.field public final A05:Lcom/facebook/ads/redexgen/X/9c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WC;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WC;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/9a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63687
    .local v1, "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63688
    const/16 v2, 0x203

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/9S;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/9S;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9c;

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/9c;-><init>(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/9a;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    .line 63689
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9S;->A06()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x1fd

    const/4 v1, 0x6

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/9M;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9M;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A04:Lcom/facebook/ads/redexgen/X/9M;

    .line 63690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A04:Lcom/facebook/ads/redexgen/X/9M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9M;->A04()Lcom/facebook/ads/redexgen/X/9N;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    .line 63691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A02:Ljava/util/List;

    .line 63692
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/WC;->A06(Lcom/facebook/ads/redexgen/X/9a;)V

    .line 63693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;

    .line 63694
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WC;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v0, 0x207

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/WC;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WC;->A07:[Ljava/lang/String;

    const-string v1, "G0nCZJj0prSQWtMWq2fjymNjpmI3wJ1o"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "hmxAaa3VGXWJOtMylrC9mnhyviZ0JnjG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/WC;->A06:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x44t
        0x66t
        0x69t
        0x27t
        0x68t
        0x69t
        0x6bt
        0x7et
        0x27t
        0x63t
        0x62t
        0x6bt
        0x62t
        0x73t
        0x62t
        0x27t
        0x64t
        0x72t
        0x75t
        0x74t
        0x68t
        0x75t
        0x74t
        0x27t
        0x77t
        0x68t
        0x6et
        0x69t
        0x73t
        0x6et
        0x69t
        0x60t
        0x27t
        0x66t
        0x73t
        0x27t
        0x73t
        0x6ft
        0x62t
        0x27t
        0x63t
        0x66t
        0x73t
        0x66t
        0x65t
        0x66t
        0x74t
        0x62t
        0x27t
        0x74t
        0x73t
        0x66t
        0x75t
        0x73t
        0x57t
        0x61t
        0x66t
        0x67t
        0x7bt
        0x66t
        0x34t
        0x64t
        0x7bt
        0x67t
        0x7dt
        0x60t
        0x7dt
        0x7bt
        0x7at
        0x34t
        0x7dt
        0x67t
        0x34t
        0x75t
        0x60t
        0x34t
        0x3ct
        0x31t
        0x70t
        0x38t
        0x31t
        0x70t
        0x3dt
        0x38t
        0x34t
        0x75t
        0x7at
        0x70t
        0x34t
        0x66t
        0x71t
        0x77t
        0x7bt
        0x66t
        0x70t
        0x34t
        0x72t
        0x7dt
        0x78t
        0x71t
        0x34t
        0x67t
        0x71t
        0x65t
        0x61t
        0x71t
        0x7at
        0x77t
        0x71t
        0x34t
        0x67t
        0x60t
        0x75t
        0x66t
        0x60t
        0x67t
        0x34t
        0x75t
        0x60t
        0x34t
        0x3ct
        0x31t
        0x70t
        0x38t
        0x31t
        0x70t
        0x3dt
        0x2et
        0x34t
        0x70t
        0x75t
        0x60t
        0x75t
        0x34t
        0x7ct
        0x75t
        0x67t
        0x34t
        0x64t
        0x66t
        0x7bt
        0x76t
        0x75t
        0x76t
        0x78t
        0x6dt
        0x34t
        0x76t
        0x71t
        0x71t
        0x7at
        0x34t
        0x78t
        0x7bt
        0x67t
        0x60t
        0x1ct
        0x2at
        0x2dt
        0x2ct
        0x30t
        0x2dt
        0x7ft
        0x2ft
        0x30t
        0x2ct
        0x36t
        0x2bt
        0x36t
        0x30t
        0x31t
        0x7ft
        0x36t
        0x2ct
        0x7ft
        0x3et
        0x2bt
        0x7ft
        0x77t
        0x7at
        0x3bt
        0x73t
        0x7at
        0x3bt
        0x76t
        0x73t
        0x7ft
        0x3dt
        0x2at
        0x2bt
        0x7ft
        0x2dt
        0x3at
        0x3ct
        0x30t
        0x2dt
        0x3bt
        0x7ft
        0x39t
        0x36t
        0x33t
        0x3at
        0x7ft
        0x2ct
        0x3at
        0x2et
        0x2at
        0x3at
        0x31t
        0x3ct
        0x3at
        0x7ft
        0x30t
        0x31t
        0x33t
        0x26t
        0x7ft
        0x37t
        0x3et
        0x2ct
        0x7ft
        0x39t
        0x36t
        0x33t
        0x3at
        0x7ft
        0x7at
        0x3bt
        0x65t
        0x7ft
        0x3bt
        0x3et
        0x2bt
        0x3et
        0x7ft
        0x37t
        0x3et
        0x2ct
        0x7ft
        0x2ft
        0x2dt
        0x30t
        0x3dt
        0x3et
        0x3dt
        0x33t
        0x26t
        0x7ft
        0x3dt
        0x3at
        0x3at
        0x31t
        0x7ft
        0x33t
        0x30t
        0x2ct
        0x2bt
        0x61t
        0x46t
        0x4et
        0x4bt
        0x42t
        0x43t
        0x7t
        0x53t
        0x48t
        0x7t
        0x46t
        0x43t
        0x43t
        0x7t
        0x43t
        0x46t
        0x53t
        0x46t
        0x7t
        0x53t
        0x48t
        0x7t
        0x4bt
        0x48t
        0x40t
        0x8t
        0x2ft
        0x27t
        0x22t
        0x2bt
        0x2at
        0x6et
        0x3at
        0x21t
        0x6et
        0x2dt
        0x22t
        0x2bt
        0x2ft
        0x3ct
        0x6et
        0x2at
        0x2ft
        0x3at
        0x2ft
        0x2ct
        0x2ft
        0x3dt
        0x2bt
        0xbt
        0x2ct
        0x24t
        0x21t
        0x28t
        0x29t
        0x6dt
        0x39t
        0x22t
        0x6dt
        0x2bt
        0x28t
        0x39t
        0x2et
        0x25t
        0x6dt
        0x29t
        0x2ct
        0x39t
        0x2ct
        0x6dt
        0x2bt
        0x3ft
        0x22t
        0x20t
        0x6dt
        0x21t
        0x22t
        0x2at
        0x66t
        0x41t
        0x49t
        0x4ct
        0x45t
        0x44t
        0x0t
        0x54t
        0x4ft
        0x0t
        0x47t
        0x45t
        0x54t
        0x0t
        0x52t
        0x45t
        0x43t
        0x4ft
        0x52t
        0x44t
        0x0t
        0x43t
        0x4ft
        0x55t
        0x4et
        0x54t
        0x49t
        0x6et
        0x66t
        0x63t
        0x6at
        0x6bt
        0x2ft
        0x7bt
        0x60t
        0x2ft
        0x7at
        0x7ft
        0x6bt
        0x6et
        0x7bt
        0x6at
        0x2ft
        0x69t
        0x66t
        0x63t
        0x6at
        0x2ft
        0x7ct
        0x6at
        0x7et
        0x7at
        0x6at
        0x61t
        0x6ct
        0x6at
        0x30t
        0x7t
        0x1t
        0xdt
        0x10t
        0x6t
        0x24t
        0xbt
        0xet
        0x7t
        0x20t
        0x3t
        0x11t
        0x7t
        0x6t
        0x30t
        0x7t
        0x1t
        0xdt
        0x10t
        0x6t
        0x26t
        0x3t
        0x16t
        0x3t
        0x0t
        0x3t
        0x11t
        0x7t
        0x42t
        0x1t
        0xet
        0xdt
        0x11t
        0x7t
        0x6t
        0x77t
        0x40t
        0x46t
        0x4at
        0x57t
        0x41t
        0x63t
        0x4ct
        0x49t
        0x40t
        0x67t
        0x44t
        0x56t
        0x40t
        0x41t
        0x77t
        0x40t
        0x46t
        0x4at
        0x57t
        0x41t
        0x61t
        0x44t
        0x51t
        0x44t
        0x47t
        0x44t
        0x56t
        0x40t
        0x5t
        0x4ct
        0x56t
        0x5t
        0x46t
        0x49t
        0x4at
        0x56t
        0x40t
        0x41t
        0x77t
        0x4ct
        0x49t
        0x4ct
        0x4dt
        0x55t
        0x4ct
        0x2t
        0x70t
        0x47t
        0x41t
        0x4dt
        0x50t
        0x46t
        0x64t
        0x4bt
        0x4et
        0x47t
        0x60t
        0x43t
        0x51t
        0x47t
        0x46t
        0x70t
        0x47t
        0x41t
        0x4dt
        0x50t
        0x46t
        0x66t
        0x43t
        0x56t
        0x43t
        0x40t
        0x43t
        0x51t
        0x47t
        0x2t
        0x44t
        0x47t
        0x56t
        0x41t
        0x4at
        0x46t
        0x50t
        0x57t
        0x56t
        0x4at
        0x57t
        0x1at
        0x1ft
        0xat
        0x1ft
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EKA8QeB4steRJ5RPBpFUjw3mjvi5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fve4ITv79qbm2xvzEK1yqXI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ABPapESs8CyLRtVNwfFPA7A05iROvZsV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0Lyphf8QRYP2FOEDF4CKVyWqrMlG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sjHSRvprFPL1Hzs2shXil"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0UuY0i89chpuUt8804PTKlfzEuvvqf4a"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FkeetCIpWmPLoPieiedf1X3IWnyHYH7Q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bw9eqk6z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WC;->A07:[Ljava/lang/String;

    return-void
.end method

.method private A03(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63695
    .local p2, "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/9N;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9N;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    .line 63696
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WC;->A04:Lcom/facebook/ads/redexgen/X/9M;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9M;->A05(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 63697
    return-void
.end method

.method private declared-synchronized A04(Lcom/facebook/ads/redexgen/X/WD;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/WC<",
            "TT;>.RecordFileBasedFetch;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9e;
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .local v2, "fetch":Lcom/facebook/ads/redexgen/X/WD;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 63698
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A03:Z

    if-nez v0, :cond_8

    .line 63699
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WC;->A07(Lcom/facebook/ads/redexgen/X/WD;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63700
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WD;->A5H()I

    move-result v0

    if-nez v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63701
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WC;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WC;->A07:[Ljava/lang/String;

    const-string v1, "9WzCjTS26H3M6660eK9PvTpe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63702
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WD;->A00()Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A02:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A04(Lcom/facebook/ads/redexgen/X/9N;)I

    move-result v0

    if-nez v0, :cond_6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63703
    :try_start_2
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WD;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9Z;

    .line 63704
    .local p1, "location":Lcom/facebook/ads/redexgen/X/9Z;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A08()I

    move-result v0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    .line 63705
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A07()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A03(II)V

    goto :goto_0

    .line 63707
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .restart local p1    # "location":Lcom/facebook/ads/redexgen/X/9Z;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    .line 63708
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A07()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WD;->A00()Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    .line 63709
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A03(II)V

    .line 63710
    .end local p1    # "location":Lcom/facebook/ads/redexgen/X/9Z;
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A04(Lcom/facebook/ads/redexgen/X/9N;)I

    move-result v0

    if-gez v0, :cond_4

    .line 63711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63712
    :cond_4
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WC;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/WC;->A07:[Ljava/lang/String;

    const-string v1, "feBuZ8LsNVBIYtBo5uRlP5mxTdJ00Cn9"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "gDx805NzRH15qt22UfXIVpgYkXkrzLal"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_5
    return-void

    .line 63713
    :catch_0
    move-exception v3

    .line 63714
    :try_start_3
    const/16 v2, 0x169

    const/16 v1, 0x1e

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 63715
    :cond_6
    const/4 v2, 0x0

    const/16 v1, 0x36

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63716
    :cond_7
    const/16 v2, 0x1d2

    const/16 v1, 0x2b

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63717
    :cond_8
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63718
    .end local v2    # "fetch":Lcom/facebook/ads/redexgen/X/WD;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/WC;Lcom/facebook/ads/redexgen/X/WD;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9e;
        }
    .end annotation

    .line 63719
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WC;->A04(Lcom/facebook/ads/redexgen/X/WD;)V

    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/9a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63720
    .local v4, "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    .line 63721
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A07()I

    move-result v0

    const/4 v5, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/9N;

    invoke-direct {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/9N;-><init>(II)V

    .line 63722
    .local p0, "recordSequenceStart":Lcom/facebook/ads/redexgen/X/9N;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9N;->A04(Lcom/facebook/ads/redexgen/X/9N;)I

    move-result v0

    const/4 v4, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    if-lez v0, :cond_1

    .line 63723
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    .line 63724
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9N;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    .line 63725
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9N;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    .line 63726
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9N;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    .line 63727
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9N;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    .line 63728
    const/16 v2, 0x36

    const/16 v1, 0x66

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63729
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/9a;->ADH(Ljava/lang/String;)V

    .line 63730
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    .line 63731
    :cond_0
    return-void

    .line 63732
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9N;->A02()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9N;->A02()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 63733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63734
    new-instance v3, Lcom/facebook/ads/redexgen/X/9N;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A07()I

    move-result v0

    invoke-direct {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/9N;-><init>(II)V

    goto :goto_0

    .line 63735
    :cond_2
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    .line 63736
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9N;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    .line 63737
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9N;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    .line 63738
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9N;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    .line 63739
    const/16 v2, 0x9c

    const/16 v1, 0x65

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63740
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/9a;->ADH(Ljava/lang/String;)V

    .line 63741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    .line 63742
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A07()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    .line 63743
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A08()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9N;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/9N;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    .line 63744
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WC;->A04:Lcom/facebook/ads/redexgen/X/9M;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9M;->A05(Lcom/facebook/ads/redexgen/X/9N;)V

    goto :goto_0
.end method

.method private declared-synchronized A07(Lcom/facebook/ads/redexgen/X/WD;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/WC<",
            "TT;>.RecordFileBasedFetch;)Z"
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .local v0, "fetch":Lcom/facebook/ads/redexgen/X/WD;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 63745
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 63746
    .local p0, "removed":Z
    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63747
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 63748
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WD;->A5H()I

    move-result v0

    if-lez v0, :cond_1

    .line 63749
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WD;->A01()Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9Z;->A02:Lcom/facebook/ads/redexgen/X/9N;

    .line 63750
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WD;->A01()Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A05(I)Lcom/facebook/ads/redexgen/X/9N;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;

    .line 63751
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63752
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WD;->A00()Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A02:Lcom/facebook/ads/redexgen/X/9N;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63753
    .end local v0    # "fetch":Lcom/facebook/ads/redexgen/X/WD;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 63754
    .end local p0    # "removed":Z
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/WC;Lcom/facebook/ads/redexgen/X/WD;)Z
    .locals 0

    .line 63755
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WC;->A07(Lcom/facebook/ads/redexgen/X/WD;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized A5G([B[I)Lcom/facebook/ads/redexgen/X/9U;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9e;
        }
    .end annotation

    .local v2, "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 63756
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A03:Z

    if-nez v0, :cond_6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63757
    const/4 v9, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/WC;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 63758
    .local p0, "storageOffset":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/WC;->A07:[Ljava/lang/String;

    const-string v1, "gHvpEwpDZvMvvWwNFPxDiPPT2WIFEHgk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v11, 0x0

    .line 63759
    .local v8, "countsOffset":I
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63760
    .local v10, "individualFileFetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    const/4 v3, 0x1

    .line 63761
    .local v9, "mayHaveMoreData":Z
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;

    .line 63762
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9N;->A02()I

    move-result v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;

    .line 63763
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9N;->A03()I

    move-result v7

    .line 63764
    move-object v10, p2

    move-object v8, p1

    invoke-virtual/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/9c;->A0B(II[BI[II)Lcom/facebook/ads/redexgen/X/9Q;

    move-result-object v5

    .line 63765
    .local v2, "sequenceFetchResult":Lcom/facebook/ads/redexgen/X/9Q;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Q;->A01()Lcom/facebook/ads/redexgen/X/9P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9P;->A00()I

    move-result v2

    .line 63766
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Q;->A01()Lcom/facebook/ads/redexgen/X/9P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9P;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    .line 63767
    .local v0, "fetchedRecords":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Q;->A01()Lcom/facebook/ads/redexgen/X/9P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9P;->A02()I

    move-result v0

    add-int/2addr v9, v0

    .line 63768
    add-int/2addr v11, v2

    .line 63769
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Q;->A01()Lcom/facebook/ads/redexgen/X/9P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9P;->A03()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/9O;->A03:Lcom/facebook/ads/redexgen/X/9O;

    if-ne v1, v0, :cond_0

    .line 63770
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63771
    .end local v2    # "sequenceFetchResult":Lcom/facebook/ads/redexgen/X/9Q;
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Q;->A01()Lcom/facebook/ads/redexgen/X/9P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9P;->A03()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/9O;->A04:Lcom/facebook/ads/redexgen/X/9O;

    if-ne v1, v0, :cond_1

    .line 63772
    .end local v2
    .end local v0    # "fetchedRecords":I
    :goto_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v2, p0, v4, v3}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/WC;Ljava/util/List;Z)V

    .line 63773
    .local v0, "fetch":Lcom/facebook/ads/redexgen/X/WD;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63774
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 63775
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/WD;->A01()Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9Z;->A02:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/WD;->A01()Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A05(I)Lcom/facebook/ads/redexgen/X/9N;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;

    goto :goto_2

    .line 63776
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Q;->A01()Lcom/facebook/ads/redexgen/X/9P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9P;->A03()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/9O;->A05:Lcom/facebook/ads/redexgen/X/9O;

    if-ne v1, v0, :cond_3

    .line 63777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A09()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;

    .line 63778
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9N;->A02()I

    move-result v0

    add-int/2addr v0, v3

    if-ne v1, v0, :cond_2

    .line 63779
    const/4 v3, 0x0

    .line 63780
    goto :goto_1

    .line 63781
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9N;->A02()I

    move-result v2

    add-int/2addr v2, v3

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9N;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/9N;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;

    goto/16 :goto_0

    .line 63782
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9N;->A05(I)Lcom/facebook/ads/redexgen/X/9N;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A01:Lcom/facebook/ads/redexgen/X/9N;

    goto/16 :goto_0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63783
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v2

    .line 63784
    .end local p0    # "storageOffset":I
    .end local v8    # "countsOffset":I
    .end local v10    # "individualFileFetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    .end local v9    # "mayHaveMoreData":Z
    :catch_0
    move-exception v3

    .line 63785
    :try_start_2
    const/16 v2, 0x132

    const/16 v1, 0x1d

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63786
    :cond_6
    :try_start_3
    const/16 v2, 0x187

    const/16 v1, 0x24

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63787
    .end local v1
    .end local v0    # "fetch":Lcom/facebook/ads/redexgen/X/WD;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A74()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9e;
        }
    .end annotation

    .local v2, "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 63788
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A03:Z

    if-nez v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63789
    .local p0, "count":I
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0A()I

    move-result v2

    .line 63790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9N;->A02()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A07()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 63791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A00:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9N;->A03()I

    move-result v0

    sub-int/2addr v2, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63792
    .end local v2    # "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :cond_0
    monitor-exit p0

    return v2

    .line 63793
    :catch_0
    move-exception v3

    .line 63794
    :try_start_2
    const/16 v2, 0x14f

    const/16 v1, 0x1a

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 63795
    :cond_1
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63796
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AEG([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9e;
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 63797
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A03:Z

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63798
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9c;->A0D([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63799
    monitor-exit p0

    return-void

    .line 63800
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catch_0
    move-exception v3

    .line 63801
    :try_start_2
    const/16 v2, 0x101

    const/16 v1, 0x19

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 63802
    :cond_0
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63803
    .end local v3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9e;
        }
    .end annotation

    .local v1, "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 63804
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0C()V

    .line 63805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A07()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A03(II)V

    .line 63806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63807
    monitor-exit p0

    return-void

    .line 63808
    :catch_0
    move-exception v3

    .line 63809
    :try_start_1
    const/16 v2, 0x11a

    const/16 v1, 0x18

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WC;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63810
    .end local v1    # "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catchall_0
    move-exception v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/WC;
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 63811
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A03:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63812
    monitor-exit p0

    return-void

    .line 63813
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A03:Z

    .line 63814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A04:Lcom/facebook/ads/redexgen/X/9M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9M;->close()V

    .line 63816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WC;->A05:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63817
    monitor-exit p0

    return-void

    .line 63818
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/WC;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
