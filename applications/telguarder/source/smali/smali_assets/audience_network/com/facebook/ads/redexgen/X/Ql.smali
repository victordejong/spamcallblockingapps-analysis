.class public final Lcom/facebook/ads/redexgen/X/Ql;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/G2;-><init>(Lcom/facebook/ads/redexgen/X/Qj;Lcom/facebook/ads/redexgen/X/Qp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/G2;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ql;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/G2;)V
    .locals 0

    .line 49535
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ql;->A00:Lcom/facebook/ads/redexgen/X/G2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UVIIfXQyNj4ZeuFElzx1tH19XpQiv9WB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cH5DsmltWb273kMb0YYVNZ1wb2uoREsN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sCGF7C3HW1mZfGQTbfkjDdvhWddsVpDd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "yI6nH2FHsZjM9wT5tcYN1gaE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Mp1k6Rw8zrsp8ifATmykQMNBt4gqqt18"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BOz60GwgJGk1LIWZZMatAYONGsZXqcRs"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NwdZOCr4trQo3RXG9H5Y79OQjw3zts4W"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EsoIqP16pdlAt2H5Hx0Yd1EaSJmHHLzT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ql;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 49536
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ql;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ql;->A00:Lcom/facebook/ads/redexgen/X/G2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/G2;->A04(Lcom/facebook/ads/redexgen/X/G2;)V

    .line 49537
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Ql;
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ql;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ql;->A01:[Ljava/lang/String;

    const-string v1, "biNiMbCPysDMZouhoHC8C6SqYe9hjOMY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "xXRAElMMzCSNdU0t5vNFXSdi7snU2EWe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
