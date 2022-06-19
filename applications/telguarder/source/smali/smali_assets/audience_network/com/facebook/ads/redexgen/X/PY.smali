.class public final Lcom/facebook/ads/redexgen/X/PY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/IK;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/IK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IK;)V
    .locals 0

    .line 48389
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/IK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 48390
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PY;
    .local v3, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/IK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A01(Lcom/facebook/ads/redexgen/X/IK;)Lcom/facebook/ads/redexgen/X/JK;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0a:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 48391
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/IK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A00(Lcom/facebook/ads/redexgen/X/IK;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2z()V

    .line 48392
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/IK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A02(Lcom/facebook/ads/redexgen/X/IK;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48393
    return-void

    .line 48394
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/IK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A09(Lcom/facebook/ads/redexgen/X/IK;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48395
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/IK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A02(Lcom/facebook/ads/redexgen/X/IK;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->setVolume(F)V

    .line 48396
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/IK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0A()V

    goto :goto_1

    .line 48397
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/PY;
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/IK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A02(Lcom/facebook/ads/redexgen/X/IK;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->setVolume(F)V

    goto :goto_0

    .line 48398
    :goto_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
