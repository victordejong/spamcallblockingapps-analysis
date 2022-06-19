.class public final enum Lcom/facebook/ads/redexgen/X/JE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/JE;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final synthetic A03:[Lcom/facebook/ads/redexgen/X/JE;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/JE;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/JE;


# instance fields
.field public final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 39825
    invoke-static {}, Lcom/facebook/ads/redexgen/X/JE;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/JE;->A01()V

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/16 v1, 0x9

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JE;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JE;

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/ads/redexgen/X/JE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/JE;->A05:Lcom/facebook/ads/redexgen/X/JE;

    .line 39826
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JE;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JE;

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/redexgen/X/JE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 39827
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/JE;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A05:Lcom/facebook/ads/redexgen/X/JE;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/JE;->A03:[Lcom/facebook/ads/redexgen/X/JE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39828
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39829
    iput p3, p0, Lcom/facebook/ads/redexgen/X/JE;->A00:I

    .line 39830
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/JE;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/JE;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/JE;->A02:[Ljava/lang/String;

    const-string v1, "s0XGUsh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "eznYh"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x23

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JE;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x2bt
        -0x2at
        -0x29t
        -0x2at
        -0x1dt
        -0x1dt
        -0x2at
        -0x2bt
        -0x48t
        -0x44t
        -0x44t
        -0x4ct
        -0x4dt
        -0x48t
        -0x50t
        -0x3dt
        -0x4ct
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uhTzHy3ANqMm9pT5Vj0y58oueHh5X8x0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "T1n0km6AB0RWROiTt90mCanTjxu0eU9v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "guj8u"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qED7e7UX90QQgnHDR4FxiOt7ONkFhw8M"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ckG7PMHxRgjSmMurQ73wQaofIHipTcek"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kxqjIStyOeZmlNn9xMd3jjfND4aGb7YZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8IQX3zoxYaZjanbr90SETWyiMVFv66cT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UjafbnL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JE;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JE;
    .locals 1

    .line 39831
    const-class v0, Lcom/facebook/ads/redexgen/X/JE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/JE;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/JE;
    .locals 1

    .line 39832
    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A03:[Lcom/facebook/ads/redexgen/X/JE;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/JE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/JE;

    return-object v0
.end method
