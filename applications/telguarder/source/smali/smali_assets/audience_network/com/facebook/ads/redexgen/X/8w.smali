.class public final Lcom/facebook/ads/redexgen/X/8w;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/8x;

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/8u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8w;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8w;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8x;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19204
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    .line 19205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:Ljava/util/List;

    .line 19206
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:Lcom/facebook/ads/redexgen/X/8x;

    .line 19207
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8w;->A03:Ljava/lang/String;

    .line 19208
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8w;->A02:Ljava/lang/String;

    .line 19209
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8w;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x56

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8w;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x8t
        0x9t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HvWirbE21CthcAzglwYfTu8hbbodSMpt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IeFog7wu84ahUP8wrgQRktORVTrd36mu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iK4FOuTHNOskZfjZXsfgR2qFw0uXKXeK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "C94HT2jeMQxh5gbTQbuMo6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sYjDRqqzhUlQiHGhQNwIRm9nE6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ToeXfBs6HhTxzZ9ArPJAGMlk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KWsBEUuyQyen4sbZ9JEq20dYDlqTcXTf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JMF3DYKQmRYKnieuthRXwzFPxh0qj8YI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8w;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()I
    .locals 1

    .line 19210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final A04()J
    .locals 4

    .line 19211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:Lcom/facebook/ads/redexgen/X/8x;

    if-eqz v0, :cond_0

    .line 19212
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0C()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A03()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2

    .line 19213
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/8u;
    .locals 2

    .line 19214
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 19215
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    .line 19216
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:Ljava/util/List;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8u;

    return-object v0

    .line 19217
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/8x;
    .locals 1

    .line 19218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:Lcom/facebook/ads/redexgen/X/8x;

    return-object v0
.end method

.method public final A07()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19220
    iget v4, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    if-lez v4, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8w;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A06:[Ljava/lang/String;

    const-string v1, "rOOT956xIOu8KS0VzerRP9k2FI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "CsBaNUluQU2chTuAQUApCe"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v4, v0, :cond_1

    .line 19221
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:Ljava/util/List;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A00:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8u;->A04()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8w;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19222
    :cond_1
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/8w;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_2

    return-object v3

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/8w;->A06:[Ljava/lang/String;

    const-string v1, "3lTgH9thszczufuEmz4eSAEm15D6iTfe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final A09()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/8u;)V
    .locals 1

    .line 19224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A04:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19225
    return-void
.end method

.method public final A0B()Z
    .locals 6

    .line 19226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:Lcom/facebook/ads/redexgen/X/8x;

    if-eqz v0, :cond_0

    .line 19227
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lb;->A00()J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:Lcom/facebook/ads/redexgen/X/8x;

    .line 19228
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0C()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8w;->A01:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A03()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 19229
    :goto_0
    return v0

    .line 19230
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
