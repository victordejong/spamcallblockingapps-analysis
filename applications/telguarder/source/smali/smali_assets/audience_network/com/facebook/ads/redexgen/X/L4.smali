.class public final enum Lcom/facebook/ads/redexgen/X/L4;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/L5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitializationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/L4;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/L4;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/L4;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/L4;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/L4;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 42166
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L4;->A01()V

    const/4 v5, 0x0

    const/16 v2, 0x17

    const/16 v1, 0xf

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L4;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/L4;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/L4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/L4;->A04:Lcom/facebook/ads/redexgen/X/L4;

    .line 42167
    const/4 v4, 0x1

    const/16 v2, 0xb

    const/16 v1, 0xc

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L4;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/L4;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/L4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/L4;->A03:Lcom/facebook/ads/redexgen/X/L4;

    .line 42168
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L4;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/L4;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/L4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/L4;->A02:Lcom/facebook/ads/redexgen/X/L4;

    .line 42169
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/L4;

    sget-object v0, Lcom/facebook/ads/redexgen/X/L4;->A04:Lcom/facebook/ads/redexgen/X/L4;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/L4;->A03:Lcom/facebook/ads/redexgen/X/L4;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/L4;->A02:Lcom/facebook/ads/redexgen/X/L4;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/L4;->A01:[Lcom/facebook/ads/redexgen/X/L4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/L4;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2c

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

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L4;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        0x64t
        0x63t
        0x7et
        0x63t
        0x6bt
        0x66t
        0x63t
        0x70t
        0x6ft
        0x6et
        0x12t
        0x15t
        0x12t
        0xft
        0x12t
        0x1at
        0x17t
        0x12t
        0x1t
        0x12t
        0x15t
        0x1ct
        0x18t
        0x19t
        0x2t
        0x9t
        0x1ft
        0x18t
        0x1ft
        0x2t
        0x1ft
        0x17t
        0x1at
        0x1ft
        0xct
        0x13t
        0x12t
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/L4;
    .locals 1

    .line 42171
    const-class v0, Lcom/facebook/ads/redexgen/X/L4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/L4;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/L4;
    .locals 1

    .line 42172
    sget-object v0, Lcom/facebook/ads/redexgen/X/L4;->A01:[Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/L4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/L4;

    return-object v0
.end method
