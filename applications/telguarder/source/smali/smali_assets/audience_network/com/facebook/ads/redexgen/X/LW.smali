.class public final enum Lcom/facebook/ads/redexgen/X/LW;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemUIMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/LW;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/LW;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/LW;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/LW;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 42683
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LW;->A01()V

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LW;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LW;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/LW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/LW;->A02:Lcom/facebook/ads/redexgen/X/LW;

    .line 42684
    const/4 v3, 0x1

    const/4 v2, 0x7

    const/16 v1, 0xb

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LW;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LW;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/LW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/LW;->A03:Lcom/facebook/ads/redexgen/X/LW;

    .line 42685
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/LW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LW;->A02:Lcom/facebook/ads/redexgen/X/LW;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/LW;->A03:Lcom/facebook/ads/redexgen/X/LW;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/LW;->A01:[Lcom/facebook/ads/redexgen/X/LW;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42686
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LW;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x65

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

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LW;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x4ft
        -0x4et
        -0x4dt
        -0x52t
        -0x3et
        -0x47t
        -0x3ft
        -0x16t
        -0x7t
        -0x10t
        -0x10t
        0x3t
        -0x9t
        -0x19t
        -0xat
        -0x17t
        -0x17t
        -0xet
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LW;
    .locals 1

    .line 42687
    const-class v0, Lcom/facebook/ads/redexgen/X/LW;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LW;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/LW;
    .locals 1

    .line 42688
    sget-object v0, Lcom/facebook/ads/redexgen/X/LW;->A01:[Lcom/facebook/ads/redexgen/X/LW;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/LW;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/LW;

    return-object v0
.end method
