.class public final Lcom/facebook/ads/redexgen/X/ZC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Z1;->A0S()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Z1;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZC;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZC;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Z1;)V
    .locals 0

    .line 66170
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:Lcom/facebook/ads/redexgen/X/Z1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x21

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
    .locals 4

    const/4 v3, 0x7

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A02:[Ljava/lang/String;

    const-string v1, "h6drg96"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZC;->A01:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x5dt
        0x44t
        0x47t
        0x5ft
        0x4at
        0x4ct
        0x4et
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "o9BKVuDTpMpr6NqGruo65n2GyRN836Ef"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BcG3e0E"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZpSwRL5Wt7UZAQMdPBoZR702aIcnAH2c"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4XrGQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wDxaK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aXxrFUntvNcrJSmhP8kY12R1VP68C6zJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ucwOUtAZYP25kjptTR6V1y8Ag9DBGiIX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "psaQ6y804neBb0qJ0VRdv6yqXyRhj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 66171
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:Lcom/facebook/ads/redexgen/X/Z1;

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/high16 v0, -0x80000000

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0B(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
