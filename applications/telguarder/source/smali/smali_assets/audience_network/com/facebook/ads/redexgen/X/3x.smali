.class public final Lcom/facebook/ads/redexgen/X/3x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnchorInfo"
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/at;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3x;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3x;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/at;)V
    .locals 0

    .line 10167
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10168
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3x;->A04()V

    .line 10169
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3x;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5a

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

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3x;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x61t
        -0x6dt
        -0x20t
        -0x4at
        -0x1et
        -0x1et
        -0x1bt
        -0x29t
        -0x24t
        -0x1ft
        -0x2ct
        -0x19t
        -0x28t
        -0x50t
        -0x2dt
        -0x39t
        0x14t
        -0xdt
        0x8t
        0x20t
        0x16t
        0x1ct
        0x1bt
        -0x13t
        0x19t
        0x16t
        0x14t
        -0x14t
        0x15t
        0xbt
        -0x1ct
        0x3t
        -0x9t
        0x44t
        0x2dt
        0x38t
        0x43t
        0x40t
        0x3bt
        0x14t
        -0x9t
        0x24t
        0x19t
        0x1et
        0x25t
        0x28t
        -0x1t
        0x24t
        0x1ct
        0x25t
        0x31t
        0x23t
        0x6t
        0x25t
        0x29t
        0x1ft
        0x2at
        0x1ft
        0x25t
        0x24t
        -0xdt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6A8c5bTmn3VqyB8YAlCr0l6Zt8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WvRRX1RoaLPXS8ebG7t3iKQl5mlirRpT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WchiA2SGVr9snt7FUspuKPhd1UDHlrMO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Eitw2B1PL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6IVwjfWBqAtEKeEHT6LIQhSZ71mOayX0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DKDeSzlopwneHhxkht4X8JiglSdKfD1S"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "icQypc6bx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6eJUJUb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3x;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 10170
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_0

    .line 10171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    .line 10172
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 10173
    return-void

    .line 10174
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    goto :goto_0
.end method

.method public final A04()V
    .locals 1

    .line 10175
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    .line 10176
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 10177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 10178
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A03:Z

    .line 10179
    return-void
.end method

.method public final A05(Landroid/view/View;)V
    .locals 4

    .line 10180
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_0

    .line 10181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 10182
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A05()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 10183
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A06:[Ljava/lang/String;

    const-string v1, "KzGGhFAymIJJcnKPjC7mQoKH3wQvbJNl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "M2kGapXrbhEzK3ghy5X2EP5VRS1NNbBf"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    .line 10184
    return-void

    .line 10185
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A06(Landroid/view/View;)V
    .locals 7

    .line 10186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A05()I

    move-result v6

    .line 10187
    .local p0, "spaceChange":I
    if-ltz v6, :cond_0

    .line 10188
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A05(Landroid/view/View;)V

    .line 10189
    return-void

    .line 10190
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    .line 10191
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 10192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v4

    sub-int/2addr v4, v6

    .line 10193
    .local p1, "prevLayoutEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    .line 10194
    .local v0, "childEnd":I
    sub-int/2addr v4, v0

    .line 10195
    .local v6, "previousEndMargin":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 10196
    if-lez v4, :cond_1

    .line 10197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v0

    .line 10198
    .local v0, "childSize":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    sub-int/2addr v3, v0

    .line 10199
    .local v0, "estimatedChildStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v1

    .line 10200
    .local v0, "layoutStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, v1

    .line 10201
    .local v2, "previousStartMargin":I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 10202
    .local v0, "startReference":I
    sub-int/2addr v3, v0

    .line 10203
    .local v0, "startMargin":I
    if-gez v3, :cond_1

    .line 10204
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    neg-int v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 10205
    .end local p1    # "prevLayoutEnd":I
    .end local v0    # "startMargin":I
    .end local v0
    .end local v6    # "previousEndMargin":I
    .end local v0
    .end local v0
    .end local v0
    :cond_1
    :goto_0
    return-void

    .line 10206
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    .line 10207
    .local p1, "childStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int v3, v1, v0

    .line 10208
    .local v0, "startMargin":I
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 10209
    if-lez v3, :cond_1

    .line 10210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 10211
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v1

    .line 10212
    .local v6, "estimatedEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v1

    sub-int/2addr v1, v6

    .line 10213
    .local v0, "previousLayoutEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 10214
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 10215
    .local v0, "previousEndMargin":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A04:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v4

    .line 10216
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v4, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    .line 10217
    .local v0, "endReference":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A06:[Ljava/lang/String;

    const-string v1, "Cz8X0dfem"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "kvMaEjgz6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr v4, v5

    .line 10218
    .local v0, "endMargin":I
    if-gez v4, :cond_1

    .line 10219
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    neg-int v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4Z;)Z
    .locals 2

    .line 10220
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4L;

    .line 10221
    .local p0, "lp":Lcom/facebook/ads/redexgen/X/4L;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4L;->A02()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4L;->A00()I

    move-result v0

    if-ltz v0, :cond_0

    .line 10222
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4L;->A00()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    .line 10223
    :goto_0
    return v0

    .line 10224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 10225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    const/16 v1, 0x15

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/16 v1, 0x11

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    const/16 v1, 0x9

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A03:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
