.class public final Lcom/facebook/ads/redexgen/X/Ub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Du;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/E7;,
        Lcom/facebook/ads/redexgen/X/E6;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:I

.field public static final A04:Lcom/facebook/ads/redexgen/X/E6;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/E6;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 56583
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ub;->A0M()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ub;->A0L()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Uc;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ub;->A04:Lcom/facebook/ads/redexgen/X/E6;

    .line 56584
    const/16 v2, 0xa6

    const/4 v1, 0x3

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Ub;->A03:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56585
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ub;-><init>(Lcom/facebook/ads/redexgen/X/E6;)V

    .line 56586
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E6;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/E6;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56588
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ub;->A00:Lcom/facebook/ads/redexgen/X/E6;

    .line 56589
    return-void
.end method

.method public static A00(I)I
    .locals 4

    .line 56590
    if-eqz p0, :cond_0

    const/4 v3, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "j646ggBjGfTVF16q0hM8ZHuIHXFdUiyw"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "aNSxnClCBcYsrKZ9WpztFhOacp4rfSMe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne p0, v3, :cond_1

    .line 56591
    :cond_0
    const/4 v0, 0x1

    .line 56592
    :goto_0
    return v0

    .line 56593
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IM;I)I
    .locals 5

    .line 56594
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 56595
    .local p0, "bytes":[B
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .local p1, "i":I
    :goto_0
    add-int/lit8 v0, v3, 0x1

    if-ge v0, p1, :cond_1

    .line 56596
    aget-byte v1, v4, v3

    const/16 v0, 0xff

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    add-int/lit8 v0, v3, 0x1

    aget-byte v0, v4, v0

    if-nez v0, :cond_0

    .line 56597
    add-int/lit8 v2, v3, 0x2

    add-int/lit8 v1, v3, 0x1

    sub-int v0, p1, v3

    add-int/lit8 v0, v0, -0x2

    invoke-static {v4, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56598
    add-int/lit8 p1, p1, -0x1

    .line 56599
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56600
    .end local p1    # "i":I
    :cond_1
    return p1
.end method

.method public static A02([BI)I
    .locals 1

    .line 56601
    .local p0, "i":I
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 56602
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    .line 56603
    return p1

    .line 56604
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 56605
    .end local p0    # "i":I
    :cond_1
    array-length v0, p0

    return v0
.end method

.method public static A03([BII)I
    .locals 2

    .line 56606
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Ub;->A02([BI)I

    move-result v1

    .line 56607
    .local p0, "terminationPos":I
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 56608
    :cond_0
    return v1

    .line 56609
    :cond_1
    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 56610
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_2

    .line 56611
    return v1

    .line 56612
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A02([BI)I

    move-result v1

    goto :goto_0

    .line 56613
    :cond_3
    array-length v0, p0

    return v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/IM;II)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56614
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v7

    .line 56615
    .local p0, "encoding":I
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Ub;->A0H(I)Ljava/lang/String;

    move-result-object v6

    .line 56616
    .local p1, "charset":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x1

    new-array v5, v0, [B

    .line 56617
    .local p2, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 p1, 0x0

    invoke-virtual {p0, v5, p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 56618
    const/16 v2, 0x1ca

    const/4 v1, 0x6

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 56619
    const/4 v3, 0x2

    .line 56620
    .local v5, "mimeTypeEndIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, p1, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56621
    .local v7, "mimeType":Ljava/lang/String;
    const/16 v4, 0x1da

    const/16 v1, 0x9

    const/16 v0, 0x14

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56622
    const/16 v2, 0x1d0

    const/16 v1, 0xa

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v2

    .line 56623
    .end local v6
    .restart local v7    # "mimeType":Ljava/lang/String;
    :cond_0
    :goto_0
    add-int/lit8 v0, v3, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 p0, v0, 0xff

    .line 56624
    .local v6, "pictureType":I
    add-int/lit8 v1, v3, 0x2

    .line 56625
    .local v0, "descriptionStartIndex":I
    invoke-static {v5, v1, v7}, Lcom/facebook/ads/redexgen/X/Ub;->A03([BII)I

    move-result v4

    .line 56626
    .local v0, "descriptionEndIndex":I
    sub-int v0, v4, v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5, v1, v0, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 56627
    .local p1, "description":Ljava/lang/String;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Ub;->A00(I)I

    move-result v1

    add-int/2addr v1, v4

    .line 56628
    .local v2, "pictureDataStartIndex":I
    array-length v0, v5

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0O([BII)[B

    move-result-object v1

    .line 56629
    .local v1, "pictureData":[B
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v0, v2, v3, p0, v1}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v0

    .line 56630
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v5    # "mimeTypeEndIndex":I
    :cond_1
    invoke-static {v5, p1}, Lcom/facebook/ads/redexgen/X/Ub;->A02([BI)I

    move-result v3

    .line 56631
    .restart local v5    # "mimeTypeEndIndex":I
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56632
    .local v6, "mimeType":Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 56633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v6    # "mimeType":Ljava/lang/String;
    .restart local v7    # "mimeType":Ljava/lang/String;
    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/IM;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/BinaryFrame;
    .locals 2

    .line 56634
    new-array v1, p1, [B

    .line 56635
    .local p0, "frame":[B
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 56636
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v0, p2, v1}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/IM;IIZILcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;
    .locals 14
    .param p5    # Lcom/facebook/ads/redexgen/X/E6;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56637
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v3

    .line 56638
    .local p1, "framePosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Ub;->A02([BI)I

    move-result v6

    .line 56639
    .local v5, "chapterIdEndIndex":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    sub-int v4, v6, v3

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 56640
    .local v2, "chapterId":Ljava/lang/String;
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56641
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v8

    .line 56642
    .local v2, "startTime":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v9

    .line 56643
    .local v1, "endTime":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v10

    .line 56644
    .local v0, "startOffset":J
    const-wide v1, 0xffffffffL

    cmp-long v0, v10, v1

    if-nez v0, :cond_0

    .line 56645
    const-wide/16 v10, -0x1

    .line 56646
    .end local v0    # "startOffset":J
    .local v0, "startOffset":J
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v12

    .line 56647
    .local v0, "endOffset":J
    cmp-long v4, v12, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v4, :cond_1

    .line 56648
    const-wide/16 v12, -0x1

    .line 56649
    .end local v0    # "endOffset":J
    .local v7, "endOffset":J
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56650
    .local v4, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;>;"
    add-int/2addr v3, p1

    .line 56651
    .local v6, "limit":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 56652
    move-object/from16 v0, p5

    move/from16 v2, p4

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-static {v5, p0, v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0B(ILcom/facebook/ads/redexgen/X/IM;ZILcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v0

    .line 56653
    .local v4, "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v0, :cond_2

    .line 56654
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56655
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array p0, v0, [Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    .line 56656
    .local v0, "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56657
    new-instance v6, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;

    .end local v0    # "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    .local v9, "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    .end local v6    # "limit":I
    .local v10, "limit":I
    .end local v4    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    .local p7, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;>;"
    invoke-direct/range {v6 .. v14}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v6

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/IM;IIZILcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 13
    .param p5    # Lcom/facebook/ads/redexgen/X/E6;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56658
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 56659
    .local p1, "framePosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Ub;->A02([BI)I

    move-result v6

    .line 56660
    .local p2, "elementIdEndIndex":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    sub-int v3, v6, v4

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5, v4, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 56661
    .local v2, "elementId":Ljava/lang/String;
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56662
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 56663
    .local v6, "ctocFlags":I
    and-int/lit8 v0, v1, 0x2

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 56664
    .local v0, "isRoot":Z
    :goto_0
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    .line 56665
    .local p0, "isOrdered":Z
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v6

    .line 56666
    .local v5, "childCount":I
    new-array v12, v6, [Ljava/lang/String;

    .line 56667
    .local v3, "children":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 56668
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v8

    .line 56669
    .local v0, "startIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v0, v8}, Lcom/facebook/ads/redexgen/X/Ub;->A02([BI)I

    move-result v3

    .line 56670
    .local v2, "endIndex":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    sub-int v1, v3, v8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v8, v1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v0, v12, v5

    .line 56671
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56672
    .end local v0    # "startIndex":I
    .end local v2    # "endIndex":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 56673
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 56674
    .end local v3    # "i":I
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56675
    .local v2, "subFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;>;"
    add-int/2addr v4, p1

    .line 56676
    .local v1, "limit":I
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    if-ge v0, v4, :cond_4

    .line 56677
    move-object/from16 v0, p5

    move/from16 v2, p4

    move/from16 v3, p3

    invoke-static {p2, p0, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0B(ILcom/facebook/ads/redexgen/X/IM;ZILcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v0

    .line 56678
    .local v3, "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v0, :cond_3

    .line 56679
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 56680
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array p0, v0, [Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    .line 56681
    .local v3, "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56682
    new-instance v8, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;

    .end local v3    # "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    .local v0, "subFrameArray":[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v8
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56683
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 56684
    const/4 v0, 0x0

    return-object v0

    .line 56685
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v6

    .line 56686
    .local p0, "encoding":I
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Ub;->A0H(I)Ljava/lang/String;

    move-result-object v5

    .line 56687
    .local p1, "charset":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 56688
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 56689
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 56690
    .local v0, "language":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x4

    new-array v3, v0, [B

    .line 56691
    add-int/lit8 v0, p1, -0x4

    invoke-virtual {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 56692
    invoke-static {v3, v1, v6}, Lcom/facebook/ads/redexgen/X/Ub;->A03([BII)I

    move-result v0

    .line 56693
    .local v5, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 56694
    .local v6, "description":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Ub;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 56695
    .local v2, "textStartIndex":I
    invoke-static {v3, v1, v6}, Lcom/facebook/ads/redexgen/X/Ub;->A03([BII)I

    move-result v0

    .line 56696
    .local v0, "textEndIndex":I
    invoke-static {v3, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Ub;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56697
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;

    invoke-direct {v0, v4, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56698
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v6

    .line 56699
    .local p0, "encoding":I
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Ub;->A0H(I)Ljava/lang/String;

    move-result-object v7

    .line 56700
    .local p1, "charset":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x1

    new-array v5, v0, [B

    .line 56701
    .local v6, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 56702
    invoke-static {v5, v8}, Lcom/facebook/ads/redexgen/X/Ub;->A02([BI)I

    move-result v3

    .line 56703
    .local v7, "mimeTypeEndIndex":I
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v8, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 56704
    .local v0, "mimeType":Ljava/lang/String;
    add-int/lit8 v1, v3, 0x1

    .line 56705
    .local v5, "filenameStartIndex":I
    invoke-static {v5, v1, v6}, Lcom/facebook/ads/redexgen/X/Ub;->A03([BII)I

    move-result v0

    .line 56706
    .local v0, "filenameEndIndex":I
    invoke-static {v5, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/Ub;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56707
    .local v8, "filename":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Ub;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 56708
    .local v3, "descriptionStartIndex":I
    invoke-static {v5, v1, v6}, Lcom/facebook/ads/redexgen/X/Ub;->A03([BII)I

    move-result v0

    .line 56709
    .local v2, "descriptionEndIndex":I
    invoke-static {v5, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/Ub;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56710
    .local v1, "description":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Ub;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 56711
    .local v0, "objectDataStartIndex":I
    array-length v0, v5

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0O([BII)[B

    move-result-object v1

    .line 56712
    .local v0, "objectData":[B
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/E7;
    .locals 10

    .line 56713
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v3

    const/4 v9, 0x0

    const/16 v2, 0xb3

    const/16 v1, 0xa

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0xa

    if-ge v3, v0, :cond_0

    .line 56714
    const/16 v2, 0x1a

    const/16 v1, 0x1f

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56715
    return-object v9

    .line 56716
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v4

    .line 56717
    .local p0, "id":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ub;->A03:I

    if-eq v4, v0, :cond_1

    .line 56718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x178

    const/16 v1, 0x30

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56719
    return-object v9

    .line 56720
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v4

    .line 56721
    .local v2, "majorVersion":I
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 56722
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v6

    .line 56723
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0E()I

    move-result v5

    .line 56724
    .local v8, "framesSize":I
    const/4 v0, 0x2

    const/4 v3, 0x4

    if-ne v4, v0, :cond_3

    .line 56725
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 56726
    .local v0, "isCompressed":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 56727
    const/16 v2, 0xbd

    const/16 v1, 0x44

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56728
    return-object v9

    .line 56729
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 56730
    :cond_3
    const/4 v0, 0x3

    if-ne v4, v0, :cond_7

    .line 56731
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 56732
    .local v3, "hasExtendedHeader":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 56733
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 56734
    .local v9, "extendedHeaderSize":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 56735
    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v5, v0

    .line 56736
    :cond_4
    :goto_2
    if-ge v4, v3, :cond_5

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_5

    .line 56737
    .local v3, "isUnsynchronized":Z
    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/E7;

    invoke-direct {v0, v4, v7, v5}, Lcom/facebook/ads/redexgen/X/E7;-><init>(IZI)V

    return-object v0

    .line 56738
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 56739
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 56740
    :cond_7
    if-ne v4, v3, :cond_c

    .line 56741
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 56742
    .restart local v3    # "isUnsynchronized":Z
    :goto_4
    if-eqz v0, :cond_8

    .line 56743
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0E()I

    move-result v1

    .line 56744
    .restart local v9    # "extendedHeaderSize":I
    add-int/lit8 v0, v1, -0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 56745
    sub-int/2addr v5, v1

    .line 56746
    .end local v9    # "extendedHeaderSize":I
    :cond_8
    and-int/lit8 v8, v6, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "BUOrtOo9uUldS2fuiIIee0of0IGFgnnE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v8, :cond_9

    const/4 v0, 0x1

    .line 56747
    .local v9, "hasFooter":Z
    :goto_5
    if-eqz v0, :cond_4

    .line 56748
    add-int/lit8 v5, v5, -0xa

    goto :goto_2

    .line 56749
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    .line 56750
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56751
    .end local v3    # "isUnsynchronized":Z
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x101

    const/16 v1, 0x2e

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56752
    return-object v9
.end method

.method public static A0B(ILcom/facebook/ads/redexgen/X/IM;ZILcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    .locals 23
    .param p4    # Lcom/facebook/ads/redexgen/X/E6;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56753
    move-object/from16 v12, p1

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v11

    .line 56754
    .local v9, "frameId0":I
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v10

    .line 56755
    .local v1, "frameId1":I
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v9

    .line 56756
    .local v8, "frameId2":I
    const/4 v1, 0x3

    move/from16 v13, p0

    if-lt v13, v1, :cond_4

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v8

    .line 56757
    .local v0, "frameId3":I
    :goto_0
    const/4 v0, 0x4

    move/from16 p2, p2

    if-ne v13, v0, :cond_2

    .line 56758
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v2

    .line 56759
    .local v12, "frameSize":I
    if-nez p2, :cond_1

    .line 56760
    and-int/lit16 v7, v2, 0xff

    shr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr v7, v0

    shr-int/lit8 v0, v2, 0x10

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v7, v0

    shr-int/lit8 v0, v2, 0x18

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x15

    or-int/2addr v7, v0

    .line 56761
    .local v7, "frameSize":I
    :goto_1
    if-lt v13, v1, :cond_0

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v3

    .line 56762
    .local v12, "flags":I
    :goto_2
    const/16 v18, 0x0

    if-nez v11, :cond_5

    if-nez v10, :cond_5

    if-nez v9, :cond_5

    if-nez v8, :cond_5

    if-nez v7, :cond_5

    if-nez v3, :cond_5

    .line 56763
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56764
    return-object v18

    .line 56765
    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 56766
    :cond_1
    move v7, v2

    goto :goto_1

    .line 56767
    .end local v12    # "flags":I
    :cond_2
    if-ne v13, v1, :cond_3

    .line 56768
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v7

    .restart local v12    # "flags":I
    goto :goto_1

    .line 56769
    .end local v12    # "flags":I
    :cond_3
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v7

    goto :goto_1

    .line 56770
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 56771
    :cond_5
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v6

    add-int/2addr v6, v7

    .line 56772
    .local v13, "nextFramePosition":I
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v14

    const/16 v4, 0xb3

    const/16 v2, 0xa

    const/16 v0, 0x1e

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v5

    if-le v6, v14, :cond_6

    .line 56773
    const/16 v2, 0x81

    const/16 v1, 0x25

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56774
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56775
    return-object v18

    .line 56776
    :cond_6
    move-object/from16 v19, p4

    if-eqz v19, :cond_8

    .line 56777
    move/from16 v20, v13

    .end local v13    # "nextFramePosition":I
    .local v2, "nextFramePosition":I
    .end local v12
    .local v8, "flags":I
    move/from16 p0, v9

    move/from16 p1, v8

    move/from16 v21, v11

    move/from16 v22, v10

    invoke-interface/range {v19 .. v24}, Lcom/facebook/ads/redexgen/X/E6;->A5A(IIIII)Z

    move-result v0

    if-nez v0, :cond_8

    .line 56778
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_16

    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56779
    .end local v13
    .end local v12
    .restart local v8    # "flags":I
    .restart local v2    # "nextFramePosition":I
    :cond_8
    const/16 v16, 0x0

    .line 56780
    .local v12, "isCompressed":Z
    const/4 v15, 0x0

    .line 56781
    .local p2, "isEncrypted":Z
    const/4 v14, 0x0

    .line 56782
    .local p3, "isUnsynchronized":Z
    const/4 v0, 0x0

    .line 56783
    .local v19, "hasDataLength":Z
    const/16 v17, 0x0

    .line 56784
    .local v13, "hasGroupIdentifier":Z
    const/4 v2, 0x1

    if-ne v13, v1, :cond_e

    .line 56785
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 56786
    :goto_4
    and-int/lit8 v1, v3, 0x40

    if-eqz v1, :cond_c

    const/4 v15, 0x1

    :goto_5
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v4, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v1, 0x30

    if-eq v4, v1, :cond_7

    .line 56787
    sget-object v16, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v4, "AjgsXHuagnOJLliEiu48WWyYMuu9Rf88"

    const/4 v1, 0x5

    aput-object v4, v16, v1

    const-string v4, "O54qrAc4vdN1Xrqdcf4wtD5kyRIEUbRG"

    const/4 v1, 0x2

    aput-object v4, v16, v1

    and-int/lit8 v1, v3, 0x20

    if-eqz v1, :cond_b

    const/16 v17, 0x1

    .line 56788
    :goto_6
    move/from16 v16, v0

    .line 56789
    .end local v12    # "isCompressed":Z
    .end local p2    # "isEncrypted":Z
    .end local p3    # "isUnsynchronized":Z
    .end local v19    # "hasDataLength":Z
    .end local v13    # "hasGroupIdentifier":Z
    .local v0, "isCompressed":Z
    .local v7, "isEncrypted":Z
    .local v0, "hasGroupIdentifier":Z
    .local v0, "isUnsynchronized":Z
    .local v0, "hasDataLength":Z
    :cond_9
    :goto_7
    if-nez v16, :cond_a

    if-eqz v15, :cond_17

    .line 56790
    :cond_a
    const/16 v2, 0x12f

    const/16 v1, 0x32

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56791
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56792
    return-object v18

    .line 56793
    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    .line 56794
    :cond_c
    const/4 v15, 0x0

    goto :goto_5

    .line 56795
    :cond_d
    const/4 v0, 0x0

    goto :goto_4

    .line 56796
    :cond_e
    const/4 v1, 0x4

    if-ne v13, v1, :cond_9

    .line 56797
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_10

    const/16 v17, 0x1

    .line 56798
    :goto_8
    and-int/lit8 v14, v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2e

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "KAJsFqDMpJujTr9WMR7mDck9GYGvsft"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-eqz v14, :cond_f

    const/16 v16, 0x1

    :goto_9
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v4, v0

    const/4 v0, 0x7

    aget-object v4, v4, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11

    goto/16 :goto_3

    :cond_f
    const/16 v16, 0x0

    goto :goto_9

    .line 56799
    :cond_10
    const/16 v17, 0x0

    goto :goto_8

    .line 56800
    :cond_11
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "lECKGphBjd2VTGeBIdqTIrGZOhvZsMa9"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_14

    const/4 v15, 0x1

    :goto_a
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v4, v0

    const/4 v0, 0x7

    aget-object v4, v4, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_12

    .line 56801
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "Yn5Y01ttI9q24JUfHb5ZsI1KWcUp4RW"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_13

    :goto_b
    const/4 v14, 0x1

    .line 56802
    :goto_c
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto/16 :goto_7

    .line 56803
    :cond_12
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "oTHdnl9AlzYEzbeZ"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_13

    goto :goto_b

    :cond_13
    const/4 v14, 0x0

    goto :goto_c

    .line 56804
    :cond_14
    const/4 v15, 0x0

    goto :goto_a

    .line 56805
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 56806
    :cond_16
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "z6oHlbW6CgjmMGdxasCDtbvJ4sCfbCfI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "K1q2X5GjdqtkzqHNnnQGiNdji0CtaSlT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v18

    .line 56807
    :cond_17
    if-eqz v17, :cond_18

    .line 56808
    add-int/lit8 v7, v7, -0x1

    .line 56809
    invoke-virtual {v12, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 56810
    :cond_18
    if-eqz v0, :cond_19

    .line 56811
    add-int/lit8 v7, v7, -0x4

    .line 56812
    const/4 v0, 0x4

    invoke-virtual {v12, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 56813
    :cond_19
    if-eqz v14, :cond_1a

    .line 56814
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/Ub;->A01(Lcom/facebook/ads/redexgen/X/IM;I)I

    move-result v7

    .line 56815
    :cond_1a
    const/16 v15, 0x54

    const/4 v4, 0x2

    const/16 v1, 0x58

    if-ne v11, v15, :cond_1c

    if-ne v10, v1, :cond_1c

    if-ne v9, v1, :cond_1c

    if-eq v13, v4, :cond_1b

    if-ne v8, v1, :cond_1c

    .line 56816
    :cond_1b
    :try_start_0
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/Ub;->A0D(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4

    .local v13, "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_12

    .line 56817
    .end local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    :cond_1c
    if-ne v11, v15, :cond_1d

    .line 56818
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Ub;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 56819
    .local v13, "id":Ljava/lang/String;
    invoke-static {v12, v7, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0E(Lcom/facebook/ads/redexgen/X/IM;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4

    .line 56820
    .local v13, "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_12

    :cond_1d
    const/16 v0, 0x57

    if-ne v11, v0, :cond_1f

    if-ne v10, v1, :cond_1f

    if-ne v9, v1, :cond_1f

    if-eq v13, v4, :cond_1e

    if-ne v8, v1, :cond_1f

    .line 56821
    :cond_1e
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/Ub;->A0F(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v4

    .restart local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_12

    .line 56822
    .end local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    :cond_1f
    const/16 v0, 0x57

    if-ne v11, v0, :cond_20

    .line 56823
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Ub;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 56824
    .local v13, "id":Ljava/lang/String;
    invoke-static {v12, v7, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0G(Lcom/facebook/ads/redexgen/X/IM;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v4

    .line 56825
    .local v13, "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_12

    .end local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    :cond_20
    const/16 v14, 0x49

    const/16 v3, 0x50

    if-ne v11, v3, :cond_23
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x52

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x1f

    if-eq v2, v1, :cond_21

    if-ne v10, v0, :cond_23

    :goto_d
    if-ne v9, v14, :cond_23

    const/16 v0, 0x56

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_22

    sget-object v16, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v2, "lYbKSKCNA9ae0k2fcrMTP6Hka"

    const/4 v1, 0x4

    aput-object v2, v16, v1

    if-ne v8, v0, :cond_23

    goto :goto_e

    :cond_21
    sget-object v16, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v2, "7tADBfxmevOHsb2M0r08nKjj1albnTzq"

    const/4 v1, 0x6

    aput-object v2, v16, v1

    if-ne v10, v0, :cond_23

    goto :goto_d

    :cond_22
    sget-object v16, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v2, "thvVoOlbAWw9PwTKA9ogaymrMjnMy9Nn"

    const/4 v1, 0x3

    aput-object v2, v16, v1

    const-string v2, "3Nz3b8lWAbb4PcUNxIrI5CyKGhxsCiJ8"

    const/4 v1, 0x7

    aput-object v2, v16, v1

    if-ne v8, v0, :cond_23

    .line 56826
    :goto_e
    :try_start_1
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/Ub;->A0C(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v4

    .restart local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_12

    .line 56827
    .end local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    :cond_23
    const/16 v0, 0x47

    const/16 v2, 0x4f

    if-ne v11, v0, :cond_26
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v17, 0x45

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    move v1, v1

    move v0, v0

    if-eq v1, v0, :cond_24

    sget-object v16, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "lUR527PeicsnYLlWujV9R73qk948Zu0t"

    const/4 v0, 0x5

    aput-object v1, v16, v0

    const-string v1, "CqwsPGbP3U8B8C1aclZq3vZjtEMpI5a8"

    const/4 v0, 0x2

    aput-object v1, v16, v0

    move/from16 v0, v17

    if-ne v10, v0, :cond_26

    :goto_f
    if-ne v9, v2, :cond_26

    const/16 v0, 0x42

    if-eq v8, v0, :cond_25

    if-ne v13, v4, :cond_26

    goto :goto_10

    :cond_24
    move/from16 v0, v17

    if-ne v10, v0, :cond_26

    goto :goto_f

    .line 56828
    :cond_25
    :goto_10
    :try_start_2
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/Ub;->A09(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/GeobFrame;

    move-result-object v4

    .restart local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_12

    .line 56829
    .end local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    :cond_26
    const/16 v0, 0x43

    if-ne v13, v4, :cond_27

    if-ne v11, v3, :cond_28

    if-ne v10, v14, :cond_28

    if-ne v9, v0, :cond_28

    goto :goto_11

    :cond_27
    const/16 v1, 0x41

    if-ne v11, v1, :cond_28

    if-ne v10, v3, :cond_28

    if-ne v9, v14, :cond_28

    if-ne v8, v0, :cond_28

    .line 56830
    :goto_11
    invoke-static {v12, v7, v13}, Lcom/facebook/ads/redexgen/X/Ub;->A04(Lcom/facebook/ads/redexgen/X/IM;II)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v4

    .restart local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_12

    .line 56831
    .end local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    :cond_28
    if-ne v11, v0, :cond_2a

    if-ne v10, v2, :cond_2a

    const/16 v1, 0x4d

    if-ne v9, v1, :cond_2a

    const/16 v1, 0x4d

    if-eq v8, v1, :cond_29

    if-ne v13, v4, :cond_2a

    .line 56832
    :cond_29
    invoke-static {v12, v7}, Lcom/facebook/ads/redexgen/X/Ub;->A08(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v4

    .restart local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_12

    .line 56833
    .end local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    :cond_2a
    move/from16 p3, p3

    if-ne v11, v0, :cond_2b

    const/16 v1, 0x48

    if-ne v10, v1, :cond_2b

    const/16 v1, 0x41

    if-ne v9, v1, :cond_2b

    if-ne v8, v3, :cond_2b

    .line 56834
    move-object/from16 v22, v12

    move/from16 p1, v13

    move/from16 p0, v7

    move-object/from16 p4, v19

    invoke-static/range {v22 .. v27}, Lcom/facebook/ads/redexgen/X/Ub;->A06(Lcom/facebook/ads/redexgen/X/IM;IIZILcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object v4

    .restart local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_12

    .line 56835
    .end local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    :cond_2b
    if-ne v11, v0, :cond_2c

    if-ne v10, v15, :cond_2c

    if-ne v9, v2, :cond_2c

    if-ne v8, v0, :cond_2c

    .line 56836
    move-object/from16 v22, v12

    move/from16 p1, v13

    move/from16 p0, v7

    move-object/from16 p4, v19

    invoke-static/range {v22 .. v27}, Lcom/facebook/ads/redexgen/X/Ub;->A07(Lcom/facebook/ads/redexgen/X/IM;IIZILcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object v4

    .restart local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_12

    .line 56837
    .end local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    :cond_2c
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Ub;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    .line 56838
    .local v13, "id":Ljava/lang/String;
    invoke-static {v12, v7, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A05(Lcom/facebook/ads/redexgen/X/IM;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/BinaryFrame;

    move-result-object v4

    .line 56839
    .local v13, "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    :goto_12
    if-nez v4, :cond_2d

    .line 56840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x1b

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56841
    invoke-static {v13, v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Ub;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v1, 0xc

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56842
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56843
    .restart local v13    # "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    :cond_2d
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56844
    return-object v4

    .line 56845
    .local v13, "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    :try_start_3
    const/16 v2, 0x1a8

    const/16 v1, 0x1e

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56846
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56847
    return-object v18

    .line 56848
    .end local v13    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v0

    .end local v13
    invoke-virtual {v12, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56849
    throw v0

    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/PrivFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56850
    new-array v5, p1, [B

    .line 56851
    .local p0, "data":[B
    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4, p1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 56852
    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/Ub;->A02([BI)I

    move-result v3

    .line 56853
    .local v5, "ownerEndIndex":I
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 56854
    .local p1, "owner":Ljava/lang/String;
    add-int/lit8 v1, v3, 0x1

    .line 56855
    .local v4, "privateDataStartIndex":I
    array-length v0, v5

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0O([BII)[B

    move-result-object v1

    .line 56856
    .local v3, "privateData":[B
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56857
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 56858
    const/4 v0, 0x0

    return-object v0

    .line 56859
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v5

    .line 56860
    .local p0, "encoding":I
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Ub;->A0H(I)Ljava/lang/String;

    move-result-object v3

    .line 56861
    .local p1, "charset":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x1

    new-array v2, v0, [B

    .line 56862
    .local v0, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 56863
    invoke-static {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/Ub;->A03([BII)I

    move-result v0

    .line 56864
    .local v0, "descriptionEndIndex":I
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 56865
    .local v5, "description":Ljava/lang/String;
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Ub;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 56866
    .local v3, "valueStartIndex":I
    invoke-static {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/Ub;->A03([BII)I

    move-result v0

    .line 56867
    .local v0, "valueEndIndex":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ub;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56868
    .local v2, "value":Ljava/lang/String;
    const/16 v2, 0x161

    const/4 v1, 0x4

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/IM;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56869
    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 56870
    return-object v5

    .line 56871
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 56872
    .local p1, "encoding":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Ub;->A0H(I)Ljava/lang/String;

    move-result-object v4

    .line 56873
    .local p2, "charset":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x1

    new-array v3, v0, [B

    .line 56874
    .local v5, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 56875
    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ub;->A03([BII)I

    move-result v0

    .line 56876
    .local v0, "valueEndIndex":I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 56877
    .local v1, "value":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v0, p2, v5, v1}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56878
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 56879
    const/4 v0, 0x0

    return-object v0

    .line 56880
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v3

    .line 56881
    .local p0, "encoding":I
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ub;->A0H(I)Ljava/lang/String;

    move-result-object v2

    .line 56882
    .local p1, "charset":Ljava/lang/String;
    add-int/lit8 v0, p1, -0x1

    new-array v6, v0, [B

    .line 56883
    .local v0, "data":[B
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 56884
    invoke-static {v6, v1, v3}, Lcom/facebook/ads/redexgen/X/Ub;->A03([BII)I

    move-result v0

    .line 56885
    .local v0, "descriptionEndIndex":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 56886
    .local v3, "description":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ub;->A00(I)I

    move-result v4

    add-int/2addr v4, v0

    .line 56887
    .local v2, "urlStartIndex":I
    invoke-static {v6, v4}, Lcom/facebook/ads/redexgen/X/Ub;->A02([BI)I

    move-result v3

    .line 56888
    .local v0, "urlEndIndex":I
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56889
    .local v6, "url":Ljava/lang/String;
    const/16 v2, 0x1c6

    const/4 v1, 0x4

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;

    invoke-direct {v0, v1, v5, v3}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/IM;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56890
    new-array v5, p1, [B

    .line 56891
    .local p0, "data":[B
    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4, p1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 56892
    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/Ub;->A02([BI)I

    move-result v3

    .line 56893
    .local p2, "urlEndIndex":I
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 56894
    .local p1, "url":Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;

    invoke-direct {v0, p2, v1, v2}, Lcom/facebook/ads/internal/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0H(I)Ljava/lang/String;
    .locals 3

    .line 56895
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 56896
    return-object v1

    .line 56897
    :cond_0
    const/16 v2, 0x173

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56898
    :cond_1
    const/16 v2, 0x16b

    const/16 v1, 0x8

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56899
    :cond_2
    const/16 v2, 0x165

    const/4 v1, 0x6

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56900
    :cond_3
    return-object v1
.end method

.method public static A0I(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ub;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x22

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0J(IIIII)Ljava/lang/String;
    .locals 7

    .line 56901
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 56902
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56903
    :goto_0
    return-object v0

    .line 56904
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v2, 0x6

    const/16 v1, 0x8

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A0K([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 56905
    if-le p2, p1, :cond_0

    array-length v0, p0

    if-le p2, v0, :cond_1

    .line 56906
    :cond_0
    const/4 p1, 0x0

    const/4 p0, 0x0

    const/16 v0, 0x13

    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56907
    :cond_1
    sub-int/2addr p2, p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public static A0L()V
    .locals 1

    const/16 v0, 0x1e3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ub;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x59t
        -0x1bt
        -0x59t
        -0x1bt
        -0x59t
        -0x1bt
        -0x47t
        -0x9t
        -0x47t
        -0x9t
        -0x47t
        -0x9t
        -0x47t
        -0x9t
        -0x5et
        -0x6at
        -0x24t
        -0x18t
        -0x29t
        -0x1dt
        -0x25t
        -0x37t
        -0x21t
        -0x10t
        -0x25t
        -0x4dt
        0x6bt
        -0x78t
        -0x65t
        -0x78t
        0x47t
        -0x65t
        -0x6at
        -0x6at
        0x47t
        -0x66t
        -0x71t
        -0x6at
        -0x67t
        -0x65t
        0x47t
        -0x65t
        -0x6at
        0x47t
        -0x77t
        -0x74t
        0x47t
        -0x78t
        -0x6bt
        0x47t
        0x70t
        0x6bt
        0x5at
        0x47t
        -0x65t
        -0x78t
        -0x72t
        -0x37t
        -0x1ct
        -0x14t
        -0x11t
        -0x18t
        -0x19t
        -0x5dt
        -0x9t
        -0xet
        -0x5dt
        -0x19t
        -0x18t
        -0x1at
        -0xet
        -0x19t
        -0x18t
        -0x5dt
        -0x17t
        -0xbt
        -0x1ct
        -0x10t
        -0x18t
        -0x43t
        -0x5dt
        -0x14t
        -0x19t
        -0x40t
        -0x35t
        -0x1at
        -0x12t
        -0xft
        -0x16t
        -0x17t
        -0x5bt
        -0x7t
        -0xct
        -0x5bt
        -0x5t
        -0x1at
        -0xft
        -0x12t
        -0x17t
        -0x1at
        -0x7t
        -0x16t
        -0x5bt
        -0x32t
        -0x37t
        -0x48t
        -0x5bt
        -0x7t
        -0x1at
        -0x14t
        -0x5bt
        -0x4t
        -0x12t
        -0x7t
        -0x13t
        -0x5bt
        -0xet
        -0x1at
        -0x11t
        -0xct
        -0x9t
        -0x25t
        -0x16t
        -0x9t
        -0x8t
        -0x12t
        -0xct
        -0xdt
        -0x3et
        -0x42t
        -0x16t
        -0x27t
        -0x1bt
        -0x23t
        -0x68t
        -0x15t
        -0x1ft
        -0xet
        -0x23t
        -0x68t
        -0x23t
        -0x10t
        -0x25t
        -0x23t
        -0x23t
        -0x24t
        -0x15t
        -0x68t
        -0x16t
        -0x23t
        -0x1bt
        -0x27t
        -0x1ft
        -0x1at
        -0x1ft
        -0x1at
        -0x21t
        -0x68t
        -0x14t
        -0x27t
        -0x21t
        -0x68t
        -0x24t
        -0x27t
        -0x14t
        -0x27t
        0x71t
        0x6ct
        0x5bt
        -0x26t
        -0x1ct
        -0x20t
        -0x42t
        -0x37t
        -0x37t
        -0x3at
        -0x36t
        -0x42t
        -0x3et
        -0x77t
        -0x5ct
        0x73t
        -0x7ct
        -0x5bt
        -0x5dt
        -0x51t
        -0x5ct
        -0x5bt
        -0x4et
        0x78t
        -0x70t
        -0x72t
        -0x6bt
        -0x6bt
        -0x76t
        -0x77t
        0x45t
        0x6et
        0x69t
        0x58t
        0x45t
        -0x67t
        -0x7at
        -0x74t
        0x45t
        -0x64t
        -0x72t
        -0x67t
        -0x73t
        0x45t
        -0x6et
        -0x7at
        -0x71t
        -0x6ct
        -0x69t
        0x7bt
        -0x76t
        -0x69t
        -0x68t
        -0x72t
        -0x6ct
        -0x6dt
        0x62t
        0x57t
        0x45t
        -0x7at
        -0x6dt
        -0x77t
        0x45t
        -0x66t
        -0x6dt
        -0x77t
        -0x76t
        -0x75t
        -0x72t
        -0x6dt
        -0x76t
        -0x77t
        0x45t
        -0x78t
        -0x6ct
        -0x6et
        -0x6bt
        -0x69t
        -0x76t
        -0x68t
        -0x68t
        -0x72t
        -0x6ct
        -0x6dt
        0x45t
        -0x68t
        -0x78t
        -0x73t
        -0x76t
        -0x6et
        -0x76t
        -0x6at
        -0x52t
        -0x54t
        -0x4dt
        -0x4dt
        -0x58t
        -0x59t
        0x63t
        -0x74t
        -0x79t
        0x76t
        0x63t
        -0x49t
        -0x5ct
        -0x56t
        0x63t
        -0x46t
        -0x54t
        -0x49t
        -0x55t
        0x63t
        -0x48t
        -0x4ft
        -0x4at
        -0x48t
        -0x4dt
        -0x4dt
        -0x4et
        -0x4bt
        -0x49t
        -0x58t
        -0x59t
        0x63t
        -0x50t
        -0x5ct
        -0x53t
        -0x4et
        -0x4bt
        -0x67t
        -0x58t
        -0x4bt
        -0x4at
        -0x54t
        -0x4et
        -0x4ft
        -0x80t
        -0x4bt
        -0x33t
        -0x35t
        -0x2et
        -0x2et
        -0x35t
        -0x30t
        -0x37t
        -0x7et
        -0x29t
        -0x30t
        -0x2bt
        -0x29t
        -0x2et
        -0x2et
        -0x2ft
        -0x2ct
        -0x2at
        -0x39t
        -0x3at
        -0x7et
        -0x3bt
        -0x2ft
        -0x31t
        -0x2et
        -0x2ct
        -0x39t
        -0x2bt
        -0x2bt
        -0x39t
        -0x3at
        -0x7et
        -0x2ft
        -0x2ct
        -0x7et
        -0x39t
        -0x30t
        -0x3bt
        -0x2ct
        -0x25t
        -0x2et
        -0x2at
        -0x39t
        -0x3at
        -0x7et
        -0x38t
        -0x2ct
        -0x3dt
        -0x31t
        -0x39t
        -0x4at
        -0x46t
        -0x46t
        -0x46t
        -0x55t
        -0x56t
        -0x64t
        -0x7dt
        -0x79t
        -0x74t
        -0x6at
        -0x6bt
        -0x79t
        0x6et
        0x72t
        0x77t
        -0x7dt
        -0x7at
        -0x16t
        -0x17t
        -0x25t
        -0x3et
        -0x33t
        -0x2at
        -0x11t
        -0x1at
        -0x7t
        -0xft
        -0x1at
        -0x1ct
        -0xbt
        -0x1at
        -0x1bt
        -0x5ft
        -0x19t
        -0x16t
        -0xdt
        -0xct
        -0xbt
        -0x5ft
        -0xbt
        -0x17t
        -0xdt
        -0x1at
        -0x1at
        -0x5ft
        -0x1dt
        -0x6t
        -0xbt
        -0x1at
        -0xct
        -0x5ft
        -0x10t
        -0x19t
        -0x5ft
        -0x36t
        -0x3bt
        -0x4ct
        -0x5ft
        -0xbt
        -0x1et
        -0x18t
        -0x5ft
        -0x17t
        -0x1at
        -0x1et
        -0x1bt
        -0x1at
        -0xdt
        -0x45t
        -0x5ft
        -0x41t
        -0x28t
        -0x23t
        -0x21t
        -0x26t
        -0x26t
        -0x27t
        -0x24t
        -0x22t
        -0x31t
        -0x32t
        -0x76t
        -0x33t
        -0x2et
        -0x35t
        -0x24t
        -0x35t
        -0x33t
        -0x22t
        -0x31t
        -0x24t
        -0x76t
        -0x31t
        -0x28t
        -0x33t
        -0x27t
        -0x32t
        -0x2dt
        -0x28t
        -0x2ft
        -0x7dt
        -0x7ct
        -0x7ct
        -0x7ct
        -0x30t
        -0x2ct
        -0x38t
        -0x32t
        -0x34t
        -0x6at
        -0x32t
        -0x2et
        -0x3at
        -0x34t
        -0x36t
        -0x6ct
        -0x31t
        -0x2bt
        -0x36t
        -0x34t
        -0x61t
        -0x5dt
        -0x69t
        -0x63t
        -0x65t
        0x65t
        -0x60t
        -0x5at
        -0x63t
    .end array-data
.end method

.method public static A0M()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YMZv1vZkOCmImrEGVd4CKrvMorVxfYZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TLR1PwcYgIuCeL6Y"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fdFVWh3cJecaVVDSUXjkhHjfXH7AhNtr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mTDb5UlFJMXveUQao0dNLr1ABNkfQykA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jeudlLf7784c9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JPPSWuAaSEKWmID49nlDNs4gDUlQj8YY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PKAy1yB1cE5H5lH1MllTudJb7FRAxIVh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kpv34Gl1Y0MS4V2T2pcoSCGkDpXpsxMX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static A0N(Lcom/facebook/ads/redexgen/X/IM;IIZ)Z
    .locals 16

    .line 56908
    move-object/from16 v6, p0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v5

    .line 56909
    .local p3, "startPosition":I
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    const/16 p0, 0x1

    move/from16 v1, p2

    if-lt v0, v1, :cond_10

    .line 56910
    const/4 v11, 0x3

    move/from16 v12, p1

    if-lt v12, v11, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56911
    :try_start_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 56912
    .local v5, "id":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v3

    .line 56913
    .local v0, "frameSize":J
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v10

    .local v1, "flags":I
    goto :goto_1

    .line 56914
    .end local v5    # "id":I
    .end local v0    # "frameSize":J
    .end local v1    # "flags":I
    :cond_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v1

    .line 56915
    .restart local v5    # "id":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v0

    int-to-long v3, v0

    .line 56916
    .restart local v0    # "frameSize":J
    const/4 v10, 0x0

    .line 56917
    .restart local v1    # "flags":I
    :goto_1
    const-wide/16 v8, 0x0

    if-nez v1, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v7, v3, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "o2Lt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v7, :cond_2

    if-nez v10, :cond_2

    .line 56918
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56919
    return p0

    .line 56920
    :cond_2
    const/4 v7, 0x4

    const/4 v15, 0x0

    if-ne v12, v7, :cond_4

    if-nez p3, :cond_4

    .line 56921
    const-wide/32 v1, 0x808080

    and-long/2addr v1, v3

    cmp-long v0, v1, v8

    if-eqz v0, :cond_3

    .line 56922
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56923
    return v15

    .line 56924
    :cond_3
    const-wide/16 v13, 0xff

    and-long v8, v3, v13

    const/16 v0, 0x8

    shr-long v1, v3, v0

    and-long/2addr v1, v13

    const/4 v0, 0x7

    shl-long/2addr v1, v0

    or-long/2addr v8, v1

    const/16 v0, 0x10

    shr-long v1, v3, v0

    and-long/2addr v1, v13

    const/16 v0, 0xe

    shl-long/2addr v1, v0

    or-long/2addr v8, v1

    const/16 v0, 0x18

    shr-long/2addr v3, v0

    and-long/2addr v3, v13

    const/16 v0, 0x15

    shl-long/2addr v3, v0

    or-long/2addr v3, v8

    .line 56925
    :cond_4
    const/4 v8, 0x0

    .line 56926
    .local v11, "hasGroupIdentifier":Z
    const/4 v9, 0x0

    .line 56927
    .local v1, "hasDataLength":Z
    if-ne v12, v7, :cond_b

    .line 56928
    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_a

    const/4 v8, 0x1

    .line 56929
    :goto_2
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_9

    :goto_3
    move/from16 v9, p0

    .line 56930
    :cond_5
    :goto_4
    const/4 v7, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    .line 56931
    .local v6, "minimumFrameSize":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "fTBjzt7SvOsIso4iTk86F2oosAn80eCw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v8, :cond_6

    .line 56932
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 56933
    :cond_6
    if-eqz v9, :cond_7

    .line 56934
    add-int/lit8 v7, v7, 0x4

    .line 56935
    :cond_7
    int-to-long v1, v7

    cmp-long v0, v3, v1

    if-gez v0, :cond_e

    .line 56936
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56937
    return v15

    .line 56938
    .local v6, "minimumFrameSize":I
    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "3SxbRCwvmNAAEF6kIUWmGG4JyHDtRNRr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v8, :cond_6

    goto :goto_5

    .line 56939
    :cond_9
    const/16 p0, 0x0

    goto :goto_3

    .line 56940
    :cond_a
    const/4 v8, 0x0

    goto :goto_2

    .line 56941
    :cond_b
    if-ne v12, v11, :cond_5

    .line 56942
    and-int/lit8 v0, v10, 0x20

    if-eqz v0, :cond_d

    const/4 v8, 0x1

    .line 56943
    :goto_6
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_c

    :goto_7
    move/from16 v9, p0

    goto :goto_4

    :cond_c
    const/16 p0, 0x0

    goto :goto_7

    .line 56944
    :cond_d
    const/4 v8, 0x0

    goto :goto_6

    .line 56945
    :cond_e
    :try_start_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    int-to-long v1, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_f

    goto :goto_8

    .line 56946
    :cond_f
    long-to-int v0, v3

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    goto/16 :goto_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56947
    :goto_8
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56948
    return v15

    .line 56949
    :cond_10
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56950
    return p0

    .line 56951
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    :goto_9
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 56952
    throw v0
.end method

.method public static A0O([BII)[B
    .locals 0

    .line 56953
    if-gt p2, p1, :cond_0

    .line 56954
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 56955
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0P([BI)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .locals 10

    .line 56956
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56957
    .local p0, "id3Frames":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;>;"
    new-instance v3, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/IM;-><init>([BI)V

    .line 56958
    .local p1, "id3Data":Lcom/facebook/ads/redexgen/X/IM;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ub;->A0A(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/E7;

    move-result-object v9

    .line 56959
    .local p2, "id3Header":Lcom/facebook/ads/redexgen/X/E7;
    const/4 v8, 0x0

    if-nez v9, :cond_0

    .line 56960
    return-object v8

    .line 56961
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v7

    .line 56962
    .local v3, "startPosition":I
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/E7;->A00(Lcom/facebook/ads/redexgen/X/E7;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    const/4 v5, 0x6

    .line 56963
    .local v9, "frameHeaderSize":I
    :goto_0
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/E7;->A01(Lcom/facebook/ads/redexgen/X/E7;)I

    move-result v1

    .line 56964
    .local v8, "framesSize":I
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/E7;->A02(Lcom/facebook/ads/redexgen/X/E7;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56965
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/E7;->A01(Lcom/facebook/ads/redexgen/X/E7;)I

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ub;->A02:[Ljava/lang/String;

    const-string v1, "TpmRNBCmd0OKa4Q8"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v3, v6}, Lcom/facebook/ads/redexgen/X/Ub;->A01(Lcom/facebook/ads/redexgen/X/IM;I)I

    move-result v1

    .line 56966
    :cond_1
    add-int/2addr v7, v1

    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 56967
    const/4 v4, 0x0

    .line 56968
    .local v7, "unsignedIntFrameSizeHack":Z
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/E7;->A00(Lcom/facebook/ads/redexgen/X/E7;)I

    move-result v1

    const/4 v0, 0x0

    invoke-static {v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0N(Lcom/facebook/ads/redexgen/X/IM;IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56969
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/E7;->A00(Lcom/facebook/ads/redexgen/X/E7;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    invoke-static {v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0N(Lcom/facebook/ads/redexgen/X/IM;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56970
    const/4 v4, 0x1

    .line 56971
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lt v0, v5, :cond_4

    .line 56972
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/E7;->A00(Lcom/facebook/ads/redexgen/X/E7;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ub;->A00:Lcom/facebook/ads/redexgen/X/E6;

    .line 56973
    invoke-static {v1, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0B(ILcom/facebook/ads/redexgen/X/IM;ZILcom/facebook/ads/redexgen/X/E6;)Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v0

    .line 56974
    .local v2, "frame":Lcom/facebook/ads/internal/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v0, :cond_2

    .line 56975
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56976
    :cond_3
    const/16 v5, 0xa

    goto :goto_0

    .line 56977
    :cond_4
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v2}, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object v0

    .line 56978
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x54

    const/16 v1, 0x2d

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/E7;->A00(Lcom/facebook/ads/redexgen/X/E7;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb3

    const/16 v1, 0xa

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56979
    return-object v8

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A4e(Lcom/facebook/ads/redexgen/X/Cv;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .locals 2

    .line 56980
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    .line 56981
    .local p0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->A0P([BI)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method
