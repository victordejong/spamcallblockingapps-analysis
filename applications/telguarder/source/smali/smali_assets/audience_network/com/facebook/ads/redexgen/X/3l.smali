.class public final Lcom/facebook/ads/redexgen/X/3l;
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

    .line 9942
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3l;->A00:Lcom/facebook/ads/redexgen/X/Eo;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3l;->A01:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 9943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3l;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4c;

    .line 9944
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/4c;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3l;->A00:Lcom/facebook/ads/redexgen/X/Eo;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Eo;->A0W(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 9945
    .end local v0    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    goto :goto_0

    .line 9946
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3l;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3l;->A00:Lcom/facebook/ads/redexgen/X/Eo;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eo;->A01:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3l;->A01:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9948
    return-void
.end method
