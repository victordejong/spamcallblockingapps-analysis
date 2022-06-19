.class public final Lcom/facebook/ads/redexgen/X/Pd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/IS;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/IS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IS;)V
    .locals 0

    .line 48370
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 48371
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Pd;
    .local v3, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IS;->A01(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/JJ;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A0Z:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 48372
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IS;->A00(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A33()V

    .line 48373
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IS;->A02(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48374
    return-void

    .line 48375
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IS;->A09(Lcom/facebook/ads/redexgen/X/IS;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48376
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IS;->A02(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->setVolume(F)V

    .line 48377
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IS;->A0A()V

    goto :goto_1

    .line 48378
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Pd;
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IS;->A02(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->setVolume(F)V

    goto :goto_0

    .line 48379
    :goto_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
