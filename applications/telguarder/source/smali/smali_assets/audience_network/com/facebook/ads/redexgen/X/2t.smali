.class public final Lcom/facebook/ads/redexgen/X/2t;
.super Lcom/facebook/ads/redexgen/X/Bb;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Ljava/util/regex/Pattern;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public final A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 6593
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2t;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2t;->A03()V

    const/4 v2, 0x1

    const/16 v1, 0x23

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2t;->A07:Ljava/util/regex/Pattern;

    .line 6594
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2t;-><init>(Ljava/util/List;)V

    .line 6596
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 6597
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/16 v2, 0xb6

    const/16 v1, 0xa

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Bb;-><init>(Ljava/lang/String;)V

    .line 6598
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6599
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/2t;->A04:Z

    .line 6600
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0Q([B)Ljava/lang/String;

    move-result-object v3

    .line 6601
    .local p0, "formatLine":Ljava/lang/String;
    const/16 v2, 0x2f

    const/16 v1, 0x8

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 6602
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/2t;->A07(Ljava/lang/String;)V

    .line 6603
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2t;->A05(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 6604
    .end local p0    # "formatLine":Ljava/lang/String;
    :goto_0
    return-void

    .line 6605
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/2t;->A04:Z

    goto :goto_0
.end method

.method public static A00(Ljava/lang/String;)J
    .locals 8

    .line 6606
    sget-object v0, Lcom/facebook/ads/redexgen/X/2t;->A07:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 6607
    .local p0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6608
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 6609
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v4, 0x3c

    mul-long/2addr v6, v4

    mul-long/2addr v6, v4

    const-wide/32 v2, 0xf4240

    mul-long/2addr v6, v2

    .line 6610
    .local v0, "timestampUs":J
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    mul-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 6611
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 6612
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x2710

    mul-long/2addr v2, v0

    add-long/2addr v6, v2

    .line 6613
    return-wide v6
.end method

.method private final A01([BIZ)Lcom/facebook/ads/redexgen/X/UD;
    .locals 5

    .line 6614
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6615
    .local p0, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    new-instance v3, Lcom/facebook/ads/redexgen/X/IC;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/IC;-><init>()V

    .line 6616
    .local p1, "cueTimesUs":Lcom/facebook/ads/redexgen/X/IC;
    new-instance v1, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/IM;-><init>([BI)V

    .line 6617
    .local p2, "data":Lcom/facebook/ads/redexgen/X/IM;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2t;->A04:Z

    if-nez v0, :cond_0

    .line 6618
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/2t;->A05(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 6619
    :cond_0
    invoke-direct {p0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/2t;->A06(Lcom/facebook/ads/redexgen/X/IM;Ljava/util/List;Lcom/facebook/ads/redexgen/X/IC;)V

    .line 6620
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GB;

    .line 6621
    .local p3, "cuesArray":[Lcom/facebook/ads/redexgen/X/GB;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6622
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IC;->A05()[J

    move-result-object v1

    .line 6623
    .local v4, "cueTimesUsArray":[J
    new-instance v0, Lcom/facebook/ads/redexgen/X/UD;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/UD;-><init>([Lcom/facebook/ads/redexgen/X/GB;[J)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2t;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xe1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2t;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x26t
        0x31t
        0x34t
        0x26t
        0x52t
        0x6at
        0x25t
        0x27t
        0x34t
        0x27t
        0x31t
        0x26t
        0x52t
        0x6at
        0x25t
        0x27t
        0x34t
        0x26t
        0x52t
        0x6at
        0x25t
        0x27t
        0x26t
        0x31t
        0x34t
        0x34t
        0x72t
        0x52t
        0x20t
        0x27t
        0x26t
        0x52t
        0x6at
        0x25t
        0x27t
        0x30t
        0x9t
        0x24t
        0x2ct
        0x21t
        0x22t
        0x2at
        0x38t
        0x28t
        0x77t
        0x6dt
        0x4ft
        0x66t
        0x7bt
        0x64t
        0x68t
        0x7dt
        0x33t
        0x29t
        0x78t
        0x40t
        0x42t
        0x5bt
        0x5bt
        0x42t
        0x45t
        0x4ct
        0xbt
        0x4ft
        0x42t
        0x4at
        0x47t
        0x44t
        0x4ct
        0x5et
        0x4et
        0xbt
        0x47t
        0x42t
        0x45t
        0x4et
        0xbt
        0x49t
        0x4et
        0x4dt
        0x44t
        0x59t
        0x4et
        0xbt
        0x48t
        0x44t
        0x46t
        0x5bt
        0x47t
        0x4et
        0x5ft
        0x4et
        0xbt
        0x4dt
        0x44t
        0x59t
        0x46t
        0x4at
        0x5ft
        0x11t
        0xbt
        0x5et
        0x66t
        0x64t
        0x7dt
        0x7dt
        0x64t
        0x63t
        0x6at
        0x2dt
        0x69t
        0x64t
        0x6ct
        0x61t
        0x62t
        0x6at
        0x78t
        0x68t
        0x2dt
        0x61t
        0x64t
        0x63t
        0x68t
        0x2dt
        0x7at
        0x64t
        0x79t
        0x65t
        0x2dt
        0x6bt
        0x68t
        0x7at
        0x68t
        0x7ft
        0x2dt
        0x6et
        0x62t
        0x61t
        0x78t
        0x60t
        0x63t
        0x7et
        0x2dt
        0x79t
        0x65t
        0x6ct
        0x63t
        0x2dt
        0x6bt
        0x62t
        0x7ft
        0x60t
        0x6ct
        0x79t
        0x37t
        0x2dt
        0x2dt
        0x15t
        0x17t
        0xet
        0xet
        0x17t
        0x10t
        0x19t
        0x5et
        0x17t
        0x10t
        0x8t
        0x1ft
        0x12t
        0x17t
        0x1at
        0x5et
        0xat
        0x17t
        0x13t
        0x17t
        0x10t
        0x19t
        0x44t
        0x5et
        0x2ct
        0xct
        0x1et
        0x3bt
        0x1at
        0x1ct
        0x10t
        0x1bt
        0x1at
        0xdt
        0x48t
        0x56t
        0x65t
        0x76t
        0x7dt
        0x67t
        0x60t
        0x4et
        0x31t
        0x31t
        0x23t
        0xft
        0xft
        0x3dt
        0x13t
        0x34t
        0x61t
        0x65t
        0x70t
        0x13t
        0x32t
        0x9t
        0x2t
        0x8t
        0x71t
        0x76t
        0x63t
        0x70t
        0x76t
        0x74t
        0x65t
        0x78t
        0x74t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8n6qtmfGZnIadMhLmL2dMBgYPXaL4BhN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zSY58KP4KkxuKjK7zbUNti9oxWhcdv5w"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gKi7nkeB9fgqi0fuureq3rVN0Eyj4Jzy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Sp1WlK2sdfyZRg5ZDmo9b18Og6Bm2yk7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uO6oPtIwlkkl4VYBlyrSefVIU4yndAoB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3Fe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ufH8GeZU0qxHZmXqnsjX2BrT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rpYPc9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2t;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 4

    .line 6624
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v3

    .local p1, "currentLine":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 6625
    const/16 v2, 0xc0

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6626
    return-void

    .line 6627
    :cond_1
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/IM;Ljava/util/List;Lcom/facebook/ads/redexgen/X/IC;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/IC;",
            ")V"
        }
    .end annotation

    .line 6628
    .local v3, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0Q()Ljava/lang/String;

    move-result-object v3

    .local p1, "currentLine":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 6629
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2t;->A04:Z

    if-nez v0, :cond_1

    const/16 v2, 0x2f

    const/16 v1, 0x8

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6630
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/2t;->A07(Ljava/lang/String;)V

    goto :goto_0

    .line 6631
    :cond_1
    const/16 v2, 0x25

    const/16 v1, 0xa

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6632
    invoke-direct {p0, v3, p2, p3}, Lcom/facebook/ads/redexgen/X/2t;->A08(Ljava/lang/String;Ljava/util/List;Lcom/facebook/ads/redexgen/X/IC;)V

    goto :goto_0

    .line 6633
    :cond_2
    return-void
.end method

.method private A07(Ljava/lang/String;)V
    .locals 10

    .line 6634
    const/16 v2, 0x2f

    const/16 v1, 0x8

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x24

    const/4 v1, 0x1

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 6635
    .local p0, "values":[Ljava/lang/String;
    array-length v0, v8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2t;->A01:I

    .line 6636
    const/4 v5, -0x1

    iput v5, p0, Lcom/facebook/ads/redexgen/X/2t;->A02:I

    .line 6637
    iput v5, p0, Lcom/facebook/ads/redexgen/X/2t;->A00:I

    .line 6638
    iput v5, p0, Lcom/facebook/ads/redexgen/X/2t;->A03:I

    .line 6639
    const/4 v7, 0x0

    .local v2, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2t;->A01:I

    const/4 v4, 0x0

    if-ge v7, v0, :cond_7

    .line 6640
    aget-object v0, v8, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 6641
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v0, 0x188db

    const/4 v6, 0x2

    const/4 v3, 0x1

    if-eq v1, v0, :cond_6

    const v0, 0x36452d

    if-eq v1, v0, :cond_5

    const v0, 0x68ac462

    if-eq v1, v0, :cond_4

    :cond_0
    const/4 v4, -0x1

    :goto_1
    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_2

    if-eq v4, v6, :cond_1

    .line 6642
    .end local v1    # "key":Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6643
    :cond_1
    iput v7, p0, Lcom/facebook/ads/redexgen/X/2t;->A03:I

    .line 6644
    goto :goto_2

    .line 6645
    :cond_2
    iput v7, p0, Lcom/facebook/ads/redexgen/X/2t;->A00:I

    .line 6646
    goto :goto_2

    .line 6647
    :cond_3
    iput v7, p0, Lcom/facebook/ads/redexgen/X/2t;->A02:I

    .line 6648
    goto :goto_2

    .line 6649
    :cond_4
    const/16 v2, 0xd8

    const/4 v1, 0x5

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_5
    const/16 v2, 0xdd

    const/4 v1, 0x4

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :cond_6
    const/16 v2, 0xd5

    const/4 v1, 0x3

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    .line 6650
    .end local v2    # "i":I
    :cond_7
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2t;->A02:I

    if-eq v0, v5, :cond_8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2t;->A00:I

    if-eq v0, v5, :cond_8

    iget v3, p0, Lcom/facebook/ads/redexgen/X/2t;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/2t;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/2t;->A06:[Ljava/lang/String;

    const-string v1, "OuGBQ481y2MjmKzCnBeEqx4PipCodtTR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "hMfksb5wXCAnQzKc078DOEADOUyNd2Y7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v3, v5, :cond_9

    .line 6651
    :cond_8
    iput v4, p0, Lcom/facebook/ads/redexgen/X/2t;->A01:I

    .line 6652
    :cond_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08(Ljava/lang/String;Ljava/util/List;Lcom/facebook/ads/redexgen/X/IC;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/IC;",
            ")V"
        }
    .end annotation

    .line 6653
    .local v0, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2t;->A01:I

    const/16 v2, 0xb6

    const/16 v1, 0xa

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v7

    if-nez v3, :cond_0

    .line 6654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x37

    const/16 v1, 0x2f

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6655
    return-void

    .line 6656
    :cond_0
    const/16 v2, 0x25

    const/16 v1, 0xa

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget v3, p0, Lcom/facebook/ads/redexgen/X/2t;->A01:I

    const/16 v2, 0x24

    const/4 v1, 0x1

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 6657
    .local p0, "lineValues":[Ljava/lang/String;
    array-length v1, v8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2t;->A01:I

    if-eq v1, v0, :cond_1

    .line 6658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x66

    const/16 v1, 0x37

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6659
    return-void

    .line 6660
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2t;->A02:I

    aget-object v0, v8, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2t;->A00(Ljava/lang/String;)J

    move-result-wide v2

    .line 6661
    .local p2, "startTimeUs":J
    const/16 v4, 0x9d

    const/16 v1, 0x19

    const/16 v0, 0x35

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v6

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v9

    if-nez v0, :cond_2

    .line 6662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6663
    return-void

    .line 6664
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6665
    .local v0, "endTimeUs":J
    iget v4, p0, Lcom/facebook/ads/redexgen/X/2t;->A00:I

    aget-object v5, v8, v4

    .line 6666
    .local v3, "endTimeString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 6667
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/2t;->A00(Ljava/lang/String;)J

    move-result-wide v0

    .line 6668
    cmp-long v4, v0, v9

    if-nez v4, :cond_3

    .line 6669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6670
    return-void

    .line 6671
    :cond_3
    iget v4, p0, Lcom/facebook/ads/redexgen/X/2t;->A03:I

    aget-object v8, v8, v4

    .line 6672
    const/16 v6, 0xce

    const/4 v5, 0x7

    const/4 v4, 0x4

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x14

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v7, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6673
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x25

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v8

    const/16 v6, 0xc8

    const/4 v5, 0x3

    const/16 v4, 0x26

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6674
    const/16 v6, 0xcb

    const/4 v5, 0x3

    const/16 v4, 0x18

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/2t;->A02(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6675
    .local p1, "text":Ljava/lang/String;
    new-instance v4, Lcom/facebook/ads/redexgen/X/GB;

    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/GB;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6676
    invoke-virtual {p3, v2, v3}, Lcom/facebook/ads/redexgen/X/IC;->A04(J)V

    .line 6677
    cmp-long v2, v0, v9

    if-eqz v2, :cond_4

    .line 6678
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6679
    invoke-virtual {p3, v0, v1}, Lcom/facebook/ads/redexgen/X/IC;->A04(J)V

    .line 6680
    :cond_4
    return-void
.end method


# virtual methods
.method public final bridge synthetic A0d([BIZ)Lcom/facebook/ads/redexgen/X/GC;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 6681
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2t;->A01([BIZ)Lcom/facebook/ads/redexgen/X/UD;

    move-result-object v0

    return-object v0
.end method
