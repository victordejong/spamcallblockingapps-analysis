.class public final Lcom/facebook/ads/redexgen/X/OR;
.super Ljava/io/InputStream;
.source ""


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/HI;

.field public final A03:Landroid/net/Uri;

.field public final A04:Lcom/facebook/ads/redexgen/X/HH;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OR;->A00()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46713
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46714
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OR;->A04:Lcom/facebook/ads/redexgen/X/HH;

    .line 46715
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OR;->A03:Landroid/net/Uri;

    .line 46716
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OR;->A01(I)V

    .line 46717
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "B8lxMUavHKfoRp1ohdiOuIMzoadcXLBz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "taDtiJzBvL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1gxctnmp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xW0DP8NMjWRKl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7bIhL0zS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nSBO3UXQ6VW4x"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "omPJR1lrO3rz1FXfY5MEGpCyJVEjNQz7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CC4tEEDcP37TF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OR;->A05:[Ljava/lang/String;

    return-void
.end method

.method private A01(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A02:Lcom/facebook/ads/redexgen/X/HI;

    if-eqz v0, :cond_0

    .line 46719
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->close()V

    .line 46720
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A04:Lcom/facebook/ads/redexgen/X/HH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HH;->A4B()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A02:Lcom/facebook/ads/redexgen/X/HI;

    .line 46721
    new-instance v1, Lcom/facebook/ads/redexgen/X/HM;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OR;->A03:Landroid/net/Uri;

    int-to-long v3, p1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 46722
    .local p0, "dataSpec":Lcom/facebook/ads/redexgen/X/HM;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A02:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HI;->ACC(Lcom/facebook/ads/redexgen/X/HM;)J

    move-result-wide v1

    long-to-int v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A01:J

    .line 46723
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .line 46724
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/OR;->A01:J

    long-to-int v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A00:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A02:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->close()V

    .line 46726
    return-void
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46727
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 46728
    .local p0, "b":[B
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/OR;->read([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A02:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HI;->read([BII)I

    move-result v1

    .line 46730
    .local p0, "read":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A00:I

    .line 46731
    return v1
.end method

.method public final skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46732
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/OR;->A01:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A00:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    .line 46733
    .local p0, "available":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    .line 46734
    return-wide v1

    .line 46735
    .local v2, "skipped":J
    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 46736
    move-wide p1, v3

    .line 46737
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A00:I

    int-to-long v1, v0

    add-long/2addr v1, p1

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A00:I

    .line 46738
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OR;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OR;->A01(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/OR;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46739
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/OR;->A05:[Ljava/lang/String;

    const-string v1, "2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-wide p1
.end method
