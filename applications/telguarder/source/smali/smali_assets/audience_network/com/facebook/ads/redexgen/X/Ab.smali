.class public final Lcom/facebook/ads/redexgen/X/Ab;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;

.field public static final A03:Lcom/facebook/ads/redexgen/X/Ab;

.field public static final A04:Lcom/facebook/ads/redexgen/X/Ab;

.field public static final A05:Lcom/facebook/ads/redexgen/X/Ab;

.field public static final A06:Lcom/facebook/ads/redexgen/X/Ab;

.field public static final A07:Lcom/facebook/ads/redexgen/X/Ab;


# instance fields
.field public final A00:J

.field public final A01:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 21528
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ab;->A00()V

    const-wide/16 v3, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {v0, v3, v4, v3, v4}, Lcom/facebook/ads/redexgen/X/Ab;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ab;->A05:Lcom/facebook/ads/redexgen/X/Ab;

    .line 21529
    const-wide v1, 0x7fffffffffffffffL

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/facebook/ads/redexgen/X/Ab;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ab;->A03:Lcom/facebook/ads/redexgen/X/Ab;

    .line 21530
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/redexgen/X/Ab;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ab;->A07:Lcom/facebook/ads/redexgen/X/Ab;

    .line 21531
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Ab;-><init>(JJ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ab;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    .line 21532
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ab;->A05:Lcom/facebook/ads/redexgen/X/Ab;

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ab;->A04:Lcom/facebook/ads/redexgen/X/Ab;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 4

    .line 21533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21534
    const/4 v3, 0x1

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 21535
    cmp-long v0, p3, v1

    if-ltz v0, :cond_0

    :goto_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 21536
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ab;->A01:J

    .line 21537
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Ab;->A00:J

    .line 21538
    return-void

    .line 21539
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 21540
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vm712mCF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XMYMcTUVycFVfMYSZl92aMEb9EeT3YpP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "h7Vb1lJIcahhR5r8xVz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rBGylg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mTk1Am"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mtKgaP1cGon1CxFJkMCgGMqEXe2i"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NvrLRXdmn6hUNOjjvPmI9mnIIID0HTg2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xXuj43OC3zvMuBndtKpBf0a2K2CXA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ab;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21541
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 21542
    return v5

    .line 21543
    :cond_0
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ab;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ab;->A02:[Ljava/lang/String;

    const-string v1, "i3qRJYkbvdrLKTwjq"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v3, v0, :cond_2

    .line 21544
    .end local v5
    :cond_1
    return v4

    .line 21545
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ab;

    .line 21546
    .local v5, "other":Lcom/facebook/ads/redexgen/X/Ab;
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ab;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Ab;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ab;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Ab;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 4

    .line 21547
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ab;->A01:J

    long-to-int v0, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ab;->A00:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    return v3
.end method
