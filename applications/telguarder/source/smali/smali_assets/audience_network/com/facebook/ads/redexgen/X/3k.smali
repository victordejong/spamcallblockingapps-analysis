.class public final Lcom/facebook/ads/redexgen/X/3k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Eo;->A0D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eo;

.field public final synthetic A01:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eo;Ljava/util/ArrayList;)V
    .locals 0

    .line 9935
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3k;->A00:Lcom/facebook/ads/redexgen/X/Eo;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3k;->A01:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 9936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3k;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/3r;

    .line 9937
    .local v0, "change":Lcom/facebook/ads/redexgen/X/3r;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3k;->A00:Lcom/facebook/ads/redexgen/X/Eo;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Eo;->A0V(Lcom/facebook/ads/redexgen/X/3r;)V

    .line 9938
    .end local v0    # "change":Lcom/facebook/ads/redexgen/X/3r;
    goto :goto_0

    .line 9939
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3k;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3k;->A00:Lcom/facebook/ads/redexgen/X/Eo;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eo;->A03:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3k;->A01:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9941
    return-void
.end method
