.class public final Lcom/facebook/ads/redexgen/X/A7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingMessageInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/A7;",
        ">;"
    }
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/AW;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/A7;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AW;)V
    .locals 0

    .line 20827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20828
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A7;->A03:Lcom/facebook/ads/redexgen/X/AW;

    .line 20829
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/A7;)I
    .locals 6
    .param p1    # Lcom/facebook/ads/redexgen/X/A7;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-eq v1, v0, :cond_4

    .line 20831
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/A7;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 20832
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/A7;->A04:[Ljava/lang/String;

    const-string v1, "Ua2OefeeGn9xPL4AtjXp2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "koEumMAlcluDPAofM0acf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 20833
    const/4 v5, -0x1

    :cond_3
    return v5

    .line 20834
    :cond_4
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/A7;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/A7;->A04:[Ljava/lang/String;

    const-string v1, "4Jzz7btz7bXr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "3bOTTv8A83tu"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v3, :cond_6

    .line 20835
    :goto_2
    return v4

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/A7;->A04:[Ljava/lang/String;

    const-string v1, "cqzypZa0jy9nGfxeaeVm54GaKreqqtXX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_6

    goto :goto_2

    .line 20836
    :cond_6
    iget v1, p0, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    sub-int/2addr v1, v0

    .line 20837
    .local p0, "comparePeriodIndex":I
    if-eqz v1, :cond_7

    .line 20838
    return v1

    .line 20839
    :cond_7
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/A7;->A01:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/A7;->A01:J

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A07(JJ)I

    move-result v0

    return v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9WtaeSOE5KaDVuBnA9hos974pAuPDtZz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nNs2sbF3gSuPycr6wZrPUAE0lRaPQi9U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7YTCAZECkw3WznfjXbAReKI9kDQAcc91"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rGsKbcie0x6XmwIfP9YTj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "J91ZqqyOajtC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FNwS1H9WLyqn3b5mm57fl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ttgB9uzWLxszazAk3rvPOK7FVbWkHU9o"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WqXCEjReLtZn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/A7;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02(IJLjava/lang/Object;)V
    .locals 0

    .line 20840
    iput p1, p0, Lcom/facebook/ads/redexgen/X/A7;->A00:I

    .line 20841
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/A7;->A01:J

    .line 20842
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/A7;->A02:Ljava/lang/Object;

    .line 20843
    return-void
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20844
    check-cast p1, Lcom/facebook/ads/redexgen/X/A7;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/A7;->A00(Lcom/facebook/ads/redexgen/X/A7;)I

    move-result v0

    return v0
.end method
