.class final Lcom/google/android/exoplayer2/extractor/f/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/extractor/x;

.field public final b:Lcom/google/android/exoplayer2/extractor/f/m;

.field public final c:Lcom/google/android/exoplayer2/util/u;

.field public d:Lcom/google/android/exoplayer2/extractor/f/n;

.field public e:Lcom/google/android/exoplayer2/extractor/f/c;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field j:Z

.field private final k:Lcom/google/android/exoplayer2/util/u;

.field private final l:Lcom/google/android/exoplayer2/util/u;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/extractor/f/n;Lcom/google/android/exoplayer2/extractor/f/c;)V
    .locals 1

    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->a:Lcom/google/android/exoplayer2/extractor/x;

    .line 1580
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    .line 1581
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->e:Lcom/google/android/exoplayer2/extractor/f/c;

    .line 1582
    new-instance p1, Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/f/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 1583
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 1584
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->k:Lcom/google/android/exoplayer2/util/u;

    .line 1585
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->l:Lcom/google/android/exoplayer2/util/u;

    .line 1586
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/e$b;->a(Lcom/google/android/exoplayer2/extractor/f/n;Lcom/google/android/exoplayer2/extractor/f/c;)V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 9

    .line 1708
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/f/e$b;->d()Lcom/google/android/exoplayer2/extractor/f/l;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1715
    :cond_0
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/l;->d:I

    if-eqz v2, :cond_1

    .line 1716
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/f/m;->p:Lcom/google/android/exoplayer2/util/u;

    .line 1717
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/f/l;->d:I

    goto :goto_0

    .line 1720
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/l;->e:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1721
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->l:Lcom/google/android/exoplayer2/util/u;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 1722
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->l:Lcom/google/android/exoplayer2/util/u;

    .line 1723
    array-length v0, v0

    .line 1726
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    .line 1727
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/f/m;->c(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    .line 1731
    :goto_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->k:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v6, v6, Lcom/google/android/exoplayer2/util/u;->a:[B

    if-eqz v5, :cond_4

    const/16 v7, 0x80

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 1732
    aput-byte v7, v6, v1

    .line 1733
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1734
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->a:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->k:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v6, v7, v4}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1736
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->a:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v6, v2, v0}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/util/u;I)V

    if-nez v5, :cond_5

    add-int/2addr v0, v4

    return v0

    :cond_5
    const/4 v2, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_6

    .line 1747
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 1749
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 4169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1750
    aput-byte v1, v3, v1

    .line 1751
    aput-byte v4, v3, v4

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1753
    aput-byte v1, v3, v6

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1754
    aput-byte p2, v3, v5

    const/4 p2, 0x4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1756
    aput-byte v1, v3, p2

    const/4 p2, 0x5

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1757
    aput-byte v1, v3, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1758
    aput-byte p2, v3, v2

    const/4 p2, 0x7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1759
    aput-byte p1, v3, p2

    .line 1760
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->a:Lcom/google/android/exoplayer2/extractor/x;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {p1, p2, v7}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/util/u;I)V

    add-int/2addr v0, v4

    add-int/2addr v0, v7

    return v0

    .line 1767
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/f/m;->p:Lcom/google/android/exoplayer2/util/u;

    .line 1768
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v3

    const/4 v8, -0x2

    .line 1769
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v6

    if-eqz p2, :cond_7

    .line 1775
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->c:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 1776
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 5169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1777
    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 1779
    aget-byte p1, v2, v6

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v2, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1781
    aput-byte p2, v2, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1782
    aput-byte p1, v2, v5

    .line 1783
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->c:Lcom/google/android/exoplayer2/util/u;

    .line 1786
    :cond_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->a:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {p2, p1, v3}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/util/u;I)V

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    return v0
.end method

.method public final a()V
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    const/4 v0, 0x0

    .line 1611
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    .line 1612
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->h:I

    .line 1613
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->g:I

    .line 1614
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->i:I

    .line 1615
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->j:Z

    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 1625
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    .line 1626
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/f/m;->f:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 1627
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/f/m;->b(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    .line 1628
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/f/m;->l:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1629
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->i:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 2

    .line 1598
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/f/m;->a:Lcom/google/android/exoplayer2/extractor/f/c;

    .line 1600
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/f/c;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/f/c;->a:I

    .line 1599
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/k;->a(I)Lcom/google/android/exoplayer2/extractor/f/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/l;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1602
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    .line 1603
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/k;->f:Lcom/google/android/exoplayer2/Format;

    .line 1604
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 2403
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1604
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 1605
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->a:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/f/n;Lcom/google/android/exoplayer2/extractor/f/c;)V
    .locals 0

    .line 1590
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    .line 1591
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->e:Lcom/google/android/exoplayer2/extractor/f/c;

    .line 1592
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->a:Lcom/google/android/exoplayer2/extractor/x;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/f/k;->f:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 1593
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/f/e$b;->a()V

    return-void
.end method

.method public final b()J
    .locals 3

    .line 1644
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->j:Z

    if-nez v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/n;->c:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    aget-wide v1, v0, v1

    return-wide v1

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/m;->g:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->h:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public final c()Z
    .locals 5

    .line 1683
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->f:I

    .line 1684
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->j:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1687
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->g:I

    .line 1688
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/f/m;->h:[I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->h:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    .line 1689
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->h:I

    .line 1690
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->g:I

    return v2

    :cond_1
    return v1
.end method

.method public final d()Lcom/google/android/exoplayer2/extractor/f/l;
    .locals 3

    .line 1813
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1817
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/m;->a:Lcom/google/android/exoplayer2/extractor/f/c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f/c;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/f/c;->a:I

    .line 1820
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/f/m;->o:Lcom/google/android/exoplayer2/extractor/f/l;

    if-eqz v2, :cond_1

    .line 1821
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->b:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/m;->o:Lcom/google/android/exoplayer2/extractor/f/l;

    goto :goto_0

    .line 1822
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/e$b;->d:Lcom/google/android/exoplayer2/extractor/f/n;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/f/n;->a:Lcom/google/android/exoplayer2/extractor/f/k;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/extractor/f/k;->a(I)Lcom/google/android/exoplayer2/extractor/f/l;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1823
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/f/l;->a:Z

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method
