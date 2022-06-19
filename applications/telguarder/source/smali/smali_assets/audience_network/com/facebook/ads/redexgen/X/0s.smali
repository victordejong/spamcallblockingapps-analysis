.class public final Lcom/facebook/ads/redexgen/X/0s;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/0n;

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0s;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3A3SF9OsbMZTSzd9PQV83R03Gb01mHVb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "va0OqxJTevcHBj9rQa8gBnrceMMMLheN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "E4Xu5cupPGXgYhBuYypMokBaCXxsR5lh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "D8kHwbMfhIJNL7otCJ0U1H5LDsx8C1Gl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FKjzSCs5CeGHheqxhiEujIvcDkN1hBrl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VfVt90ZyCHshYKvIz7VAyUjYkAdGgu3l"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rvnJUGmDNkxjbn9Cmovw0B2tPYM1sl3Q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "F8iOPrXqaSDFqzE4Iq25GDblBfnioVdK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0s;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0n;
    .locals 4

    .line 2359
    sget-object v0, Lcom/facebook/ads/redexgen/X/0s;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-eqz v0, :cond_0

    .line 2360
    return-object v0

    .line 2361
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/0r;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v0

    aget v3, v1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0s;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0s;->A01:[Ljava/lang/String;

    const-string v1, "assIUsz1B7rkEkYWwxdJoQbI1AmhSRWl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x1

    if-eq v3, v0, :cond_6

    const/4 v0, 0x2

    if-eq v3, v0, :cond_5

    const/4 v0, 0x3

    if-eq v3, v0, :cond_4

    const/4 v0, 0x4

    if-eq v3, v0, :cond_3

    const/4 v0, 0x5

    if-eq v3, v0, :cond_2

    .line 2362
    const/4 v0, 0x0

    return-object v0

    .line 2363
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/F4;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/F4;-><init>()V

    return-object v0

    .line 2364
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/FB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FB;-><init>()V

    return-object v0

    .line 2365
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/c9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/c9;-><init>()V

    return-object v0

    .line 2366
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/cB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/cB;-><init>()V

    return-object v0

    .line 2367
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/cC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/cC;-><init>()V

    return-object v0
.end method
