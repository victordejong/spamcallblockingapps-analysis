.class public final Lcom/facebook/ads/redexgen/X/R4;
.super Lcom/facebook/ads/redexgen/X/Q8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/83;->A0C(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/83;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/R4;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/83;)V
    .locals 0

    .line 49612
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EK4F"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1jmZydnlJm4m322bU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "43kCng6L4o1QB7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1YWYTeEXMShXVcP8bM93jXOG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "g"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "q6r5iYaIyPQ7mV8dHMBnwAnKy8fTQOOy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LgDmjNWU2TQUe6B4s4LE3u4z3iTZMp9s"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/R4;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 4

    .line 49613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A04(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A0H(Lcom/facebook/ads/redexgen/X/83;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/83;->A04(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/83;->A0F(Lcom/facebook/ads/redexgen/X/83;Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 49616
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    sget-object v2, Lcom/facebook/ads/redexgen/X/R4;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/R4;->A01:[Ljava/lang/String;

    const-string v1, "0CsIAdVOlaGtVtasy6Omrpelvc7LyH4J"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/83;->A08(Lcom/facebook/ads/redexgen/X/83;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A0K(Lcom/facebook/ads/redexgen/X/83;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49618
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/83;->A04(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/83;->A0G(Lcom/facebook/ads/redexgen/X/83;Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 49619
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    .line 49620
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A06(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    .line 49621
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A04(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    .line 49622
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A01(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 49623
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v2

    .line 49624
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A03(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A08(Lcom/facebook/ads/redexgen/X/83;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JC;->A8c(Ljava/lang/String;Ljava/util/Map;)V

    .line 49625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A02(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z()V

    .line 49626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R4;->A00:Lcom/facebook/ads/redexgen/X/83;

    .line 49627
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A00(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    .line 49628
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A01(Ljava/lang/String;)V

    .line 49629
    .end local p0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
