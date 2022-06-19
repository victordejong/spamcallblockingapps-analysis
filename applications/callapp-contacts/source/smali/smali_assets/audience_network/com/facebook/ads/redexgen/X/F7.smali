.class public final Lcom/facebook/ads/redexgen/X/F7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/C5;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HI;[Lcom/facebook/ads/redexgen/X/CG;ILcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/F9;Lcom/facebook/ads/redexgen/X/HA;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/C5;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/C5;)V
    .locals 0

    .line 32185
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/C5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 32186
    .local p0, "this":Lcom/facebook/ads/redexgen/X/F7;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/C5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/C5;->A0N(Lcom/facebook/ads/redexgen/X/C5;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32187
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/C5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/C5;->A05(Lcom/facebook/ads/redexgen/X/C5;)Lcom/facebook/ads/redexgen/X/aV;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/C5;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Fa;->A9p(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 32188
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/F7;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
