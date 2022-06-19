.class public final enum Lcom/facebook/ads/redexgen/X/69;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BiometricEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/69;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/69;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/69;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 14366
    invoke-static {}, Lcom/facebook/ads/redexgen/X/69;->A01()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/69;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/69;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/69;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/69;->A02:Lcom/facebook/ads/redexgen/X/69;

    .line 14367
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/69;

    sget-object v0, Lcom/facebook/ads/redexgen/X/69;->A02:Lcom/facebook/ads/redexgen/X/69;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/69;->A01:[Lcom/facebook/ads/redexgen/X/69;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14368
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/69;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x12

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

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/69;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x46t
        -0x4bt
        -0x45t
        -0x57t
        -0x52t
        -0x3bt
        -0x55t
        -0x44t
        -0x55t
        -0x4ct
        -0x46t
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/69;
    .locals 1

    .line 14369
    const-class v0, Lcom/facebook/ads/redexgen/X/69;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/69;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/69;
    .locals 1

    .line 14370
    sget-object v0, Lcom/facebook/ads/redexgen/X/69;->A01:[Lcom/facebook/ads/redexgen/X/69;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/69;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/69;

    return-object v0
.end method
