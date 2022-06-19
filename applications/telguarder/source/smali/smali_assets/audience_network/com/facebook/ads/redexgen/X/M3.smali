.class public final Lcom/facebook/ads/redexgen/X/M3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/M4;->setAdDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/M7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1S;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/JK;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/M4;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/M7;

.field public final synthetic A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/M4;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/M7;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 0

    .line 43597
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M3;->A02:Lcom/facebook/ads/redexgen/X/M4;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/M3;->A01:Lcom/facebook/ads/redexgen/X/JK;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/M3;->A03:Lcom/facebook/ads/redexgen/X/M7;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/M3;->A04:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/M3;->A00:Lcom/facebook/ads/redexgen/X/1S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 43598
    .local p0, "this":Lcom/facebook/ads/redexgen/X/M3;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/M3;->A01:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A09:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 43599
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M3;->A02:Lcom/facebook/ads/redexgen/X/M4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M4;->A00(Lcom/facebook/ads/redexgen/X/M4;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/28;->A0Q(Lcom/facebook/ads/redexgen/X/Wl;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43600
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/M3;->A03:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/M3;->A04:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M3;->A00:Lcom/facebook/ads/redexgen/X/1S;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A8H(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    goto :goto_0

    .line 43601
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/M3;
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M3;->A00:Lcom/facebook/ads/redexgen/X/1S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 43602
    new-instance v3, Lcom/facebook/ads/redexgen/X/L0;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/L0;-><init>()V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M3;->A02:Lcom/facebook/ads/redexgen/X/M4;

    .line 43603
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M4;->A00(Lcom/facebook/ads/redexgen/X/M4;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M3;->A00:Lcom/facebook/ads/redexgen/X/1S;

    .line 43604
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M3;->A04:Ljava/lang/String;

    .line 43605
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L0;->A09(Lcom/facebook/ads/redexgen/X/L0;Lcom/facebook/ads/redexgen/X/Wm;Landroid/net/Uri;Ljava/lang/String;)V

    .line 43606
    :cond_2
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
