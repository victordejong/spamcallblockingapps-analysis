.class public final Lcom/facebook/ads/redexgen/X/Ro;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rp;->A08(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rp;

.field public final synthetic A01:Ljava/util/Map;

.field public final synthetic A02:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rp;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 51345
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/Rp;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ro;->A02:Ljava/util/Map;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ro;->A01:Ljava/util/Map;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 51346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/Rp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A02(Lcom/facebook/ads/redexgen/X/Rp;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51347
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51348
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A02:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A01:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/Rp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A00(Lcom/facebook/ads/redexgen/X/Rp;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/Rp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A00(Lcom/facebook/ads/redexgen/X/Rp;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/Rp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rp;->A02(Lcom/facebook/ads/redexgen/X/Rp;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JC;->A8o(Ljava/lang/String;Ljava/util/Map;)V

    .line 51352
    .end local p0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
