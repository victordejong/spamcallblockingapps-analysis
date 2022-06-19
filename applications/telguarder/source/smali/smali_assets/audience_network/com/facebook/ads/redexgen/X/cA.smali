.class public final Lcom/facebook/ads/redexgen/X/cA;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/c9;->A08(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/c9;

.field public final synthetic A01:Ljava/util/Map;

.field public final synthetic A02:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cA;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c9;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 70973
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c9;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cA;->A02:Ljava/util/Map;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cA;->A01:Ljava/util/Map;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WKfdP54uwz57inMqNtiHUB4mW7vUX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "56z123wsIFJ7shhYVzvbv6pnq9q835Do"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "61DrMdWBgidyW7h3t59eEESB89oqC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QNZbJZKgliJvwSZl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uI0tibuNb2fEdekOdApg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wdmUynnJDLaNTWmcqAurj0ObYYYcPbVN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5fTwYptJUnMA6RXIPl60UBGW08K51Agx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ubg7bQJCVfujhZz7n5yfzae4c6TlW9uu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cA;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 70974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c9;->A02(Lcom/facebook/ads/redexgen/X/c9;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70975
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 70976
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A02:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 70977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A01:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 70978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c9;->A00(Lcom/facebook/ads/redexgen/X/c9;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c9;->A00(Lcom/facebook/ads/redexgen/X/c9;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cA;->A00:Lcom/facebook/ads/redexgen/X/c9;

    sget-object v2, Lcom/facebook/ads/redexgen/X/cA;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cA;->A03:[Ljava/lang/String;

    const-string v1, "SS9WfhKBlmsjwVq535SxHKdvH1BPBBA3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/c9;->A02(Lcom/facebook/ads/redexgen/X/c9;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v5}, Lcom/facebook/ads/redexgen/X/JC;->A8q(Ljava/lang/String;Ljava/util/Map;)V

    .line 70980
    .end local p0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
