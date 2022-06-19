.class public final Lcom/facebook/ads/redexgen/X/4k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4i;,
        Lcom/facebook/ads/redexgen/X/4j;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/bC;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/bC<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            "Lcom/facebook/ads/redexgen/X/4i;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/2O;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2O<",
            "Lcom/facebook/ads/redexgen/X/4c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4k;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4k;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12160
    new-instance v0, Lcom/facebook/ads/redexgen/X/bC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bC;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    .line 12161
    new-instance v0, Lcom/facebook/ads/redexgen/X/2O;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2O;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4c;I)Lcom/facebook/ads/redexgen/X/4F;
    .locals 7

    .line 12162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A09(Ljava/lang/Object;)I

    move-result v4

    .line 12163
    .local p0, "index":I
    const/4 v6, 0x0

    if-gez v4, :cond_0

    .line 12164
    return-object v6

    .line 12165
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2X;->A0C(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4i;

    .line 12166
    .local p2, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-eqz v3, :cond_5

    iget v5, v3, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const-string v1, "6x"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    and-int/2addr v5, p2

    if-eqz v5, :cond_5

    .line 12167
    iget v1, v3, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12168
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 12169
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    .line 12170
    .local p1, "info":Lcom/facebook/ads/redexgen/X/4F;
    .restart local p1    # "info":Lcom/facebook/ads/redexgen/X/4F;
    :goto_0
    iget v0, v3, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 12171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2X;->A0B(I)Ljava/lang/Object;

    .line 12172
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/4i;->A03(Lcom/facebook/ads/redexgen/X/4i;)V

    .line 12173
    :cond_2
    return-object v1

    .line 12174
    .end local p1    # "info":Lcom/facebook/ads/redexgen/X/4F;
    :cond_3
    const/16 v0, 0x8

    if-ne p2, v0, :cond_4

    .line 12175
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    goto :goto_0

    .line 12176
    .end local p1
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12177
    :cond_5
    return-object v6
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xd

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 4

    const/16 v0, 0x1d

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const-string v1, "DMTuNl"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/4k;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x76t
        0x70t
        0x77t
        0x23t
        0x73t
        0x71t
        0x6ct
        0x75t
        0x6at
        0x67t
        0x66t
        0x23t
        0x65t
        0x6ft
        0x62t
        0x64t
        0x23t
        0x53t
        0x51t
        0x46t
        0x23t
        0x6ct
        0x71t
        0x23t
        0x53t
        0x4ct
        0x50t
        0x57t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TTkBeT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dgqPpyxawDBTokVKz6usds7DGGljbLlG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Om"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lOfLhIubd0jJyTpTkNltmpZf14oHCLV9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yX0qRkYxaN2cv8t3SuJSwpxSeia"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "n9D4XHOOTGgVdLWa6Wuko3wZCERnKgc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NKR9b6EIrIhl49GaATLNKeLdYiLud"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4F;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12178
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A00(Lcom/facebook/ads/redexgen/X/4c;I)Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    return-object v0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4F;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12179
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A00(Lcom/facebook/ads/redexgen/X/4c;I)Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    return-object v0
.end method

.method public final A06(J)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 12180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2O;->A09(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4c;

    return-object v0
.end method

.method public final A07()V
    .locals 1

    .line 12181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2X;->clear()V

    .line 12182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->A0A()V

    .line 12183
    return-void
.end method

.method public final A08()V
    .locals 0

    .line 12184
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A01()V

    .line 12185
    return-void
.end method

.method public final A09(JLcom/facebook/ads/redexgen/X/4c;)V
    .locals 1

    .line 12186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2O;->A0C(JLjava/lang/Object;)V

    .line 12187
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 2

    .line 12188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4i;

    .line 12189
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v1, :cond_0

    .line 12190
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A00()Lcom/facebook/ads/redexgen/X/4i;

    move-result-object v1

    .line 12191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12192
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12193
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 2

    .line 12194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4i;

    .line 12195
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v1, :cond_0

    .line 12196
    return-void

    .line 12197
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12198
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 2

    .line 12199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->A07()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 12200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2O;->A08(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 12201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2O;->A0B(I)V

    .line 12202
    .end local p0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4i;

    .line 12203
    .local p0, "info":Lcom/facebook/ads/redexgen/X/4i;
    if-eqz v0, :cond_1

    .line 12204
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4i;->A03(Lcom/facebook/ads/redexgen/X/4i;)V

    .line 12205
    :cond_1
    return-void

    .line 12206
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/4c;)V
    .locals 0

    .line 12207
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4k;->A0B(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 12208
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;)V
    .locals 2

    .line 12209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4i;

    .line 12210
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v1, :cond_0

    .line 12211
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A00()Lcom/facebook/ads/redexgen/X/4i;

    move-result-object v1

    .line 12212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12213
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12214
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    .line 12215
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;)V
    .locals 2

    .line 12216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4i;

    .line 12217
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v1, :cond_0

    .line 12218
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A00()Lcom/facebook/ads/redexgen/X/4i;

    move-result-object v1

    .line 12219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12220
    :cond_0
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    .line 12221
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12222
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;)V
    .locals 2

    .line 12223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4i;

    .line 12224
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v1, :cond_0

    .line 12225
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A00()Lcom/facebook/ads/redexgen/X/4i;

    move-result-object v1

    .line 12226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/2X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12227
    :cond_0
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    .line 12228
    iget v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12229
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/4j;)V
    .locals 7

    .line 12230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2X;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local p0, "index":I
    :goto_0
    if-ltz v6, :cond_8

    .line 12231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2X;->A0A(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/4c;

    .line 12232
    .local p1, "viewHolder":Lcom/facebook/ads/redexgen/X/4c;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2X;->A0B(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4i;

    .line 12233
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4i;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    const/4 v0, 0x3

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_1

    .line 12234
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/4j;->AET(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 12235
    :cond_0
    :goto_1
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/4i;->A03(Lcom/facebook/ads/redexgen/X/4i;)V

    .line 12236
    .end local p1    # "viewHolder":Lcom/facebook/ads/redexgen/X/4c;
    .end local v0    # "record":Lcom/facebook/ads/redexgen/X/4i;
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 12237
    :cond_1
    iget v0, v4, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 12238
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    if-nez v0, :cond_2

    .line 12239
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/4j;->AET(Lcom/facebook/ads/redexgen/X/4c;)V

    goto :goto_1

    .line 12240
    :cond_2
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    invoke-interface {p1, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/4j;->ACc(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    goto :goto_1

    .line 12241
    :cond_3
    iget v1, v4, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    const/16 v0, 0xe

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    .line 12242
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    invoke-interface {p1, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/4j;->ACa(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    goto :goto_1

    .line 12243
    :cond_4
    iget v1, v4, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    const/16 v0, 0xc

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_5

    .line 12244
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    invoke-interface {p1, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/4j;->ACe(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    goto :goto_1

    .line 12245
    :cond_5
    iget v0, v4, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 12246
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    const/4 v0, 0x0

    invoke-interface {p1, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/4j;->ACc(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    goto :goto_1

    .line 12247
    :cond_6
    iget v0, v4, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 12248
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/4k;->A03:[Ljava/lang/String;

    const-string v1, "pRTOxDzzIVV0VuKMKqyuKOShfW9n8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    invoke-interface {p1, v5, v3, v0}, Lcom/facebook/ads/redexgen/X/4j;->ACa(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4F;Lcom/facebook/ads/redexgen/X/4F;)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12249
    .end local p0    # "index":I
    :cond_8
    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/4c;)Z
    .locals 2

    .line 12250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4i;

    .line 12251
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/4c;)Z
    .locals 1

    .line 12252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:Lcom/facebook/ads/redexgen/X/bC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4i;

    .line 12253
    .local p0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
