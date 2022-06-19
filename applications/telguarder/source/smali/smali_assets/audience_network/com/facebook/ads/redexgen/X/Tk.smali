.class public final Lcom/facebook/ads/redexgen/X/Tk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HI;


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/HG;

.field public final A03:Lcom/facebook/ads/redexgen/X/HI;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tk;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HG;)V
    .locals 1

    .line 55230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55231
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A03:Lcom/facebook/ads/redexgen/X/HI;

    .line 55232
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A02:Lcom/facebook/ads/redexgen/X/HG;

    .line 55233
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JaQBoExeruFvU4mUW2U7crpMd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EboI7DtYZi8vf43oG029LuoOKeW4Fdxt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dK3SrfzN5Une"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6PjkSbPzw2j5rJzTYvB9z5d0EWqowyre"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "O8Tj12n4TlDX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DmfKmFBhBcdsCn1pTNYILGhTSCev3Zwq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iSzHvWFUyJoFlueZjsyWLCRkBvlJYUHz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fjCwXTiyud8RLD7WCIQEBcHVLTj0EAJa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tk;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7T()Landroid/net/Uri;
    .locals 1

    .line 55234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A03:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->A7T()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55235
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Tk;->A03:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/HI;->ACC(Lcom/facebook/ads/redexgen/X/HM;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/Tk;->A00:J

    .line 55236
    iget-wide v4, v3, Lcom/facebook/ads/redexgen/X/Tk;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    .line 55237
    return-wide v1

    .line 55238
    :cond_0
    iget-wide v6, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tk;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tk;->A04:[Ljava/lang/String;

    const-string v1, "j7v5nQjVojJFQeOMoj5sfLOAmXTVlpKn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-wide/16 v4, -0x1

    cmp-long v0, v6, v4

    if-nez v0, :cond_2

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Tk;->A00:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_2

    .line 55239
    new-instance v4, Lcom/facebook/ads/redexgen/X/HM;

    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/facebook/ads/redexgen/X/HM;->A01:J

    iget-wide v8, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    iget-wide v10, v3, Lcom/facebook/ads/redexgen/X/Tk;->A00:J

    iget-object v12, p1, Lcom/facebook/ads/redexgen/X/HM;->A05:Ljava/lang/String;

    iget v13, p1, Lcom/facebook/ads/redexgen/X/HM;->A00:I

    invoke-direct/range {v4 .. v13}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    move-object p1, v4

    .line 55240
    .end local v0
    .local p1, "dataSpec":Lcom/facebook/ads/redexgen/X/HM;
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Tk;->A01:Z

    .line 55241
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Tk;->A02:Lcom/facebook/ads/redexgen/X/HG;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/HG;->ACE(Lcom/facebook/ads/redexgen/X/HM;)V

    .line 55242
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Tk;->A00:J

    return-wide v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55243
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A03:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55244
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A01:Z

    if-eqz v0, :cond_0

    .line 55245
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Tk;->A01:Z

    .line 55246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A02:Lcom/facebook/ads/redexgen/X/HG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HG;->close()V

    .line 55247
    :cond_0
    return-void

    .line 55248
    :catchall_0
    move-exception v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A01:Z

    if-eqz v0, :cond_1

    .line 55249
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Tk;->A01:Z

    .line 55250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A02:Lcom/facebook/ads/redexgen/X/HG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HG;->close()V

    .line 55251
    :cond_1
    throw v1
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55252
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Tk;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 55253
    const/4 v0, -0x1

    return v0

    .line 55254
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A03:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HI;->read([BII)I

    move-result v5

    .line 55255
    .local p0, "bytesRead":I
    if-lez v5, :cond_1

    .line 55256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tk;->A02:Lcom/facebook/ads/redexgen/X/HG;

    invoke-interface {v0, p1, p2, v5}, Lcom/facebook/ads/redexgen/X/HG;->write([BII)V

    .line 55257
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Tk;->A00:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 55258
    int-to-long v0, v5

    sub-long/2addr v3, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Tk;->A00:J

    .line 55259
    :cond_1
    return v5
.end method
