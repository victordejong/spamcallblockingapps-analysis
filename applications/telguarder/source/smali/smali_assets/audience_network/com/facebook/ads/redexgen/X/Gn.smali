.class public final Lcom/facebook/ads/redexgen/X/Gn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Gp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartTag"
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 35395
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gn;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gn;->A03()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gn;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 35396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35397
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Gn;->A00:I

    .line 35398
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gn;->A01:Ljava/lang/String;

    .line 35399
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Gn;->A02:Ljava/lang/String;

    .line 35400
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Gn;->A03:[Ljava/lang/String;

    .line 35401
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Gn;
    .locals 5

    .line 35402
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gn;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gn;

    invoke-direct {v0, v1, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/Gn;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/Gn;
    .locals 7

    .line 35403
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 35404
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35405
    const/4 v0, 0x0

    return-object v0

    .line 35406
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 35407
    .local p0, "voiceStartIndex":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gn;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gn;->A05:[Ljava/lang/String;

    const-string v1, "4nsM6qL4J4DfEEdavaIbt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "DWoiOEpxm9AwHO1Z28voV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne p0, v3, :cond_2

    .line 35408
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gn;->A02(III)Ljava/lang/String;

    move-result-object v6

    .line 35409
    .local p1, "voice":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gn;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 35410
    .local v0, "nameAndClasses":[Ljava/lang/String;
    aget-object v2, v3, v4

    .line 35411
    .local v5, "name":Ljava/lang/String;
    array-length v0, v3

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 35412
    array-length v0, v3

    invoke-static {v3, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 35413
    .local v0, "classes":[Ljava/lang/String;
    .restart local v0    # "classes":[Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gn;

    invoke-direct {v0, v2, p1, v6, v1}, Lcom/facebook/ads/redexgen/X/Gn;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 35414
    .end local v0    # "classes":[Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gn;->A06:[Ljava/lang/String;

    goto :goto_1

    .line 35415
    .end local p1    # "voice":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gn;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gn;->A05:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 35416
    .restart local p1    # "voice":Ljava/lang/String;
    invoke-virtual {v5, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gn;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gn;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x5at
        -0x4t
        -0x32t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5HRhwl9cnVmVG35X1YZKO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HMFynYFnlhLyvRNIT7uq71SC3J"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZPsqizHimHzBySwkZj8jCbrndMUaIl8s"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NbEyOCvXijbkS5oBa7W5t"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DAIhOKKjrelUPw9Czid"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "At4zJoHgVrib75nh3AhEdjKx17JO3lLq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sKy8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "M7bpAXrML2yX8Yw02ifXo57vxyBuwRUD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gn;->A05:[Ljava/lang/String;

    return-void
.end method
