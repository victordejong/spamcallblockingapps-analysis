.class public final Lcom/facebook/ads/redexgen/X/D3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/CR;

.field public final A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Z

.field public final A04:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D3;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D3;->A02()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I[BII[B)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26203
    const/4 v1, 0x1

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez p7, :cond_0

    :goto_1
    xor-int/2addr v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 26204
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/D3;->A03:Z

    .line 26205
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/D3;->A02:Ljava/lang/String;

    .line 26206
    iput p3, p0, Lcom/facebook/ads/redexgen/X/D3;->A00:I

    .line 26207
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/D3;->A04:[B

    .line 26208
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/D3;->A00(Ljava/lang/String;)I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/CR;

    invoke-direct {v0, v1, p4, p5, p6}, Lcom/facebook/ads/redexgen/X/CR;-><init>(I[BII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A01:Lcom/facebook/ads/redexgen/X/CR;

    .line 26209
    return-void

    .line 26210
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(Ljava/lang/String;)I
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26211
    const/4 v6, 0x1

    if-nez p0, :cond_0

    .line 26212
    return v6

    .line 26213
    :cond_0
    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, 0x3

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_0
    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_4

    if-eq v5, v3, :cond_3

    if-eq v5, v4, :cond_3

    .line 26214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x32

    const/16 v1, 0x24

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x20

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20

    const/16 v1, 0x12

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26215
    return v6

    .line 26216
    :sswitch_0
    const/16 v8, 0x56

    const/4 v7, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/D3;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/D3;->A06:[Ljava/lang/String;

    const-string v1, "h3uBbjDT6hcqkHg74OlAD7EebhjZmsjI"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "6aaIaVKV05laxVe8N4HxDiWW0V9l41b0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x44

    invoke-static {v8, v7, v0}, Lcom/facebook/ads/redexgen/X/D3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x5a

    const/4 v1, 0x4

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x5e

    const/4 v1, 0x4

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    goto/16 :goto_0

    :sswitch_3
    const/16 v2, 0x62

    const/4 v1, 0x4

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 26217
    :cond_3
    return v3

    .line 26218
    :cond_4
    return v6

    :sswitch_data_0
    .sparse-switch
        0x2e7ccd -> :sswitch_0
        0x2e7d0f -> :sswitch_1
        0x2e8997 -> :sswitch_2
        0x2e89a7 -> :sswitch_3
    .end sparse-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/D3;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x73

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
    .locals 1

    const/16 v0, 0x66

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/D3;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x50t
        -0x5et
        -0x3dt
        -0xbt
        -0xbt
        -0x9t
        -0x11t
        -0x15t
        -0x10t
        -0x17t
        -0x5et
        -0x3dt
        -0x39t
        -0x2bt
        -0x51t
        -0x3bt
        -0x2at
        -0x2ct
        -0x5et
        -0x1bt
        -0xct
        -0x5t
        -0xet
        -0xat
        -0xft
        -0x5et
        -0x11t
        -0xft
        -0x1at
        -0x19t
        -0x50t
        0xct
        0x2at
        0x19t
        0x1bt
        0x23t
        -0x3t
        0x26t
        0x1bt
        0x2at
        0x31t
        0x28t
        0x2ct
        0x21t
        0x27t
        0x26t
        -0x6t
        0x27t
        0x30t
        0x35t
        0x4et
        0x53t
        0x55t
        0x50t
        0x50t
        0x4ft
        0x52t
        0x54t
        0x45t
        0x44t
        0x0t
        0x50t
        0x52t
        0x4ft
        0x54t
        0x45t
        0x43t
        0x54t
        0x49t
        0x4ft
        0x4et
        0x0t
        0x53t
        0x43t
        0x48t
        0x45t
        0x4dt
        0x45t
        0x0t
        0x54t
        0x59t
        0x50t
        0x45t
        0x0t
        0x7t
        0x1at
        0x19t
        0x1at
        -0x18t
        -0x2t
        -0x3t
        -0x2t
        0xet
        0x13t
        0x15t
        0x1et
        0x13t
        -0xft
        -0xdt
        -0x4t
        0x1t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2u0oVYJF6ND8qdC2hg06fUeObrmbpsSo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HGNI8wGZO6x2gkFkqtDzDd4RxgGfMaZW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cp5ZyDHHogW7dgRNMcJrgkSkfxwiQs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TjdMvoWT3DMOF7w2zdekDkXOIOUCZCwJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ExWkOpldRVz01uGib89Nc0icUbtimOvJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "c43eexJvumhhr7F3JzjWY7iiLze7gX9o"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "V6eMR6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dk4mtC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D3;->A06:[Ljava/lang/String;

    return-void
.end method
