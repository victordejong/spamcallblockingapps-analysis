.class public final Lcom/facebook/ads/redexgen/X/6b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/6e;

.field public final A02:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/redexgen/X/6i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6b;->A00()V

    return-void
.end method

.method public constructor <init>(ILjava/util/EnumSet;Lcom/facebook/ads/redexgen/X/6e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/redexgen/X/6i;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/6e;",
            ")V"
        }
    .end annotation

    .line 15498
    .local p2, "signalFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/internal/botdetection/signals/model/SignalFlagsEnum;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15499
    iput p1, p0, Lcom/facebook/ads/redexgen/X/6b;->A00:I

    .line 15500
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6b;->A02:Ljava/util/EnumSet;

    .line 15501
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6b;->A01:Lcom/facebook/ads/redexgen/X/6e;

    .line 15502
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "L5KEZtawUfbTSdRzp1NZnMpFbFCD9RFu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oo7AMe0CP5oJxHjGHW7siCBazbQg7MWm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pbGGUhuVTceaLzG1PxJQJxfsvCYdkKjH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gMnQ00r5fU3uYefLYrCytQRC1m7zVUtM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SNtCrOcGM76SHO5Npu4u2R8vjJ3DtkY7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AEQv7AyRaVaVV68GRqeuG0pbufjYXLD1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XiwPn2n7GTYzyHJKsQN2vybz3H5qdFlD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DBWMlXmAHtQXrXjQQqOO3y2OI3FNLig9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6b;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 15503
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6b;->A00:I

    return v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/6e;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15504
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6b;->A02:Ljava/util/EnumSet;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A07:Lcom/facebook/ads/redexgen/X/6i;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6b;->A01:Lcom/facebook/ads/redexgen/X/6e;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/6f;)Lcom/facebook/ads/redexgen/X/6e;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15505
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6b;->A05(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15506
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6b;->A01:Lcom/facebook/ads/redexgen/X/6e;

    sget-object v2, Lcom/facebook/ads/redexgen/X/6b;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6b;->A03:[Ljava/lang/String;

    const-string v1, "isw8Gv0e37StEspcrbYxMcqfiyw3OxOs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "OA3mOD8q1VvIHpOtVzD2QC8B8t4gJsH1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 15507
    :cond_1
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6b;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/6b;->A03:[Ljava/lang/String;

    const-string v1, "fNYptn9tsL14z3XQ4iUS586en0qu8fvA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "4TyysiAtuBwpP6yaSSHeUzQ1YesNt3A5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final A04()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/redexgen/X/6i;",
            ">;"
        }
    .end annotation

    .line 15508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6b;->A02:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/6f;)Z
    .locals 5

    .line 15509
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/72;->A0F(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6b;->A02:Ljava/util/EnumSet;

    .line 15510
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6f;->A04()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/6b;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6b;->A03:[Ljava/lang/String;

    const-string v1, "8dlMDOy8OsNzCIbhBwgWiLI96tKqfPZp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "A16XYU0AGFfdiKzcUiBzoRlUTlKJvEVZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/6i;->A00(I)Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v0

    .line 15511
    invoke-virtual {v3, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15512
    :goto_0
    return v0
.end method
