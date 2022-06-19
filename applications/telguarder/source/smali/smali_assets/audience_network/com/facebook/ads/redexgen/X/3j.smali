.class public final Lcom/facebook/ads/redexgen/X/3j;
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

    .line 9928
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3j;->A00:Lcom/facebook/ads/redexgen/X/Eo;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3j;->A01:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 9929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3j;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3s;

    .line 9930
    .local v0, "moveInfo":Lcom/facebook/ads/redexgen/X/3s;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3j;->A00:Lcom/facebook/ads/redexgen/X/Eo;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3s;->A04:Lcom/facebook/ads/redexgen/X/4c;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3s;->A00:I

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3s;->A01:I

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3s;->A02:I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/3s;->A03:I

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Eo;->A0X(Lcom/facebook/ads/redexgen/X/4c;IIII)V

    .line 9931
    .end local v0    # "moveInfo":Lcom/facebook/ads/redexgen/X/3s;
    goto :goto_0

    .line 9932
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3j;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3j;->A00:Lcom/facebook/ads/redexgen/X/Eo;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eo;->A05:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3j;->A01:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9934
    return-void
.end method
