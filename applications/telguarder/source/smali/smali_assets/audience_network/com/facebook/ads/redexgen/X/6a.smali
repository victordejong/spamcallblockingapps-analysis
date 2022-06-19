.class public final enum Lcom/facebook/ads/redexgen/X/6a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/XZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/6a;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/6a;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/6a;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/6a;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/6a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 15491
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6a;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6a;->A01()V

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6a;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6a;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/6a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6a;->A03:Lcom/facebook/ads/redexgen/X/6a;

    .line 15492
    const/4 v4, 0x1

    const/4 v2, 0x6

    const/4 v1, 0x6

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6a;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6a;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/6a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6a;->A04:Lcom/facebook/ads/redexgen/X/6a;

    .line 15493
    const/4 v3, 0x2

    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6a;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6a;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/6a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6a;->A05:Lcom/facebook/ads/redexgen/X/6a;

    .line 15494
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/6a;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6a;->A03:Lcom/facebook/ads/redexgen/X/6a;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/6a;->A04:Lcom/facebook/ads/redexgen/X/6a;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/6a;->A05:Lcom/facebook/ads/redexgen/X/6a;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/6a;->A02:[Lcom/facebook/ads/redexgen/X/6a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15495
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/6a;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v3, v0, 0x51

    sget-object v1, Lcom/facebook/ads/redexgen/X/6a;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6a;->A01:[Ljava/lang/String;

    const-string v1, "MqieG1f4k0G0lMCnhaRA6Wi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6a;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x42t
        0x49t
        0x4at
        0x47t
        0x44t
        0x49t
        0x66t
        0x70t
        0x76t
        0x60t
        0x67t
        0x70t
        0x33t
        0x39t
        0x33t
        0x34t
        0x25t
        0x2dt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vTRrDY8h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "o4hNvaNYMVrLRLouoyq0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FWwCmt25F1wmHbV40v518HC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Lqq26nWTxVTV9euVZ5dt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "44fvCU83JmpeUE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "x"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VmEvh3MOWKjN9k"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ktma1aJxdGyL2H"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6a;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6a;
    .locals 1

    .line 15496
    const-class v0, Lcom/facebook/ads/redexgen/X/6a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/6a;
    .locals 1

    .line 15497
    sget-object v0, Lcom/facebook/ads/redexgen/X/6a;->A02:[Lcom/facebook/ads/redexgen/X/6a;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/6a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/6a;

    return-object v0
.end method
